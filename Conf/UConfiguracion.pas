unit UConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, Registry, CWMIBase, CDiskDriveInfo, ComCtrls, ExtCtrls;

type
  T_FConfiguracion = class(TForm)
    DDI_1: TDiskDriveInfo;
    PB_1: TProgressBar;
    TM_1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure TM_1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  function GetSerialHDD():string;
  function Cifrar(Str,Clave: String): String;
  procedure GuardaHDD_Reg(ValorStr:string);
  procedure esCadINI (clave, cadena : string; valor : String);
  end;

var
  _FConfiguracion: T_FConfiguracion;

implementation

uses AES, base64;

{$R *.dfm}

{ T_FConfiguracion }

function T_FConfiguracion.Cifrar(Str, Clave: String): String;
var
  Src: TStringStream;
  Dst: TMemoryStream;
  Size: Integer;
  Key: TAESKey;
  ExpandedKey: TAESExpandedKey;
begin
  Result:= EmptyStr;
  PB_1.Position:=15;
  Src:= TStringStream.Create(Str);
  try
    Dst:= TMemoryStream.Create;
    try
      // Preparamos la clave, lo ideal es que tenga 32 caracteres
      FillChar(Key,Sizeof(Key),#0);
      if Length(Clave) > Sizeof(Key) then
        move(PChar(Clave)^,Key,Sizeof(key))
      else
      PB_1.Position:=20;
        move(PChar(Clave)^,Key,Length(Clave));
      AEsExpandKey(ExpandedKey,Key);
      // Guardamos el tama�o del texto original
      Size:= Src.Size;
      Dst.WriteBuffer(Size,Sizeof(Size));
      // Ciframos el texto
      AESEncryptStreamECB(Src,Dst,ExpandedKey);
      // Lo codificamos a base64
      Result:= BinToStr(Dst.Memory,Dst.Size);
      PB_1.Position:=25;
    finally
      Dst.Free;
    end;
  finally
    Src.Free;
  end;
  PB_1.Position:=30;
end;

function T_FConfiguracion.GetSerialHDD: string;
var
  Disco:TDiskDriveInfo;
  PropDisco:TDiskDriveProperties;
begin
  PB_1.Position:=10;
  Result:=EmptyStr;
  Disco:=DDI_1;
  PropDisco:=Disco.DiskDriveProperties;
  Disco.Active:=True;
  Result:=Cifrar(PropDisco.Model, '337719');
  Disco.Active:=False;
  PB_1.Position:=80;
end;

procedure T_FConfiguracion.GuardaHDD_Reg(ValorStr:string);
var
  Reg:TRegistry;
  str, str_r:string;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    PB_1.Position:=90;
    if Reg.OpenKey('\Software\vcir', False) then  //_vcir = Valida Cliente Inventario Records
      begin
        if Reg.ReadString('_vcir') = 'ncok' then  //nuevo cliente ok
          begin
            PB_1.Position:=95;
            str:=Trim(ExtractFilePath(PChar(Application.exename)))+'data\datair.fdb';  
            str_r:=Trim(Cifrar(str, '337719'));
            esCadINI('SUCONF', 'RTMP', str);
            //esCadINI('DB', 'Ruta', Trim(str_r+'\DATA\DATAIR.fdb'));
            esCadINI('DB', 'NUsu', Trim(Cifrar('SYSDBA', '337719')));
            esCadINI('DB', 'CUsu', Trim(Cifrar('33fv7719', '337719')));
            Reg.WriteString('_rtmp', str_r);
            Reg.WriteString('_vcir', ValorStr);
            //Reg.WriteString('_irs', Trim(Cifrar('clienteAutorizado33fv7719', '337719')));// inventario records serie

          end;
       { else
          begin
            TM_1.Enabled:=False;
            MessageDlg('No ha sido posible concluir la configuraci�n del sistema.'+#13+'Error: 21xRV', mtError, [mbOK], 0);
          end; }
      end;
    Reg.CloseKey;
  finally
    TM_1.Enabled:=False;
    Reg.Free;
    PB_1.Position:=100;
    Application.Terminate;
  end;

end;

procedure T_FConfiguracion.FormShow(Sender: TObject);
begin
  TM_1.Enabled:=True;
end;

procedure T_FConfiguracion.TM_1Timer(Sender: TObject);
begin
  GuardaHDD_Reg(GetSerialHDD);
end;

procedure T_FConfiguracion.esCadINI(clave, cadena, valor: String);
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

end.
