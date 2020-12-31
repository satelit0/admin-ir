unit UReportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, IBCustomDataSet, IBQuery,
  IBTable, DateUtils, DBClient;

type
  TFReportes = class(TForm)
    Notebook1: TNotebook;
    QRP_MedicoCita: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRP_ListaPacientes: TQuickRep;
    PageHeaderBand2: TQRBand;
    TitleBand2: TQRBand;
    DetailBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    IBQr_ListaPaciente: TIBQuery;
    IBQr_ListaPacienteCEDULA: TIBStringField;
    IBQr_ListaPacienteCODIGO_PACIENTE: TIntegerField;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    IBQr_ListaPacienteNOMBREC: TIBStringField;
    PageFooterBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData1: TQRSysData;
    IBQr_ListaPacienteFECHA_INGRESO: TDateField;
    QRP_PacientesNacionalidad: TQuickRep;
    PageHeaderBand3: TQRBand;
    TitleBand3: TQRBand;
    DetailBand3: TQRBand;
    PageFooterBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    IBQr_PacientesNacionalidad: TIBQuery;
    IBQr_PacientesNacionalidadNOMBREC: TIBStringField;
    IBQr_PacientesNacionalidadCODIGO_PACIENTE: TIntegerField;
    IBQr_PacientesNacionalidadFECHA_INGRESO: TDateField;
    IBQr_PacientesNacionalidadSEXO: TIBStringField;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText14: TQRDBText;
    IBQr_ListaPacienteSEXO: TIBStringField;
    QRSysData4: TQRSysData;
    QRLabel27: TQRLabel;
    IBQr_MedicosCitas: TIBQuery;
    IBQr_MedicosCitasFECHA_CITA: TDateField;
    IBQr_MedicosCitasORDEN_CITA: TIntegerField;
    IBQr_MedicosCitasNOMBREC: TIBStringField;
    IBQr_MedicosCitasCODIGO_PACIENTE: TIntegerField;
    IBQr_MedicosCitasSEXO: TIBStringField;
    IBQr_MedicosCitasCOMENTARIO: TIBStringField;
    QRLabel28: TQRLabel;
    QRDBText15: TQRDBText;
    PageFooterBand3: TQRBand;
    QRLabel29: TQRLabel;
    QRSysData5: TQRSysData;
    QRP_CitasEspecialidad: TQuickRep;
    PageHeaderBand4: TQRBand;
    TitleBand4: TQRBand;
    DetailBand4: TQRBand;
    PageFooterBand4: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    IBQr_CitasEspecialidad: TIBQuery;
    IBQr_CitasEspecialidadCODIGO_PACIENTE: TIntegerField;
    IBQr_CitasEspecialidadNOMBREC: TIBStringField;
    IBQr_CitasEspecialidadSEXO: TIBStringField;
    IBQr_CitasEspecialidadFECHA_CITA: TDateField;
    IBQr_CitasEspecialidadNOMBRE_MEDICO: TIBStringField;
    QRLabel40: TQRLabel;
    QRSysData8: TQRSysData;
    QRP_ConsultaDiagnEdad: TQuickRep;
    PageHeaderBand5: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand5: TQRBand;
    PageFooterBand5: TQRBand;
    QRLabel43: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel50: TQRLabel;
    QRSysData10: TQRSysData;
    IBQr_ConsultasDiagnEdad: TIBQuery;
    IBQr_ConsultasDiagnEdadCODIGO_PACIENTE: TIntegerField;
    IBQr_ConsultasDiagnEdadNOMBREC: TIBStringField;
    IBQr_ConsultasDiagnEdadSEXO: TIBStringField;
    IBQr_ConsultasDiagnEdadEDAD: TDateField;
    QRLabel44: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel8: TQRLabel;
    QRP_ConsultasExtranjeria: TQuickRep;
    PageHeaderBand6: TQRBand;
    QRLabel53: TQRLabel;
    IBQr_Extranjeria: TIBQuery;
    IBQr_ExtranjeriaCODIGO_PACIENTE: TIntegerField;
    IBQr_ExtranjeriaSEXO: TIBStringField;
    DetailBand6: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    IBQr_Nacionalidad: TIBQuery;
    IBQr_NacionalidadIDNACIONALIDAD: TIntegerField;
    IBQr_NacionalidadPAIS: TIBStringField;
    IBQr_NacionalidadGENTILICIO: TIBStringField;
    QRGroup1: TQRGroup;
    GroupFooterBand1: TQRBand;
    QRLabel59: TQRLabel;
    QRDBText21: TQRDBText;
    QRExpr1: TQRExpr;
    PageFooterBand6: TQRBand;
    QRLabel60: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    IBQr_ExtranjeriaNOMBREC: TIBStringField;
    IBQr_ExtranjeriaAPELLIDOS: TIBStringField;
    QRP_ConsultasMedicas: TQuickRep;
    PageHeaderBand7: TQRBand;
    QRLabel63: TQRLabel;
    IBQr_ConsultaMedica_Pacientes: TIBQuery;
    IBQr_ConsultaMedica_Medicos: TIBQuery;
    IBQr_ConsultaMedica_PacientesAPELLIDOS: TIBStringField;
    IBQr_ConsultaMedica_PacientesCODIGO_PACIENTE: TIntegerField;
    IBQr_ConsultaMedica_PacientesFECHA_NACIMIENTO: TDateField;
    IBQr_ConsultaMedica_PacientesNOMBREC: TIBStringField;
    IBQr_ConsultaMedica_PacientesSEXO: TIBStringField;
    ColumnHeaderBand3: TQRBand;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    IBQr_ConsultaMedica_MedicosNOMBRE_MEDICO: TIBStringField;
    IBQr_ConsultaMedica_MedicosNOMBRE_ESPECIALIDAD: TIBStringField;
    IBQr_ConsultaMedica_MedicosID_MEDICO: TIntegerField;
    QRSubDetail2: TQRSubDetail;
    QRDBText25: TQRDBText;
    DetailBand7: TQRBand;
    QRDBText28: TQRDBText;
    QRShape3: TQRShape;
    IBQr_ConsultaMedica_PacientesFECHA_DIAGNOSTICO: TDateField;
    GroupFooterBand2: TQRBand;
    QRLabel70: TQRLabel;
    QRExpr3: TQRExpr;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    PageFooterBand7: TQRBand;
    QRLabel71: TQRLabel;
    QRExpr4: TQRExpr;
    QRP_ListaNuevoPaciente: TQuickRep;
    PageHeaderBand8: TQRBand;
    DetailBand8: TQRBand;
    QRLabel75: TQRLabel;
    TitleBand5: TQRBand;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    IBQr_ListaNuevosPacienes: TIBQuery;
    IBQr_ListaNuevosPacienesAPELLIDOS: TIBStringField;
    IBQr_ListaNuevosPacienesCODIGO_PACIENTE: TIntegerField;
    IBQr_ListaNuevosPacienesFECHA_INGRESO: TDateField;
    IBQr_ListaNuevosPacienesFECHA_NACIMIENTO: TDateField;
    IBQr_ListaNuevosPacienesNOMBRES: TIBStringField;
    IBQr_ListaNuevosPacienesSEXO: TIBStringField;
    QRP_ConsultasPacientesAsegurados: TQuickRep;
    PageHeaderBand9: TQRBand;
    DetailBand9: TQRBand;
    PageFooterBand9: TQRBand;
    QRLabel85: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    GroupFooterBand3: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel91: TQRLabel;
    QRExpr5: TQRExpr;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRShape4: TQRShape;
    QRLabel92: TQRLabel;
    QRExpr6: TQRExpr;
    IBQr_ARS: TIBQuery;
    IBQr_NSS: TIBQuery;
    IBQr_ARSNOMBRE_ARS: TIBStringField;
    QRLabel93: TQRLabel;
    QRDBText43: TQRDBText;
    QRShape5: TQRShape;
    QRP_DatosPaciente: TQuickRep;
    PageHeaderBand10: TQRBand;
    DetailBand10: TQRBand;
    QRLabel97: TQRLabel;
    QRSHP_MarcoFoto: TQRShape;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    IBQr_DatosPaciente: TIBQuery;
    QRLabel109: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRIMG_1: TQRImage;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRLabel113: TQRLabel;
    QRDBText59: TQRDBText;
    QRLabel114: TQRLabel;
    QRDBText60: TQRDBText;
    QRIMG_ListaPacientes: TQRImage;
    QRLabel115: TQRLabel;
    QRLB_1: TQRLabel;
    QRLB_2: TQRLabel;
    QRSysData3: TQRSysData;
    QRLB_3: TQRLabel;
    QRLB_4: TQRLabel;
    QRIMG_PacientesNacionalidad: TQRImage;
    QRLB_5: TQRLabel;
    QRLB_6: TQRLabel;
    QRLB_7: TQRLabel;
    QRSysData7: TQRSysData;
    QRLB_8: TQRLabel;
    QRLB_9: TQRLabel;
    QRIMG_CitasEspecialidadMedica: TQRImage;
    QRLB_10: TQRLabel;
    QRLB_11: TQRLabel;
    QRLB_12: TQRLabel;
    QRSysData9: TQRSysData;
    QRLB_13: TQRLabel;
    QRLB_14: TQRLabel;
    QRIMG_ConsultaDiagnosticoEdad: TQRImage;
    QRLB_15: TQRLabel;
    QRLB_16: TQRLabel;
    QRLB_17: TQRLabel;
    QRSysData11: TQRSysData;
    QRLB_18: TQRLabel;
    QRLB_19: TQRLabel;
    QRIMG_ConsultasExtranjeria: TQRImage;
    QRLB_20: TQRLabel;
    QRLB_21: TQRLabel;
    QRLB_22: TQRLabel;
    QRSysData12: TQRSysData;
    QRLB_23: TQRLabel;
    QRLB_24: TQRLabel;
    QRIMG_ConsultasMedicas: TQRImage;
    QRLB_25: TQRLabel;
    QRLB_26: TQRLabel;
    QRLB_27: TQRLabel;
    QRSysData13: TQRSysData;
    QRLB_28: TQRLabel;
    QRLB_29: TQRLabel;
    QRIMG_ListanNuevosPacientes: TQRImage;
    QRLB_30: TQRLabel;
    QRLB_31: TQRLabel;
    QRLB_32: TQRLabel;
    QRSysData15: TQRSysData;
    QRLB_33: TQRLabel;
    QRLB_34: TQRLabel;
    QRIMG_ConsultaAsegurados: TQRImage;
    QRLB_35: TQRLabel;
    QRLB_36: TQRLabel;
    QRLB_37: TQRLabel;
    QRSysData16: TQRSysData;
    QRLB_38: TQRLabel;
    QRLB_39: TQRLabel;
    QRIMG_DatosPacientes: TQRImage;
    QRLB_40: TQRLabel;
    QRLB_41: TQRLabel;
    QRLB_42: TQRLabel;
    QRSysData6: TQRSysData;
    QRLB_43: TQRLabel;
    QRLB_44: TQRLabel;
    QRIMG_CitasMedicas: TQRImage;
    QRLB_45: TQRLabel;
    QRLB_46: TQRLabel;
    IBQr_ConsultasDiagnEdadRESERVADO: TIntegerField;
    QRP_ConsultasPacientesReincidentes: TQuickRep;
    PageHeaderBand11: TQRBand;
    QRB_Reincidentes: TQRBand;
    PageFooterBand10: TQRBand;
    QRLB_47: TQRLabel;
    QRSysData17: TQRSysData;
    QRLB_48: TQRLabel;
    QRLB_49: TQRLabel;
    QRIMG_Reincidente: TQRImage;
    QRLB_50: TQRLabel;
    QRLB_51: TQRLabel;
    QRLB_52: TQRLabel;
    TitleBand6: TQRBand;
    QRLB_53: TQRLabel;
    QRLB_54: TQRLabel;
    QRLB_55: TQRLabel;
    QRLB_56: TQRLabel;
    QRLB_57: TQRLabel;
    QRLB_58: TQRLabel;
    IBQr_Reincidentes: TIBQuery;
    IBQr_ReincidentesCODIGO_PACIENTE: TIntegerField;
    IBQr_ReincidentesEDAD: TDateField;
    IBQr_ReincidentesSEXO: TIBStringField;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBL_FECHA_DIAGNOSTICO: TQRDBText;
    CDS_TablaVirtural_Reincidentes: TClientDataSet;
    CDS_TablaVirtural_ReincidentesIdPaciente: TIntegerField;
    CDS_TablaVirtural_ReincidentesNAciertos: TIntegerField;
    QRExpr7: TQRExpr;
    IBQr_ReincidentesNOMBRES: TIBStringField;
    IBQr_ReincidentesAPELLIDOS: TIBStringField;
    QRLB_59: TQRLabel;
    QRB_PageFooterBand11: TQRBand;
    QRLB_60: TQRLabel;
    QRLB_61: TQRLabel;
    QRLB_63: TQRLabel;
    QRLB_64: TQRLabel;
    QRLB_65: TQRLabel;
    QRLB_66: TQRLabel;
    QRLB_67: TQRLabel;
    QRLB_69: TQRLabel;
    QRLabel1: TQRLabel;
    QRLB_70: TQRLabel;
    QRLB_71: TQRLabel;
    QRLB_72: TQRLabel;
    QuickRep1: TQuickRep;
    QRLB_73: TQRLabel;
    QRSysData18: TQRSysData;
    IBQr_DatosPacienteAPELLIDOS: TIBStringField;
    IBQr_DatosPacienteCODIGO_PACIENTE: TIntegerField;
    IBQr_DatosPacienteDIRECCION: TIBStringField;
    IBQr_DatosPacienteFECHA_INGRESO: TDateField;
    IBQr_DatosPacienteFECHA_NACIMIENTO: TDateField;
    IBQr_DatosPacienteNOMBRE_MADRE: TIBStringField;
    IBQr_DatosPacienteNOMBRE_PADRE: TIBStringField;
    IBQr_DatosPacienteNOMBRES: TIBStringField;
    IBQr_DatosPacienteSEXO: TIBStringField;
    IBQr_DatosPacienteNUMERO_SS: TIBStringField;
    IBQr_DatosPacienteNOMBRE_ARS: TIBStringField;
    IBQr_DatosPacienteEDAD: TDateField;
    IBQr_DatosPacienteESTADO: TIntegerField;
    IBQr_DatosPacienteCEDULA: TIBStringField;
    IBQr_DatosPacientePASAPORTE: TIBStringField;
    IBQr_DatosPacienteTELNO_CASA: TIBStringField;
    IBQr_DatosPacienteTELNO_CELULAR: TIBStringField;
    IBQr_DatosPacientePAIS: TIBStringField;
    IBQr_NSSAPELLIDOS: TIBStringField;
    IBQr_NSSCODIGO_PACIENTE: TIntegerField;
    IBQr_NSSFECHA_NACIMIENTO: TDateField;
    IBQr_NSSNOMBRES: TIBStringField;
    IBQr_NSSSEXO: TIBStringField;
    IBQr_NSSFECHA_DIAGNOSTICO: TDateField;
    IBQr_NSSNUMERO_SS: TIBStringField;
    IBQr_NSSNOMBRE_ARS: TIBStringField;
    QRLB_62: TQRLabel;
    QRSysData14: TQRSysData;
    QRLabel2: TQRLabel;
    QRLB_68: TQRLabel;
    procedure IBQr_ConsultasDiagnEdadEDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DetailBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure IBQr_NacionalidadPAISGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ExtranjeriaNOMBRECGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ConsultaMedica_MedicosNOMBRE_MEDICOGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DetailBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure IBQr_ConsultaMedica_PacientesNOMBRECGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ListaNuevosPacienesFECHA_NACIMIENTOGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure IBQr_ListaNuevosPacienesNOMBRESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DetailBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure IBQr_NSSID_NSSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBQr_NSSFECHA_NACIMIENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_NSSNOMBRESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBQr_DatosPacienteEDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_DatosPacienteNOMBRESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_DatosPacienteESTADOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ConsultasDiagnEdadNOMBRECGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ReincidentesEDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_ReincidentesNOMBRESGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure PageFooterBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRB_PageFooterBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRP_DatosPacienteBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ListaPacientesBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_MedicoCitaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_PacientesNacionalidadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_CitasEspecialidadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ConsultaDiagnEdadBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ConsultasExtranjeriaBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ConsultasMedicasBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ListaNuevoPacienteBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRP_ConsultasPacientesAseguradosBeforePrint(
      Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRP_ConsultasPacientesReincidentesBeforePrint(
      Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure IBQr_ListaNuevosPacienesSEXOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure PageHeaderBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure IBQr_ListaPacienteSEXOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportes: TFReportes;

implementation

uses UContenedorDatos, UPrincipal, UNuevoPaciente, UMedicos,
  UDatosMiscelaneos;

{$R *.dfm}

procedure TFReportes.IBQr_ConsultasDiagnEdadEDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=_FNuevoPaciente.CalculaEdad(IBQr_ConsultasDiagnEdadEDAD.AsDateTime, 'A', '', '');
end;

procedure TFReportes.DetailBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with IBQr_Extranjeria do
    begin
      Close;
      ParamByName('p0').Value:=IBQr_NacionalidadIDNACIONALIDAD.AsInteger;
      ParamByName('p1').Value:=DateOf(_FDatosMicelaneos.DTP_FechaInicial_Extranjeria.Date);
      ParamByName('p2').Value:=DateOf(_FDatosMicelaneos.DTP_FechaFinal_Extranjeria.Date);
      Open;
    end;
end;

procedure TFReportes.IBQr_NacionalidadPAISGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_NacionalidadPAIS.AsString+' ('+IBQr_NacionalidadGENTILICIO.AsString+')';
end;

procedure TFReportes.IBQr_ExtranjeriaNOMBRECGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_ExtranjeriaNOMBREC.AsString+' '+IBQr_ExtranjeriaAPELLIDOS.AsString;
end;

procedure TFReportes.IBQr_ConsultaMedica_MedicosNOMBRE_MEDICOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_ConsultaMedica_MedicosNOMBRE_MEDICO.AsString+' ('+IBQr_ConsultaMedica_MedicosNOMBRE_ESPECIALIDAD.AsString+')';
end;

procedure TFReportes.DetailBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 with IBQr_ConsultaMedica_Pacientes do
    begin
      Close;
      ParamByName('p0').Value:=IBQr_ConsultaMedica_MedicosID_MEDICO.AsInteger;
      ParamByName('p1').Value:=DateOf(_FDatosMicelaneos.DTP_ConsultaMedica_FechaInicial.Date);
      ParamByName('p2').Value:=DateOf(_FDatosMicelaneos.DTP_ConsultaMedica_FechaFinal.Date);
      Open;
    end;
end;

procedure TFReportes.IBQr_ConsultaMedica_PacientesNOMBRECGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_ConsultaMedica_PacientesNOMBREC.AsString+' '+IBQr_ConsultaMedica_PacientesAPELLIDOS.AsString;
end;

procedure TFReportes.IBQr_ListaNuevosPacienesFECHA_NACIMIENTOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text:=_FNuevoPaciente.CalculaEdad(IBQr_ListaNuevosPacienesFECHA_NACIMIENTO.AsDateTime, 'A', '', '');
end;

procedure TFReportes.IBQr_ListaNuevosPacienesNOMBRESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_ListaNuevosPacienesNOMBRES.AsString+' '+IBQr_ListaNuevosPacienesAPELLIDOS.AsString;
end;

procedure TFReportes.DetailBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 { with IBQr_NSS do
    begin
      Close;
      ParamByName('p0').Value:=_FArs.ObtenerIDARS_NombreARS(IBQr_ARSNOMBRE_ARS.AsString);
      ParamByName('p1').Value:=DateOf(_FDatosMicelaneos.DTP_ConsultaMedica_FechaInicial.Date);
      ParamByName('p2').Value:=DateOf(_FDatosMicelaneos.DTP_ConsultaMedica_FechaFinal.Date);
      Open;
    end;     }
end;

procedure TFReportes.IBQr_NSSID_NSSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //Text:=_FArs.ObtenernoNSS_IDNSS(IBQr_NSSID_NSS.AsInteger);
end;

procedure TFReportes.IBQr_NSSFECHA_NACIMIENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=_FNuevoPaciente.CalculaEdad(IBQr_NSSFECHA_NACIMIENTO.AsDateTime, 'A', '', '');
end;

procedure TFReportes.IBQr_NSSNOMBRESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_NSSNOMBRES.AsString+' '+IBQr_NSSAPELLIDOS.AsString;
end;

procedure TFReportes.IBQr_DatosPacienteEDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=_FNuevoPaciente.CalculaEdad(IBQr_DatosPacienteFECHA_NACIMIENTO.AsDateTime, 'A', 'M', 'D');
end;

procedure TFReportes.IBQr_DatosPacienteNOMBRESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_DatosPacienteNOMBRES.AsString+' '+IBQr_DatosPacienteAPELLIDOS.AsString;
end;

procedure TFReportes.IBQr_DatosPacienteESTADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_DatosPacienteESTADO.AsInteger = 1 then
    begin
      Text:='ACTIVO';
      QRDBText58.Font.Color:=clGreen;
    end
  else
    begin
      Text:='INACTIVO';
      QRDBText58.Font.Color:=clRed;
    end;
end;

procedure TFReportes.IBQr_ConsultasDiagnEdadNOMBRECGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (IBQr_ConsultasDiagnEdadRESERVADO.AsInteger = 1)and(not Autorizado) then
    begin
      Text:='Nombre Reservado.';
    end
  else
    begin
      Text:=IBQr_ConsultasDiagnEdadNOMBREC.AsString;
    end;
end;

procedure TFReportes.IBQr_ReincidentesEDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=_FNuevoPaciente.CalculaEdad(IBQr_ReincidentesEDAD.AsDateTime, 'A', '', '');
end;

procedure TFReportes.IBQr_ReincidentesNOMBRESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_ReincidentesNOMBRES.AsString+' '+IBQr_ReincidentesAPELLIDOS.AsString;
end;

procedure TFReportes.PageFooterBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_59.Caption:=NombreUsu;
end;

procedure TFReportes.QRB_PageFooterBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_60.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_61.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_64.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_63.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_65.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_66.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_67.Caption:=NombreUsu;
end;

procedure TFReportes.PageFooterBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_69.Caption:=NombreUsu;
end;

procedure TFReportes.QRP_DatosPacienteBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_DatosPacientes.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ListaPacientesBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  IBQr_TotalP:TIBQuery;
begin
  try
     IBQr_TotalP:=TIBQuery.Create(Self);
     with IBQr_TotalP do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Add('select count(CODIGO_PACIENTE) TotalPacientes from PACIENTES');
        Open;
      end;
     QRLB_70.Caption:=IBQr_TotalP.fieldbyname('TotalPacientes').AsString;
     QRLB_72.Caption:=IBQr_TotalP.fieldbyname('TotalPacientes').AsString;
  finally
    IBQr_TotalP.Free;
  end;
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ListaPacientes.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_MedicoCitaBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_CitasMedicas.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_PacientesNacionalidadBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_PacientesNacionalidad.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_CitasEspecialidadBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_CitasEspecialidadMedica.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ConsultaDiagnEdadBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ConsultaDiagnosticoEdad.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ConsultasExtranjeriaBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ConsultasExtranjeria.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ConsultasMedicasBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ConsultasMedicas.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ListaNuevoPacienteBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ListanNuevosPacientes.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ConsultasPacientesAseguradosBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_ConsultaAsegurados.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.QRP_ConsultasPacientesReincidentesBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if(FPrincipal.leCadINI('SUCONF', 'lc', '0')='1')then
    begin
      QRIMG_Reincidente.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
    end;
end;

procedure TFReportes.IBQr_ListaNuevosPacienesSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_ListaNuevosPacienesSEXO.AsString = 'FEMENINO' then
    Text:='F'
  else
    Text:='M';
end;

procedure TFReportes.PageHeaderBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLB_62.Caption:=NombreUsu;
end;

procedure TFReportes.PageHeaderBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLB_68.Caption:=NombreUsu;
end;

procedure TFReportes.IBQr_ListaPacienteSEXOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_ListaPacienteSEXO.AsString = 'FEMENINO' then
    Text:='F'
  else
    Text:='M';
end;

end.
