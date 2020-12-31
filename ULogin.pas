unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, ImgList, bsPngImageList,
  bsSkinData, bsMessages, DB, IBCustomDataSet, IBQuery, IBDatabase, DateUtils,
  BusinessSkinForm, IniFiles, bsSkinCtrls, {CWMIBase, CDiskDriveInfo,} Registry,
  CWMIBase, CDiskDriveInfo;

type
  TFLoginUsuario = class(TForm)
    E_NombreUsuario: TEdit;
    E_ClaveUsuario: TEdit;
    BT_Aceptar: TBitBtn;
    BT_Cancelar: TBitBtn;
    lbl1: TLabel;
    lbl2: TLabel;
    bsPngImageView1: TbsPngImageView;
    ListaIMG1: TbsPngImageList;
    MS_Personalizado: TbsSkinMessage;
    BSF_SD1: TbsSkinData;
    BSF_CSL1: TbsCompressedSkinList;
    IBQr_Login: TIBQuery;
    IBQr_LoginNOMBRE_USUARIO: TIBStringField;
    IBQr_LoginCLAVE_USUARIO: TIBStringField;
    IBQr_LoginC_ARS: TIntegerField;
    IBQr_LoginC_CITA: TIntegerField;
    IBQr_LoginC_DIAGNOSTICO: TIntegerField;
    IBQr_LoginC_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_LoginC_ESPEC_MEDICA: TIntegerField;
    IBQr_LoginC_MEDICO: TIntegerField;
    IBQr_LoginC_PACIENTE: TIntegerField;
    IBQr_LoginE_ARS: TIntegerField;
    IBQr_LoginE_CITA: TIntegerField;
    IBQr_LoginE_DIAGNOSTICO: TIntegerField;
    IBQr_LoginE_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_LoginE_ESPEC_MEDICA: TIntegerField;
    IBQr_LoginE_MEDICO: TIntegerField;
    IBQr_LoginE_PACIENTE: TIntegerField;
    IBQr_LoginID_USUARIO: TIntegerField;
    IBQr_LoginIDPRIVILEGIOUSUARIO: TIntegerField;
    IBQr_LoginM_ARS: TIntegerField;
    IBQr_LoginM_CITA: TIntegerField;
    IBQr_LoginM_DIAGNOSTICO: TIntegerField;
    IBQr_LoginM_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_LoginM_ESPEC_MEDICA: TIntegerField;
    IBQr_LoginM_MEIDCO: TIntegerField;
    IBQr_LoginM_PACIENTE: TIntegerField;
    IBQr_LoginR_CITAS: TIntegerField;
    IBQr_LoginR_CONSULTAS_ASEGURDOS: TIntegerField;
    IBQr_LoginR_CONSULTAS_DIAGNOSTICOS: TIntegerField;
    IBQr_LoginR_CONSULTAS_MEDICAS: TIntegerField;
    IBQr_LoginR_CONSULTAS_NACIONALIDAD: TIntegerField;
    IBQr_LoginR_CONSULTAS_REINCIDENTES: TIntegerField;
    IBQr_LoginR_LISTA_PACIENTES: TIntegerField;
    IBQr_LoginR_NUEVOS_PACIENTES: TIntegerField;
    IBQr_LoginR_PACIENTES_NACIONALIDAD: TIntegerField;
    IBQr_LoginR_PRODUCTIVIDAD_MEDICA: TIntegerField;
    IBQr_LoginR_RESERVADOS: TIntegerField;
    IDB_1: TIBDatabase;
    IBT_1: TIBTransaction;
    bsResourceStrData1: TbsResourceStrData;
    IBQr_LoginULTIMA_FECHA_LOGIN: TDateField;
    IBQr_LoginULTIMA_HORA_LOGIN: TTimeField;
    IBQr_LoginPRINT_DATOS_PACIENTES: TIntegerField;
    IBQr_LoginAUTORIZAR: TIntegerField;
    BF_Login: TbsBusinessSkinForm;
    IBQr_LoginNOMBRES: TIBStringField;
    IBQr_LoginAPELLIDOS: TIBStringField;
    DiskDriveInfo1: TDiskDriveInfo;
    procedure BT_AceptarClick(Sender: TObject);
    procedure BT_CancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure E_ClaveUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure E_ClaveUsuarioChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function leCadINI (clave, cadena : string; defecto : String) : String;
    procedure esCadINI (clave, cadena : string; valor : String);
    function WinExecAndWait32(FileName:String; Visibility:integer):integer;
  public
    { Public declarations }
    function AutorizaAcceso(ClaveUsuario: string):Boolean;
    class function Execute : boolean;
    procedure CargaConfDB;
    procedure Re_CargaConfDB;
    function GetVolumeID(DriveChar: Char): String;
    function AutorizaAPP():Boolean;
  end;

