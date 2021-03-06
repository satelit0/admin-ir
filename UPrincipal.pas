unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinData, BusinessSkinForm, Menus, bsSkinCtrls, UNuevoPaciente,
  ExtCtrls, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinGrids, bsDBGrids,
  bsdbctrls, JvBalloonHint, JvComponentBase, JvGIF, ComCtrls, JvExComCtrls,
  JvMonthCalendar, bsCalendar, DBCtrls, DB, IBCustomDataSet, IBTable,
  IBQuery, bsMessages, UMedicos, UEspecialidadMedica, XPMan, DateUtils,
  JvExControls, JvCalendar, UDatosMiscelaneos, bsSkinMenus, UFoto, UReportes,
  JvExStdCtrls, JvCombobox, bsDialogs, IniFiles, ImgList, UDiagnostico,
  UEnfermedades, bsPngImageList, UArs, ToolWin, UUsuario, Ulogin, UCedulados,
  JvHotKey, UConf, JvAppHotKey, UEstanteria, CEditInsideHelp;

type
  TFPrincipal = class(TForm)
    BSF_CSL1: TbsCompressedSkinList;
    BSF_SD1: TbsSkinData;
    bsMMB1: TbsSkinMainMenuBar;
    MM_1: TMainMenu;
    Archivo1: TMenuItem;
    Paciente1: TMenuItem;
    NuevoPaciente: TMenuItem;
    N1: TMenuItem;
    Modificar1: TMenuItem;
    GB_Busqueda: TbsSkinGroupBox;
    LB_1: TbsSkinStdLabel;
    bsSkinSplitter1: TbsSkinSplitter;
    GB_2: TbsSkinGroupBox;
    DBG_Pacientes: TbsSkinDBGrid;
    NV_BusquedasPacientes: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    BT_Buscar: TbsSkinButton;
    JvBalloonHint1: TJvBalloonHint;
    DS_1: TDataSource;
    IBQr_BuscaPaciente: TIBQuery;
    IBQr_BuscaPacienteCODIGO_PACIENTE: TIntegerField;
    IBQr_BuscaPacienteAPODO: TIBStringField;
    IBQr_BuscaPacienteNOMBREC: TIBStringField;
    IBQr_BuscaPacienteCEDULA: TIBStringField;
    IBQr_BuscaPacienteCORREO_ELETRONICO: TIBStringField;
    IBQr_BuscaPacienteDIRECCION: TIBStringField;
    IBQr_BuscaPacienteFECHA_NACIMIENTO: TDateField;
    IBQr_BuscaPacienteIDPACIENTE: TIntegerField;
    IBQr_BuscaPacienteMENOR_EDAD: TIntegerField;
    IBQr_BuscaPacienteNOMBRE_TUTOR: TIBStringField;
    IBQr_BuscaPacientePARENTESCO_TUTOR: TIBStringField;
    IBQr_BuscaPacientePASAPORTE: TIBStringField;
    IBQr_BuscaPacienteTELNO_CASA: TIBStringField;
    IBQr_BuscaPacienteTELNO_CELULAR: TIBStringField;
    IBQr_BuscaPacienteTELNO_TRABAJO: TIBStringField;
    IBQr_BuscaPacienteTRABAJO_EXT: TIBStringField;
    MS_Personalizado: TbsSkinMessage;
    IBQr_BuscaPacienteSEXO: TIBStringField;
    IBQr_BuscaPacienteNOMBRE_CONYUGUE: TIBStringField;
    IBQr_BuscaPacienteNOMBRE_MADRE: TIBStringField;
    IBQr_BuscaPacienteNOMBRE_PADRE: TIBStringField;
    IBQr_BuscaPacienteAPELLIDOS: TIBStringField;
    IBQr_BuscaPacienteNOMBRES: TIBStringField;
    IBQr_BuscaPacienteNACIONALIDAD: TIntegerField;
    IBQr_BuscaPacienteEDAD: TDateField;
    N2: TMenuItem;
    Mdicos1: TMenuItem;
    bsResourceStrData1: TbsResourceStrData;
    N3: TMenuItem;
    EspecialidadesMedicas1: TMenuItem;
    IBQr_CitaMedico: TIBQuery;
    XPManifest1: TXPManifest;
    DS_Citas: TDataSource;
    IBQr_1: TIBQuery;
    PM_Citas: TbsSkinPopupMenu;
    Modificar2: TMenuItem;
    N4: TMenuItem;
    Eliminar1: TMenuItem;
    N5: TMenuItem;
    Visualizar1: TMenuItem;
    Reportes1: TMenuItem;
    MM_N6: TMenuItem;
    MM_Eliminar2: TMenuItem;
    MM_ListadePacientes1: TMenuItem;
    MM_N7: TMenuItem;
    bsSelectSkinDialog1: TbsSelectSkinDialog;
    MM_N10: TMenuItem;
    MM_CambioCaratula1: TMenuItem;
    MM_N11: TMenuItem;
    MM_Salir1: TMenuItem;
    ListaIMG_1: TImageList;
    MM_Diagnostico1: TMenuItem;
    MM_ManejodeDiagnostico: TMenuItem;
    MM_N12: TMenuItem;
    MM_Diagnosticos: TMenuItem;
    ListaIMGpng: TbsPngImageList;
    MM_Diagnsticos1: TMenuItem;
    MM_ConsultasPorExtranjera: TMenuItem;
    MM_N14: TMenuItem;
    MM_ConsultasDiagnsticosEdad: TMenuItem;
    MM_N15: TMenuItem;
    MM_Consultaspacientesasegurados: TMenuItem;
    MM_N17: TMenuItem;
    MM_ConsultaMedica: TMenuItem;
    MM_Ci1: TMenuItem;
    MM_ListaPacientes1: TMenuItem;
    MM_N20: TMenuItem;
    MM_CitasporEspecialidadMdica1: TMenuItem;
    MM_N8: TMenuItem;
    MM_ListadePacientes2: TMenuItem;
    MM_PacientesporNacionalidad1: TMenuItem;
    MM_N13: TMenuItem;
    MM_ListaNuevosPacientes1: TMenuItem;
    MM_N16: TMenuItem;
    MM_NSSAseguradoras1: TMenuItem;
    bsSkinStatusBar1: TbsSkinStatusBar;
    PN_NombreUsuario: TbsSkinStatusPanel;
    bsSkinControlBar1: TbsSkinControlBar;
    TooBar_1: TbsSkinToolBar;
    SPB_NuevoPaciente: TbsSkinSpeedButton;
    SPB_ModificarPaciente: TbsSkinSpeedButton;
    SPB_EliminarPaciente: TbsSkinSpeedButton;
    bsknbvl3: TbsSkinBevel;
    SPB_ModificaCita: TbsSkinSpeedButton;
    SPB_EliminarCita: TbsSkinSpeedButton;
    PM_1: TbsSkinPopupMenu;
    MM_Visualizar2: TMenuItem;
    MM_N18: TMenuItem;
    MM_Modificar3: TMenuItem;
    MM_N19: TMenuItem;
    MM_Opciones1: TMenuItem;
    MM_Diagnostico: TMenuItem;
    MM_N21: TMenuItem;
    TooBar_2: TbsSkinToolBar;
    SPB_Medicos: TbsSkinSpeedButton;
    SPB_Especialidades: TbsSkinSpeedButton;
    bsknbvl1: TbsSkinBevel;
    SPB_DiagnosticosPacientes: TbsSkinSpeedButton;
    SPB_DiagnosticoMedico: TbsSkinSpeedButton;
    bsknbvl2: TbsSkinBevel;
    SPB_NSS: TbsSkinSpeedButton;
    MM_N22: TMenuItem;
    MM_Imprimir1: TMenuItem;
    SPB_Imprimir: TbsSkinSpeedButton;
    MM_N23: TMenuItem;
    MM_N9: TMenuItem;
    MM_ConsultasPacientesReincidentes: TMenuItem;
    MM_N24: TMenuItem;
    MM_Usuarios1: TMenuItem;
    bsSkinStatusPanel2: TbsSkinStatusPanel;
    PN_UltimaSesion: TbsSkinStatusPanel;
    BSF_F1: TbsBusinessSkinForm;
    TM_Reloj: TTimer;
    TM_CuentaTiempo: TTimer;
    MM_N25: TMenuItem;
    MM_EliminarPaciente1: TMenuItem;
    PSSDLG_Autorizar: TbsSkinPasswordDialog;
    MM_N26: TMenuItem;
    MM_Estado1: TMenuItem;
    MM_Activo1: TMenuItem;
    MM_N27: TMenuItem;
    MM_ActivarDesactivar1: TMenuItem;
    MM_N28: TMenuItem;
    MM_ProductividadMedica: TMenuItem;
    HTKY_1: TJvApplicationHotKey;
    bsSkinSplitter2: TbsSkinSplitter;
    IBQr_BuscaPacienteFECHA_INGRESO: TDateField;
    IBQr_BuscaPacienteFECHA_CREADO: TDateField;
    N6: TMenuItem;
    ConfiguracionParametros: TMenuItem;
    ConfDB: TMenuItem;
    N7: TMenuItem;
    ConfParametros: TMenuItem;
    HTKY_NuevoPaciente: TJvApplicationHotKey;
    IBQuery1: TIBQuery;
    N8: TMenuItem;
    ConfEstante1: TMenuItem;
    IBQr_BuscaPacienteNUMERO_SS: TIBStringField;
    IBQr_BuscaPacienteNOMBRE_ARS: TIBStringField;
    IBQr_BuscaPacienteNOMBRE_ESTANTE: TIBStringField;
    IBQr_BuscaPacienteSECCION: TIBStringField;
    IBQr_BuscaPacienteORDEN_SECCION: TIntegerField;
    IBQr_CitaMedicoCOMENTARIO: TIBStringField;
    IBQr_CitaMedicoESPERA: TIntegerField;
    IBQr_CitaMedicoESTADO: TIntegerField;
    IBQr_CitaMedicoFECHA_CITA: TDateField;
    IBQr_CitaMedicoID_CITA: TIntegerField;
    IBQr_CitaMedicoID_MEDICO: TIntegerField;
    IBQr_CitaMedicoID_PACIENTE: TIntegerField;
    IBQr_CitaMedicoORDEN_CITA: TIntegerField;
    IBQr_CitaMedicoNC: TIBStringField;
    IBQr_CitaMedicoCODIGO_PACIENTE: TIntegerField;
    IBQr_CitaMedicoNOMBRE_MEDICO: TIBStringField;
    IBQr_CitaMedicoNOMBRE_ESPECIALIDAD: TIBStringField;
    IBQr_CitaMedicoFECHA_CREADO: TDateField;
    IBQr_CitaMedicoTELNO_CASA: TIBStringField;
    IBQr_CitaMedicoTELNO_CELULAR: TIBStringField;
    IBQr_CitaMedicoTELNO_TRABAJO: TIBStringField;
    IBQr_CitaMedicoCORREO_ELETRONICO: TIBStringField;
    IBQr_CitaMedicoEXCEDER_MAX: TIntegerField;
    IBQr_CitaMedicoMAX_TURNO: TIntegerField;
    IBQr_CitaMedicoNOTIFICAR_MAX: TIntegerField;
    bsSkinSplitter5: TbsSkinSplitter;
    RCB_NumeroRegistro: TbsSkinCheckRadioBox;
    RCB_NumeroCedula: TbsSkinCheckRadioBox;
    RCB_SeguroSocial: TbsSkinCheckRadioBox;
    RCB_NombrePaciente: TbsSkinCheckRadioBox;
    RCB_ApodoPaciente: TbsSkinCheckRadioBox;
    RCB_ApelllidosPaciente: TbsSkinCheckRadioBox;
    RCB_PasaportePaciente: TbsSkinCheckRadioBox;
    RCB_Telefono: TbsSkinCheckRadioBox;
    MM_ConexionBaseDatos: TMenuItem;
    MM_N29: TMenuItem;
    MM_CrearBackup: TMenuItem;
    MM_N30: TMenuItem;
    MM_RestaurarBasedeDatos: TMenuItem;
    GB_3: TbsSkinGroupBox;
    bsSkinBevel1: TbsSkinBevel;
    IMG_ImagenPaciente: TImage;
    LB_2: TbsSkinStdLabel;
    LB_3: TbsSkinStdLabel;
    LB_4: TbsSkinStdLabel;
    LB_5: TbsSkinStdLabel;
    LB_6: TbsSkinStdLabel;
    LB_7: TbsSkinStdLabel;
    LB_8: TbsSkinStdLabel;
    LB_9: TbsSkinStdLabel;
    LB_10: TbsSkinStdLabel;
    LB_11: TbsSkinStdLabel;
    LB_12: TbsSkinStdLabel;
    LB_13: TbsSkinStdLabel;
    LB_14: TbsSkinStdLabel;
    LB_15: TbsSkinStdLabel;
    LB_22: TbsSkinStdLabel;
    LB_23: TbsSkinStdLabel;
    LB_24: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    LB_25: TbsSkinStdLabel;
    SPB_1: TbsSkinSpeedButton;
    bsSkinSplitter3: TbsSkinSplitter;
    LB_16: TbsSkinStdLabel;
    LB_17: TbsSkinStdLabel;
    LB_18: TbsSkinStdLabel;
    GB_5: TbsSkinGroupBox;
    bsSkinSplitter4: TbsSkinSplitter;
    GB_6: TbsSkinGroupBox;
    DBG_1: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    SCRB_2: TbsSkinScrollBar;
    GB_4: TbsSkinGroupBox;
    LB_19: TbsSkinStdLabel;
    LB_20: TbsSkinStdLabel;
    LB_21: TbsSkinStdLabel;
    LB_26: TbsSkinStdLabel;
    bsSkinBevel2: TbsSkinBevel;
    M2_1: TbsSkinMemo2;
    BT_AgregarCita: TbsSkinButton;
    Calendario1: TbsSkinMonthCalendar;
    CBB_Medicos: TJvComboBox;
    DBTxt_FECHA_NACIMIENTO: TbsSkinDBText;
    DBTxt_EDAD: TbsSkinDBText;
    DBTxt_CODIGO_PACIENTE: TbsSkinDBText;
    DBTxt_APODO: TbsSkinDBText;
    DBTxt_CEDULA: TbsSkinDBText;
    DBTxt_NOMBREc: TbsSkinDBText;
    DBTxt_SEXO: TbsSkinDBText;
    DBTxt_NUMERO_SS: TbsSkinDBText;
    DBTxt_PASAPORTE: TbsSkinDBText;
    DBTxt_DIRECCION: TbsSkinDBText;
    DBTxt_NACIONALIDAD: TbsSkinDBText;
    DBTxt_CORREO_ELETRONICO: TbsSkinDBText;
    DBTxt_TELNO_CASA: TbsSkinDBText;
    DBTxt_TELNO_CELULAR: TbsSkinDBText;
    DBTxt_TELNO_TRABAJO: TbsSkinDBText;
    DBTxt_NOMBRE_CONYUGUE: TbsSkinDBText;
    DBTxt_NOMBRE_PADRE: TbsSkinDBText;
    DBTxt_NOMBRE_MADRE: TbsSkinDBText;
    DBTxt_NOMBRE_ESTANTE: TbsSkinDBText;
    DBTxt_SECCION: TbsSkinDBText;
    DBTxt_ORDEN_SECCION: TbsSkinDBText;
    ME_BuscaPaciente: TEditInsideHelp;
    procedure NuevoPacienteClick(Sender: TObject);
    procedure SPB_NuevoPacienteClick(Sender: TObject);
    procedure SPB_ModificarPacienteClick(Sender: TObject);
    procedure SPB_EliminarPacienteClick(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure RCB_NumeroRegistroClick(Sender: TObject);
    procedure RCB_NumeroCedulaClick(Sender: TObject);
    procedure RCB_NombrePacienteClick(Sender: TObject);
    procedure RCB_ApelllidosPacienteClick(Sender: TObject);
    procedure RCB_ApodoPacienteClick(Sender: TObject);
    procedure BT_BuscarClick(Sender: TObject);
    procedure DBG_PacientesDblClick(Sender: TObject);
    procedure DBG_PacientesCellClick(Column: TbsColumn);
    procedure IBQr_BuscaPacienteAfterClose(DataSet: TDataSet);
    procedure DBG_PacientesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IBQr_BuscaPacienteNACIONALIDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_BuscaPacienteEDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Mdicos1Click(Sender: TObject);
    procedure EspecialidadesMedicas1Click(Sender: TObject);
    procedure CBB_MedicosDropDown(Sender: TObject);
    procedure CitasMedicoLabor(NombreMedico:string);
    procedure CBB_MedicosChange(Sender: TObject);
    procedure BT_AgregarCitaClick(Sender: TObject);
    procedure Calendario1NumberClick(Sender: TObject);
    procedure DBG_1DblClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure Modificar2Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure PM_CitasPopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RCB_SeguroSocialClick(Sender: TObject);
    procedure RCB_PasaportePacienteClick(Sender: TObject);
    procedure ME_BuscaPacienteChange(Sender: TObject);
    procedure ME_BuscaPacienteKeyPress(Sender: TObject; var Key: Char);
    procedure M2_1Change(Sender: TObject);
    procedure DBG_1CellClick(Column: TbsColumn);
    procedure SPB_ModificaCitaClick(Sender: TObject);
    procedure NV_BusquedasPacientesClick(Sender: TObject;
      Button: TbsNavigateBtn);
    procedure IBQr_BuscaPacienteNOMBRECGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SPB_EliminarCitaClick(Sender: TObject);
    procedure RCB_TelefonoClick(Sender: TObject);
    procedure MM_CambioCaratula1Click(Sender: TObject);
    procedure MM_Salir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MM_ManejodeDiagnosticoClick(Sender: TObject);
    procedure MM_DiagnosticosClick(Sender: TObject);
    procedure MM_ConsultasDiagnsticosEdadClick(Sender: TObject);
    procedure MM_ConsultasPorExtranjeraClick(Sender: TObject);
    procedure MM_ConsultaMedicaClick(Sender: TObject);
    procedure MM_Ci1Click(Sender: TObject);
    procedure MM_CitasporEspecialidadMdica1Click(Sender: TObject);
    procedure MM_ListadePacientes2Click(Sender: TObject);
    procedure MM_ListaNuevosPacientes1Click(Sender: TObject);
    procedure MM_PacientesporNacionalidad1Click(Sender: TObject);
    procedure MM_NSSAseguradoras1Click(Sender: TObject);
    procedure MM_ConsultaspacientesaseguradosClick(Sender: TObject);
    procedure MM_Visualizar2Click(Sender: TObject);
    procedure SPB_MedicosClick(Sender: TObject);
    procedure SPB_EspecialidadesClick(Sender: TObject);
    procedure SPB_NSSClick(Sender: TObject);
    procedure SPB_DiagnosticosPacientesClick(Sender: TObject);
    procedure SPB_DiagnosticoMedicoClick(Sender: TObject);
    procedure MM_Imprimir1Click(Sender: TObject);
    procedure MM_DiagnosticoClick(Sender: TObject);
    procedure PM_1Popup(Sender: TObject);
    procedure MM_Modificar3Click(Sender: TObject);
    procedure SPB_1Click(Sender: TObject);
    procedure SPB_ImprimirClick(Sender: TObject);
    procedure MM_Usuarios1Click(Sender: TObject);
    procedure MM_ConsultasPacientesReincidentesClick(Sender: TObject);
    procedure TM_CuentaTiempoTimer(Sender: TObject);
    procedure MM_EliminarPaciente1Click(Sender: TObject);
    procedure MM_Activo1Click(Sender: TObject);
    procedure MM_ActivarDesactivar1Click(Sender: TObject);
    procedure MM_ProductividadMedicaClick(Sender: TObject);
    procedure HTKY_1HotKey(Sender: TObject);
    procedure ConfParametrosClick(Sender: TObject);
    procedure DBG_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HTKY_NuevoPacienteHotKey(Sender: TObject);
    procedure ConfEstante1Click(Sender: TObject);
    procedure IBQr_BuscaPacienteNUMERO_SSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MM_ConexionBaseDatosClick(Sender: TObject);
    procedure MM_RestaurarBasedeDatosClick(Sender: TObject);
    procedure MM_CrearBackupClick(Sender: TObject);
    procedure IBQr_BuscaPacienteTELNO_CASAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_BuscaPacienteTELNO_CELULARGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_BuscaPacienteTELNO_TRABAJOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DS_1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure InsertarCita(COMENTARIO: string; ESPERA, ESTADO:Integer;
              FECHA_CITA, FECHA_CREADO:TDateTime; ID_MEDICO, ID_PACIENTE, ORDEN_CITA, Mensaje:Integer);
    procedure EliminarCita(Id_Cita, Mensaje:Integer);
    procedure EliminarPaciente(Id_Paciente, Mensaje: Integer);
    function ValidaOpcBusqueda:Integer;
  public
    { Public declarations }
    procedure ActualizaConsultas;
    function CalculaProductividadMedica(var Id_Medico:Integer; FechaInicial, FechaFinal: TDateTime):string;
    function Actualiza_PM_Estado(Id_Paciente: Integer): Integer;
    procedure EstadoPaciente(Id_Paciente, Estado, Mensaje: Integer);
    procedure DatosPaciente(Id_Paciente_Ver, Imprimir: Integer);
    function leCadINI (clave, cadena : string; defecto : String) : String;
    procedure esCadINI (clave, cadena : string; valor : String);
    function ObtenerIdNacionalidad(NombreNacionalidad:string):Integer;
    function CuentaCita(Id_Medico, Max_CitaMedico, NootificaMaxCita, ExcederCita, Mensaje: Integer; Fecha:TDateTime):string;
    procedure BuscarGeneral;
    function BuscaID_MEDICOnombre(NombreMedico:string):Integer;
    procedure ModificarCita(COMENTARIO: string; ESPERA, ESTADO:Integer;
              FECHA_CITA, FECHA_CREADO:TDateTime; ID_CITA, ID_MEDICO, ID_PACIENTE, ORDEN_CITA, Mensaje:Integer);
    procedure BuscarCitasXMedico(Id_Medico: Integer; FechaCita:TDateTime);
    procedure LlenarCamposP;
    function BuscaNacionalidad(Id_Nacionalidad:Integer):string;
    function BuscaEdad(FechaNac:TDateTime):String;
    procedure LlenarComboMedico(JvComboBox:TJvComboBox);
    function ValidaCitas:Boolean;
    function ValidaCitaExiste(Id_Paciente, Id_Medico:Integer; Fecha_Cita:TDateTime):Boolean;
    procedure BuscaPaciente(ValorBusqueda:string; B_Exacta:Boolean; Opcion, Mensaje: Integer);
    procedure ActualizarEstadoCitas(Mensaje:Integer);
    procedure DesAutoriza(TiempoSegundo: Integer; Control: TbsSkinStdLabel);
  end;
const
  Silueta: string = 'silueta.gif';
  SiluetaVacia:string ='SiluetaVacia.jpg';
  LogoCentro: string = 'lh.jpg';
  NombreCentro: string = 'HOSPITAL MUNICIPAL MAIM�N';
  DireccionCentro: string = 'C/ Padre Fantino, Municipio Maim�n, Prov. Monse�or Nuel';
  E_MailCentro: string = 'E-Mail: hospital_maimon@hotmail.com';
  TelnoCentro: string = 'Tel�fono: 809-551-2529'; 
  //RutaGuardarFoto: string = 'C:\Inventario Record\Imagenes\Pacientes\';
  TiempoAutorizado: Integer = 5;
var
  FPrincipal: TFPrincipal;
  TiempoEspera: Integer;
  ControlLabel: TbsSkinStdLabel; //control label que recibe el conteo de tiempo para desactivar la autorizacion
  Autorizado: Boolean; //Autoriza una accion
  NombreUsu, NombreUsuLog: string;
  RutaGuardarFoto: string;
  RutaArchivos:string; //directorio raiz de la aplicacion
  RutaArchivosImagenes: String;// = 'C:\Inventario Record\Imagenes\';
  Id_UsuarioSistema:Integer;
  UltimaFechaSesionUsu, UltimaHoraSesionUsu: TDateTime;
  BusquedaExacta:Boolean; //Verdadero forza la busqueda de pacientes por codigo exacto.
  R_N_FotoPaciente:string; //(Ruta Nombre)Almacena temporalmente la ruta de la nueva foto.
  Cant_Max_Record:string='100'; //Cantidad maxima de tuplas a mostrar en el grid.
  _FEstanteria:TFEstanteria;
  _Fconf:TFConf;
  _FCedulados:TFCedulados;
  _FUsuario:TFUsuarios;
  _FArs: TFArs;
  _FEnfermedades:TFEnfermedades;
  _FDiagnostico:TFDiagnostico;
  _FReportes:TFReportes;
  _FFotos:TFFotos;
  _FNuevoPaciente:TFNuevoPaciente;
  _FMedicos:TFMedicos;
  _FEspecialidadMedica:TFEspecialidadMedica;
  _FDatosMicelaneos: TFDatosMiscelaneos;
  ExcederCitas, Modificar, EliminaFoto: Boolean;
  Id_Paciente:Integer;
  Id_Medico, Id_MedicoAsig, Id_Cita:Integer;
  NotificarExceso, MaxNumeroTurno, ExcederMax: Integer; //Para el control de las citas
  OpcionBusqueda:Integer;
  RutaSilueta, NombreArchivoFoto:string;
  C_PACIENTE,
  M_PACIENTE,
  E_PACIENTE,
  C_CITA,
  M_CITA,
  E_CITA,
  C_DIAGNOSTICO,
  M_DIAGNOSTICO,
  E_DIAGNOSTICO,
  C_DIAGNOSTICO_PACIENTE,
  M_DIAGNOSTICO_PACIENTE,
  E_DIAGNOSTICO_PACIENTE,
  C_ARS,
  M_ARS,
  E_ARS,
  C_MEDICO,
  M_MEDICO,
  E_MEDICO,
  C_ESPEC_MEDICA,
  M_ESPEC_MEDICA,
  E_ESPEC_MEDICA,
  R_RESERVADOS,
  R_LISTA_PACIENTES,
  R_NUEVOS_PACIENTES,
  R_PACIENTES_NACIONALIDAD,
  R_CONSULTAS_MEDICAS,
  R_CONSULTAS_DIAGNOSTICOS,
  R_CONSULTAS_NACIONALIDAD,
  R_CONSULTAS_ASEGURDOS,
  R_CONSULTAS_REINCIDENTES,
  R_CITAS,
  R_PRODUCTIVIDAD_MEDICA,
  PRINT_DATOS_PACIENTES,
  AUTORIZAR,
  C_PACIENTE_USU,
  M_PACIENTE_USU,
  E_PACIENTE_USU,
  C_CITA_USU,
  M_CITA_USU,
  E_CITA_USU,
  C_DIAGNOSTICO_USU,
  M_DIAGNOSTICO_USU,
  E_DIAGNOSTICO_USU,
  C_DIAGNOSTICO_PACIENTE_USU,
  M_DIAGNOSTICO_PACIENTE_USU,
  E_DIAGNOSTICO_PACIENTE_USU,
  C_ARS_USU,
  M_ARS_USU,
  E_ARS_USU,
  C_MEDICO_USU,
  M_MEIDCO_USU,
  E_MEDICO_USU,
  C_ESPEC_MEDICA_USU,
  M_ESPEC_MEDICA_USU,
  E_ESPEC_MEDICA_USU,
  R_RESERVADOS_USU,
  R_LISTA_PACIENTES_USU,
  R_NUEVOS_PACIENTES_USU,
  R_PACIENTES_NACIONALIDAD_USU,
  R_CONSULTAS_MEDICAS_USU,
  R_CONSULTAS_DIAGNOSTICOS_USU,
  R_CONSULTAS_NACIONALIDAD_USU,
  R_CONSULTAS_ASEGURDOS_USU,
  R_CONSULTAS_REINCIDENTES_USU,
  R_CITAS_USU,
  R_PRODUCTIVIDAD_MEDICA_USU,
  PRINT_DATOS_PACIENTES_USU,
  AUTORIZAR_USU: Integer;
  _vD_Inicial:string;   //Directorio inicial para los backup...
implementation

uses UContenedorDatos, QRCtrls, UNSS, MaskUtils;

resourcestring
  _vCB_       = 'Crear Backup.';
  _vRDB_      = 'Restaurar Base de Datos.';
  _vDB_lb     = 'Base de Datos';
  _vB_lb      = 'Backup';
  _vG_lb      = 'Guardar en:';
  _FBK_       = '.fbk';


{$R *.dfm}

//escribe valor string en archivo INI
procedure TFPrincipal.esCadINI (clave, cadena : string; valor : String);
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

//lee un valor string del INI
function TFPrincipal.leCadINI (clave, cadena : string; defecto : String) : String;
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;
end;

procedure TFPrincipal.NuevoPacienteClick(Sender: TObject);
begin
  SPB_NuevoPacienteClick(Self);
end;

procedure TFPrincipal.SPB_NuevoPacienteClick(Sender: TObject);
begin
  if (C_PACIENTE_USU = 1) or (Autorizado) then
    begin
      try
        _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
        with _FNuevoPaciente do
          begin
            LlenarCombNacionalidad(CBB_Nacionalidad, False);
            LlenarCombEstantes(CBB_Estante);
            IMG_Paciente.Tag:=0;
            Caption:='Crear Nuevo Registro de Paciente.';
            DTP_FechaIngreso.Date:=Now;
            RCB_PacienteActivo.Visible:=False;
            if FPrincipal.leCadINI('DB', 'Rt2', '')='1'then
              begin
                BT_BuscaCedulado.Visible:=True;
              end;
            if(leCadINI('SUCONF', 'UEXP', '0') = '1') then
              begin
                PN_1.Enabled:=True;
              end;
            ShowModal;
            BuscaPaciente('', False, ValidaOpcBusqueda, 0);
            IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', Localizad, []);
            //DBG_PacientesCellClick(nil);
          end;
      finally
        Autorizado:=False;
        _FNuevoPaciente.Free;
      end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.SPB_ModificarPacienteClick(Sender: TObject);
begin
  if (M_PACIENTE_USU = 1) or (Autorizado) then
    begin
      try
        Modificar:=True;
        _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
        with _FNuevoPaciente do
          begin
            LlenarCombNacionalidad(CBB_Nacionalidad, Modificar);
            LlenarCombEstantes(CBB_Estante);
            LlenarCamposP;
            Caption:='Modificar Datos de Paciente.';
            if(leCadINI('SUCONF', 'MFIP', '0') = '0') then
              begin
                DTP_FechaIngreso.Enabled:=False;
              end;
            RCB_PacienteActivo.Visible:=False;
            if FPrincipal.leCadINI('DB', 'Rt2', '')='1'then
              begin
                BT_BuscaCedulado.Visible:=True;
              end;
            if(leCadINI('SUCONF', 'UEXP', '0') = '1') then
              begin
                PN_1.Enabled:=True;
              end;
            if(FileExists(RutaGuardarFoto+Trim(IBQr_BuscaPacienteCODIGO_PACIENTE.AsString)+'.jpg'))then
                IMG_Paciente.Tag:=9
            else
              IMG_Paciente.Tag:=0;

            ShowModal;
            Free;
          end;
        EliminaFoto:=False;
        Modificar:=False;
        BuscaPaciente('', False, ValidaOpcBusqueda, 0);
        IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', Localizad, [] );
        //DBG_PacientesCellClick(nil);                                 
        Localizad:=0;
        Autorizado:=False;
      except
        Autorizado:=False;
      end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.SPB_EliminarPacienteClick(Sender: TObject);
var
  _Flogin: TFLoginUsuario;
  Cod_Pat:Integer;
begin
  if (E_PACIENTE_USU = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      if(PSSDLG_Autorizar.Execute)then
        begin
          _Flogin:=TFLoginUsuario.Create(Self);
          if _Flogin.AutorizaAcceso(PSSDLG_Autorizar.Password) then
            begin
              PSSDLG_Autorizar.Password:='';
              if(MS_Personalizado.MessageDlg('Se propone eliminar el paciente seleccionado.'+#13+
              'Si elimina el paciente perdera toda informaci�n referente al mismo.'+#13+
              '- Citas reservadas.'+#13+
              '- Diagnosticos realizados.'+#13+#13+
              'Confirme que desea realmente eliminar este paciente?', mtConfirmation, [mbYes,mbNo], 0) = IDYES)then
                begin
                  Cod_Pat:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsInteger;
                  EliminarPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 1);

                  _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
                  _FNuevoPaciente.EliminaFotoPaciente(Cod_Pat, 0);
                  _FNuevoPaciente.Free;
                  BT_BuscarClick(Self);
                end;
            end;
          _Flogin.Free;
        end;
      {try
          Modificar:=True;
          _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
          with _FNuevoPaciente do
            begin
              BT_Aceptar.Caption:='&Eliminar';
              BT_LimpiarCampos.Enabled:=False;
              SPB_Foto.Enabled:=False;
              Caption:='Eliminar Registro de Paciente.';
              ShowModal;
            end;
          Modificar:=False;
          Autorizado:=False;
      finally
          _FNuevoPaciente.Free;
      end; }
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.Modificar1Click(Sender: TObject);
begin
  SPB_ModificarPacienteClick(Self);
end;

procedure TFPrincipal.RCB_NumeroRegistroClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=1;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un n�mero de registro';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and CODIGO_PACIENTE like :p0 order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:=''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.SetFocus;
end;

procedure TFPrincipal.RCB_NumeroCedulaClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=4;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un n�mero de c�dula';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and CEDULA like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:=''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.SetFocus;
  ME_BuscaPaciente.MaxLength:=11;
end;

procedure TFPrincipal.RCB_NombrePacienteClick(Sender: TObject);
var
  str:string;
begin
  OpcionBusqueda:=2;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un nombre';
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and NOMBRES like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:='%'+''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  ME_BuscaPaciente.SetFocus;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.MaxLength:=70;
end;

procedure TFPrincipal.RCB_ApelllidosPacienteClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=5;
  ME_BuscaPaciente.InsideHelpText:='Ingrese el/los apellido/s';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and APELLIDOS like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:='%'+''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  ME_BuscaPaciente.SetFocus;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);  
  ME_BuscaPaciente.MaxLength:=70;
