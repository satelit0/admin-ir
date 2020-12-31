unit UCedulados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, Mask, bsSkinBoxCtrls, bsSkinCtrls,
  DB, DBCtrls, IBCustomDataSet, IBQuery, JvBalloonHint, StdCtrls, ExtCtrls;

type
  TFCedulados = class(TForm)
    bsCedulados: TbsBusinessSkinForm;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    DBTXT_Nombre: TDBText;
    DBTXT_Apellidos: TDBText;
    IBQr_Cedulados: TIBQuery;
    DS_Cedulados: TDataSource;
    GB_1: TbsSkinGroupBox;
    BT_BuscaCedulado: TbsSkinButton;
    BT_Seleccionar: TbsSkinButton;
    E_Cedula: TbsSkinEdit;
    BBT_Salir: TbsSkinButton;
    IBQr_CeduladosMUN_CED: TIBStringField;
    IBQr_CeduladosSEQ_CED: TIBStringField;
    IBQr_CeduladosVER_CED: TIBStringField;
    IBQr_CeduladosNOMBRES: TIBStringField;
    IBQr_CeduladosAPELLIDO1: TIBStringField;
    IBQr_CeduladosAPELLIDO2: TIBStringField;
    IBQr_CeduladosFECHA_NAC: TDateTimeField;
    IBQr_CeduladosLUGAR_NAC: TIBStringField;
    IBQr_CeduladosCALLE: TIBStringField;
    IBQr_CeduladosCASA: TIBStringField;
    IBQr_CeduladosEDIFICIO: TIBStringField;
    IBQr_CeduladosTELEFONO: TIBStringField;
    IBQr_CeduladosSEXO: TIBStringField;
    IBQr_CeduladosEST_CIVIL: TIBStringField;
    IBQr_CeduladosNUM_PASAPO: TIBStringField;
    IBQr_CeduladosDESCRIPCION: TIBStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BT_BuscaCeduladoClick(Sender: TObject);
    procedure BT_SeleccionarClick(Sender: TObject);
    procedure E_CedulaKeyPress(Sender: TObject; var Key: Char);
    procedure BBT_SalirClick(Sender: TObject);
    procedure IBQr_CeduladosAPELLIDO1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
    procedure WMCommand(var Msg: TWMCommand); message WM_COMMAND;
  public
    { Public declarations }
  procedure BuscaCedulado(Mun_Ced, Seq_Ced, Ver_Ced:string; Mensaje:Integer);
  function CalculaRutaFotoCed(DirRaiz, SerCedC, SeqCedC, VerCedC:string; Mensaje:Integer):string;
  function Get_ID_Nacion(const Gentilicio:string):Integer;
  end;

var
  FCedulados: TFCedulados;
  CedulaHallada:Boolean=False;
  Caracter:Char;
  SerieCed, SeqCed, VerCed:string;
  RutaFotosCedulados:string; //Almacena la ruta de la foto de los cedulados.
implementation

uses UContenedorDatos, UPrincipal, UNuevoPaciente;

{$R *.dfm}
procedure TFCedulados.WMCommand(var Msg: TWMCommand);
begin
if Msg.NotifyCode = EN_MAXTEXT then
  begin
    SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    if ActiveControl is TbsSkinEdit then
      with TbsSkinEdit(ActiveControl) do
      begin
         Text:=Caracter;
         SelStart:=2;
      end;
    inherited;
  end;
end;  
procedure TFCedulados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    begin
      Self.Close;
    end;
end;

procedure TFCedulados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Caracter:=Key;
end;
procedure TFCedulados.BuscaCedulado(Mun_Ced, Seq_Ced, Ver_Ced: string;
  Mensaje: Integer);
begin
  with IBQr_Cedulados do
    begin
      Close;
      Params[0].Value:=Mun_Ced;
      Params[1].Value:=Seq_Ced;
      Params[2].Value:=Ver_Ced;
      Open;
    end;
  if IBQr_Cedulados.RecordCount < 1 then
    begin
      BT_Seleccionar.Enabled:=False;
      if Mensaje = 1 then
        begin
          FPrincipal.MS_Personalizado.MessageDlg('no se hallaron datos.',mtInformation,[mbOK],0);
        end;
    end
  else
    begin
      BT_Seleccionar.Enabled:=True;
      //BT_Seleccionar.SetFocus;
    end;
end;

procedure TFCedulados.BT_BuscaCeduladoClick(Sender: TObject);
var
  Cont:Integer;