var
  FLoginUsuario: TFLoginUsuario;

implementation

uses UPrincipal, UContenedorDatos, UConf;

{$R *.dfm}

{ TFLoginUsuario }

class function TFLoginUsuario.Execute: boolean;
begin
  with TFLoginUsuario.Create(nil) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;
function TFLoginUsuario.leCadINI(clave, cadena, defecto: String): String;
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;
end;

procedure TFLoginUsuario.esCadINI(clave, cadena, valor: String);
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

procedure TFLoginUsuario.Re_CargaConfDB;
begin
  with IDB_1 do
    begin
      _Fconf:=TFConf.Create(Self);
      Connected:=False;
      LoginPrompt:=False;
      if leCadINI('DB', 'TipoServ', '') = 'R' then
        begin
          DatabaseName:=leCadINI('DB', 'Serv', '')+':'+Trim(leCadINI('SUCONF', 'RTMP', '')){+'\data\datair.fdb'};
        end
      else
      if leCadINI('DB', 'TipoServ', '') = 'L' then
        begin
          DatabaseName:='localhost:'+Trim(leCadINI('SUCONF', 'RTMP', '')){+'\data\datair.fdb'};
        end;
      //if()or()then
      Params.Values['user_name']:=leCadINI('DB', 'NUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
      Params.Values['password']:=leCadINI('DB', 'CUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
      Connected:=True;
      _Fconf.Free;
    end;
end;

procedure TFLoginUsuario.BT_AceptarClick(Sender: TObject);
VAR
  str:string;
begin
  with IBQr_Login do
    begin
      Close;
      ParamByName('p0').Value:=E_NombreUsuario.Text;
      ParamByName('p1').Value:=E_ClaveUsuario.Text;
      Open;
    end;
  if IBQr_Login.RecordCount > 0 then
    begin
      UltimaFechaSesionUsu:=DateOf(IBQr_LoginULTIMA_FECHA_LOGIN.AsDateTime);
      UltimaHoraSesionUsu:=TimeOf(IBQr_LoginULTIMA_HORA_LOGIN.AsDateTime);
      Id_UsuarioSistema:=IBQr_LoginID_USUARIO.AsInteger;
      NombreUsuLog:=IBQr_LoginNOMBRES.AsString+' '+IBQr_LoginAPELLIDOS.AsString;
      NombreUsu:=IBQr_LoginNOMBRE_USUARIO.AsString;
      C_PACIENTE_USU:=IBQr_LoginC_PACIENTE.AsInteger;
      M_PACIENTE_USU:=IBQr_LoginM_PACIENTE.AsInteger;
      E_PACIENTE_USU:=IBQr_LoginE_PACIENTE.AsInteger;
      C_CITA_USU:=IBQr_LoginC_CITA.AsInteger;
      M_CITA_USU:=IBQr_LoginM_CITA.AsInteger;
      E_CITA_USU:=IBQr_LoginE_CITA.AsInteger;
      C_DIAGNOSTICO_USU:=IBQr_LoginC_DIAGNOSTICO.AsInteger;
      M_DIAGNOSTICO_USU:=IBQr_LoginM_DIAGNOSTICO.AsInteger;
      E_DIAGNOSTICO_USU:=IBQr_LoginE_DIAGNOSTICO.AsInteger;
      C_DIAGNOSTICO_PACIENTE_USU:=IBQr_LoginC_DIAGNOSTICO_PACIENTE.AsInteger;
      M_DIAGNOSTICO_PACIENTE_USU:=IBQr_LoginM_DIAGNOSTICO_PACIENTE.AsInteger;
      E_DIAGNOSTICO_PACIENTE_USU:=IBQr_LoginE_DIAGNOSTICO_PACIENTE.AsInteger;
      C_ARS_USU:=IBQr_LoginC_ARS.AsInteger;
      M_ARS_USU:=IBQr_LoginM_ARS.AsInteger;
      E_ARS_USU:=IBQr_LoginE_ARS.AsInteger;
      C_MEDICO_USU:=IBQr_LoginC_MEDICO.AsInteger;
      M_MEIDCO_USU:=IBQr_LoginM_MEIDCO.AsInteger;
      E_MEDICO_USU:=IBQr_LoginE_MEDICO.AsInteger;
      C_ESPEC_MEDICA_USU:=IBQr_LoginC_ESPEC_MEDICA.AsInteger;
      M_ESPEC_MEDICA_USU:=IBQr_LoginM_ESPEC_MEDICA.AsInteger;
      E_ESPEC_MEDICA_USU:=IBQr_LoginE_ESPEC_MEDICA.AsInteger;
      R_RESERVADOS_USU:=IBQr_LoginR_RESERVADOS.AsInteger;
      R_LISTA_PACIENTES_USU:=IBQr_LoginR_LISTA_PACIENTES.AsInteger;
      R_NUEVOS_PACIENTES_USU:=IBQr_LoginR_NUEVOS_PACIENTES.AsInteger;
      R_PACIENTES_NACIONALIDAD_USU:=IBQr_LoginR_PACIENTES_NACIONALIDAD.AsInteger;
      R_CONSULTAS_MEDICAS_USU:=IBQr_LoginR_CONSULTAS_MEDICAS.AsInteger;
      R_CONSULTAS_DIAGNOSTICOS_USU:=IBQr_LoginR_CONSULTAS_DIAGNOSTICOS.AsInteger;
      R_CONSULTAS_NACIONALIDAD_USU:=IBQr_LoginR_CONSULTAS_NACIONALIDAD.AsInteger;
      R_CONSULTAS_ASEGURDOS_USU:=IBQr_LoginR_CONSULTAS_ASEGURDOS.AsInteger;
      R_CONSULTAS_REINCIDENTES_USU:=IBQr_LoginR_CONSULTAS_REINCIDENTES.AsInteger;
      R_CITAS_USU:=IBQr_LoginR_CITAS.AsInteger;
      R_PRODUCTIVIDAD_MEDICA_USU:=IBQr_LoginR_PRODUCTIVIDAD_MEDICA.AsInteger;
      PRINT_DATOS_PACIENTES_USU:=IBQr_LoginPRINT_DATOS_PACIENTES.AsInteger;
      AUTORIZAR_USU:=IBQr_LoginAUTORIZAR.AsInteger;
      //if (leCadINI('SUCONF', 'RF', '') = '')or(leCadINI('SUCONF', 'RI', '') = '') then
        //begin
          //str:=ExtractFileDir(PChar(Application.exename));
          //esCadINI('SUCONF', 'RF', str+'\Imagenes\Pacientes\');
          //esCadINI('SUCONF', 'RI', str+'\Imagenes\');
          //RutaGuardarFoto:=str+'\Imagenes\Pacientes\';
          //RutaArchivosImagenes:=str+'\Imagenes\';
        //end;
      str:=ExtractFilePath(ParamStr(0));
      RutaGuardarFoto:=Trim(str)+'Imagenes\Pacientes\';;
      RutaArchivosImagenes:=Trim(str)+'Imagenes\';
      RutaArchivos:=str;
      ModalResult:=mrOk;
    end
  else
    MS_Personalizado.MessageDlg('El nombre de Usuario o la Clave es Incrrecto.', mtInformation, [mbOK], 0);
end;

procedure TFLoginUsuario.BT_CancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLoginUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
end;

function TFLoginUsuario.AutorizaAcceso(ClaveUsuario: string): Boolean;
var
  IBQr_clave: TIBQuery;
begin
  IBQr_clave:=TIBQuery.Create(Self);
  with IBQr_clave do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select CLAVE_USUARIO, AUTORIZAR, R_RESERVADOS from USUARIOS, PRIVILEGIOS_USUARIOS');
      SQL.Add('where (IDUSUARIO = ID_USUARIO)and(CLAVE_USUARIO = :p0);');
      ParamByName('p0').Value:=ClaveUsuario;
      Open;
    end;
  if(IBQr_clave.RecordCount > 0)then
    begin
      if(IBQr_clave.FieldByName('AUTORIZAR').AsInteger = 1){or(IBQr_clave.FieldByName('R_RESERVADOS').AsInteger = 1)}then
        begin
          if(IBQr_clave.FieldByName('CLAVE_USUARIO').AsString = ClaveUsuario)then
            begin
              Result:=True;
            end
          else
            begin
              Result:=False;
              MS_Personalizado.MessageDlg('Clave Incorrecta.', mtInformation, [mbOK], 0);
            end;
        end
      else
        begin
          Result:=False;
          MS_Personalizado.MessageDlg('Usted no esta autorizado a realizar esta acci�n.'+#13+
          'Comuniquese con el administrador para m�s informaci�n.', mtInformation, [mbOK], 0);
        end;
    end
  else
    begin
      Result:=False;
      MS_Personalizado.MessageDlg('Clave Incorrecta.', mtInformation, [mbOK], 0);
    end;
  IBQr_clave.Free;
end;

procedure TFLoginUsuario.E_ClaveUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      BT_AceptarClick(Self);
    end;
end;

procedure TFLoginUsuario.CargaConfDB;
var
  Conecto:Boolean;
begin
  try
    try
      Re_CargaConfDB;
      Conecto:=True;
    except
      Conecto:=False;
    end;
    if Conecto{FileExists(leCadINI('DB', 'Ruta', ''))} then 
      begin
        Re_CargaConfDB;
      end
    else
      if TFConf.Execute then
        begin
          Re_CargaConfDB;
        end;
  except
    on E:Exception do
      begin
        MS_Personalizado.MessageDlg('Se produjo un error al intentar conectar con la Base de Datos.'+#13+'Detalle del Error: '+e.Message, mtInformation, [mbOK], 0);
        Application.Terminate;
      end;
  end;
end;
procedure TFLoginUsuario.FormCreate(Sender: TObject);
var
  str:string;
  Reg:TRegistry;
begin
  reg:=TRegistry.Create;
  _Fconf:=TFConf.Create(Self);
  try
    str:=ExtractFilePath(ParamStr(0));
    str:=str+'Configuracion.exe';
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('Software\vcir', False) then
      if Reg.ReadString('_vcir') = 'ncok' then
      begin
        WinExecAndWait32(str, 0);
      end;
    //str:=Trim(leCadINI('SUCONF', 'RTMP', ''));
    if FileExists(str)then
      DeleteFile(str);
  finally
    _Fconf.Free;
    Reg.Free;
  end;
   CargaConfDB;
end;

procedure TFLoginUsuario.E_ClaveUsuarioChange(Sender: TObject);
begin
  if(Trim(E_NombreUsuario.Text) <> '')and(Trim(E_ClaveUsuario.Text) <> '')then
    BT_Aceptar.Default:=True
  else
    BT_Aceptar.Default:=False;
end;

procedure TFLoginUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    Self.Close;
end;

function TFLoginUsuario.GetVolumeID(DriveChar: Char): String;
var 
   MaxFileNameLength, VolFlags, SerNum: DWord; 
begin 
   if GetVolumeInformation(PChar(DriveChar + ':\'), nil, 0, 
      @SerNum, MaxFileNameLength, VolFlags, nil, 0) 
   then 
     begin 
       Result := IntToHex(SerNum,8);
       Insert('-', Result, 5);
     end
   else
       Result := '';
end;

function TFLoginUsuario.WinExecAndWait32(FileName: String;
  Visibility: integer): integer;
var 
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
  Resultado,exitCode: DWord;
begin 
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);
 
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,                      { pointer to command line string }
    nil,                           { pointer to process security attributes}
    nil,                           { pointer to thread security attributes}
    false,                         { handle inheritance flag }
    CREATE_NEW_CONSOLE or          { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil,                           { pointer to new environment block }
    nil,                           { pointer to current directory name }
    StartupInfo,                   { pointer to STARTUPINFO }
    ProcessInfo);
 
  {Espera a que termine la ejecucion}
  {Wait until execution finish}
  repeat 
    exitCode := WaitForSingleObject( ProcessInfo.hProcess,1000);
    Application.ProcessMessages;
  until (exitCode <> WAIT_TIMEOUT);
  GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
  //MessageBeep(0);
  CloseHandle(ProcessInfo.hProcess );
  Result:=Resultado;
end;

function TFLoginUsuario.AutorizaAPP: Boolean;
var
  IBQr_exit, IBQr_G:TIBQuery;
  Reg:TRegistry;
  CantCampos:Integer;
  str_reg:string;
  Disco:TDiskDriveInfo;
  PropDisco:TDiskDriveProperties;
begin
  Result:=False;
  IBQr_exit:=TIBQuery.Create(Self);
  Reg:=TRegistry.Create;
  //Disco:=DDI_1;
  PropDisco:=Disco.DiskDriveProperties;
  Disco.Active:=True;
    try
      Reg.RootKey:=HKEY_LOCAL_MACHINE;
      if (Reg.OpenKey('Software\vcir', True))then
        begin
          str_reg:=Reg.ReadString('_vcir');
          str_reg:=trim('337719');
          if str_reg = PropDisco.Model then
            begin
              Result:=True;
              with IBQr_exit do
                begin
                  Close;
                  Database:=IDB_1;
                  SQL.Clear;
                  SQL.Add('select cod_hdd from clientes_app where cod_hdd = :p0');
                  Params[0].Value:=str_reg;
                  Open;
                end;
              if (IBQr_exit.RecordCount < 1) then
                begin
                  IBQr_G:=TIBQuery.Create(Self);
                   try
                    with IBQr_G do
                      begin
                        Close;
                        Database:=IDB_1;
                        SQL.Clear;
                        SQL.Add('insert into clientes_app (cod_hdd, nombre_cliente, fecha_creado)');
                        SQL.Add('values (:cod_hdd, :nombre_cliente, :fecha_creado)');
                        Params[0].Value:=str_reg;
                        Params[1].Value:='';
                        Params[2].Value:=Now;
                        ExecSQL;
                      end;
                   finally
                    IBQr_G.Free;
                   end;
                end;
            end
          else
            Result:=False;
        end
      else
        begin
          Result:=False;
        end;
    finally
      IBQr_exit.Free;
      Reg.Free;
    end;
end;

procedure TFLoginUsuario.FormShow(Sender: TObject);
begin
 if  not AutorizaAPP then
  begin
    MS_Personalizado.MessageDlg('Este PC no esta autorizado para ejecutar esta aplicaci�n.', mtInformation, [mbOK], 0);
    Application.Terminate;    
  end;
end;

end.