end;

procedure TFPrincipal.RCB_ApodoPacienteClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=3;
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and APODO like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:='%'+''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;    
  ME_BuscaPaciente.SetFocus;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.MaxLength:=30;
    
end;

procedure TFPrincipal.BT_BuscarClick(Sender: TObject);
begin
  BuscaPaciente(Trim(ME_BuscaPaciente.Text), BusquedaExacta, OpcionBusqueda, 1);
  //DBG_PacientesCellClick(nil);
end;

procedure TFPrincipal.DBG_PacientesDblClick(Sender: TObject);
begin
  if(IBQr_BuscaPaciente.RecordCount > 0)then
    begin
      //Id_Paciente:=IBQr_BuscaPacienteIDPACIENTE.AsInteger;
    end
  else
    begin
      //Id_Paciente:=0;
    end;
end;

procedure TFPrincipal.DBG_PacientesCellClick(Column: TbsColumn);
var
  Pacientes: TFNuevoPaciente;
begin
  if(IBQr_BuscaPaciente.RecordCount > 0)then
    begin
      MM_ActivarDesactivar1.Enabled:=True;
      Id_Paciente:=IBQr_BuscaPacienteIDPACIENTE.AsInteger;
      SPB_Imprimir.Enabled:=True;
      //SPB_ModificarPaciente.Glyph.LoadFromFile('C:\Inventario Record\Imagenes\editar.bmp');
      SPB_ModificarPaciente.Enabled:=True;
      //Modificar1.Bitmap.LoadFromFile('C:\Inventario Record\Imagenes\editar.bmp');
      Modificar1.Enabled:=True;
      //SPB_EliminarPaciente.Glyph.LoadFromFile('C:\Inventario Record\Imagenes\borrar.bmp');
      SPB_EliminarPaciente.Enabled:=True;
      //MM_Eliminar2.Bitmap.LoadFromFile('C:\Inventario Record\Imagenes\borrarInv.bmp');
      MM_Eliminar2.Enabled:=True;
      SPB_1.Enabled:=True;
      Pacientes:=TFNuevoPaciente.Create(Self);
      IMG_ImagenPaciente.Picture.LoadFromFile(Pacientes.CargarFoto(IBQr_BuscaPacienteCODIGO_PACIENTE.AsString,RutaGuardarFoto, 1));
      Pacientes.Free;
    end
  else
    begin
      Id_Paciente:=0;
      MM_ActivarDesactivar1.Enabled:=False;
      SPB_Imprimir.Enabled:=False;
