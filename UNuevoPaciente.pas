unit UNuevoPaciente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls, bsSkinCtrls,
  BusinessSkinForm, DB, IBCustomDataSet, IBQuery, dateUtils, AppEvnts,JvBalloonHint,
  ComCtrls, JvExComCtrls, JvDateTimePicker, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, IBTable, Grids, DBGrids,
  JvExStdCtrls, JvCombobox, Menus, bsSkinMenus, JvGIF, bsSkinShellCtrls, jpeg,
  ExtDlgs, JvDialogs, Spin, ImgList, CEditInsideHelp, JvComponentBase,
  JvAppHotKey;

type
  TFNuevoPaciente = class(TForm)
    bsSkinBevel1: TbsSkinBevel;
    ME_NumeroSeguroSocial: TbsSkinMaskEdit;
    ME_Cedula: TbsSkinMaskEdit;
    BSF_FNuevoPaciente: TbsBusinessSkinForm;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    LB_4: TbsSkinStdLabel;
    LB_5: TbsSkinStdLabel;
    LB_6: TbsSkinStdLabel;
    ME_TelnoCasa: TbsSkinMaskEdit;
    ME_TelnoCelular: TbsSkinMaskEdit;
    ME_TelnoTrabajo: TbsSkinMaskEdit;
    ME_ExtencionTelnoTrabajo: TbsSkinMaskEdit;
    M_DireccionPaciente: TbsSkinMemo;
    LB_7: TbsSkinStdLabel;
    LB_8: TbsSkinStdLabel;
    LB_9: TbsSkinStdLabel;
    LB_10: TbsSkinStdLabel;
    LB_11: TbsSkinStdLabel;
    IMG_Paciente: TImage;
    bsSkinBevel2: TbsSkinBevel;
    SPB_Foto: TbsSkinMenuSpeedButton;
    RCB_MenorEdad: TbsSkinCheckRadioBox;
    bsknbvl1: TbsSkinBevel;
    E_NombrePadreTuror: TbsSkinEdit;
    LB_12: TbsSkinStdLabel;
    CBB_Parentesco: TbsSkinComboBox;
    LB_13: TbsSkinStdLabel;
    LB_14: TbsSkinStdLabel;
    LB_15: TbsSkinStdLabel;
    LB_16: TbsSkinStdLabel;
    E_Pasaporte: TbsSkinEdit;
    LB_17: TbsSkinStdLabel;
    E_CorreoElectronico: TbsSkinEdit;
    LB_19: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;
    BT_Cancelar: TbsSkinButton;
    BT_LimpiarCampos: TbsSkinButton;
    ME_NumeroRegistro: TbsSkinMaskEdit;
    ApplicationEvents1: TApplicationEvents;
    DateE_FechaNacimientoP: TJvDateTimePicker;
    RCB_Masculino: TbsSkinCheckRadioBox;
    RCB_Femenino: TbsSkinCheckRadioBox;
    LB_3: TbsSkinStdLabel;
    E_NombrePadre: TbsSkinEdit;
    E_NombreMadre: TbsSkinEdit;
    E_NombreConyugue: TbsSkinEdit;
    LB_18: TbsSkinStdLabel;
    LB_20: TbsSkinStdLabel;
    LB_21: TbsSkinStdLabel;
    CBB_Nacionalidad: TJvComboBox;
    PM_Foto: TbsSkinPopupMenu;
    MM_FotoCamara: TMenuItem;
    N1: TMenuItem;
    MM_FotoArchivo: TMenuItem;
    RCB_PacienteActivo: TbsSkinCheckRadioBox;
    SPB_ARS: TbsSkinSpeedButton;
    E_ARS: TbsSkinEdit;
    LB_22: TbsSkinStdLabel;
    DTP_FechaIngreso: TJvDateTimePicker;
    LB_23: TbsSkinStdLabel;
    BT_BuscaCedulado: TbsSkinButton;
    N2: TMenuItem;
    EliminarFoto: TMenuItem;
    OPD_1: TOpenPictureDialog;
    RG_1: TGroupBox;
    PN_1: TbsSkinPanel;
    LB_24: TbsSkinStdLabel;
    LB_25: TbsSkinStdLabel;
    LB_26: TbsSkinStdLabel;
    LB_27: TbsSkinStdLabel;
    LB_28: TbsSkinStdLabel;
    LB_29: TbsSkinStdLabel;
    LB_CapMaxSecc: TbsSkinStdLabel;
    LB_EspaciosUsado: TbsSkinStdLabel;
    LB_EspacioDisponible: TbsSkinStdLabel;
    CBB_Seccion: TJvComboBox;
    CBB_Estante: TJvComboBox;
    RCB_EstanteSeccDefault: TbsSkinCheckRadioBox;
    SE_AsignaEspcioEst: TSpinEdit;
    il1: TImageList;
    E_NombreP: TEditInsideHelp;
    E_Apellido1P: TEditInsideHelp;
    E_Edad: TEditInsideHelp;
    SPB_Actualizar: TbsSkinSpeedButton;
    E_Apodo: TEditInsideHelp;
    procedure RCB_MenorEdadClick(Sender: TObject);
    procedure DateE_FechaNacimientoPExit(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure BT_LimpiarCamposClick(Sender: TObject);
    procedure BT_CancelarClick(Sender: TObject);
    procedure ME_NumeroRegistroKeyPress(Sender: TObject; var Key: Char);
    procedure M_DireccionPacienteKeyPress(Sender: TObject; var Key: Char);
    procedure M_DireccionPacienteChange(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure ME_NumeroRegistroExit(Sender: TObject);
    procedure MM_FotoCamaraClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_ARSButtonClick(Sender: TObject);
    procedure SPB_ARSClick(Sender: TObject);
    procedure RCB_PacienteActivoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_BuscaCeduladoClick(Sender: TObject);
    procedure ME_TelnoCasaKeyPress(Sender: TObject; var Key: Char);
    procedure SPB_FotoClick(Sender: TObject);
    procedure PM_FotoPopup(Sender: TObject);
    procedure EliminarFotoClick(Sender: TObject);
    procedure MM_FotoArchivoClick(Sender: TObject);
    procedure CBB_EstanteChange(Sender: TObject);
    procedure CBB_SeccionChange(Sender: TObject);
    procedure RG_1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SPB_ActualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure InsertaNuevoPaciente(APELLIDOS, APODO, CEDULA:string; CODIGO_PACIENTE: integer;
              CORREO_ELETRONICO, DIRECCION:string; FECHA_NACIMIENTO, FECHA_INGRESO:TDateTime;
              MENOR_EDAD:Integer; NOMBRE_TUTOR, NOMBRES: string; NUMERO_SEGURO_SOCIAL: Integer;
              PARENTESCO_TUTOR, PASAPORTE, RUTA_FOTO, TELNO_CASA, TELNO_CELULAR,
              TELNO_TRABAJO, TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_PADRE,
              NOMBRE_MADRE: string; NACIONALIDAD, ESTADO, MostrarM:Integer);
              
    procedure ModificaPaciente(APELLIDOS, APODO, CEDULA:string; CODIGO_PACIENTE: integer;
              CORREO_ELETRONICO, DIRECCION:string; FECHA_NACIMIENTO:TDateTime;
              MENOR_EDAD:Integer; NOMBRE_TUTOR, NOMBRES: string; NUMERO_SEGURO_SOCIAL: Integer;
              PARENTESCO_TUTOR, PASAPORTE, RUTA_FOTO, TELNO_CASA, TELNO_CELULAR,
              TELNO_TRABAJO, TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_PADRE,
              NOMBRE_MADRE: string; NACIONALIDAD, ID_PACIENTE, MostrarM:Integer; FECHA_INGRESO, FECHA_CREADO: TDateTime);

    procedure GuardaFoto1(NombreArchivoFoto, RGuardarFoto, NuevoNombreFoto:string; ModifPaciente:Boolean);

    procedure LlenarCombSecciones(const CBB_Secc:TJvComboBox; Cod_Stock:Integer);
    procedure InsertaUbicacionExp(const Id_Paciente, Cod_Stock, Id_Seccion, Orden_Seccion:Integer);
    procedure ModificaUbicacionExp(const Id_UbiExp, Id_Pac, Cod_Stock, Id_Seccion, Orden_Seccion:Integer);
    
  public
    { Public declarations }
    procedure EliminaFotoPaciente(const Cod_Pact, Mensaje:Integer);
    procedure LlenarCombEstantes(const CBB_Obj:TJvComboBox);
    procedure LlenarCombNacionalidad(ComboBox:TJvComboBox; ModificarPaciente:Boolean);
    function CalculaEdad(Fecha:TDateTime; VA, VM, VD: string):string;
    procedure LimpiarCampos;
    function ValidaCodigoP(Codigo:string; Modificar: Boolean; Id_PacienteNP, Mensaje:Integer):Integer;
    function ValidaNSS(IDNSS: Integer; ModificarNSS: Boolean; NSS: string):Boolean;
    function ValidaCedula(Cedula:string; Modificar:Boolean; Id_Paciente, Mensaje:Integer):Boolean;
    function ValidaNRegistro(NRegistro:Integer; Modificar:Boolean; Id_Paciente, Mensaje:Integer):Boolean;
    function ValidaCampos:Boolean;
    procedure GuardarFoto(Imagen:TbsSkinOpenPictureDialog; RutaFoto, NombreArchivo:string; ModificarPaciente: Boolean);
    //function CargarFoto(RutaFoto:string; ExcisteFoto:Boolean):string;
    function ObtenerIdNacionalidad(NombreNacionalidad:string):Integer;
    procedure JpegABMP(const NombreArchivo:TFileName; const RutaGuardar, NuevoNombre:string);
    procedure BmpAJpeg(const NombreArchivo:TFileName; const RutaGuardar, NuevoNombre:string);
    function CargarFoto(const CodigoPaciente, RutaArchivo:string; OpcionSilueta:Integer):string;//opcion silueta 0 vacia 1 llena
    function GetIdPaciente(Cod_Paciente:Integer):Integer;
    function GetCodPat_IdPat(const Id_Pat:Integer):Integer;
    function ValidaNombrePaciente(Nombre, Apellidos:string):Boolean;
    procedure ActualizarNumOrden;
  end;

var
  FNuevoPaciente: TFNuevoPaciente;
  FueraFecha:Boolean;
  NSS_Neuvo: string;
  LocalizarP: Boolean;
  Localizad:Integer;

implementation

uses UPrincipal, UContenedorDatos, UFoto, UArs, UCedulados, UEstanteria,
  UNSS, UConf;

{$R *.dfm}

function TFNuevoPaciente.CalculaEdad(Fecha: TDateTime; VA, VM, VD: string): string;
var A, AA, M, MM, D, DD: Word;
   Anio, Mes, Dia:Double;
begin
  DecodeDate(Fecha, A, M, D);
  DecodeDate(Date, AA, MM, DD);
  Anio := Int(AA - A);
    if( M <= MM ) then
       Mes := MM - M
    else
      begin
        Mes := MM+12-M;
        Anio := Anio -1;
      end;
        if( D <= DD ) then
          Dia := DD - D
        else
      begin
        Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;
        Mes := Mes -1;
      end;
  if Mes < 0 then
    begin
      Anio := Anio - 1;
      Mes := 12 + Mes;
    end;
  if(Anio < 0)or(Mes < 0)or(Dia < 0)then
    begin
      FueraFecha:=True;
    end
  else
    begin
      FueraFecha:=False;
    end;
  {
  if(VA = 'A')and(VM = 'M')and(VD = 'D')then
    begin
      Result := Format('%.0f A�os, %.0f Meses, %.0f Dias', [Anio,Mes,Dia]);
    end
  else
  if(VA = 'A')and(VM = 'M')and(VD = '')then
    begin
      Result:=Format('%.0f A�os, %.0f Meses', [Anio,Mes]);
    end
  else
  if VA = 'A'then
    begin
      Result:=Format('%.0f A�os', [Anio]);
    end; }
    if Anio > 0 then
      Result := Format('%.0f A�os, %.0f Meses, %.0f Dias', [Anio,Mes,Dia])
    else
    if Mes > 0 then
      Result := Format('%.0f Meses, %.0f Dias', [Mes,Dia])
    else
    if Dia >= 0 then
      Result := Format('%.0f Dias', [Dia]);

end;

procedure TFNuevoPaciente.RCB_MenorEdadClick(Sender: TObject);
begin
  if (RCB_MenorEdad.Checked = True)then
    begin
      E_NombrePadreTuror.Enabled := True;
      CBB_Parentesco.Enabled := True;      
    end
  else
    begin
      E_NombrePadreTuror.Enabled := False;
      CBB_Parentesco.Enabled := False;
    end;

end;

procedure TFNuevoPaciente.DateE_FechaNacimientoPExit(Sender: TObject);
begin
  CalculaEdad(DateE_FechaNacimientoP.Date, 'A', 'M', 'D');
  if(FueraFecha = False)then
    E_Edad.Text:=CalculaEdad(DateE_FechaNacimientoP.Date, 'A', 'M', 'D')
  else
    FPrincipal.JvBalloonHint1.ActivateHint(DateE_FechaNacimientoP,'La fecha ingresada no es valida.', ikInformation, 'Informaci�n', 5000);
end;

procedure TFNuevoPaciente.InsertaNuevoPaciente(APELLIDOS, APODO,
  CEDULA: string; CODIGO_PACIENTE: integer; CORREO_ELETRONICO,
  DIRECCION: string; FECHA_NACIMIENTO, FECHA_INGRESO: TDateTime; MENOR_EDAD: Integer;
  NOMBRE_TUTOR, NOMBRES: string; NUMERO_SEGURO_SOCIAL: Integer; PARENTESCO_TUTOR, PASAPORTE,
  RUTA_FOTO, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO,
  TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_PADRE,
  NOMBRE_MADRE: string; NACIONALIDAD, ESTADO, MostrarM:Integer);
var
  IBQr_InsertaNP:TIBQuery;
begin
  try
    IBQr_InsertaNP:=TIBQuery.Create(Self);
    with IBQr_InsertaNP do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into pacientes(APELLIDOS, APODO, CEDULA, CODIGO_PACIENTE, CORREO_ELETRONICO,');
        SQL.Add('DIRECCION, FECHA_NACIMIENTO, MENOR_EDAD, NOMBRE_TUTOR, ');
        SQL.Add('NOMBRES, PARENTESCO_TUTOR, PASAPORTE,');
        SQL.Add('TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE,');
        SQL.Add('NOMBRE_PADRE, NOMBRE_MADRE, NACIONALIDAD, FECHA_INGRESO, ESTADO)');

        SQL.Add('values(:APELLIDOS, :APODO, :CEDULA, :CODIGO_PACIENTE, :CORREO_ELETRONICO,');
        SQL.Add(':DIRECCION, :FECHA_NACIMIENTO, :MENOR_EDAD, :NOMBRE_TUTOR, ');
        SQL.Add(':NOMBRES, :PARENTESCO_TUTOR, :PASAPORTE,');
        SQL.Add(':TELNO_CASA, :TELNO_CELULAR, :TELNO_TRABAJO, :TRABAJO_EXT, :SEXO, :NOMBRE_CONYUGUE,');
        SQL.Add(':NOMBRE_PADRE, :NOMBRE_MADRE, :NACIONALIDAD, :FECHA_INGRESO, :ESTADO)');

        ParamByName('APELLIDOS').Value:=APELLIDOS;
        ParamByName('APODO').Value:=APODO;
        ParamByName('CEDULA').Value:=CEDULA;
        ParamByName('CODIGO_PACIENTE').Value:=CODIGO_PACIENTE;
        ParamByName('CORREO_ELETRONICO').Value:=CORREO_ELETRONICO;
        ParamByName('DIRECCION').Value:=DIRECCION;
        ParamByName('FECHA_NACIMIENTO').Value:=FECHA_NACIMIENTO;
        ParamByName('MENOR_EDAD').Value:=MENOR_EDAD;
        ParamByName('NOMBRE_TUTOR').Value:=NOMBRE_TUTOR;
        ParamByName('NOMBRES').Value:=NOMBRES;
        //ParamByName('NUMERO_SEGURO_SOCIAL').Value:=NUMERO_SEGURO_SOCIAL;
        ParamByName('PARENTESCO_TUTOR').Value:=PARENTESCO_TUTOR;
        ParamByName('PASAPORTE').Value:=PASAPORTE;
        //ParamByName('RUTA_FOTO').Value:='';
        ParamByName('TELNO_CASA').Value:=TELNO_CASA;
        ParamByName('TELNO_CELULAR').Value:=TELNO_CELULAR;
        ParamByName('TELNO_TRABAJO').Value:=TELNO_TRABAJO;
        ParamByName('TRABAJO_EXT').Value:=TRABAJO_EXT;
        ParamByName('SEXO').Value:=SEXO;
        ParamByName('NOMBRE_CONYUGUE').Value:=NOMBRE_CONYUGUE;
        ParamByName('NOMBRE_PADRE').Value:=NOMBRE_PADRE;
        ParamByName('NOMBRE_MADRE').Value:=NOMBRE_MADRE;
        ParamByName('NACIONALIDAD').Value:=NACIONALIDAD;
        ParamByName('FECHA_INGRESO').Value:=FECHA_INGRESO;
        ParamByName('ESTADO').Value:=ESTADO;
        //ParamByName('COD_STOCK').Value:=COD_STOCK;
        ExecSQL;
        if(MostrarM = 1)then
          FPrincipal.MS_Personalizado.MessageDlg('Acci�n realizada con �xito.',mtInformation,[mbOK],0);
      end;
  finally
    IBQr_InsertaNP.Free;
  end
end;

procedure TFNuevoPaciente.BT_AceptarClick(Sender: TObject);
var
  RutaFoto, CodigoP, Sexo,NSS_M:string;
  Estado, EsMenor, Id_NSS, Id_ARS, Cod_Stock,Id_Secc: Integer;
  FechaIngreso: TDateTime;
  Estante:TFEstanteria;
  UbicaExpediente, UbicaPacienteExite, NSS, AutoSalir:Boolean;
 // NumSS:TNSS;
begin
  if(RCB_Masculino.Checked = True)then
    begin
      Sexo:='MASCULINO';
    end
  else
  if(RCB_Femenino.Checked = True)then
    begin
      Sexo:='FEMENINO';
    end;
  if(RCB_MenorEdad.Checked = True)then
    begin
      EsMenor:=1;
    end
  else
    begin
      EsMenor:=0;
    end;
  if(IMG_Paciente.Tag = 0)then
    begin
      RutaFoto:='';
    end
  else
  if(IMG_Paciente.Tag > 0)then
    begin
      RutaFoto:=RutaGuardarFoto+Trim(ME_NumeroRegistro.Text)+'.jpg';
    end;
  if DTP_FechaIngreso.Visible then
    begin
      FechaIngreso:=DTP_FechaIngreso.Date;
    end
  else
    begin
      FechaIngreso:=Now;
    end;
  if(RCB_PacienteActivo.Visible)then
    begin
      if(RCB_PacienteActivo.Checked)then
        begin
          Estado:=1;
        end
      else
        begin
          Estado:=0;
        end;
    end
  else
    begin
      Estado:=1;
    end;
  AutoSalir:=False;
  Estante:=TFEstanteria.Create(Self);
  Cod_Stock:=Estante.GetCodigoStock(Trim(CBB_Estante.Text));
  Id_Secc:=Estante.GetIdSeccion(Trim(CBB_Seccion.Text));
  if not Modificar then
    begin
     if(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
      begin
        UbicaExpediente:=Estante.ValidaNumeroSeccUsaExiste(Cod_Stock, Id_Secc, SE_AsignaEspcioEst.Value);
      end
     else
      begin
        UbicaExpediente:=False;
      end;
    end
  else
  if(Modificar)then
    begin
      if(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
        begin
          UbicaExpediente:=Estante.ValidaUbicacionExp(Id_Paciente, Cod_Stock, Id_Secc, SE_AsignaEspcioEst.Value, Modificar);
        end
      else
        begin
          UbicaExpediente:=False;
        end;
    end;
  if(ValidaCampos = True)then
    begin
      _FArs:=TFArs.Create(Self);
      if ValidaNSS(_FArs.ObtenerIDNS_NSS(Trim(ME_NumeroSeguroSocial.Text)),Modificar,Trim(ME_NumeroSeguroSocial.Text))then
        begin
          if(Modificar = False)then
            begin
              if not ValidaNombrePaciente(trim(E_NombreP.Text), trim(E_Apellido1P.Text)) then
                if(not UbicaExpediente)then
                  begin

                    if Trim(ME_NumeroSeguroSocial.Text) <> ''then
                      begin
                        NSS:=True;
                      end
                    else
                      begin
                        NSS:=False;
                      end;
                    if IMG_Paciente.Tag > 0 then
                      begin
                        GuardaFoto1(R_N_FotoPaciente, RutaGuardarFoto, Trim(ME_NumeroRegistro.Text), Modificar);
                      end;
                    try
                      InsertaNuevoPaciente(E_Apellido1P.Text,E_Apodo.Text,ME_Cedula.Text,
                                           StrToInt(ME_NumeroRegistro.Text),E_CorreoElectronico.Text,M_DireccionPaciente.Text,
                                           DateOf(DateE_FechaNacimientoP.Date),DateOf(FechaIngreso),EsMenor,E_NombrePadreTuror.Text,
                                           E_NombreP.Text, Id_NSS, CBB_Parentesco.Text,E_Pasaporte.Text,
                                           RutaFoto,ME_TelnoCasa.Text,ME_TelnoCelular.Text,ME_TelnoTrabajo.Text,
                                           ME_ExtencionTelnoTrabajo.Text, Sexo, E_NombreConyugue.Text, E_NombrePadre.Text,
                                           E_NombreMadre.Text, CBB_Nacionalidad.ItemIndex, Estado, 0 );
                      if(NSS)then
                        begin
                          NumSegSoc:=TNSS.Create(Self);
                          NumSegSoc.InsertaNSS(GetIdPaciente(StrToInt(Trim(ME_NumeroRegistro.Text))),
                          _FArs.GetIdARS_NombreARS(Trim(E_ARS.Text)),
                          Trim(ME_NumeroSeguroSocial.Text), Now);
                          NumSegSoc.Free;
                        end;
                      if(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
                        begin
                          InsertaUbicacionExp(GetIdPaciente(StrToInt(Trim(ME_NumeroRegistro.Text))), Cod_Stock, Id_Secc, SE_AsignaEspcioEst.Value);
                        end;
                      SPB_ActualizarClick(Self);
                      AutoSalir:=True;
                      FPrincipal.MS_Personalizado.MessageDlg('Acci�n realizada con �xito.',mtInformation,[mbOK],0);
                    finally
                      Cod_Stock:=0;
                      Id_Secc:=0;
                    end;
                    Localizad:=StrToInt(Trim(ME_NumeroRegistro.Text));
                    LimpiarCampos;
                    CodigoP:=Trim(ME_NumeroRegistro.Text);
                    ME_NumeroRegistro.Text:=IntToStr(ValidaCodigoP(CodigoP,Modificar,Id_Paciente, 1));
                    if(C_PACIENTE_USU = 0)then
                      begin
                        Self.Close;
                      end;
                    UbicaExpediente:=False;
                  end
                else
                  begin
                    FPrincipal.JvBalloonHint1.ActivateHint(SE_AsignaEspcioEst, 'Este n�mero ya esta asignado. Selecione uno diferente.',ikInformation,'Informaci�n',5000);
                  end;
            end
          else
          if(Modificar = True)then
            begin
              if not UbicaExpediente then
                begin
                  ModificaPaciente(E_Apellido1P.Text,E_Apodo.Text,ME_Cedula.Text,
                                   StrToInt(ME_NumeroRegistro.Text),E_CorreoElectronico.Text,M_DireccionPaciente.Text,
                                   DateOf(DateE_FechaNacimientoP.Date),EsMenor,E_NombrePadreTuror.Text,
                                   E_NombreP.Text, Id_NSS, CBB_Parentesco.Text,E_Pasaporte.Text,
                                   RutaFoto,ME_TelnoCasa.Text,ME_TelnoCelular.Text,ME_TelnoTrabajo.Text,
                                   ME_ExtencionTelnoTrabajo.Text, Sexo, E_NombreConyugue.Text, E_NombrePadre.Text,
                                   E_NombreMadre.Text, CBB_Nacionalidad.ItemIndex,Id_Paciente,0,DateOf(DTP_FechaIngreso.Date),Now);
                  if(Trim(ME_NumeroSeguroSocial.Text)<>'')then
                    begin
                      NumSegSoc:=TNSS.Create(Self);
                      try
                        if NumSegSoc.ValidaNssExist(ME_NumeroSeguroSocial.Text)then
                          begin
                            NumSegSoc.ModificaNss(NumSegSoc.GetIDNSS_IdPaciente(Id_Paciente),Id_Paciente,
                            _FArs.GetIdARS_NombreARS(Trim(E_ARS.Text)), Trim(ME_NumeroSeguroSocial.Text));
                          end
                        else
                          begin
                            NumSegSoc.InsertaNSS(Id_Paciente, _FArs.GetIdARS_NombreARS(Trim(E_ARS.Text)),
                            Trim(ME_NumeroSeguroSocial.Text), Now);
                          end;

                      finally
                        NumSegSoc.Free;
                      end;
                    end;
                  if(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
                    begin
                      if not Estante.ValidaPatExisteUbExp(Id_Paciente) then
                        begin
                          InsertaUbicacionExp(Id_Paciente, Cod_Stock, Id_Secc, SE_AsignaEspcioEst.Value);
                        end
                      else
                      if Estante.ValidaPatExisteUbExp(Id_Paciente)then
                        begin
                          ModificaUbicacionExp(Estante.GetIdUbicacionExp_IdPat(Id_Paciente), Id_Paciente, Cod_Stock,
                          Id_Secc, SE_AsignaEspcioEst.Value);
                        end;
                    end;
                  Localizad:=StrToInt(Trim(ME_NumeroRegistro.Text));
                  if(M_PACIENTE_USU = 0)then
                    begin
                      Self.Close;
                    end;
                  UbicaExpediente:=False;
                  AutoSalir:=True;
                  FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
                end
              else
                begin
                  FPrincipal.JvBalloonHint1.ActivateHint(SE_AsignaEspcioEst, 'Este n�mero ya esta asignado. Selecione uno diferente.',ikInformation,'Informaci�n',5000);
                end;
            end;
        end;
      Estante.Free;
      _FArs.Free;
      Cod_Stock:=0;
      Id_Secc:=0;
      if AutoSalir then
        begin
          if FPrincipal.leCadINI('SUCONF', 'CFP', '0')='1'then
            Self.Close;
        end;
    end;
end;

procedure TFNuevoPaciente.LimpiarCampos;
begin
  E_ARS.Clear;
  E_NombreP.Clear;
  E_Apellido1P.Clear;
  E_Apodo.Clear;
  M_DireccionPaciente.Lines.Clear;
  ME_Cedula.Clear;
  ME_NumeroSeguroSocial.Clear;
  ME_NumeroRegistro.Clear;
  E_Pasaporte.Clear;
  E_CorreoElectronico.Clear;
  E_NombreMadre.Clear;
  E_NombrePadre.Clear;
  E_NombreConyugue.Clear;
//  DateE_FechaNacimientoP.Text:='  /  /    ';
  ME_TelnoCasa.Clear;
  ME_TelnoCelular.Clear;
  ME_TelnoTrabajo.Clear;
  ME_ExtencionTelnoTrabajo.Clear;
  RCB_MenorEdad.Checked:=False;
  RCB_Masculino.Checked:=False;
  RCB_Femenino.Checked:=False;
  E_NombrePadreTuror.Clear;
  DateE_FechaNacimientoP.Date:=Now;
  CBB_Parentesco.ItemIndex:=0;
  CBB_Nacionalidad.ItemIndex:=-1;
  E_Edad.Clear;
  DTP_FechaIngreso.Date:=Now;
  IMG_Paciente.Picture.LoadFromFile(RutaArchivosImagenes+Silueta);
  IMG_Paciente.Tag:=0;                   
  if (not RCB_EstanteSeccDefault.Checked) then
    begin
      CBB_Estante.ItemIndex:=-1;
      CBB_Seccion.ItemIndex:=-1;
      SE_AsignaEspcioEst.Value:=0;
    end;                                 
end;

procedure TFNuevoPaciente.BT_LimpiarCamposClick(Sender: TObject);
begin
  LimpiarCampos;
end;

procedure TFNuevoPaciente.BT_CancelarClick(Sender: TObject);
begin
  Self.Close;
end;

function TFNuevoPaciente.ValidaCodigoP(Codigo: string; Modificar: Boolean;
  Id_PacienteNP, Mensaje: Integer): Integer;
var
  CodigoEntero:Integer;
  IBQr_ValidaCodigo:TIBQuery;
begin
  if(Codigo <> '')then
    begin
      CodigoEntero:=StrToInt(Codigo);
      try
        IBQr_ValidaCodigo:=TIBQuery.Create(Self);
        with IBQr_ValidaCodigo do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('select CODIGO_PACIENTE, IDPACIENTE from PACIENTES where CODIGO_PACIENTE = :CP');
            ParamByName('CP').Value:=CodigoEntero;
            Open;
          end;
        if(IBQr_ValidaCodigo.RecordCount > 0)then
          begin
            if(Modificar)and(Id_PacienteNP <> IBQr_ValidaCodigo.FieldByName('IDPACIENTE').AsInteger)then
              begin
                Result:=IBQr_ValidaCodigo.FieldByName('CODIGO_PACIENTE').AsInteger;
                if(Mensaje = 1)then
                  FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroRegistro,'Este n�mero de registro esta asignado a otro paciente,'+#13+
                  'ingrese un n�mero diferente para continuar.',ikInformation,'Informaci�n',9000);
              end
            else
              begin
                //Result:='';
              end;
          end
        else
          begin
            Result:=CodigoEntero;
          end;
      finally
        IBQr_ValidaCodigo.Free;
      end;
    end
  else
    begin
      try
        IBQr_ValidaCodigo:=TIBQuery.Create(Self);
        with IBQr_ValidaCodigo do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('select MAX(CODIGO_PACIENTE) as CP from PACIENTES');
            Open;
          end;
        Result:=IBQr_ValidaCodigo.FieldByName('CP').AsInteger+1;
      finally
        IBQr_ValidaCodigo.Free;
      end;
    end;      
end;

procedure TFNuevoPaciente.ME_NumeroRegistroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8,#29]) then
    begin
      Key:=#0;
    end;
end;

procedure TFNuevoPaciente.M_DireccionPacienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  M_DireccionPaciente.Text:= UpperCase(M_DireccionPaciente.Text);
end;

procedure TFNuevoPaciente.M_DireccionPacienteChange(Sender: TObject);
begin
  M_DireccionPaciente.Text := AnsiUpperCase(M_DireccionPaciente.Text);
  M_DireccionPaciente.SelStart := Length(M_DireccionPaciente.Text);
end;

procedure TFNuevoPaciente.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  with Msg do
    if (message = WM_KEYDOWN) and (wParam = VK_RETURN) and
    ((ActiveControl is TCustomEdit)or(ActiveControl is TJvDateTimePicker)or
    (ActiveControl is TbsSkinCheckRadioBox)or(ActiveControl is TJvComboBox)) then
      begin
        SelectNext(ActiveControl, true, true);
        Handled := true;
      end;
end;

function TFNuevoPaciente.ValidaCedula(Cedula: string;
  Modificar:Boolean; Id_Paciente, Mensaje: Integer): Boolean;
var
  IBQ_Cedula:TIBQuery;
begin
  try
    IBQ_Cedula:=TIBQuery.Create(Self);
    with IBQ_Cedula do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select IDPACIENTE, CEDULA from pacientes where CEDULA  = :CD');
        ParamByName('CD').Value:=Cedula;
        Open;
      end;
    if(IBQ_Cedula.RecordCount > 0)then
      begin
        if(Modificar = True)then
          begin
            if(Id_Paciente = IBQ_Cedula.FieldByName('IDPACIENTE').AsInteger)then
              begin
                Result:=True;
              end
            else
            if(Id_Paciente <> IBQ_Cedula.FieldByName('IDPACIENTE').AsInteger)then
              begin
                Result:=False;
                if(Mensaje = 1)then
                FPrincipal.JvBalloonHint1.ActivateHint(ME_Cedula,'Este n�mero de c�dula ya esta registrado.', ikInformation,'Informaci�n',5000);
              end;
          end
        else
          begin
            Result:=False;
            if(Mensaje = 1)then
            FPrincipal.JvBalloonHint1.ActivateHint(ME_Cedula,'Este n�mero de c�dula ya esta registrado.', ikInformation, 'Informaci�n', 5000);
          end;
      end
    else
    if(IBQ_Cedula.RecordCount < 1)then
      begin
        Result:=True;
      end;
  finally
    Modificar:=False;
    IBQ_Cedula.Free;
  end;
end;

function TFNuevoPaciente.ValidaNRegistro(NRegistro: Integer;
  Modificar: Boolean; Id_Paciente, Mensaje: Integer): Boolean;
var
  IBQ_NRegistro:TIBQuery;
begin
  try
    IBQ_NRegistro:=TIBQuery.Create(Self);
    with IBQ_NRegistro do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select IDPACIENTE, CODIGO_PACIENTE from pacientes where CODIGO_PACIENTE  = :CP');
        ParamByName('CP').Value:=NRegistro;
        Open;
      end;
    if(IBQ_NRegistro.RecordCount > 0)then
      begin
        if(Modificar)then
          begin
            if(Id_Paciente = IBQ_NRegistro.FieldByName('IDPACIENTE').AsInteger)then
              begin
                Result:=True;
              end
            else
            if(Id_Paciente <> IBQ_NRegistro.FieldByName('IDPACIENTE').AsInteger)then
              begin
                Result:=False;
                if(Mensaje = 1)then
                FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroRegistro,'Este n�mero de registro esta asignado a otro paciente,'+#13+
                'ingrese un n�mero diferente para continuar.',ikInformation,'Informaci�n',5000);
              end;
          end
        else
        if(not Modificar)then
          begin
            if(NRegistro <> IBQ_NRegistro.FieldByName('CODIGO_PACIENTE').AsInteger)then
              begin
                Result:=True;
              end
            else
            if(NRegistro = IBQ_NRegistro.FieldByName('CODIGO_PACIENTE').AsInteger)then
              begin
                Result:=False;
                if(Mensaje = 1)then
                FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroRegistro,'Este n�mero de registro esta asignado a otro paciente,'+
                'ingrese un n�mero diferente para continuar.',ikInformation,'Informaci�n',5000);
              end;
          end;
      end
    else
    if(IBQ_NRegistro.RecordCount < 1)then
      begin
        Result:=True;
      end;
  finally
    Modificar:=False;
    IBQ_NRegistro.Free;
  end;
end;

procedure TFNuevoPaciente.ME_NumeroRegistroExit(Sender: TObject);
begin
  //ValidaNRegistro(StrToInt(ME_NumeroRegistro.Text),True,)
  ValidaCodigoP(ME_NumeroRegistro.Text, Modificar, Id_Paciente, 1);
end;

function TFNuevoPaciente.ValidaCampos: Boolean;
var
  Estante:TFEstanteria;
begin
  Estante:=TFEstanteria.Create(Self);
  if(Trim(E_NombreP.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreP,'Ingrese el Nombre del Paciente.',ikInformation,'Informaci�n',5000);
    end
  else
  if(Trim(E_Apellido1P.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_Apellido1P,'Ingrese el/los Apellido/s del Paciente.',ikInformation,'Informaci�n',5000);
    end
  else
  if(Trim(ME_NumeroRegistro.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroRegistro,'Ingrese el n�mero de registro.',ikInformation,'Informaci�n',5000);
    end
  else
  if(ValidaNRegistro(StrToInt(ME_NumeroRegistro.Text),Modificar,Id_Paciente,1) = False)then
    begin
      Result:=False;
    end
  else
  if(ValidaCedula(ME_Cedula.Text,Modificar,Id_Paciente,0) = False)and (Trim(ME_Cedula.Text) <> '')then
    begin
     Result:=False;
     FPrincipal.JvBalloonHint1.ActivateHint(ME_Cedula,'Este n�mero de c�dula ya esta registrado.',ikInformation,'Informaci�n',5000);
    end
  else
  if(CBB_Nacionalidad.ItemIndex = -1)or(CBB_Nacionalidad.ItemIndex = 0)then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(CBB_Nacionalidad,'Seleccione la nacionalidad del paciente.',ikInformation,'Informaci�n',5000);
    end
  else
  if(Trim(CBB_Estante.Text)='')and(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(CBB_Estante,'Selecione una ubicai�n en el archivo.',ikInformation,'Informaci�n',5000);
    end
  else
  if(SE_AsignaEspcioEst.Value=0)and(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(SE_AsignaEspcioEst,'El orden de secci�n ha asignar de ser mayor a cero(0).',ikInformation,'Informaci�n',5000);
    end
  else
  if(RCB_Masculino.Checked = False)and(RCB_Femenino.Checked = False)then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(RCB_Femenino,'Seleccione el Sexo del Paciente.',ikInformation,'Informaci�n',5000);
    end
  else
  if(Trim(ME_NumeroSeguroSocial.Text) <> '')and(Trim(E_ARS.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_ARS,'Seleccione la ARS a la que esta afiliado el paciente.'+#13+#13+
      'Para seleccionar una ARS pulse este bot�n y seleccione la ARS de la lista.',ikInformation,'Informaci�n',5000);
    end
  else
  if(Trim(ME_NumeroSeguroSocial.Text) = '')and(Trim(E_ARS.Text) <> '')then
    begin
      Result:=False;
      ME_NumeroSeguroSocial.SetFocus;
      FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroSeguroSocial,'Ingrese el NSS del paciente para la ARS a la que esta afiliado el paciente.',ikInformation,'Informaci�n',5000);
    end
  else
    begin
      Result:=True;
    end;
  Estante.Free;
end;

procedure TFNuevoPaciente.ModificaPaciente(APELLIDOS, APODO,
  CEDULA: string; CODIGO_PACIENTE: integer; CORREO_ELETRONICO,
  DIRECCION: string; FECHA_NACIMIENTO: TDateTime; MENOR_EDAD: Integer;
  NOMBRE_TUTOR, NOMBRES: string; NUMERO_SEGURO_SOCIAL: Integer; PARENTESCO_TUTOR, PASAPORTE,
  RUTA_FOTO, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, TRABAJO_EXT, SEXO,
  NOMBRE_CONYUGUE, NOMBRE_PADRE, NOMBRE_MADRE: string; NACIONALIDAD,
  ID_PACIENTE, MostrarM: Integer; FECHA_INGRESO, FECHA_CREADO: TDateTime);
var
  IBQr_Modifica:TIBQuery;
begin
  try
    IBQr_Modifica:=TIBQuery.Create(Self);
    with IBQr_Modifica do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update PACIENTES set APELLIDOS = :p0, APODO = :p1, CEDULA = :p2, CODIGO_PACIENTE = :p3, CORREO_ELETRONICO = :p4,');
        SQL.Add('DIRECCION = :p5, FECHA_NACIMIENTO = :p6, MENOR_EDAD = :p7, NOMBRE_TUTOR = :p8,');
        SQL.Add('NOMBRES = :p9, PARENTESCO_TUTOR = :p11, PASAPORTE = :p12,');
        SQL.Add('TELNO_CASA = :p14, TELNO_CELULAR = :p15, TELNO_TRABAJO = :p16, TRABAJO_EXT = :p17, SEXO = :p18, NOMBRE_CONYUGUE = :p19,');
        SQL.Add('NOMBRE_PADRE = :p20, NOMBRE_MADRE = :p21, NACIONALIDAD = :p22');
        if FPrincipal.leCadINI('SUCONF', 'MFIP', '0') = '1' then
          begin
            SQL.Add(', FECHA_INGRESO = :p23');
          end;
        SQL.Add('where IDPACIENTE = :p24;');
        ParamByName('p0').Value:=APELLIDOS;
        ParamByName('p1').Value:=APODO;
        ParamByName('p2').Value:=CEDULA;
        ParamByName('p3').Value:=CODIGO_PACIENTE;
        ParamByName('p4').Value:=CORREO_ELETRONICO;
        ParamByName('p5').Value:=DIRECCION;
        ParamByName('p6').Value:=FECHA_NACIMIENTO;
        ParamByName('p7').Value:=MENOR_EDAD;
        ParamByName('p8').Value:=NOMBRE_TUTOR;
        ParamByName('p9').Value:=NOMBRES;
        //ParamByName('p10').Value:=NUMERO_SEGURO_SOCIAL;
        ParamByName('p11').Value:=PARENTESCO_TUTOR;
        ParamByName('p12').Value:=PASAPORTE;
        //ParamByName('p13').Value:='';
        ParamByName('p14').Value:=TELNO_CASA;
        ParamByName('p15').Value:=TELNO_CELULAR;
        ParamByName('p16').Value:=TELNO_TRABAJO;
        ParamByName('p17').Value:=TRABAJO_EXT;
        ParamByName('p18').Value:=SEXO;
        ParamByName('p19').Value:=NOMBRE_CONYUGUE;
        ParamByName('p20').Value:=NOMBRE_PADRE;
        ParamByName('p21').Value:=NOMBRE_MADRE;
        ParamByName('p22').Value:=NACIONALIDAD;
        //ParamByName('p23').Value:=FECHA_CREADO;
        if FPrincipal.leCadINI('SUCONF', 'MFIP', '0') = '1' then
          begin
            ParamByName('p23').Value:=FECHA_INGRESO;
          end;
        ParamByName('p24').Value:=ID_PACIENTE;
        ExecSQL;
        GuardaFoto1(R_N_FotoPaciente,RutaGuardarFoto,Trim(ME_NumeroRegistro.Text), Modificar);
        if(MostrarM = 1)then
        FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
      end;
  finally
    IBQr_Modifica.Free;
  end;
end;

procedure TFNuevoPaciente.LlenarCombNacionalidad(ComboBox:TJvComboBox; ModificarPaciente:Boolean);
var
  IBQr_Nanc:TIBQuery;
begin
  IBQr_Nanc:=TIBQuery.Create(Self);
  with IBQr_Nanc do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select PAIS, GENTILICIO from NACIONALIDAD');
      Open;
    end;
  ComboBox.Perform(CB_SetDroppedWidth,275,0);
  ComboBox.Items.Clear;
  ComboBox.Items.Add('Seleccione la Nacionalidad');
  IBQr_Nanc.First;
  while not IBQr_Nanc.Eof do
    begin
      ComboBox.Items.Add(IBQr_Nanc.FieldByName('PAIS').AsString);
      IBQr_Nanc.Next;
    end;
  if not ModificarPaciente then
    begin
      ComboBox.ItemIndex:=0;
    end;
  IBQr_Nanc.Free;
end;

procedure TFNuevoPaciente.GuardarFoto(Imagen:TbsSkinOpenPictureDialog; RutaFoto, NombreArchivo: string; ModificarPaciente: Boolean);
var
  ObjBMP:TBitmap;
  ObjJPG:TJPEGImage;
  ExtencionMinuscula:string;
begin
  ObjBMP:=TBitmap.Create;
  ObjJPG:=TJPEGImage.Create;
  if IMG_Paciente.Tag = 1 then
    begin
      ExtencionMinuscula:=LowerCase(ExtractFileExt(Imagen.FileName));
    end;
  if(ExtencionMinuscula = '.jpg')then
    begin
      ObjJPG.LoadFromFile(Imagen.FileName);
       //ObjBMP.Assign(ObjJPG);
       ObjJPG.CompressionQuality:=100;
       ObjJPG.Compress;
       ObjJPG.SaveToFile(RutaFoto+ChangeFileExt(NombreArchivo,'.jpg'));
    end
  else
  if(ExtencionMinuscula = '.bmp')then
    begin

      BmpAJpeg(Imagen.FileName,RutaGuardarFoto, NombreArchivo);
      //ObjBMP.LoadFromFile(Imagen.FileName);
      //ObjBMP.SaveToFile(RutaFoto+NombreArchivo);
    end;
  {else
  if(IMG_Paciente.Tag = 1)then
    begin
      IMG_Paciente.Picture.SaveToFile(RutaFoto+NombreArchivo+'.jpg');
    end; }
  ObjBMP.Free;
  ObjJPG.Free;
end;

procedure TFNuevoPaciente.MM_FotoCamaraClick(Sender: TObject);
var
  VisualizaForm:Boolean;
begin
  try
    _FFotos:=TFFotos.Create(Self);
    with _FFotos do
      begin
        try
          //CaptImagen_1.Connected:=True;
          VisualizaForm:=True;
        finally
          VisualizaForm:=False;
        end;
        if VisualizaForm = True then
          begin
            ShowModal;
          end;
        Free;
      end;
  except
    on e:Exception do
      begin
        FPrincipal.MS_Personalizado.MessageDlg('No se ha detectado la camara.'+#13+'Error: '+e.Message,mtError,[mbOK],0);
        _FFotos.Free;
      end; 
  end;
end;

{function TFNuevoPaciente.CargarFoto(RutaFoto: string; ExcisteFoto:Boolean): string;
begin
  if RutaFoto <> '' then
    begin
      Result:=RutaFoto;
    end
  else
    begin
      Result:='C:\Inventario Record\Imagenes\silueta.gif';
    end;
end;    }

procedure TFNuevoPaciente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

function TFNuevoPaciente.ObtenerIdNacionalidad(
  NombreNacionalidad: string): Integer;
var
  IBQr_Nac:TIBQuery;
begin
  IBQr_Nac:=TIBQuery.Create(Self);
  with IBQr_Nac do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDNACIONALIDAD from NACIONALIDAD where PAIS = :p0');
      ParamByName('p0').Value:=Trim(NombreNacionalidad);
      Open;
    end;
  Result:=IBQr_Nac.FieldByName('IDNACIONALIDAD').AsInteger;
  IBQr_Nac.Free;
end;

function TFNuevoPaciente.ValidaNSS(IDNSS: Integer;
  ModificarNSS: Boolean; NSS: string): Boolean;
var
  IBQr_NSS: TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDNSS from NSS where NUMERO_SS = :p0');
      ParamByName('p0').Value:=NSS;
      Open;
    end;
  if IBQr_NSS.RecordCount > 0 then
    begin
      if (not ModificarNSS)or(ModificarNSS) and (IDNSS <> IBQr_NSS.FieldByName('IDNSS').AsInteger) then
        begin
          Result:=False;
          if(IDNSS = IBQr_NSS.FieldByName('IDNSS').AsInteger)then
            begin
              NSS_Neuvo:='N';
            end
          else
          if(IDNSS <> IBQr_NSS.FieldByName('IDNSS').AsInteger)then
            begin
              NSS_Neuvo:='S'
            end;
          FPrincipal.JvBalloonHint1.ActivateHint(ME_NumeroSeguroSocial, 'El NSS ingresado pertenece a otro paciente.', ikInformation, 'Informaci�n', 5000);
        end
      else
        begin
          Result:=True;
          NSS_Neuvo:='N';
        end;
    end
  else
    begin
      Result:=True;
      NSS_Neuvo:='S';
    end;
end;

procedure TFNuevoPaciente.E_ARSButtonClick(Sender: TObject);
begin
  try
    _FArs:=TFArs.Create(Self);
    with _FArs do
      begin
        BT_Seleccionar.Visible:=True;
        MM_Seleccionar.Visible:=True;
        Seleccionar:='P';
        ShowModal;
        Seleccionar:='S';
      end;
  finally
    _FArs.Free;
  end;
end;

procedure TFNuevoPaciente.SPB_ARSClick(Sender: TObject);
begin
  E_ARS.Clear;
  ME_NumeroSeguroSocial.Clear;
end;

procedure TFNuevoPaciente.RCB_PacienteActivoClick(Sender: TObject);
begin
  if RCB_PacienteActivo.Checked then
    begin
      RCB_PacienteActivo.Caption:='ACTIVO';
      RCB_PacienteActivo.FontColor:=clGreen;
    end
  else
    begin
      RCB_PacienteActivo.Caption:='INACTIVO';
      RCB_PacienteActivo.FontColor:=clRed;
    end;
end;

procedure TFNuevoPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Autorizado:=False;
  Valor:=0;
end;

procedure TFNuevoPaciente.BT_BuscaCeduladoClick(Sender: TObject);
var
  RutaDB2:string;
begin
  _Fconf:=TFConf.Create(Self);
  RutaDB2:=Trim(FPrincipal.leCadINI('SUCONF', 'RTMP', '')+'\data\CEDULADOSFB.FDB');
  try
    if(FileExists(RutaDB2))and(FPrincipal.leCadINI('DB', 'Rt2', '') = '1')then
      begin
        with DTM_DATOS.IBD_Cedulados do
          begin
            Connected:=False;
            LoginPrompt:=False;
            if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'R' then
              begin
                DatabaseName:=FPrincipal.leCadINI('DB', 'Serv', '')+':'+RutaDB2;
              end
            else
            if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'L' then
              begin
                DatabaseName:='localhost:'+RutaDB2;
              end;
            Params.Values['user_name']:=_Fconf.Descifrar(FPrincipal.leCadINI('DB', 'NUsu', ''), '337719');
            Params.Values['password']:=_Fconf.Descifrar(FPrincipal.leCadINI('DB', 'CUsu', ''), '337719');
            Connected:=True;

            _FCedulados:=TFCedulados.Create(Self);
            _FCedulados.ShowModal;
            _FCedulados.Free;
          end;
      end
    else
      begin
        FPrincipal.MS_Personalizado.MessageDlg('B�squeda temporalmente fuera de servicio.'+#13+
        'Contacte el administrador.',mtInformation, [mbOK],0);
      end;
    _Fconf.Free;
  except
    on e:Exception do
      begin
        _Fconf.Free;
        FPrincipal.esCadINI('DB', 'Rt2', '0');
        FPrincipal.MS_Personalizado.MessageDlg('Se ha producido un error: '+e.Message,mtInformation, [mbOK],0);
      end;
  end;

end;

procedure TFNuevoPaciente.ME_TelnoCasaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13])then
    begin
      Key:=#0;
    end;
end;

procedure TFNuevoPaciente.EliminaFotoPaciente(const Cod_Pact,
  Mensaje: Integer);
begin
   if FileExists(RutaGuardarFoto+IntToStr(Cod_Pact)+'.jpg')then
    begin
      DeleteFile(RutaGuardarFoto+IntToStr(Cod_Pact)+'.jpg');
    end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Acci�n realizada con �xito.',mtInformation,[mbOK],0);
end;

procedure TFNuevoPaciente.SPB_FotoClick(Sender: TObject);
begin
  //EliminarFoto.Enabled:=False;
end;

procedure TFNuevoPaciente.PM_FotoPopup(Sender: TObject);
begin
  if (IMG_Paciente.Tag = 0) then
    begin
      EliminarFoto.Enabled:=False;
    end
  else
    begin
      EliminarFoto.Enabled:=True;
    end;
end;

procedure TFNuevoPaciente.EliminarFotoClick(Sender: TObject);
begin
  IMG_Paciente.Picture.LoadFromFile(RutaArchivosImagenes+Silueta);
  EliminaFoto:=True;
  IMG_Paciente.Tag:=0;
end;

procedure TFNuevoPaciente.JpegABMP(const NombreArchivo: TFileName; const RutaGuardar, NuevoNombre:string);
var
  Jpeg_a:TJPEGImage;
  Bmp_a:TBitmap;
begin
   Jpeg_a := TJPEGImage.Create;
  try
    Jpeg_a.CompressionQuality := 100; {Default Value}
    Jpeg_a.LoadFromFile(NombreArchivo);
    Bmp_a := TBitmap.Create;
    try
      Bmp_a.Assign(Jpeg_a);
      Bmp_a.SaveTofile(RutaGuardar+'\'+ChangeFileExt(NombreArchivo, '.bmp'));
    finally
      Bmp_a.Free
    end;
  finally
    Jpeg_a.Free
  end;
end;

procedure TFNuevoPaciente.BmpAJpeg(const NombreArchivo: TFileName; const RutaGuardar, NuevoNombre:string);
var
  Jpeg_a:TJPEGImage;
  Bmp_a:TBitmap;
begin
   Bmp_a := TBitmap.Create;
  try
   // Bmp_a.CompressionQuality := 100; {Default Value}
    Bmp_a.LoadFromFile(NombreArchivo);
    Jpeg_a := TJPEGImage.Create;
    try
      Jpeg_a.Assign(Bmp_a);
      Jpeg_a.CompressionQuality:=100;
      Jpeg_a.Compress;
      Jpeg_a.SaveTofile(RutaGuardar+ChangeFileExt(NuevoNombre, '.jpg'));
    finally
      Jpeg_a.Free
    end;
  finally
    Bmp_a.Free
  end;
end;

procedure TFNuevoPaciente.GuardaFoto1(NombreArchivoFoto, RGuardarFoto,
  NuevoNombreFoto: string; ModifPaciente: Boolean);
var
  ExtMinuscula:string;
  bmp_a:TBitmap;
  jpg_a:TJPEGImage;
begin
  if (IMG_Paciente.Tag = 1) then
    begin
      ExtMinuscula:=LowerCase(ExtractFileExt(NombreArchivoFoto));
      if ExtMinuscula = '.bmp' then
        begin
          BmpAJpeg(NombreArchivoFoto, RGuardarFoto, NuevoNombreFoto);
        end
      else
      if ExtMinuscula = '.jpg' then
        begin
          if FileExists(RutaGuardarFoto+NuevoNombreFoto+'.jpg')then
            DeleteFile(RutaGuardarFoto+NuevoNombreFoto+'.jpg');
          CopyFile(PChar(R_N_FotoPaciente), PChar(RutaGuardarFoto+NuevoNombreFoto+'.jpg'), True);
        end;
    end
  else
  if IMG_Paciente.Tag = 2 then
    begin
      jpg_a:=TJPEGImage.Create;
      try
        if FileExists(RutaGuardarFoto+NuevoNombreFoto+'.jpg')then
            DeleteFile(RutaGuardarFoto+NuevoNombreFoto+'.jpg');
        jpg_a.Assign(IMG_Paciente.Picture.Bitmap);
        jpg_a.CompressionQuality:=100;
        jpg_a.Compress;
        jpg_a.SaveToFile(ChangeFileExt(RGuardarFoto+NuevoNombreFoto, '.jpg'));
      finally
        jpg_a.Free;
      end;
    end
  else
  if IMG_Paciente.Tag = 3 then
    begin
      try
        if FileExists(RutaGuardarFoto+NuevoNombreFoto+'.jpg')then
            DeleteFile(RutaGuardarFoto+NuevoNombreFoto+'.jpg');
        CopyFile(PChar(R_N_FotoPaciente), PChar(RutaGuardarFoto+NuevoNombreFoto+'.jpg'), True);
      finally
      end;
    end
  else
  if (IMG_Paciente.Tag = 0)and(EliminaFoto)then
    begin
      if FileExists(RutaGuardarFoto+NuevoNombreFoto+'.jpg')then
            DeleteFile(RutaGuardarFoto+NuevoNombreFoto+'.jpg');
    end;
  IMG_Paciente.Tag:=0;
  EliminaFoto:=False;
  R_N_FotoPaciente:=''; 
end;

function TFNuevoPaciente.CargarFoto(const CodigoPaciente, RutaArchivo:string; OpcionSilueta:Integer): string;
begin
  if(FileExists(RutaArchivo+Trim(CodigoPaciente)+'.jpg'))then
    begin
      Result:=RutaArchivo+Trim(CodigoPaciente)+'.jpg';
    end
  else
    begin
      if OpcionSilueta = 0 then
        begin
          Result:=RutaArchivosImagenes+SiluetaVacia;
        end
      else
        begin
          Result:=RutaArchivosImagenes+Silueta;
        end;
    end;
end;

procedure TFNuevoPaciente.MM_FotoArchivoClick(Sender: TObject);
begin
  if OPD_1.Execute then
    begin
      if(OPD_1.FileName <> '')then
        begin
          IMG_Paciente.Picture.LoadFromFile(OPD_1.FileName);
          R_N_FotoPaciente:=OPD_1.FileName;
          IMG_Paciente.Tag:=1;
        end;
    end;
end;

procedure TFNuevoPaciente.LlenarCombEstantes(const CBB_Obj: TJvComboBox);
var
  IBQr_Comb:TIBQuery;
begin
  //CBB_Obj:=TJvComboBox.Create(nil);
  IBQr_Comb:=TIBQuery.Create(Self);
  try
    with IBQr_Comb do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select nombre_estante from estanteria order by nombre_estante asc;');
        Open;
      end;
    IBQr_Comb.First;
    CBB_Obj.Items.Clear;
    //CBB_Estante.Items.Add('Selecione Estante');
    while not IBQr_Comb.Eof do
      begin
        CBB_Obj.Items.Add(IBQr_Comb.fieldbyname('nombre_estante').AsString);
        IBQr_Comb.Next;
      end;
  finally
    IBQr_Comb.Free;
  end;

end;

procedure TFNuevoPaciente.LlenarCombSecciones(const CBB_Secc: TJvComboBox; Cod_Stock:Integer);
var
  IBQr_Comb:TIBQuery;
begin
  IBQr_Comb:=TIBQuery.Create(Self);
  try
    with IBQr_Comb do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select seccion from secciones_estanteria where cod_stock = :p0 order by seccion asc;');
        Params[0].Value:=Cod_Stock;
        Open;
      end;
    if IBQr_Comb.RecordCount > 0 then
      begin
        IBQr_Comb.First;
        CBB_Secc.Items.Clear;
        while not IBQr_Comb.Eof do
          begin
            CBB_Secc.Items.Add(IBQr_Comb.fieldbyname('seccion').AsString);
            IBQr_Comb.Next;
          end;
        CBB_Secc.ItemIndex:=0;
      end;
  finally
    IBQr_Comb.Free;
  end;

end;

procedure TFNuevoPaciente.CBB_EstanteChange(Sender: TObject);
var
  Estante:TFEstanteria;
begin
  if (CBB_Estante.ItemIndex > -1)and(Trim(CBB_Estante.Text)<>'') then
    begin
      Estante:=TFEstanteria.Create(Self);
      try
        LlenarCombSecciones(CBB_Seccion, Estante.GetCodigoStock(Trim(CBB_Estante.Text)));
        CBB_SeccionChange(self);
      finally
        Estante.Free;
      end;
    end
  else
    begin
      CBB_Seccion.Items.Clear;
    end;
end;

procedure TFNuevoPaciente.CBB_SeccionChange(Sender: TObject);
var
  Estantes:TFEstanteria;
  id_secc, cod_stock_e, Cap_Max, Cap_Usa:Integer;

begin
  if CBB_Seccion.ItemIndex > -1 then
    begin
      SE_AsignaEspcioEst.MinValue:=0;
      SE_AsignaEspcioEst.Value:=0;
      Estantes:=TFEstanteria.Create(Self);
      try
       id_secc:=Estantes.GetIdSeccion(Trim(CBB_Seccion.Text));
       cod_stock_e:=Estantes.GetCodigoStock(Trim(CBB_Estante.Text));
       
       Cap_Usa:=Estantes.CalculaEspacioSecc(cod_stock_e, id_secc);
       Cap_Max:=Estantes.GetCapMaxSecc(Estantes.GetIdSeccion(Trim(CBB_Seccion.Text)));

       LB_CapMaxSecc.Caption:=IntToStr(Cap_Max);
       LB_EspaciosUsado.Caption:=IntToStr(Cap_Usa);
       LB_EspacioDisponible.Caption:=IntToStr(Cap_Max-Cap_Usa);
       SE_AsignaEspcioEst.MaxValue:=Estantes.GetCapMaxSecc(Estantes.GetIdSeccion(Trim(CBB_Seccion.Text)));

       LB_CapMaxSecc.Visible:=True;
       LB_EspaciosUsado.Visible:=True;
       LB_EspacioDisponible.Visible:=True;
      finally
        Estantes.Free;
      end;
    end;
end;

procedure TFNuevoPaciente.InsertaUbicacionExp(const Id_Paciente, Cod_Stock,
  Id_Seccion, Orden_Seccion: Integer);
var
  IBQr_Expediente:TIBQuery;
begin
  IBQr_Expediente:=TIBQuery.Create(Self);
  try
    with IBQr_Expediente do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into ubicacion_expediente (id_paciente, id_seccion, cod_stock, fecha_creado, orden_seccion)');
        SQL.Add('values (:id_paciente, :id_seccion, :cod_stock, :fecha_creado, :orden_seccion)');
        Params[0].Value:=Id_Paciente;
        Params[1].Value:=Id_Seccion;
        Params[2].Value:=Cod_Stock;
        Params[3].Value:=Now;
        Params[4].Value:=Orden_Seccion;
        ExecSQL;
      end;
  finally
     IBQr_Expediente.Free;
  end;
end;

function TFNuevoPaciente.GetIdPaciente(Cod_Paciente: Integer): Integer;
var
  IBQr_Pac:TIBQuery;
begin
  IBQr_Pac:=TIBQuery.Create(Self);
  try
    with IBQr_Pac do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select idpaciente from pacientes where codigo_paciente = :p0');
        Params[0].Value:=Cod_Paciente;
        Open;
      end;
    if IBQr_Pac.RecordCount > 0then
      begin
        Result:=IBQr_Pac.fieldbyname('idpaciente').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Pac.Free;
  end;
end;

procedure TFNuevoPaciente.ModificaUbicacionExp(const Id_UbiExp,
  Id_Pac, Cod_Stock, Id_Seccion, Orden_Seccion: Integer);
var
  IBQr_Expediente:TIBQuery;
begin
  IBQr_Expediente:=TIBQuery.Create(Self);
  try
    with IBQr_Expediente do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update ubicacion_expediente');
        SQL.Add('set id_paciente = :id_paciente, id_seccion = :id_seccion,');
        SQL.Add('cod_stock = :cod_stock,');
        SQL.Add('orden_seccion = :orden_seccion');
        SQL.Add('where (idubicacionexpediente = :idubicacionexpediente)');
        Params[0].Value:=Id_Pac;
        Params[1].Value:=Id_Seccion;
        Params[2].Value:=Cod_Stock;
        Params[3].Value:=Orden_Seccion;
        Params[4].Value:=Id_UbiExp;
        ExecSQL;
      end;
  finally
     IBQr_Expediente.Free;
  end;
end;

function TFNuevoPaciente.GetCodPat_IdPat(const Id_Pat: Integer): Integer;
var
  IBQr_Pac:TIBQuery;
begin
  IBQr_Pac:=TIBQuery.Create(Self);
  try
    with IBQr_Pac do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select codigo_paciente from pacientes where idpaciente = :p0');
        Params[0].Value:=Id_Pat;
        Open;
      end;
    if IBQr_Pac.RecordCount > 0then
      begin
        Result:=IBQr_Pac.fieldbyname('codigo_paciente').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Pac.Free;
  end;

end;

procedure TFNuevoPaciente.RG_1Click(Sender: TObject);
begin
  if NombreUsu = 'admin' then
    begin
      if not PN_1.Enabled then
        FPrincipal.MS_Personalizado.MessageDlg('Esta opci�n esta deshabilitada.'+#13+'Para habilitar esta opci�n haz clic en "Archivo"'+#13
        +'"Configuraci�n" luego "Configurar parametros" y habilitar la opci�n "Ubicaci�n de expedientes"', mtInformation, [mbOK], 0);
    end
  else
    begin
      if not PN_1.Enabled then
        FPrincipal.MS_Personalizado.MessageDlg('Opci�n deshabilita. Comuniquese con el administrador.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFNuevoPaciente.FormShow(Sender: TObject);
var
  CodigoP:string;
begin
  if not Modificar then
    begin
      CodigoP:=Trim(ME_NumeroRegistro.Text);
      ME_NumeroRegistro.Text:=IntToStr(ValidaCodigoP(CodigoP, Modificar, Id_Paciente,0));
      IMG_Paciente.Picture.LoadFromFile(RutaSilueta);
      DateE_FechaNacimientoP.Date:=Now;
    end;
end;

function TFNuevoPaciente.ValidaNombrePaciente(Nombre,
  Apellidos: string): Boolean;
var
  IBQr_Pac:TIBQuery;
begin
  Result:=False;
  IBQr_Pac:=TIBQuery.Create(Self);
  try
    with IBQr_Pac do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select idpaciente total from pacientes');
        SQL.Add('where (nombres = :p0)and(apellidos = :p1)');
        Params[0].Value:=Nombre;
        Params[1].Value:=Apellidos;
        Open;
      end;
    IBQr_Pac.FieldByName('total').AsString;
    if IBQr_Pac.RecordCount > 0 then
      if FPrincipal.MS_Personalizado.MessageDlg('�xiste un paciente registrado con este(os) nombre(s) y apellido(s)'+#13+
      'Desea continuar y registrar este paciente?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
        Result:=False
      else
        Result:= True
    else
      Result:= False;
  finally
    IBQr_Pac.Free;
  end;
end;

procedure TFNuevoPaciente.ActualizarNumOrden;
begin
  Continuar:=True;
  _FEstanteria:=TFEstanteria.Create(Self);
  SE_AsignaEspcioEst.Value:=_FEstanteria.GetNOrdSecc(_FEstanteria.GetCodigoStock(Trim(CBB_Estante.Text)),_FEstanteria.GetIdSeccion(Trim(CBB_Seccion.Text)), SE_AsignaEspcioEst.Value, Continuar);
  _FEstanteria.Free;
  Continuar:=False;
end;

procedure TFNuevoPaciente.SPB_ActualizarClick(Sender: TObject);
begin
  if(Trim(CBB_Estante.Text)<>'')and(Trim(CBB_Seccion.Text)<>'')then
    ActualizarNumOrden;
end;

end.