begin
  if Trim(E_Cedula.Text)=''then
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_Cedula, 'Ingrese un número cédula valido.',
      ikInformation, 'Campo vacio.', 5000);
    end
  else
   begin
     //Cont:=0;             
     Cont:=Length(Trim(E_Cedula.Text));
      if(Cont = 11)then
        begin
          SerieCed:=Copy(Trim(E_Cedula.Text),0,3);
          SeqCed:=Copy(Trim(E_Cedula.Text),4,7);
          VerCed:=Copy(Trim(E_Cedula.Text),11,1);
          BuscaCedulado(SerieCed, SeqCed, VerCed, 1);
          RutaFotosCedulados:=CalculaRutaFotoCed(RutaArchivosImagenes+'16_MONSENOR_NOUEL\fotos\',SerieCed, SeqCed, VerCed, 0);
        end
      else
        begin
          FPrincipal.MS_Personalizado.MessageDlg('La longitud de la cédula debe ser igual a 11 digitos, la que has ingresado es de: '+IntToStr(Cont),
          mtInformation, [mbOK],0);
          E_Cedula.SetFocus;
        end;
   end;
end;

procedure TFCedulados.BT_SeleccionarClick(Sender: TObject);
begin
    _FNuevoPaciente.E_NombreP.Text:=IBQr_CeduladosNOMBRES.AsString;
    _FNuevoPaciente.E_Apellido1P.Text:=IBQr_CeduladosAPELLIDO1.AsString+' '+IBQr_CeduladosAPELLIDO2.AsString;
    if IBQr_CeduladosSEXO.AsString = 'F' then
     begin
      _FNuevoPaciente.RCB_Femenino.Checked:=True;
     end;
    if IBQr_CeduladosSEXO.AsString = 'M' then
      begin
        _FNuevoPaciente.RCB_Masculino.Checked:=True;
      end;
    _FNuevoPaciente.M_DireccionPaciente.Text:=IBQr_CeduladosCALLE.AsString+' #'+IBQr_CeduladosCASA.AsString;
    _FNuevoPaciente.ME_Cedula.Text:=IBQr_CeduladosMUN_CED.AsString+IBQr_CeduladosSEQ_CED.AsString+IBQr_CeduladosVER_CED.AsString;
    _FNuevoPaciente.E_Pasaporte.Text:=IBQr_CeduladosNUM_PASAPO.AsString;
    _FNuevoPaciente.ME_TelnoCasa.Text:=Trim(IBQr_CeduladosTELEFONO.AsString);
    if IBQr_CeduladosFECHA_NAC.AsDateTime <> null then
      begin
        _FNuevoPaciente.DateE_FechaNacimientoP.Date:=IBQr_CeduladosFECHA_NAC.AsDateTime;
        _FNuevoPaciente.DateE_FechaNacimientoPExit(Self);
      end;
    if(FileExists(RutaFotosCedulados))then
      begin
        _FNuevoPaciente.IMG_Paciente.Picture.LoadFromFile(RutaFotosCedulados);
        R_N_FotoPaciente:=RutaFotosCedulados;
        _FNuevoPaciente.IMG_Paciente.Tag:=3;
      end
    else
      begin
        _FNuevoPaciente.IMG_Paciente.Picture.LoadFromFile(RutaArchivosImagenes+Silueta);
        _FNuevoPaciente.Tag:=0;
      end;
    _FNuevoPaciente.CBB_Nacionalidad.ItemIndex:=Get_ID_Nacion(IBQr_CeduladosDESCRIPCION.AsString);
    Self.Close;
end;

procedure TFCedulados.E_CedulaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13])then
    begin
      Key:=#0;
    end;
  if (key = #13)then
    begin
      BT_BuscaCeduladoClick(Self);
    end;
end;

procedure TFCedulados.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

function TFCedulados.CalculaRutaFotoCed(DirRaiz, SerCedC, SeqCedC,
  VerCedC: string; Mensaje: Integer): string;
begin
  Result:=DirRaiz+SerCedC+'\'+copy(SeqCedC, 0,2)+'\'+copy(SeqCedC, 3,2)+'\'+
  SerCedC+'-'+SeqCedC+'-'+VerCed+'.jpg';
  if Mensaje = 1 then
    
end;

procedure TFCedulados.IBQr_CeduladosAPELLIDO1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin

  Text:=IBQr_CeduladosAPELLIDO1.AsString+' '+IBQr_CeduladosAPELLIDO2.AsString;
end;

function TFCedulados.Get_ID_Nacion(const Gentilicio: string): Integer;
var
  IBQr_IDNACION:TIBQuery;
  //Get_Gentilicio:string;
begin
  IBQr_IDNACION:=TIBQuery.Create(Self);
  with IBQr_IDNACION do
    begin
      try
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Add('select IDNACIONALIDAD from nacionalidad where gentilicio = :p0');
        Params[0].Value:=Gentilicio;
        Open;
        Result:=Fieldbyname('IDNACIONALIDAD').AsInteger;
      finally
        Free;
      end;
    end;     
end;

end.