//      SPB_ModificarPaciente.Glyph:=nil;
//      SPB_ModificarPaciente.Glyph.LoadFromFile('C:\Inventario Record\Imagenes\editarInv.bmp');
      SPB_ModificarPaciente.Enabled:=False;
      SPB_1.Enabled:=False;
//      SPB_EliminarPaciente.Glyph:=nil;
//      SPB_EliminarPaciente.Glyph.LoadFromFile('C:\Inventario Record\Imagenes\borrarInv.bmp');
      SPB_EliminarPaciente.Enabled:=False;
      Modificar1.Enabled:=False;
      MM_Eliminar2.Enabled:=False;
      Pacientes:=TFNuevoPaciente.Create(Self);
      IMG_ImagenPaciente.Picture.LoadFromFile(Pacientes.CargarFoto('',RutaGuardarFoto, 1));
      Pacientes.Free;
    end;
end;

procedure TFPrincipal.LlenarCamposP;
var
  Cont, I, J:Integer;
begin
  if(IBQr_BuscaPaciente.Active = True)then
  if(IBQr_BuscaPaciente.RecordCount > 0)then
    begin
      //_FNuevoPaciente:=TFNuevoPaciente.Create(Self);
      with _FNuevoPaciente do
        begin
          E_NombreP.Text:=IBQr_BuscaPacienteNOMBRES.AsString;
          E_Apellido1P.Text:=IBQr_BuscaPacienteAPELLIDOS.AsString;
          E_Apodo.Text:=IBQr_BuscaPacienteAPODO.AsString;
          if(IBQr_BuscaPacienteSEXO.AsString = 'MASCULINO')then
            begin
              RCB_Masculino.Checked:=True;
            end
          else
          if(IBQr_BuscaPacienteSEXO.AsString = 'FEMENINO')then
            begin
              RCB_Femenino.Checked:=True;
            end;
        if(IBQr_BuscaPacienteMENOR_EDAD.AsInteger = 1)then
          begin
            RCB_MenorEdad.Checked:=True;
            E_NombrePadreTuror.Enabled:=True;
            CBB_Parentesco.Enabled:=True;
            E_NombrePadreTuror.Text:=IBQr_BuscaPacienteNOMBRE_TUTOR.AsString;
            CBB_Parentesco.Text:=IBQr_BuscaPacientePARENTESCO_TUTOR.AsString;
          end
        else
          begin
            RCB_MenorEdad.Checked:=False;
            E_NombrePadreTuror.Clear;
            CBB_Parentesco.Items.Clear;
            E_NombrePadreTuror.Enabled:=False;
            CBB_Parentesco.Enabled:=False;
          end;
          CBB_Nacionalidad.ItemIndex:=IBQr_BuscaPacienteNACIONALIDAD.AsInteger;
          M_DireccionPaciente.Lines.Text:=IBQr_BuscaPacienteDIRECCION.AsString;
          ME_Cedula.Text:=IBQr_BuscaPacienteCEDULA.AsString;

          ME_NumeroSeguroSocial.Text:=IBQr_BuscaPacienteNUMERO_SS.AsString;
          E_ARS.Text:=IBQr_BuscaPacienteNOMBRE_ARS.AsString;

          E_Pasaporte.Text:=IBQr_BuscaPacientePASAPORTE.AsString;
          E_CorreoElectronico.Text:=IBQr_BuscaPacienteCORREO_ELETRONICO.AsString;
          DateE_FechaNacimientoP.Date:=IBQr_BuscaPacienteFECHA_NACIMIENTO.AsDateTime;
          E_Edad.Text:=CalculaEdad(DateE_FechaNacimientoP.Date,'A', 'M', 'D');
          ME_TelnoCasa.Text:=IBQr_BuscaPacienteTELNO_CASA.AsString;
          ME_TelnoCelular.Text:=IBQr_BuscaPacienteTELNO_CELULAR.AsString;
          ME_TelnoTrabajo.Text:=IBQr_BuscaPacienteTELNO_TRABAJO.AsString;
          ME_ExtencionTelnoTrabajo.Text:=IBQr_BuscaPacienteTRABAJO_EXT.AsString;
          ME_NumeroRegistro.Text:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
          E_NombrePadre.Text:=IBQr_BuscaPacienteNOMBRE_PADRE.AsString;
          E_NombreMadre.Text:=IBQr_BuscaPacienteNOMBRE_MADRE.AsString;
          E_NombreConyugue.Text:=IBQr_BuscaPacienteNOMBRE_CONYUGUE.AsString;
          if (IBQr_BuscaPacienteNOMBRE_ESTANTE.AsString <> '')and(FPrincipal.leCadINI('SUCONF', 'UEXP', '0')='1')then
            begin
              //Cont:=0;
              Cont:=CBB_Estante.Items.Count;
              for I := 0 to Cont-1 do
                begin
                  CBB_Estante.ItemIndex:=I;
                  if Trim(CBB_Estante.Text)=IBQr_BuscaPacienteNOMBRE_ESTANTE.AsString then
                    begin
                      CBB_EstanteChange(Self);
                      Break;
                    end;
                end;
              cont:=CBB_Seccion.Items.Count;
              for J := 0 to Cont-1 do
                begin
                  CBB_Seccion.ItemIndex:=J;
                  if Trim(CBB_Seccion.Text) = IBQr_BuscaPacienteSECCION.AsString then
                    begin
                      CBB_SeccionChange(Self);
                      SE_AsignaEspcioEst.Value:=IBQr_BuscaPacienteORDEN_SECCION.AsInteger;
                      Break;
                    end;
                end;
            end;
          IMG_Paciente.Picture.LoadFromFile(CargarFoto(IBQr_BuscaPacienteCODIGO_PACIENTE.AsString, RutaGuardarFoto, 1));
          DTP_FechaIngreso.DateTime:=IBQr_BuscaPacienteFECHA_INGRESO.AsDateTime;
        end;
    end;
end;

procedure TFPrincipal.IBQr_BuscaPacienteAfterClose(DataSet: TDataSet);
begin
  Id_Paciente:=-1;
  SPB_ModificarPaciente.Enabled:=False;
end;

procedure TFPrincipal.DBG_PacientesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if(IBQr_BuscaPaciente.Active = True)then
  if(IBQr_BuscaPaciente.RecordCount > 0)then
  if(Key in[VK_DOWN,VK_UP, VK_LEFT, VK_RIGHT])then
    begin
      //DBG_PacientesCellClick(nil);
    end
  else
    begin
      Id_Paciente:=-1;
    end;
  if (Key = vk_delete)and(IBQr_BuscaPaciente.RecordCount > 0) then
    begin
      SPB_EliminarPacienteClick(Self);
    end;
  if(Key = vk_f3)then
    begin
      ME_BuscaPaciente.SetFocus;
    end;
end;

function TFPrincipal.BuscaNacionalidad(Id_Nacionalidad: Integer): string;
var
  IBQr_BN:TIBQuery;
begin
  IBQr_BN:=TIBQuery.Create(Self);
  with IBQr_BN do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select PAIS, GENTILICIO from NACIONALIDAD where IDNACIONALIDAD = :p0;');
      ParamByName('p0').Value:=Id_Nacionalidad;
      Open;
    end;
  Result:=IBQr_BN.FieldByName('GENTILICIO').AsString;
  IBQr_BN.Free;
end;

procedure TFPrincipal.IBQr_BuscaPacienteNACIONALIDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_BuscaPacienteNACIONALIDAD.AsInteger > 0 then
    begin
      Text:=BuscaNacionalidad(IBQr_BuscaPacienteNACIONALIDAD.AsInteger);
    end
  else
    begin
      //Text:='Nacionalidad no definida';
    end;
end;

function TFPrincipal.BuscaEdad(FechaNac: TDateTime): String;
var
  IBQr_BEdad:TIBQuery;
begin
  IBQr_BEdad:=TIBQuery.Create(Self);
  with IBQr_BEdad do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.add('select FECHA_NACIMIENTO from PACIENTES where ');
    end;
end;

procedure TFPrincipal.IBQr_BuscaPacienteEDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  Pacientes:TFNuevoPaciente;
begin
  Pacientes:=TFNuevoPaciente.Create(Self);
  if IBQr_BuscaPacienteFECHA_NACIMIENTO.AsString <> '' then
    Text:=Pacientes.CalculaEdad(IBQr_BuscaPacienteFECHA_NACIMIENTO.AsDateTime, 'A', 'M', 'D')
  else
    begin
      //Text:='Edad no definido';
    end;
  Pacientes.Free;
end;

procedure TFPrincipal.Mdicos1Click(Sender: TObject);
begin
  try
    _FMedicos:=TFMedicos.Create(Self);
    with _FMedicos do
      begin
        ShowModal;
        ActualizarEstadoCitas(0);
      end;
  finally
    _FMedicos.Free;
  end;
end;

procedure TFPrincipal.EspecialidadesMedicas1Click(Sender: TObject);
begin
  try
    _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
    with _FEspecialidadMedica do
      begin
        ShowModal;
        Free;
      end;
  except

  end;
end;

procedure TFPrincipal.LlenarComboMedico(JvComboBox:TJvComboBox);
var
  IBQr_BuscaMedico:TIBQuery;
begin
  IBQr_BuscaMedico:=TIBQuery.Create(Self);
  with IBQr_BuscaMedico do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_MEDICO');
      SQL.Add('from MEDICOS where ESTADO = 1 order by NOMBRE_MEDICO;');
      Open;
    end;
  if(IBQr_BuscaMedico.RecordCount > 0)then
    begin
      IBQr_BuscaMedico.First;
      JvComboBox.Items.Clear;
      JvComboBox.Items.Add('Selecione el m�dico');
      while not IBQr_BuscaMedico.Eof do
        begin
          JvComboBox.Items.Add(IBQr_BuscaMedico.FieldByName('NOMBRE_MEDICO').AsString);
          IBQr_BuscaMedico.Next;
        end;
      JvComboBox.ItemIndex:=0;
    end;
  IBQr_BuscaMedico.Free;
end;

procedure TFPrincipal.CBB_MedicosDropDown(Sender: TObject);
begin
  LB_21.Caption:='ESPECIALIDAD MEDICA:';
  LlenarComboMedico(CBB_Medicos);
end;

procedure TFPrincipal.CitasMedicoLabor(NombreMedico: string);
var
  IBQr_BuscaMedico:TIBQuery;
begin
  IBQr_BuscaMedico:=TIBQuery.Create(Self);
  with IBQr_BuscaMedico do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ESTADO, EXCEDER_MAX, ID_ESPECIALIDAD, IDMEDICO, MAX_TURNO, NOMBRE_MEDICO, NOTIFICAR_MAX');
      SQL.Add('from MEDICOS where NOMBRE_MEDICO = :p0 and ESTADO = 1;');
      ParamByName('p0').Value:=NombreMedico;
      Open;
    end;
  NotificarExceso:=IBQr_BuscaMedico.FieldByName('NOTIFICAR_MAX').AsInteger;
  MaxNumeroTurno:=IBQr_BuscaMedico.FieldByName('MAX_TURNO').AsInteger;
  ExcederMax:=IBQr_BuscaMedico.FieldByName('EXCEDER_MAX').AsInteger;
  Id_EspecMedica:=IBQr_BuscaMedico.FieldByName('ID_ESPECIALIDAD').AsInteger;
  Id_Medico:=IBQr_BuscaMedico.FieldByName('IDMEDICO').AsInteger;
end;

procedure TFPrincipal.CBB_MedicosChange(Sender: TObject);
begin
  ActualizarEstadoCitas(1);
end;

procedure TFPrincipal.InsertarCita(COMENTARIO: string; ESPERA,
  ESTADO: Integer; FECHA_CITA, FECHA_CREADO: TDateTime; ID_MEDICO,
  ID_PACIENTE, ORDEN_CITA, Mensaje: Integer);
var
  IBQr_InsertaCita:TIBQuery;
begin
  try
    IBQr_InsertaCita:=TIBQuery.Create(Self);
    with IBQr_InsertaCita do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into CITAS(COMENTARIO, ESPERA, ESTADO, FECHA_CITA, ID_MEDICO, ID_PACIENTE, ORDEN_CITA, FECHA_CREADO)');
        SQL.Add('values(:p0, :p1, :p2,:p3, :p4, :p5, :P6, :p7);');
        ParamByName('p0').Value:=COMENTARIO;
        ParamByName('p1').Value:=ESPERA;
        ParamByName('p2').Value:=ESTADO;
        ParamByName('p3').Value:=FECHA_CITA;
        ParamByName('p4').Value:=ID_MEDICO;
        ParamByName('p5').Value:=ID_PACIENTE;
        ParamByName('p6').Value:=ORDEN_CITA;
        ParamByName('p7').Value:=FECHA_CREADO;
        ExecSQL;
        Free;
        if(Mensaje = 1)then
        FPrincipal.MS_Personalizado.MessageDlg('Cita creada con �xito.',mtInformation,[mbOK],0);
      end;
  except

  end;
end;

function TFPrincipal.ValidaCitas: Boolean;
begin
  if(Trim(CBB_Medicos.Text) = '')then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(CBB_Medicos, 'Seleccione un m�dico de la lista para continuar.', ikInformation, 'Informaci�n', 5000);
    end
  else
  if(CompareDate(DateOf(Calendario1.Date),DateOf(Now)) = -1)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(Calendario1, 'La fecha seleccionada es inferior a la fecha actual,'+#13+
      'seleccione una fecha superior a la fecha actual.', ikInformation, 'Informaci�n.', 5000);
    end
  else
  if(IBQr_BuscaPaciente.Active = False)or(Id_Paciente = -1)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(DBG_Pacientes, 'Seleccione un paciente para continuar.', ikInformation, 'Informaci�n.', 5000);
    end
  else
  if(ValidaCitaExiste(Id_Paciente, Id_Medico,DateOf(Calendario1.Date)) = False)then
    begin
      Result:=False;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFPrincipal.BT_AgregarCitaClick(Sender: TObject);
begin
  if (C_CITA_USU = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      if CBB_Medicos.ItemIndex > 0 then
        begin
          if(ValidaCitas = True)then
            begin
              CuentaCita(Id_Medico,MaxNumeroTurno,NotificarExceso,ExcederMax,0,DateOf(Calendario1.Date));
              if(ExcederCitas = True)then
                begin
                  InsertarCita(M2_1.Text,0,1,Calendario1.Date,DateOf(Now),Id_Medico,Id_Paciente,0,1);
                  M2_1.Lines.Clear;
                  BuscarCitasXMedico(Id_Medico,Calendario1.Date);
                  LB_26.Caption:=CuentaCita(Id_Medico,MaxNumeroTurno,NotificarExceso,ExcederMax,1,DateOf(Calendario1.Date));
                end
              else
                begin
                  MS_Personalizado.MessageDlg('Has completado el n�mero m�ximo de citas por dia para este m�dico.'+#13+'Imposible agregar m�s citas a este m�dico en este dia.',mtInformation, [mbOK],0);
                end;
            end;
        end
      else
        begin
          JvBalloonHint1.ActivateHint(CBB_Medicos, 'Seleccione un m�dico de la lista para crear la cita.', ikInformation, 'Informaci�n', 5000);
        end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.BuscarCitasXMedico(Id_Medico: Integer;
  FechaCita: TDateTime);
begin
  with IBQr_CitaMedico do
    begin
      Close;
      ParamByName('p0').Value:=Id_Medico;
      ParamByName('p1').Value:=FechaCita;
      Open;
    end;
  if IBQr_CitaMedico.RecordCount < 1 then
    IBQr_CitaMedico.Close
  else
    DBG_1CellClick(nil);
end;

procedure TFPrincipal.Calendario1NumberClick(Sender: TObject);
begin
  ActualizarEstadoCitas(0);
  CBB_Medicos.SetFocus;
end;

function TFPrincipal.ValidaCitaExiste(Id_Paciente, Id_Medico: Integer;
  Fecha_Cita: TDateTime): Boolean;
var
  IBQr_VCita:TIBQuery;
begin
  Result:=False;
  IBQr_VCita:=TIBQuery.Create(Self);
  with IBQr_VCita do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ID_MEDICO, ID_CITA, FECHA_CITA  from CITAS where ID_PACIENTE = :p0 and ID_MEDICO = :p1 and FECHA_CITA = :p2');
      ParamByName('p0').Value:=Id_Paciente;
      ParamByName('p1').Value:=Id_Medico;
      ParamByName('p2').Value:=Fecha_Cita;
      Open;
    end;
  if IBQr_VCita.RecordCount > 0 then
    begin
      if(Modificar = False)then
        begin
          Result:=False;
          MS_Personalizado.MessageDlg('Este paciente ya tiene una cita registrada para esta fecha y para este m�dico', mtInformation, [mbOK],0);
        end
      else
      if(Modificar = True)then
        begin
          if(IBQr_VCita.FieldByName('ID_MEDICO').AsInteger <> Id_Medico)or((IBQr_VCita.FieldByName('ID_CITA').AsInteger = Id_Cita)and
          (IBQr_VCita.FieldByName('FECHA_CITA').AsDateTime = DateOf(Calendario1.Date)))then
            begin
              Result:=True;
            end
          else
            begin
              Result:=False;
              MS_Personalizado.MessageDlg('Este paciente ya tiene una cita registrada para esta fecha y para este m�dico', mtInformation, [mbOK],0);
            end;
        end;
    end
  else
    begin
      Result:=True;
    end;
  IBQr_VCita.Free;
end;

procedure TFPrincipal.DBG_1DblClick(Sender: TObject);
begin
  if(IBQr_CitaMedico.Active = True)then
    if(IBQr_CitaMedico.RecordCount > 0)then
      begin
        Visualizar1Click(Self);

      end;
end;

procedure TFPrincipal.ModificarCita(COMENTARIO: string; ESPERA,
  ESTADO: Integer; FECHA_CITA, FECHA_CREADO: TDateTime; ID_CITA, ID_MEDICO,
  ID_PACIENTE, ORDEN_CITA, Mensaje: Integer);
var
  IBQr_Mod_Cita:TIBQuery;
begin
  try
    IBQr_Mod_Cita:=TIBQuery.Create(Self);
    with IBQr_Mod_Cita do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update CITAS set COMENTARIO = :p0, ESPERA = :p1, ESTADO = :p2,' );
        SQL.add('FECHA_CITA = :p3, FECHA_CREADO = :p4, ID_MEDICO = :p5, ID_PACIENTE = :p6, ORDEN_CITA = :p7');
        SQL.Add('where ID_CITA = :p8');
        ParamByName('p0').Value:=COMENTARIO;
        ParamByName('p1').Value:=ESPERA;
        ParamByName('p2').Value:=ESTADO;
        ParamByName('p3').Value:=FECHA_CITA;
        ParamByName('p4').Value:=FECHA_CREADO;
        ParamByName('p5').Value:=ID_MEDICO;
        ParamByName('p6').Value:=ID_PACIENTE;
        ParamByName('p7').Value:=ORDEN_CITA;
        ParamByName('p8').Value:=ID_CITA;
        ExecSQL;
        Free;
        if Mensaje = 1 then
          MS_Personalizado.MessageDlg('Cita modificada �xcitosamente.', mtInformation, [mbOK],0);
      end;
  except

  end;
end;

procedure TFPrincipal.Visualizar1Click(Sender: TObject);
begin
  _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
  with _FDatosMicelaneos do
    begin
      BSF_F1.MaxHeight:=345;
      BSF_F1.MinHeight:=345;
      BSF_F1.MaxWidth:=559;
      BSF_F1.MinWidth:=559;
      LB_7.Caption:=FPrincipal.IBQr_CitaMedicoCODIGO_PACIENTE.AsString;
      LB_8.Caption:=FPrincipal.IBQr_CitaMedicoNC.AsString;
      LB_9.Caption:=FPrincipal.IBQr_CitaMedicoNOMBRE_MEDICO.AsString;
      LB_10.Caption:=FPrincipal.IBQr_CitaMedicoNOMBRE_ESPECIALIDAD.AsString;
      LB_11.Caption:=FPrincipal.IBQr_CitaMedicoFECHA_CREADO.AsString;
      LB_13.Caption:=FPrincipal.IBQr_CitaMedicoFECHA_CITA.AsString;
      M2_ComentariosCitas.Lines.Text:=FPrincipal.IBQr_CitaMedicoCOMENTARIO.AsString;
      LB_21.Caption:=IBQr_CitaMedicoTELNO_CASA.AsString+'/ '+IBQr_CitaMedicoTELNO_CELULAR.AsString+' /'+IBQr_CitaMedicoTELNO_TRABAJO.AsString;
      LB_22.Caption:=IBQr_CitaMedicoCORREO_ELETRONICO.AsString;
      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
      IMG_1.Picture.LoadFromFile(_FNuevoPaciente.CargarFoto(FPrincipal.IBQr_CitaMedicoCODIGO_PACIENTE.AsString,RutaGuardarFoto, 1));
      _FNuevoPaciente.Free;
      Notebook1.PageIndex:=0;
      Caption:='Visualizar Citas.';
      FormStyle:=fsStayOnTop;
      Show;
      BT_Cerrar.SetFocus;
    end;
end;

procedure TFPrincipal.Modificar2Click(Sender: TObject);
var
  itemComb, I: Integer;
begin
  if (M_CITA_USU = 1) or (Autorizado) then
    begin
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          Autorizado:=False;
          BSF_F1.MaxHeight:=345;
          BSF_F1.MinHeight:=345;
          BSF_F1.MaxWidth:=559;
          BSF_F1.MinWidth:=559;
          Modificar:=True;
          LB_17.Caption:='CODIGO PACIENTE: '+FPrincipal.IBQr_CitaMedicoCODIGO_PACIENTE.AsString;
          LB_15.Caption:='NOMBRE PACIENTE: '+FPrincipal.IBQr_CitaMedicoNC.AsString;
          Calendario1.Date:=FPrincipal.IBQr_CitaMedicoFECHA_CITA.AsDateTime;
          M2_ComentariosCitaMod.Lines.Text:=FPrincipal.IBQr_CitaMedicoCOMENTARIO.AsString;
          DBG_PacientesCellClick(nil);
          LlenarCombMedicosCitasMof;
          itemComb:=CBB_MedicosCitasModif.Items.Count;
          for I := 0 to itemComb-1 do
            begin
              CBB_MedicosCitasModif.ItemIndex:=i;
              if(IBQr_CitaMedicoNOMBRE_MEDICO.AsString = CBB_MedicosCitasModif.Text)then
                begin
                  Break;
                end;
            end;
          Notebook1.PageIndex:=1;
          Caption:='Modificar Cita.';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.EliminarCita(Id_Cita, Mensaje: Integer);
var
  IBQr_ElimCita:TIBQuery;
begin
  try
    IBQr_ElimCita:=TIBQuery.Create(Self);
    with IBQr_ElimCita do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('delete from CITAS where ID_CITA = :p0');
        ParamByName('p0').Value:=Id_Cita;
        ExecSQL;
        Free;
        if(Mensaje = 1)then
          FPrincipal.MS_Personalizado.MessageDlg('Cita eliminada �xitosamente.',mtInformation,[mbOK],0);
      end;
  except
  end;
end;

procedure TFPrincipal.Eliminar1Click(Sender: TObject);
begin
  if E_CITA_USU = 1 then
    begin
      if(IBQr_CitaMedico.Active = True)then
        if(IBQr_CitaMedico.RecordCount > 0)then
          if(MS_Personalizado.MessageDlg('Confirme que desea eliminar la cita seleccionada.'+#13+#13+
          'Pulse Si para eliminar la cita.',mtConfirmation, [mbYes,mbNo],0) = IDYES) then
            begin
              EliminarCita(IBQr_CitaMedicoID_CITA.AsInteger, 1);
              BuscarCitasXMedico(Id_Medico,Calendario1.Date);
              LB_26.Caption:=CuentaCita(Id_Medico,MaxNumeroTurno,NotificarExceso,ExcederMax,0,DateOf(Calendario1.Date));
            end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.PM_CitasPopup(Sender: TObject);
begin
  if(IBQr_CitaMedico.Active = True)then
    begin
      if(IBQr_CitaMedico.RecordCount > 0)then
        begin
          Visualizar1.Enabled:=True;
          Modificar2.Enabled:=True;
          Eliminar1.Enabled:=True;
        end
      else
        begin
          Visualizar1.Enabled:=False;
          Modificar2.Enabled:=False;
          Eliminar1.Enabled:=False;
        end;
    end
  else
    begin
        Visualizar1.Enabled:=False;
        Modificar2.Enabled:=False;
        Eliminar1.Enabled:=False;
    end;
end;
function TFPrincipal.BuscaID_MEDICOnombre(NombreMedico: string): Integer;
var
  IBQr_BuscaIdMed:TIBQuery;
begin
  IBQr_BuscaIdMed:=TIBQuery.Create(Self);
  with IBQr_BuscaIdMed do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDMEDICO from MEDICOS where NOMBRE_MEDICO = :p0');
      ParamByName('p0').Value:=NombreMedico;
      Open;
    end;
  Result:=IBQr_BuscaIdMed.FieldByName('IDMEDICO').AsInteger;
  IBQr_BuscaIdMed.Free;
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  if NombreUsu = 'admin' then
    begin
      MM_Usuarios1.Visible:=True;
    end
  else
    begin
      MM_Usuarios1.Visible:=False;
    end;
  PN_UltimaSesion.Caption:='�ltima Sesi�n Fecha: '+DateToStr(UltimaFechaSesionUsu)+' Hora: '+TimeToStr(UltimaHoraSesionUsu);
  PN_NombreUsuario.Caption:=' Usuario: '+NombreUsuLog;
  _FUsuario:=TFUsuarios.Create(Self);
  _FUsuario.ModificarBitacora(Id_UsuarioSistema, DateOf(Now), TimeOf(Now));
  BSF_SD1.SkinIndex:=StrToInt(leCadINI('CONFCARAT','ncarat','0'));
  GB_Busqueda.Width:=StrToInt(leCadINI('SPLIT','with','400'));
  GB_4.Width:=StrToInt(leCadINI('SPLIT','with_1','425'));
  GB_2.Height:=StrToInt(leCadINI('SPLIT','Height_2','400'));
  GB_5.Height:=StrToInt(leCadINI('SPLIT','Height_3','250'));
  DBG_Pacientes.Columns[0].Width:=StrToInt(leCadINI('COL_G', 'PTE0', '85'));
  DBG_Pacientes.Columns[1].Width:=StrToInt(leCadINI('COL_G', 'PTE1', '150'));
  DBG_Pacientes.Columns[2].Width:=StrToInt(leCadINI('COL_G', 'PTE2', '150'));
  DBG_Pacientes.Columns[3].Width:=StrToInt(leCadINI('COL_G', 'PTE3', '100'));
  DBG_1.Columns[0].Width:=StrToInt(leCadINI('COL_G', 'CT0', '85'));
  DBG_1.Columns[1].Width:=StrToInt(leCadINI('COL_G', 'CT1', '100'));
  DBG_1.Columns[2].Width:=StrToInt(leCadINI('COL_G', 'CT2', '230'));
  Calendario1.Date:=now;
  
  Cant_Max_Record:=leCadINI('SUCONF', 'CMR', '100');
end;

procedure TFPrincipal.BuscaPaciente(ValorBusqueda: string; B_Exacta:Boolean; Opcion, Mensaje: Integer);
begin
  with IBQr_BuscaPaciente do
    begin
      if(Opcion = 1)or(Opcion = 4)or(Opcion = 7)then
        begin
          close;
          if(B_Exacta)then
            begin
              ParamByName('p0').Value:=ValorBusqueda;
            end
          else
            begin
              ParamByName('p0').Value:=ValorBusqueda+'%';
            end;
          Open;
        end
      else
      if(Opcion = 2)or(Opcion = 3)or(Opcion = 5) then
        begin
          Close;
          if(B_Exacta)then
            begin
              ParamByName('p0').Value:=ValorBusqueda;
            end
          else
            begin
              ParamByName('p0').Value:='%'+ValorBusqueda+'%';
            end;
          Open;
        end
      else
      if(Opcion = 6)then
        begin
          {NumSegSoc:=TNSS.Create(Self);
          Id_Pat:=NumSegSoc.GetIdPaciente_NSS(ValorBusqueda);
          NumSegSoc.Free;  }
          close;
          if(B_Exacta)then
            begin
              ParamByName('p0').Value:=ValorBusqueda;
            end
          else
            begin
              ParamByName('p0').Value:=ValorBusqueda+'%';
            end;
          Open;
        end
      else
      if(Opcion = 8)then
        begin
          Close;
          if(B_Exacta)then
            begin
              ParamByName('p0').Value:=ValorBusqueda;
              ParamByName('p1').Value:=ValorBusqueda;
              ParamByName('p2').Value:=ValorBusqueda;
            end
          else
            begin
              ParamByName('p0').Value:='%'+ValorBusqueda+'%';
              ParamByName('p1').Value:='%'+ValorBusqueda+'%';
              ParamByName('p2').Value:='%'+ValorBusqueda+'%';
            end;
          Open;
        end;
      if(IBQr_BuscaPaciente.RecordCount < 1)then
        begin
          DBG_PacientesCellClick(nil);
          if Mensaje = 1 then
            JvBalloonHint1.ActivateHint(ME_BuscaPaciente, 'No se hallar�n datos para este criterio de b�squeda.', ikInformation, 'Informaci�n.', 2000);
        end
      else
        begin
          Actualiza_PM_Estado(IBQr_BuscaPacienteIDPACIENTE.AsInteger);
          DBG_PacientesCellClick(nil);
        end;
    end;
 {   end
  else
    begin
      JvBalloonHint1.ActivateHint(ME_BuscaPaciente, 'Ingrese un criterio de b�squeda.', ikError, 'Error campo vacio', 5000);
    end;}
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  RutaSilueta:=RutaArchivosImagenes+Silueta;
  if(leCadINI('SUCONF', 'BX', '0')='1')then
    begin
      BusquedaExacta:=True;
      LB_1.Caption:='(Modo b�squeda Exacto Activo.)';
    end
  else
    begin
      BusquedaExacta:=False;
      LB_1.Caption:='(Modo b�squeda Aproximado Activo.)';
    end;
  RCB_NumeroRegistroClick(Self);
  DBG_PacientesCellClick(nil);
  LlenarComboMedico(CBB_Medicos);
  _vD_Inicial:=RutaArchivos+'data\backup';
  if NombreUsu = 'admin' then
    begin
      ConfiguracionParametros.Visible:=True;
    end;
end;

procedure TFPrincipal.RCB_SeguroSocialClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=6;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un n�mero de seguro social';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where (ESTADO = 1)and(numero_ss like :p0)');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:=''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.SetFocus;
  ME_BuscaPaciente.MaxLength:=25;
end;

procedure TFPrincipal.RCB_PasaportePacienteClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=7;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un n�mero de pasaporte';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where ESTADO = 1 and PASAPORTE like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      //ParamByName('p0').Value:=''+'%';
      Open;
    end;
  ME_BuscaPaciente.Clear;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);
  ME_BuscaPaciente.SetFocus;
end;

procedure TFPrincipal.BuscarGeneral;
begin
with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first 100 CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, ID_NSS, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, RUTA_FOTO, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, ');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, FECHA_CREADO');
      SQL.Add('from PACIENTES where ESTADO = 1 and NOMBRES like :p0');
      SQL.Add('order by CODIGO_PACIENTE;');
      ParamByName('p0').Value:='%'+''+'%';
      Open;
      _FArs:=TFArs.Create(Self);
    end;
end;

procedure TFPrincipal.ME_BuscaPacienteChange(Sender: TObject);
var
  NumeroBusqueda:Integer;
begin
  //NumeroBusqueda:=0;
  NumeroBusqueda:=ValidaOpcBusqueda;
    if(Trim(ME_BuscaPaciente.Text) = '')then
    begin
      BuscaPaciente(ME_BuscaPaciente.Text, False, NumeroBusqueda, 0);
    end;
end;

procedure TFPrincipal.ME_BuscaPacienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (OpcionBusqueda = 1) or (OpcionBusqueda = 4)or (OpcionBusqueda = 8) then
    begin
      if not (Key in['0'..'9',#13, #8])then
        Key:=#0;
    end;
  if Key = #13 then
    begin
      BuscaPaciente(Trim(ME_BuscaPaciente.Text), BusquedaExacta, OpcionBusqueda, 1);
      //DBG_PacientesCellClick(nil);
    end;
end;

procedure TFPrincipal.M2_1Change(Sender: TObject);
begin
{  M2_1.Text := AnsiUpperCase(M2_1.Text);
  M2_1.SelStart := Length(M2_1.Text);  }
end;

procedure TFPrincipal.DBG_1CellClick(Column: TbsColumn);
begin
  if(IBQr_CitaMedico.Active = True)then
    begin
      if(IBQr_CitaMedico.RecordCount > 0)then
        begin
          SPB_ModificaCita.Enabled:=True;
          SPB_EliminarCita.Enabled:=True;
          Id_Cita:=IBQr_CitaMedicoID_CITA.AsInteger;
        end
      else
      if(IBQr_CitaMedico.RecordCount < 1)then
        begin
          SPB_ModificaCita.Enabled:=False;
          SPB_EliminarCita.Enabled:=False;
          Id_Cita:=-1;
        end;
    end;
end;

procedure TFPrincipal.SPB_ModificaCitaClick(Sender: TObject);
begin
  Modificar2Click(Self);
end;

procedure TFPrincipal.NV_BusquedasPacientesClick(Sender: TObject;
  Button: TbsNavigateBtn);
begin
  //DBG_PacientesCellClick(nil);
end;

function TFPrincipal.CuentaCita(Id_Medico, Max_CitaMedico, NootificaMaxCita, ExcederCita, Mensaje: Integer;
  Fecha: TDateTime): string;
var
  IBQr_CuentaCita: TIBQuery;
  CitasRestantes: Integer;
begin
  IBQr_CuentaCita:=TIBQuery.Create(Self);
  with IBQr_CuentaCita do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select count(ID_PACIENTE) as CantCitasRealizadas from CITAS where (ID_MEDICO = :p0) and (FECHA_CITA = :p1)');
      ParamByName('p0').Value:=Id_Medico;
      ParamByName('p1').Value:=Fecha;
      Open;
    end;
  if(IBQr_CuentaCita.RecordCount > 0)then
    begin
      CitasRestantes:=Max_CitaMedico - IBQr_CuentaCita.FieldByName('CantCitasRealizadas').AsInteger;
      Result:='Estado Citas:  '+IntToStr(IBQr_CuentaCita.FieldByName('CantCitasRealizadas').AsInteger)+' / '+IntToStr(Max_CitaMedico)+'     Citas restante: '+
      IntToStr(CitasRestantes);
      if(NotificarExceso = 1)then
        begin
          if(ExcederCita = 0)and(CitasRestantes > 0)then
            begin
              ExcederCitas:=True;
              if (CitasRestantes <= 3)and(Mensaje = 1) then
                JvBalloonHint1.ActivateHint(LB_26,'S�lo quedan disponibles: '+IntToStr(CitasRestantes),ikWarning,'Precauci�n.',5000);
            end
          else
          if (ExcederCita = 0)and(CitasRestantes = 0) then
            begin
              ExcederCitas:=False;
            end;
        end
      else
      if(ExcederCita = 1)then
        begin
          ExcederCitas:=True;
        end
      else
      if(ExcederCita = 0)and(CitasRestantes = 0)then
        begin
          ExcederCitas:=False;
        end;
    end;
  IBQr_CuentaCita.Free;
end;

procedure TFPrincipal.ActualizarEstadoCitas(Mensaje: Integer);
begin
  if(Trim(CBB_Medicos.Text) <> '')then
    begin
      _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
      CitasMedicoLabor(CBB_Medicos.Text); //Tambien se extrae el id del medico
      LB_21.Caption:='Especialidad Medica: '+_FEspecialidadMedica.BuscaNombreEspec(Id_EspecMedica);
      Id_EspecMedica:=-1;
      _FEspecialidadMedica.Free;                                                                   
      BuscarCitasXMedico(Id_Medico,Calendario1.Date);
      LB_26.Caption:=CuentaCita(Id_Medico,MaxNumeroTurno,NotificarExceso,ExcederMax,0,DateOf(Calendario1.Date));
    end
  else
    begin
      if Mensaje = 1 then
        JvBalloonHint1.ActivateHint(CBB_Medicos, 'Seleccione un m�dico de la lista para continuar.', ikInformation, 'Informaci�n', 5000);
    end;
end;

procedure TFPrincipal.IBQr_BuscaPacienteNOMBRECGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_BuscaPacienteNOMBRES.AsString+' '+IBQr_BuscaPacienteAPELLIDOS.AsString;
end;

procedure TFPrincipal.SPB_EliminarCitaClick(Sender: TObject);
begin
  Eliminar1Click(Self);
end;

procedure TFPrincipal.RCB_TelefonoClick(Sender: TObject);
var
  str:string;
begin
  str:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
  OpcionBusqueda:=8;
  ME_BuscaPaciente.InsideHelpText:='Ingrese un n�mero tel�fono';
  with IBQr_BuscaPaciente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select first '+Cant_Max_Record+' CODIGO_PACIENTE, APODO, NOMBRES, APELLIDOS as NombreC,');
      SQL.Add('CEDULA, CORREO_ELETRONICO, DIRECCION, FECHA_NACIMIENTO, IDPACIENTE,');
      SQL.Add('MENOR_EDAD, NOMBRE_TUTOR, PARENTESCO_TUTOR, ');
      SQL.Add('PASAPORTE, TELNO_CASA, TELNO_CELULAR, TELNO_TRABAJO, ');
      SQL.Add('TRABAJO_EXT, SEXO, NOMBRE_CONYUGUE, NOMBRE_MADRE, NOMBRE_PADRE, nss.numero_ss, nombre_ars,');
      SQL.Add('APELLIDOS, NOMBRES, NACIONALIDAD, FECHA_NACIMIENTO as Edad, FECHA_INGRESO, pacientes.FECHA_CREADO,');
      SQL.Add('nombre_estante, seccion, orden_seccion');
      SQL.Add('from PACIENTES left join nss on(pacientes.idpaciente = nss.id_paciente)');
      SQL.Add('left join ars on(ars.idars = nss.id_ars) left join ubicacion_expediente');
      SQL.Add('on(pacientes.idpaciente =  ubicacion_expediente.id_paciente) left join estanteria');
      SQL.Add('on(ubicacion_expediente.cod_stock = estanteria.cod_stock)left join secciones_estanteria');
      SQL.Add('on(ubicacion_expediente.id_seccion = secciones_estanteria.idseccion)');
      SQL.Add('where (ESTADO = 1) and ((TELNO_CASA LIKE :p0) or (TELNO_CELULAR like :p1) or (TELNO_TRABAJO like :p2)) order by CODIGO_PACIENTE;');
      {ParamByName('p0').Value:=''+'%';
      ParamByName('p1').Value:=''+'%';
      ParamByName('p2').Value:=''+'%';}
      Open;
    end;
  ME_BuscaPaciente.Clear;
  ME_BuscaPaciente.MaxLength:=10;
  IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', str, []);  
  ME_BuscaPaciente.SetFocus;
end;

function TFPrincipal.ObtenerIdNacionalidad(
  NombreNacionalidad: string): Integer;
var
  IBQr_Nacionalidad:TIBQuery;
begin
  IBQr_Nacionalidad:=TIBQuery.Create(Self);
  with IBQr_Nacionalidad do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDNACIONALIDAD from NACIONALIDAD where PAIS = :p0;');
      ParamByName('p0').Value:=NombreNacionalidad;
      Open;
    end;
  Result:=IBQr_Nacionalidad.FieldByName('IDNACIONALIDAD').AsInteger;
  IBQr_Nacionalidad.Free;
end;

procedure TFPrincipal.MM_CambioCaratula1Click(Sender: TObject);
begin
if bsSelectSkinDialog1.Execute(BSF_SD1.SkinIndex)then
  begin
    BSF_SD1.SkinIndex:=bsSelectSkinDialog1.SelectedSkinIndex;
    esCadINI('CONFCARAT','ncarat',IntToStr(BSF_SD1.SkinIndex));
  end;
end;

procedure TFPrincipal.MM_Salir1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MS_Personalizado.MessageDlg('Desea salir del Sistema?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
    begin
      esCadINI('SPLIT','with',IntToStr(GB_Busqueda.Width));
      esCadINI('SPLIT','with_1',IntToStr(GB_4.Width));
      esCadINI('SPLIT','Height_2',IntToStr(GB_2.Height));
      esCadINI('SPLIT','Height_3',IntToStr(GB_5.Height));
      esCadINI('COL_G', 'PTE0', IntToStr(DBG_Pacientes.Columns[0].Width));
      esCadINI('COL_G', 'PTE1', IntToStr(DBG_Pacientes.Columns[1].Width));
      esCadINI('COL_G', 'PTE2', IntToStr(DBG_Pacientes.Columns[2].Width));
      esCadINI('COL_G', 'PTE3', IntToStr(DBG_Pacientes.Columns[3].Width));
      esCadINI('COL_G', 'CT0', IntToStr(DBG_1.Columns[0].Width));
      esCadINI('COL_G', 'CT1', IntToStr(DBG_1.Columns[1].Width));
      esCadINI('COL_G', 'CT2', IntToStr(DBG_1.Columns[2].Width));
      Application.Terminate;
    end
  else
    begin
      Action:=caNone;
    end;
end;

procedure TFPrincipal.MM_ManejodeDiagnosticoClick(Sender: TObject);
begin
  _FDiagnostico:=TFDiagnostico.Create(Self);
  with _FDiagnostico do
    begin
      LlenarComboMedico(CBB_Medicos);
      ShowModal;
      Free;
    end;
end;

procedure TFPrincipal.MM_DiagnosticosClick(Sender: TObject);
begin
  try
    _FEnfermedades:=TFEnfermedades.Create(Self);
    with _FEnfermedades do
      begin
        ShowModal;
        Free;
      end;
  except

  end;
end;

procedure TFPrincipal.MM_ConsultasDiagnsticosEdadClick(Sender: TObject);
begin
  if(R_CONSULTAS_DIAGNOSTICOS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          BSF_F1.MaxHeight:=330;
          BSF_F1.MinHeight:=330;
          BSF_F1.MaxWidth:=358;
          BSF_F1.MinWidth:=358;
          //CBB_MedicosCitas_Fechas.SetFocus;
          Notebook1.PageIndex:=4;
          BT_AceptarConsultaDiagnEdad.Default:=True;
          BT_AceptarConsultaDiagnEdad.Caption:='&Enviar...';
          DTP_FechaFinal_DiagnEdad.Date:=Now;
          DTP_FechaInicial_DiagnEdad.Date:=StartOfTheMonth(DTP_FechaFinal_DiagnEdad.Date);
          Caption:='Reporte de Consultas por Diagn�stico y Edad.';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_ConsultasPorExtranjeraClick(Sender: TObject);
begin
  if(R_CONSULTAS_NACIONALIDAD_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          Autorizado:=False;
          BSF_F1.MaxHeight:=282;
          BSF_F1.MinHeight:=282;
          BSF_F1.MaxWidth:=452;
          BSF_F1.MinWidth:=452;
          //CBB_MedicosCitas_Fechas.SetFocus;
          Notebook1.PageIndex:=5;
          _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
          _FNuevoPaciente.LlenarCombNacionalidad(CBB_Nacionalidad_Extranjeria, False);
          _FNuevoPaciente.Free;
          BT_AceptarExtranjeria.Default:=True;
          BT_AceptarExtranjeria.Caption:='&Enviar...';
          DTP_FechaFinal_Extranjeria.Date:=Now;
          DTP_FechaInicial_Extranjeria.Date:=StartOfTheMonth(DTP_FechaFinal_Extranjeria.Date);
          Caption:='Reporte Consutlas por Nacionalidad.';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_ConsultaMedicaClick(Sender: TObject);
begin
  if(R_CONSULTAS_MEDICAS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          BSF_F1.MaxHeight:=298;
          BSF_F1.MinHeight:=298;
          BSF_F1.MaxWidth:=453;
          BSF_F1.MinWidth:=453;
          //CBB_MedicosCitas_Fechas.SetFocus;
          Notebook1.PageIndex:=6;
          FPrincipal.LlenarComboMedico(CBB_ConsultaMedica);
          BT_AceptarConsultaMedica.Default:=True;
          BT_AceptarConsultaMedica.Caption:='&Enviar...';
          GB_2.Caption:='Lista de M�dicos.';
          DTP_ConsultaMedica_FechaFinal.Date:=Now;
          DTP_ConsultaMedica_FechaInicial.Date:=StartOfTheMonth(DTP_ConsultaMedica_FechaFinal.Date);
          Caption:='Reporte de Consultas';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_Ci1Click(Sender: TObject);
begin
  if(R_CITAS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
     _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          BSF_F1.MaxHeight:=260;
          BSF_F1.MinHeight:=260;
          BSF_F1.MaxWidth:=426;
          BSF_F1.MinWidth:=426;
          Notebook1.PageIndex:=3;
          LlenarComboMedico(CBB_MedicosCitas_Fechas);
          DTP_FechaFin_MedicoCita.Date:=DateOf(Now);
          DTP_FechaInicio_MedicoCitas.Date:=IncDay(DTP_FechaFin_MedicoCita.Date, -7);
          BT_MostrarCitasMedico.Tag:=0;
          BT_MostrarCitasMedico.Default:=True;
          BT_MostrarCitasMedico.Caption:='&Enviar...';
          Caption:='Reporte de Citas por M�dico.';
          GB_10.Caption:='Lista de M�dicos.';
          LB_24.Caption:='Nombre M�dico';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_CitasporEspecialidadMdica1Click(Sender: TObject);
begin
  if(R_CITAS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
       _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
       with _FDatosMicelaneos do
          begin
            BSF_F1.MaxHeight:=260;
            BSF_F1.MinHeight:=260;
            BSF_F1.MaxWidth:=426;
            BSF_F1.MinWidth:=426;
            Notebook1.PageIndex:=3;
            _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
            _FEspecialidadMedica.LlenarCombEspecialidadMedica(CBB_MedicosCitas_Fechas);
            _FEspecialidadMedica.Free;
            DTP_FechaFin_MedicoCita.Date:=DateOf(Now);
            DTP_FechaInicio_MedicoCitas.Date:=IncDay(DTP_FechaFin_MedicoCita.Date, -7);
            BT_MostrarCitasMedico.Tag:=1;
            BT_MostrarCitasMedico.Default:=True;
            BT_MostrarCitasMedico.Caption:='&Enviar...';
            Caption:='Reporte de Citas Especialidad M�dica.';
            GB_10.Caption:='Lista de Especialidades M�dica.';
            LB_24.Caption:='Nombre Especialidad M�dica';
            ShowModal;
            Free;
          end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_ListadePacientes2Click(Sender: TObject);
begin
  if (R_LISTA_PACIENTES_USU  = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      _FReportes:=TFReportes.Create(Self);
      with _FReportes do
        begin
          IBQr_ListaPaciente.Open;
          QRP_ListaPacientes.Preview;
        end;
     end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_ListaNuevosPacientes1Click(Sender: TObject);
begin
  if (R_NUEVOS_PACIENTES_USU = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
        with _FDatosMicelaneos do
          begin
            BSF_F1.MaxHeight:=202;
            BSF_F1.MinHeight:=202;
            BSF_F1.MaxWidth:=434;
            BSF_F1.MinWidth:=434;
            Notebook1.PageIndex:=7;
            DTP_ListanuevosPacientes_FechaFinal.Date:=DateOf(Now);
            DTP_ListaNuevoPacientes_FechaInicial.Date:=IncDay(DTP_ListanuevosPacientes_FechaFinal.Date, -30);
            BT_Aceptar_ListaPacientesNuevos.Default:=True;
            BT_Aceptar_ListaPacientesNuevos.Caption:='&Enviar...';
            Caption:='Reporte Lista Nuevos Pacientes.';
            ShowModal;
            Free;
          end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_PacientesporNacionalidad1Click(Sender: TObject);
begin
  if (R_NUEVOS_PACIENTES_USU = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          BSF_F1.MaxHeight:=193;
          BSF_F1.MinHeight:=193;
          BSF_F1.MaxWidth:=426;
          BSF_F1.MinWidth:=426;
          _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
          _FNuevoPaciente.LlenarCombNacionalidad(CBB_BuscarPorNacionalidad, False);
          _FNuevoPaciente.Free;
          Notebook1.PageIndex:=2;
          BT_BuscarNacionalidad.Default:=True;
          BT_BuscarNacionalidad.Caption:='&Enviar...';
          Caption:='Reporte Pacientes por Nacionalidad.';
          ShowModal;
          Free;
        end;
     end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_NSSAseguradoras1Click(Sender: TObject);
begin
  try
    _FArs:=TFArs.Create(Self);
    with _FArs do
      begin
        ShowModal;
      end;     
  finally
    _FArs.Free;
  end;
end;

procedure TFPrincipal.MM_ConsultaspacientesaseguradosClick(
  Sender: TObject);
begin
  if(R_CONSULTAS_ASEGURDOS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
      with _FDatosMicelaneos do
        begin
          BSF_F1.MaxHeight:=298;
          BSF_F1.MinHeight:=298;
          BSF_F1.MaxWidth:=453;
          BSF_F1.MinWidth:=453;
          //CBB_MedicosCitas_Fechas.SetFocus;
          Notebook1.PageIndex:=6;
          _FArs:=TFArs.Create(Self);
          _FArs.LlenarComboBox(CBB_ConsultaMedica);
          _FArs.Free;
          BT_AceptarConsultaMedica.Default:=True;
          BT_AceptarConsultaMedica.Caption:='&Enviar...';
          BT_AceptarConsultaMedica.Tag:=1;
          GB_2.Caption:='Lista de ARS.';
          DTP_ConsultaMedica_FechaFinal.Date:=Now;
          DTP_ConsultaMedica_FechaInicial.Date:=StartOfTheMonth(DTP_ConsultaMedica_FechaFinal.Date);
          Caption:='Reporte de Consultas por NSS.';
          ShowModal;
          Free;
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.DatosPaciente(Id_Paciente_Ver, Imprimir: Integer);
var
  Pacientes:TFNuevoPaciente;
begin
  if (PRINT_DATOS_PACIENTES_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FReportes:=TFReportes.Create(Self);
      with _FReportes do
        begin
          QRLabel97.Caption:='Datos Generales del Paciente.';
          QRLB_60.Caption:=NombreUsu;
          with IBQr_DatosPaciente do
            begin
              Close;
              ParamByName('p0').Value:=Id_Paciente_Ver;
              Open;
            end;
          //if(Trim(IBQr_DatosPacienteRUTA_FOTO.AsString)<>'')then
          if(leCadINI('SUCONF', 'mfrv', '1')='1'){and(Trim(IBQr_DatosPacienteRUTA_FOTO.AsString)<>'')}then
            begin
              Pacientes:=TFNuevoPaciente.Create(Self);
              QRIMG_1.Picture.LoadFromFile(Pacientes.CargarFoto(IBQr_DatosPacienteCODIGO_PACIENTE.AsString,RutaGuardarFoto, 0));
              Pacientes.Free;
            end
          else
            begin
              QRIMG_1.Picture.LoadFromFile(RutaArchivosImagenes+'SiluetaVacia.jpg');
            end;

          if IBQr_DatosPaciente.RecordCount > 0 then
            begin
              if Imprimir = 1then
                begin
                  QRP_DatosPaciente.Print;
                end
              else
                begin
                  QRP_DatosPaciente.Preview;
                end;
            end;
          _FReportes.Free;
        end;
    end
  else
    begin
      MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFPrincipal.MM_Visualizar2Click(Sender: TObject);
begin
  DatosPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 0);
end;

procedure TFPrincipal.SPB_MedicosClick(Sender: TObject);
begin
  Mdicos1Click(Self);  
end;

procedure TFPrincipal.SPB_EspecialidadesClick(Sender: TObject);
begin
  EspecialidadesMedicas1Click(Self);
end;

procedure TFPrincipal.SPB_NSSClick(Sender: TObject);
begin
  MM_NSSAseguradoras1Click(Self);
end;

procedure TFPrincipal.SPB_DiagnosticosPacientesClick(Sender: TObject);
begin
  MM_ManejodeDiagnosticoClick(Self);
end;

procedure TFPrincipal.SPB_DiagnosticoMedicoClick(Sender: TObject);
begin
  MM_DiagnosticosClick(Self);
end;

procedure TFPrincipal.MM_Imprimir1Click(Sender: TObject);
begin
  DatosPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 1);
end;

procedure TFPrincipal.MM_DiagnosticoClick(Sender: TObject);
begin
  _FDiagnostico:=TFDiagnostico.Create(Self);
  with _FDiagnostico do
    begin
      LlenarComboMedico(CBB_Medicos);
      E_BuscaPaciente.Text:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
      BT_BuscaPacienteClick(Self);
      //BuscaPaciente_Diagnostico(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 0);
      ShowModal;
      Free;
    end;
end;

procedure TFPrincipal.PM_1Popup(Sender: TObject);
begin
  if(IBQr_BuscaPaciente.Active)then
    begin
      if(IBQr_BuscaPaciente.RecordCount > 0)then
        begin
          MM_Visualizar2.Enabled:=True;
          MM_Imprimir1.Enabled:=True;
          MM_Modificar3.Enabled:=True;
          MM_EliminarPaciente1.Enabled:=True;
          MM_Diagnostico.Enabled:=True;
          MM_Activo1.Enabled:=True;
          DBG_PacientesCellClick(nil);
        end
      else
        begin
          MM_Visualizar2.Enabled:=False;
          MM_Imprimir1.Enabled:=False;
          MM_Modificar3.Enabled:=False;
          MM_EliminarPaciente1.Enabled:=False;
          MM_Diagnostico.Enabled:=False;
          MM_Activo1.Enabled:=False;
        end;
    end
  else
    begin
      MM_Visualizar2.Enabled:=False;
      MM_Imprimir1.Enabled:=False;
      MM_Modificar3.Enabled:=False;
      MM_EliminarPaciente1.Enabled:=False;
      MM_Diagnostico.Enabled:=False;
    end;
  Actualiza_PM_Estado(IBQr_BuscaPacienteIDPACIENTE.AsInteger);
end;

procedure TFPrincipal.MM_Modificar3Click(Sender: TObject);
begin
  SPB_ModificarPacienteClick(Self);
end;

procedure TFPrincipal.SPB_1Click(Sender: TObject);
begin
  DatosPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 1);
end;

procedure TFPrincipal.SPB_ImprimirClick(Sender: TObject);
begin
  DatosPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, 1);
end;

procedure TFPrincipal.MM_Usuarios1Click(Sender: TObject);
begin
  try
    _FUsuario:=TFUsuarios.Create(Self);
    with _FUsuario do
      begin
        ShowModal;
        Free;
      end;
  except
    _FUsuario.Free;
  end;
end;

procedure TFPrincipal.MM_ConsultasPacientesReincidentesClick(
  Sender: TObject);
begin
  if(R_CONSULTAS_REINCIDENTES_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
        with _FDatosMicelaneos do
          begin
            BSF_F1.MaxHeight:=202;
            BSF_F1.MinHeight:=202;
            BSF_F1.MaxWidth:=434;
            BSF_F1.MinWidth:=434;
            Notebook1.PageIndex:=7;
            DTP_ListanuevosPacientes_FechaFinal.Date:=DateOf(Now);
            DTP_ListaNuevoPacientes_FechaInicial.Date:=IncDay(DTP_ListanuevosPacientes_FechaFinal.Date, -30);
            BT_Aceptar_ListaPacientesNuevos.Tag:=1;
            BT_Aceptar_ListaPacientesNuevos.Caption:='&Enviar...';
            Caption:='Reporte Lista Pacientes Reincidentes.';
            RCB_MostrarTodaConsultaReincide.Visible:=True;
            ShowModal;
            Free;
          end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end; 

procedure TFPrincipal.DesAutoriza(TiempoSegundo: Integer; Control: TbsSkinStdLabel);
begin
  ControlLabel:=Control;
  TiempoEspera:=TiempoSegundo;
  TM_CuentaTiempo.Enabled:=True;
end;

procedure TFPrincipal.TM_CuentaTiempoTimer(Sender: TObject);
begin 
  if(ControlLabel.Visible = False)then
    begin
      ControlLabel.Visible:=True;
    end;
  ControlLabel.Caption:='Tiempo espera: '+IntToStr(TiempoEspera);
  if(TiempoEspera = 0)then
    begin
      Autorizado:=False;
      ControlLabel.Visible:=False;
      TM_CuentaTiempo.Enabled:=False;
    end;
  if TiempoEspera = -30 then
    begin
      TM_CuentaTiempo.Enabled:=False;
    end;
  TiempoEspera:=TiempoEspera - 1;
end;

procedure TFPrincipal.EliminarPaciente(Id_Paciente, Mensaje: Integer);
var
  IBQr_ElimPaciente: TIBQuery;
begin
  try
    try
      IBQr_ElimPaciente:=TIBQuery.Create(Self);
      with IBQr_ElimPaciente do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('delete from PACIENTES where IDPACIENTE = :p0');
          ParamByName('p0').Value:=Id_Paciente;
          ExecSQL;
        end;
      if Mensaje = 1 then
        MS_Personalizado.MessageDlg('Paciente eliminado con �xito.', mtInformation, [mbOK], 0);
    finally
      IBQr_ElimPaciente.Free;
    end;
  except
    on e:Exception do
      begin
        MS_Personalizado.MessageDlg('Se produjo un error al intentar eliminar el paciente,'+#13+
        'comuniquese con el administrador.'+#13+e.Message, mtInformation, [mbOK], 0);
      end;
  end;
end;

procedure TFPrincipal.MM_EliminarPaciente1Click(Sender: TObject);
begin
  SPB_EliminarPacienteClick(Self);
end;

procedure TFPrincipal.EstadoPaciente(Id_Paciente, Estado, Mensaje: Integer);
var
  IBQr_Estado: TIBQuery;
begin
  IBQr_Estado:=TIBQuery.Create(Self);
    with IBQr_Estado do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update PACIENTES  set ESTADO = :p0 where IDPACIENTE = :p1');
        ParamByName('p0').Value:=Estado;
        ParamByName('p1').Value:=Id_Paciente;
        ExecSQL;
        Free;
      end;
      
    if Mensaje = 1 then
      begin
        MS_Personalizado.MessageDlg('Acci�n realizada con �xito.', mtInformation, [mbOK], 0);
      end;
  Actualiza_PM_Estado(Id_Paciente);
end;

function TFPrincipal.Actualiza_PM_Estado(Id_Paciente: Integer): integer;
var
  IBQr_Estado: TIBQuery;
begin
  IBQr_Estado:=TIBQuery.Create(Self);
  with IBQr_Estado do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ESTADO from PACIENTES  where IDPACIENTE = :p0');
      ParamByName('p0').Value:=Id_Paciente;
      Open;
    end;
  if(IBQr_Estado.FieldByName('ESTADO').AsInteger = 1)then
    begin
      //MM_ActivarDesactivar1.Caption:='Desactivar';
      //MM_ActivarDesactivar1.ImageIndex:=14;
      MM_Activo1.Caption:='Desactivar';
      MM_Activo1.ImageIndex:=14;
      Result:=0;
    end
  else
    begin
      //MM_ActivarDesactivar1.Caption:='Activar';
      //MM_ActivarDesactivar1.ImageIndex:=22;
      MM_Activo1.Caption:='Activar';
      MM_Activo1.ImageIndex:=22;
      Result:=1;
    end;
  IBQr_Estado.Free;
end;

procedure TFPrincipal.MM_Activo1Click(Sender: TObject);
var
  _Flogin: TFLoginUsuario;
begin
  Autorizado:=False;
  if(PSSDLG_Autorizar.Execute)then
    begin
      _Flogin:=TFLoginUsuario.Create(Self);
      if _Flogin.AutorizaAcceso(PSSDLG_Autorizar.Password) then
        begin
          PSSDLG_Autorizar.Password:='';
          if(MS_Personalizado.MessageDlg('Confirme que desea realmente desactivar el paciente seleccionado?', mtConfirmation, [mbYes,mbNo],0) = IDYES)then
            begin
              EstadoPaciente(IBQr_BuscaPacienteIDPACIENTE.AsInteger, Actualiza_PM_Estado(IBQr_BuscaPacienteIDPACIENTE.AsInteger), 1);
              BT_BuscarClick(Self);
            end;
        end;
      PSSDLG_Autorizar.Password:='';
      _Flogin.Free;
    end;
end;
procedure TFPrincipal.MM_ActivarDesactivar1Click(Sender: TObject);
begin
  Autorizado:=False;
   _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
    with _FDatosMicelaneos do
      begin
        BSF_F1.MaxHeight:=200;
        BSF_F1.MinHeight:=200;
        BSF_F1.MaxWidth:=390;
        BSF_F1.MinWidth:=390;
        Notebook1.PageIndex:=8;
        BT_Aceptar_Act_Desac_Paciente.Caption:='&Activar';
        Caption:='Activar/Desactivar Pacientes.';
        ShowModal;
        Free;
      end;
end;

function TFPrincipal.CalculaProductividadMedica(var Id_Medico:Integer;
FechaInicial, FechaFinal: TDateTime): string;
var
  IBQr_Prod_Medica: TIBQuery;
  NPacientes, DiasContrato: Double;
begin
  DiasContrato:=0;
  IBQr_Prod_Medica:=TIBQuery.Create(Self);
  with IBQr_Prod_Medica do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select count(ID_MEDICO) NPacientes from DIAGNOSTICOS_PACIENTES');
      SQL.Add('where (ID_MEDICO = :p0)and(FECHA_DIAGNOSTICO between :p1 and :p2)');
      ParamByName('p0').Value:=Id_Medico;
      parambyname('p1').Value:=DateOf(FechaInicial);
      ParamByName('p2').Value:=DateOf(FechaFinal);
      Open;
    end;
  NPacientes:=IBQr_Prod_Medica.FieldByName('NPacientes').AsInteger;
  Result:=FormatFloat('#.##',NPacientes / DiasContrato)+' Pacientes por dias contratado.';
end;

procedure TFPrincipal.MM_ProductividadMedicaClick(Sender: TObject);
begin
  Autorizado:=False;
   _FDatosMicelaneos:=TFDatosMiscelaneos.Create(Self);
    with _FDatosMicelaneos do
      begin
        BSF_F1.MaxHeight:=320;
        BSF_F1.MinHeight:=320;
        BSF_F1.MaxWidth:=460;
        BSF_F1.MinWidth:=460;
        Notebook1.PageIndex:=9;
        //BT_Aceptar_Act_Desac_Paciente.Caption:='&Activar';
        //Caption:='Activar/Desactivar Pacientes.';
        ShowModal;
        Free;
      end;
end;

procedure TFPrincipal.HTKY_1HotKey(Sender: TObject);
begin
  _Fconf:=TFConf.Create(Self);
  _Fconf.NB_Conf.PageIndex:=0;
  _Fconf.Tag:=2;
  _Fconf.ShowModal;
  _Fconf.Free;

end;

procedure TFPrincipal.ConfParametrosClick(Sender: TObject);
begin
  try
  _Fconf:=TFConf.Create(Self);
  with _Fconf do
    begin
      NB_Conf.PageIndex:=1;
      Tag:=1;
      if leCadINI('SUCONF', 'MFIP', '0') = '1' then
        begin
          CHK_ModificaFechaIngreso.Checked:=true;
        end;
       if leCadINI('DB', 'Rt2', '0') = '1' then
          begin
            CHK_BuscarEnCedulados.Checked:=true;
          end;
       if leCadINI('SUCONF', 'mfrv', '0') = '1' then
          begin
            CHK_MostrarFotoPaciente.Checked:=true;
          end;
       if leCadINI('SUCONF', 'lc', '0') = '1' then
          begin
            CHK_ImprimeLogoCentro.Checked:=true;
          end;
       if leCadINI('SUCONF', 'BX', '0') = '1' then
          begin
            RB_B_Exacta.Checked:=true;
          end
       else
        begin
          RB_B_Aproximada.Checked:=true;
        end;
       if leCadINI('SUCONF', 'CFP', '0') = '1' then
          begin
            CHK_CerrarFormPacientes.Checked:=true;
          end;
       if leCadINI('SUCONF', 'UEXP', '0') = '1' then
          begin
            CHK_ManejoEstantes.Checked:=true;
          end;
       SE_MaximosResitrosGrid.Text:=leCadINI('SUCONF', 'CMR', '100');
      ShowModal;
      free;
    end;
  except
    _Fconf.free;
  end;
end;

procedure TFPrincipal.DBG_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_delete then
    begin
      Eliminar1Click(Self);
    end;
end;

function TFPrincipal.ValidaOpcBusqueda: Integer;
begin
  Result:=0;
  if (RCB_NumeroRegistro.Checked)then
    Result:=1;
  if(RCB_NombrePaciente.Checked)then
    Result:=2;
  if(RCB_ApodoPaciente.Checked)then
    Result:=3;
  if(RCB_NumeroCedula.Checked)then
    Result:=4;
  if(RCB_ApelllidosPaciente.Checked)then
    Result:=5;
  if(RCB_SeguroSocial.Checked)then
    Result:=6;
  if(RCB_PasaportePaciente.Checked)then
    Result:=7;
  if(RCB_Telefono.Checked)then
    Result:=8;
end;

procedure TFPrincipal.HTKY_NuevoPacienteHotKey(Sender: TObject);
begin
  SPB_NuevoPacienteClick(Self);
end;

procedure TFPrincipal.ConfEstante1Click(Sender: TObject);
var
  Cod_Localizar:Integer;
begin
  _FEstanteria:=TFEstanteria.Create(self);
  with _FEstanteria do
    begin
      ShowModal;
      Free;
      Cod_Localizar:=IBQr_BuscaPacienteCODIGO_PACIENTE.AsInteger;
      BuscaPaciente('', False, 1, 0);
      IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', Cod_Localizar, []);
    end;
end;

procedure TFPrincipal.IBQr_BuscaPacienteNUMERO_SSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_BuscaPacienteNUMERO_SS.AsString <> '' then
    Text:=IBQr_BuscaPacienteNUMERO_SS.AsString+'     ARS: '+IBQr_BuscaPacienteNOMBRE_ARS.AsString
  else
    Text:='';

end;

procedure TFPrincipal.ActualizaConsultas;
begin
  if RCB_NumeroRegistro.Checked then
    RCB_NumeroRegistroClick(Self)
  else
    if RCB_NumeroCedula.Checked then
      RCB_NumeroCedulaClick(Self)
    else
      if RCB_SeguroSocial.Checked then
        RCB_SeguroSocialClick(Self)
      else
        if RCB_NombrePaciente.Checked then
          RCB_NombrePacienteClick(Self)
        else
        if RCB_ApelllidosPaciente.Checked then
          RCB_ApelllidosPacienteClick(self)
      else
      if RCB_PasaportePaciente.Checked then
        RCB_PasaportePacienteClick(Self)
    else
    if RCB_ApodoPaciente.Checked then
      RCB_ApodoPacienteClick(Self)
  else
  if RCB_Telefono.Checked then
    RCB_TelefonoClick(Self);

end;

procedure TFPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f3 then
    ME_BuscaPaciente.SetFocus;
end;

procedure TFPrincipal.MM_ConexionBaseDatosClick(Sender: TObject);
begin
  _Fconf:=TFConf.Create(Self);
  _Fconf.NB_Conf.PageIndex:=0;
  _Fconf.Tag:=1;
  _Fconf.ShowModal;
  _Fconf.Free;
end;

procedure TFPrincipal.MM_RestaurarBasedeDatosClick(Sender: TObject);
begin
  _Fconf:=TFConf.Create(Self);
  _Fconf.NB_Conf.PageIndex              :=3;
  _Fconf.Tag                            :=1;
  RestBackup                            :=0;
  _Fconf.DE_RutaBackup.Visible          :=False;
  _Fconf.FNE_BaseDatos_Backup.Visible   :=True;
  _Fconf.Caption                        :=_vRDB_;
  _Fconf.RXLB_RestoreBackup.Caption     :=_vB_lb;
  _Fconf.RCB_Opcion_1.Caption:='Restaurar Base de Datos';
  _Fconf.RG_BackupRestore.Caption:='Opciones de restauraci�n';
  _Fconf.RCB_Opcion_1.Radio:=True;
  _Fconf.RCB_Opcion_2.Visible:=True;
  _Fconf.FNE_BaseDatos_Backup.InitialDir:=_vD_Inicial;
  //_Fconf.DE_RutaBackup.InitialDir       :=_vD_Inicial;
  _Fconf.ShowModal;
  _Fconf.Free;
end;

procedure TFPrincipal.MM_CrearBackupClick(Sender: TObject);
begin
  _Fconf:=TFConf.Create(Self);
  _Fconf.NB_Conf.PageIndex              :=3;
  _Fconf.Tag                            :=1;
  RestBackup:=1;
  _Fconf.DE_RutaBackup.Visible          :=True;
  _Fconf.FNE_BaseDatos_Backup.Visible   :=False;
  _Fconf.Caption                        :=_vCB_;
  _Fconf.RXLB_RestoreBackup.Caption     :=_vG_lb;
  _Fconf.RCB_Opcion_1.Caption:='Comprimir Backup';
  _Fconf.RG_BackupRestore.Caption:='Opciones de Backup';
  _Fconf.RCB_Opcion_1.Radio:=False;
  _Fconf.RCB_Opcion_2.Visible:=False;
  //_Fconf.FNE_BaseDatos_Backup.InitialDir:=_vD_Inicial;
  _Fconf.DE_RutaBackup.InitialDir       :=_vD_Inicial;
  _Fconf.ShowModal;
  _Fconf.Free;
end;

procedure TFPrincipal.IBQr_BuscaPacienteTELNO_CASAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_BuscaPacienteTELNO_CASA.AsString <> '' then
    Text:=FormatMaskText('(999)999-9999;0; ', IBQr_BuscaPacienteTELNO_CASA.AsString)
  else
    Text:='';
end;

procedure TFPrincipal.IBQr_BuscaPacienteTELNO_CELULARGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if IBQr_BuscaPacienteTELNO_CELULAR.AsString <> '' then
    Text:=FormatMaskText('(999)999-9999;0; ', IBQr_BuscaPacienteTELNO_CELULAR.AsString)
  else
    Text:='';
end;

procedure TFPrincipal.IBQr_BuscaPacienteTELNO_TRABAJOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if Trim(IBQr_BuscaPacienteTELNO_TRABAJO.AsString) <> '' then
    if Trim(IBQr_BuscaPacienteTRABAJO_EXT.AsString) <> '' then
      Text:=FormatMaskText('(999)999-9999;0; ', IBQr_BuscaPacienteTELNO_TRABAJO.AsString)+
      '  Extenci�n: '+IBQr_BuscaPacienteTRABAJO_EXT.AsString
    else
      Text:=FormatMaskText('(999)999-9999;0; ', IBQr_BuscaPacienteTELNO_TRABAJO.AsString)
  else
    Text:='';
end;

procedure TFPrincipal.DS_1DataChange(Sender: TObject; Field: TField);
begin
  DBG_PacientesCellClick(nil);
end;

end.
