unit UDatosMiscelaneos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, BusinessSkinForm, bsSkinCtrls,
  bsSkinBoxCtrls, bsdbctrls, DBCtrls, JvGIF, bsCalendar, IBQuery, JvBalloonHint,
  DateUtils, ComCtrls, JvExComCtrls, JvDateTimePicker, JvExStdCtrls,
  JvCombobox, Mask, ActnList, DB, Grids, DBGrids, DBClient, IBCustomDataSet,
  bsDialogs;

type
  TFDatosMiscelaneos = class(TForm)
    Notebook1: TNotebook;
    BSF_F1: TbsBusinessSkinForm;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    LB_3: TbsSkinStdLabel;
    LB_4: TbsSkinStdLabel;
    LB_5: TbsSkinStdLabel;
    LB_6: TbsSkinStdLabel;
    BT_Cerrar: TbsSkinButton;
    bsknbvl1: TbsSkinBevel;
    IMG_1: TImage;
    LB_7: TbsSkinStdLabel;
    LB_8: TbsSkinStdLabel;
    LB_9: TbsSkinStdLabel;
    LB_10: TbsSkinStdLabel;
    LB_11: TbsSkinStdLabel;
    M2_ComentariosCitas: TbsSkinMemo2;
    bsknbvl2: TbsSkinBevel;
    LB_12: TbsSkinStdLabel;
    LB_13: TbsSkinStdLabel;
    Calendario1: TbsSkinMonthCalendar;
    CBB_MedicosCitasModif: TComboBox;
    LB_14: TbsSkinStdLabel;
    LB_15: TbsSkinStdLabel;
    M2_ComentariosCitaMod: TbsSkinMemo2;
    LB_16: TbsSkinStdLabel;
    bsknbvl3: TbsSkinBevel;
    LB_17: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;
    BT_CerrarModifCita: TbsSkinButton;
    LB_18: TbsSkinStdLabel;
    LB_19: TbsSkinStdLabel;
    LB_20: TbsSkinStdLabel;
    LB_21: TbsSkinStdLabel;
    LB_22: TbsSkinStdLabel;
    CBB_Nacionalidad_Extranjeria: TJvComboBox;
    bsSkinRadioGroup2: TbsSkinRadioGroup;
    GB_1: TbsSkinGroupBox;
    DTP_FechaInicial_Extranjeria: TJvDateTimePicker;
    DTP_FechaFinal_Extranjeria: TJvDateTimePicker;
    LB_30: TbsSkinStdLabel;
    LB_33: TbsSkinStdLabel;
    GB_2: TbsSkinGroupBox;
    CBB_ConsultaMedica: TJvComboBox;
    GB_3: TbsSkinGroupBox;
    DTP_ConsultaMedica_FechaInicial: TJvDateTimePicker;
    DTP_ConsultaMedica_FechaFinal: TJvDateTimePicker;
    LB_34: TbsSkinStdLabel;
    LB_35: TbsSkinStdLabel;
    GB_4: TbsSkinGroupBox;
    BT_AceptarConsultaMedica: TbsSkinButton;
    RCB_ConsultaMedica_Pantalla: TbsSkinCheckRadioBox;
    RCB_ConsultaMedica_Printer: TbsSkinCheckRadioBox;
    GB_5: TbsSkinGroupBox;
    BT_AceptarExtranjeria: TbsSkinButton;
    RCB_Extranjeria_Pantalla: TbsSkinCheckRadioBox;
    RCB_Extranjeria_Printer: TbsSkinCheckRadioBox;
    GB_6: TbsSkinGroupBox;
    LB_27: TbsSkinStdLabel;
    SPB_1: TbsSkinSpeedButton;
    E_NombreDiagnedad: TbsSkinEdit;
    GB_7: TbsSkinGroupBox;
    LB_28: TbsSkinStdLabel;
    LB_29: TbsSkinStdLabel;
    SE_MinimaEdad: TbsSkinSpinEdit;
    SE_MaximaEdad: TbsSkinSpinEdit;
    GB_8: TbsSkinGroupBox;
    LB_31: TbsSkinStdLabel;
    LB_32: TbsSkinStdLabel;
    DTP_FechaInicial_DiagnEdad: TJvDateTimePicker;
    DTP_FechaFinal_DiagnEdad: TJvDateTimePicker;
    GB_9: TbsSkinGroupBox;
    BT_AceptarConsultaDiagnEdad: TbsSkinButton;
    RCB_ConsultaDiagEdad_Pantalla: TbsSkinCheckRadioBox;
    RCB_ConsultaDiagEdad_Printer: TbsSkinCheckRadioBox;
    GB_10: TbsSkinGroupBox;
    GB_11: TbsSkinGroupBox;
    GB_12: TbsSkinGroupBox;
    LB_24: TbsSkinStdLabel;
    CBB_MedicosCitas_Fechas: TJvComboBox;
    LB_25: TbsSkinStdLabel;
    LB_26: TbsSkinStdLabel;
    DTP_FechaInicio_MedicoCitas: TJvDateTimePicker;
    DTP_FechaFin_MedicoCita: TJvDateTimePicker;
    BT_MostrarCitasMedico: TbsSkinButton;
    RCB_MedicoEspecialidad_Pantalla: TbsSkinCheckRadioBox;
    RCB_MedicoEspecialidad_Printer: TbsSkinCheckRadioBox;
    GB_13: TbsSkinGroupBox;
    LB_23: TbsSkinStdLabel;
    CBB_BuscarPorNacionalidad: TJvComboBox;
    GB_14: TbsSkinGroupBox;
    BT_BuscarNacionalidad: TbsSkinButton;
    RCB_PacientesNac_Pantalla: TbsSkinCheckRadioBox;
    RCB_PacientesNac_Printer: TbsSkinCheckRadioBox;
    GB_15: TbsSkinGroupBox;
    GB_16: TbsSkinGroupBox;
    DTP_ListaNuevoPacientes_FechaInicial: TJvDateTimePicker;
    DTP_ListanuevosPacientes_FechaFinal: TJvDateTimePicker;
    LB_36: TbsSkinStdLabel;
    LB_37: TbsSkinStdLabel;
    BT_Aceptar_ListaPacientesNuevos: TbsSkinButton;
    RCB_ListaNuevosPacientes_Pantalla: TbsSkinCheckRadioBox;
    RCB_ListaNuevosPacientes_Printer: TbsSkinCheckRadioBox;
    SPB_ReporteSeguridad: TbsSkinSpeedButton;
    RCB_MostrarTodaConsultaReincide: TbsSkinCheckRadioBox;
    PSSDLG_Autoriza: TbsSkinPasswordDialog;
    RCB_Paciente_Activo: TbsSkinCheckRadioBox;
    RCB_Paciente_Inactivo: TbsSkinCheckRadioBox;
    LB_38: TbsSkinStdLabel;
    DBTEXT_NOMBREC: TDBText;
    DS_Act_Desac_Paciente: TDataSource;
    IBQr_Busca_Act_Desac_Paciente: TIBQuery;
    BT_Aceptar_Act_Desac_Paciente: TbsSkinButton;
    E_BuscarPaciente_act_desac: TbsSkinEdit;
    SPB_BuscarPaciente_act_desac: TbsSkinSpeedButton;
    IBQr_Busca_Act_Desac_PacienteNOMBREC: TIBStringField;
    IBQr_Busca_Act_Desac_PacienteESTADO: TIntegerField;
    IBQr_Busca_Act_Desac_PacienteIDPACIENTE: TIntegerField;
    bsknbvl4: TbsSkinBevel;
    LB_39: TbsSkinStdLabel;
    DTP_1: TJvDateTimePicker;
    DTP_2: TJvDateTimePicker;
    BT_1: TbsSkinButton;
    procedure BT_CerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_CerrarModifCitaClick(Sender: TObject);
    procedure CBB_MedicosCitasModifDropDown(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure M2_ComentariosCitaModChange(Sender: TObject);
    procedure BT_BuscarNacionalidadClick(Sender: TObject);
    procedure CBB_BuscarPorNacionalidadChange(Sender: TObject);
    procedure CBB_BuscarPorNacionalidadKeyPress(Sender: TObject;
      var Key: Char);
    procedure CBB_MedicosCitas_FechasDropDown(Sender: TObject);
    procedure BT_MostrarCitasMedicoClick(Sender: TObject);
    procedure BT_AceptarConsultaDiagnEdadClick(Sender: TObject);
    procedure SPB_1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BT_AceptarExtranjeriaClick(Sender: TObject);
    procedure BT_AceptarConsultaMedicaClick(Sender: TObject);
    procedure BT_Aceptar_ListaPacientesNuevosClick(Sender: TObject);
    procedure SPB_ReporteSeguridadClick(Sender: TObject);
    procedure E_BuscarPaciente_act_desacKeyPress(Sender: TObject;
      var Key: Char);
    procedure SPB_BuscarPaciente_act_desacClick(Sender: TObject);
    procedure BT_Aceptar_Act_Desac_PacienteClick(Sender: TObject);
    procedure RCB_Paciente_ActivoClick(Sender: TObject);
    procedure RCB_Paciente_InactivoClick(Sender: TObject);
    procedure BT_1Click(Sender: TObject);
  private
    CampoDato: TField;
    { Private declarations }

  public
    { Public declarations }
     procedure LlenarCombMedicosCitasMof;

  end;

var
  FDatosMiscelaneos: TFDatosMiscelaneos;
  //CitasMod_IdMedico, CitasMod_IdPaciente, CitasMod_
  Id_NacionalidaReportes:Integer;
  SeleccionarDiagnEdad: Boolean; // desvia el nombre del diagnostico al reporte de consultas por diagnostico y edad

implementation

uses UPrincipal, UContenedorDatos, UReportes, UNuevoPaciente, UMedicos,
  UEspecialidadMedica, UEnfermedades, UArs, ULogin;

{$R *.dfm}

procedure TFDatosMiscelaneos.BT_CerrarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFDatosMiscelaneos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I, ItemCant: Integer;
begin
  if(Notebook1.PageIndex = 1)then
    begin
      Modificar:=False;
      FPrincipal.LlenarComboMedico(FPrincipal.CBB_Medicos);
      ItemCant:=FPrincipal.CBB_Medicos.Items.Count;
      for I := 0 to ItemCant-1 do
        begin
          FPrincipal.CBB_Medicos.ItemIndex:=I;
          if(FPrincipal.CBB_Medicos.Text = CBB_MedicosCitasModif.Text)then
            Break;
        end;
      FPrincipal.Calendario1NumberClick(Self)//BuscarCitasXMedico(Id_Medico, FPrincipal.Calendario1.Date);
    end;
  Autorizado:=False;
  Action:=caFree;
end;

procedure TFDatosMiscelaneos.BT_CerrarModifCitaClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFDatosMiscelaneos.LlenarCombMedicosCitasMof;
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
      CBB_MedicosCitasModif.Items.Clear;
      while not IBQr_BuscaMedico.Eof do
        begin
          CBB_MedicosCitasModif.Items.Add(IBQr_BuscaMedico.FieldByName('NOMBRE_MEDICO').AsString);
          IBQr_BuscaMedico.Next;
        end;
    end;
  IBQr_BuscaMedico.Free;
end;

procedure TFDatosMiscelaneos.CBB_MedicosCitasModifDropDown(
  Sender: TObject);
begin
  LlenarCombMedicosCitasMof;
end;

procedure TFDatosMiscelaneos.BT_AceptarClick(Sender: TObject);
begin
  if(Trim(CBB_MedicosCitasModif.Text) = '')then
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(CBB_MedicosCitasModif,'Selecione un médico de de la lista para continuar.',ikError, 'Error campo vacio.',5000);
    end
  else
  if(CompareDate(DateOf(Calendario1.Date),DateOf(Now)) = -1)then
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(Calendario1, 'La fecha seleccionada es inferior a la fecha actual,'+#13+
      'seleccione una fecha superior a la fecha actual.', ikError, 'Error en la fecha.', 5000);
    end
  else
  if(FPrincipal.ValidaCitaExiste(FPrincipal.IBQr_CitaMedicoID_PACIENTE.AsInteger, FPrincipal.BuscaID_MEDICOnombre(Trim(CBB_MedicosCitasModif.Text)),
                                DateOf(Calendario1.Date)) = True)then
    begin
      FPrincipal.ModificarCita(M2_ComentariosCitaMod.Text,0,1,DateOf(Calendario1.Date),DateOf(Now),FPrincipal.IBQr_CitaMedicoID_CITA.AsInteger,
                              FPrincipal.BuscaID_MEDICOnombre(Trim(CBB_MedicosCitasModif.Text)),FPrincipal.IBQr_CitaMedicoID_PACIENTE.AsInteger,0,1);
      FPrincipal.Calendario1.Date:=Calendario1.Date;                              
      Self.Close;                              
    end;

end;

procedure TFDatosMiscelaneos.M2_ComentariosCitaModChange(Sender: TObject);
begin
{  M2_ComentariosCitaMod.Text := AnsiUpperCase(M2_ComentariosCitaMod.Text);
  M2_ComentariosCitaMod.SelStart := Length(M2_ComentariosCitaMod.Text);}
end;

procedure TFDatosMiscelaneos.BT_BuscarNacionalidadClick(Sender: TObject);
begin 
  _FReportes:=TFReportes.Create(Self);
  with _FReportes do
    begin
      IBQr_PacientesNacionalidad.Close;
      IBQr_PacientesNacionalidad.ParamByName('p0').Value:=Id_NacionalidaReportes;
      IBQr_PacientesNacionalidad.Open;
      if IBQr_PacientesNacionalidad.RecordCount > 0 then
        begin
          QRLabel24.Caption:=CBB_BuscarPorNacionalidad.Text;
          if RCB_PacientesNac_Pantalla.Checked = True then
            begin
              QRP_PacientesNacionalidad.Preview;
            end
          else
            begin
              QRP_PacientesNacionalidad.Print;
            end;
          QRP_PacientesNacionalidad.Free;
        end
      else
        begin
          FPrincipal.MS_Personalizado.MessageDlg('No hay datos para mostrar para esta nacionalidad.',mtInformation,[mbOK],0);
          CBB_BuscarPorNacionalidad.SetFocus;
        end;
    end;
end;



procedure TFDatosMiscelaneos.CBB_BuscarPorNacionalidadChange(
  Sender: TObject);
begin
  Id_NacionalidaReportes:=FPrincipal.ObtenerIdNacionalidad(CBB_BuscarPorNacionalidad.Text);
  if Id_NacionalidaReportes > 0 then
    BT_BuscarNacionalidad.Enabled:=True
  else
    BT_BuscarNacionalidad.Enabled:=False;
end;

procedure TFDatosMiscelaneos.CBB_BuscarPorNacionalidadKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   // BT_BuscarNacionalidadClick(Self);
    CBB_BuscarPorNacionalidad.SetFocus;
end;

procedure TFDatosMiscelaneos.CBB_MedicosCitas_FechasDropDown(
  Sender: TObject);
begin
  //FPrincipal.LlenarComboMedico(CBB_MedicosCitas_Fechas);
end;

procedure TFDatosMiscelaneos.BT_MostrarCitasMedicoClick(Sender: TObject);
var
  IdMedicoCita, IdEspecialidad:Integer;
begin
  if(Trim(CBB_MedicosCitas_Fechas.Text) <> '')or(CBB_MedicosCitas_Fechas.ItemIndex = 0)then
    begin
      if(CompareDate(DateOf(DTP_FechaFin_MedicoCita.DateTime), DateOf(DTP_FechaInicio_MedicoCitas.Date)) >= 0)then
        begin
          if(BT_MostrarCitasMedico.Tag = 0)then
            begin
              _FMedicos:=TFMedicos.Create(Self);
              IdMedicoCita:=_FMedicos.ObtenerIdMedico_NombreMedico(CBB_MedicosCitas_Fechas.Text);
              _FMedicos.Free;
              _FReportes:=TFReportes.Create(Self);
                with _FReportes do
                  begin
                    with IBQr_MedicosCitas do
                      begin
                        Close;
                        ParamByName('p0').Value:=IdMedicoCita;
                        ParamByName('p1').Value:=DateOf(DTP_FechaInicio_MedicoCitas.Date);
                        ParamByName('p2').Value:=DateOf(DTP_FechaFin_MedicoCita.Date);
                        Open;
                      end;
                    if IBQr_MedicosCitas.RecordCount > 0 then
                      begin
                        QRLabel6.Caption:='Citas de pacientes para el médico: '+CBB_MedicosCitas_Fechas.Text+'   Desde: '+
                        DateToStr(DTP_FechaInicio_MedicoCitas.Date)+'   Hasta: '+DateToStr(DTP_FechaFin_MedicoCita.Date);
                        if RCB_MedicoEspecialidad_Pantalla.Checked = True then
                          begin
                            QRP_MedicoCita.Preview;
                          end
                        else
                          begin
                            QRP_MedicoCita.Print;
                          end;
                        CBB_MedicosCitas_Fechas.SetFocus;
                      end
                    else
                      begin
                        FPrincipal.MS_Personalizado.MessageDlg('No hay citas registradas para este médico en el intervalo de fechas.',mtInformation,[mbOK],0);
                        CBB_MedicosCitas_Fechas.SetFocus;
                      end;
                  end;
            end
          else
          if(BT_MostrarCitasMedico.Tag = 1)then
            begin
              _FReportes:=TFReportes.Create(Self);
                with _FReportes do
                  begin
                    _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
                    IdEspecialidad:=_FEspecialidadMedica.ObtenerIdEspec(CBB_MedicosCitas_Fechas.Text);
                    _FEspecialidadMedica.Free;
                    with IBQr_CitasEspecialidad do
                      begin
                        Close;
                        ParamByName('p0').Value:=IdEspecialidad;
                        ParamByName('p1').Value:=DateOf(DTP_FechaInicio_MedicoCitas.Date);
                        ParamByName('p2').Value:=DateOf(DTP_FechaFin_MedicoCita.Date);
                        Open;
                      end;
                    if IBQr_CitasEspecialidad.RecordCount > 0 then
                      begin
                        QRLabel34.Caption:=CBB_MedicosCitas_Fechas.Text+'   Desde: '+DateToStr(DTP_FechaInicio_MedicoCitas.Date)+'   Hasta: '+DateToStr(DTP_FechaFin_MedicoCita.Date);
                        if RCB_MedicoEspecialidad_Pantalla.Checked = True then
                          begin
                            QRP_CitasEspecialidad.Preview;
                          end
                        else
                          begin
                            QRP_CitasEspecialidad.Print;
                          end;
                        CBB_MedicosCitas_Fechas.SetFocus;
                      end
                    else
                      begin
                        FPrincipal.MS_Personalizado.MessageDlg('No hay citas registradas para esta especialidad en el intervalo de fechas.',mtInformation,[mbOK],0);
                        CBB_MedicosCitas_Fechas.SetFocus;
                      end;
                  end;
            end;
        end
      else
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(DTP_FechaInicio_MedicoCitas,'La fecha inicial es superior a la fecha final.'+#13+
          'La fecha inicial debe ser igual o inferior a la fecha final.',ikError, 'Error en la fecha.',5000);
        end;
    end
  else
    begin
      if(BT_MostrarCitasMedico.Tag = 0)then
        FPrincipal.JvBalloonHint1.ActivateHint(CBB_MedicosCitas_Fechas,'Seleccione un médico de la lista para continuar.',ikError, 'Error campo vacio.',5000)
      else
        FPrincipal.JvBalloonHint1.ActivateHint(CBB_MedicosCitas_Fechas,'Seleccione un especialidad medica de la lista para continuar.',ikError, 'Error campo vacio.',5000);
    end;
end;

procedure TFDatosMiscelaneos.BT_AceptarConsultaDiagnEdadClick(
  Sender: TObject);
var
  Id_DiagnosticoEdad, EdadInicial, EdadFinal: Integer;
  FechaEdadInicial, FechaEdadFinal: TDateTime;
begin
  if(Trim(E_NombreDiagnedad.Text) <> '')then
    begin
      if(StrToInt(SE_MinimaEdad.Text) <= StrToInt(SE_MaximaEdad.Text))then
        begin
          if(CompareDate(DateOf(DTP_FechaFinal_DiagnEdad.Date), DateOf(DTP_FechaInicial_DiagnEdad.Date)) > -1)then
            begin
              EdadInicial:= StrToInt('-'+SE_MaximaEdad.Text);
              EdadFinal:=StrToInt('-'+SE_MinimaEdad.Text);
              FechaEdadInicial:=IncYear(DateOf(Now), EdadInicial);
              FechaEdadFinal:=IncYear(DateOf(Now), EdadFinal);
              FechaEdadInicial:=StartOfTheYear(FechaEdadInicial);
              FechaEdadFinal:=EndOfTheYear(FechaEdadFinal);
              _FEnfermedades:=TFEnfermedades.Create(Self);
              Id_DiagnosticoEdad:=_FEnfermedades.ObtenerIdDiagnostico(Trim(E_NombreDiagnedad.Text));
              _FEnfermedades.Free;
              _FReportes:=TFReportes.Create(Self);
              with _FReportes do
                begin
                  with IBQr_ConsultasDiagnEdad do
                    begin
                      Close;
                      ParamByName('p0').Value:=FechaEdadInicial;
                      ParamByName('p1').Value:=FechaEdadFinal;
                      ParamByName('p2').Value:=Id_DiagnosticoEdad;
                      ParamByName('p3').Value:=DateOf(DTP_FechaInicial_DiagnEdad.Date);
                      ParamByName('p4').Value:=DateOf(DTP_FechaFinal_DiagnEdad.Date);
                      Open;
                    end;
                  if IBQr_ConsultasDiagnEdad.RecordCount > 0 then
                    begin
                      _FMedicos:=TFMedicos.Create(Self);
                      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
                      QRLabel43.Caption:='Reporte de Pacientes para el diagnóstico: '+E_NombreDiagnedad.Text;
                      QRLabel47.Caption:='Comprendido entre las fechas: '+DateToStr(DateOf(DTP_FechaInicial_DiagnEdad.Date))+' Hasta el: '+
                      DateToStr(DateOf(DTP_FechaFinal_DiagnEdad.Date))+' para un total de: '+ IntToStr(DaysBetween(DateOf(DTP_FechaFinal_DiagnEdad.Date),DateOf(DTP_FechaInicial_DiagnEdad.Date)))+
                      ' dias, edades entre: '+ SE_MinimaEdad.Text+' - '+SE_MaximaEdad.Text+' años.';
                      if RCB_ConsultaDiagEdad_Pantalla.Checked = True then
                        begin
                          QRP_ConsultaDiagnEdad.Preview;
                        end
                      else
                        begin
                          QRP_ConsultaDiagnEdad.Print;
                        end;
                      _FNuevoPaciente.Free;
                      _FMedicos.Free;
                    end
                  else
                    begin
                      FPrincipal.MS_Personalizado.MessageDlg('No hay datos para mostrar para este reporte.',mtInformation,[mbOK],0);
                    end;
                end;
            end
          else
            begin
              FPrincipal.JvBalloonHint1.ActivateHint(DTP_FechaInicial_DiagnEdad,'La fecha inicial es mayor que la fecha final. La fecha inicial debe ser inferior.',ikError, 'Error en el orden de las fecha d diagnóstico.',5000);
            end;
        end
      else
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(SE_MinimaEdad,'La edad minima es mayor que la edad máxima. La edad minima de ser inferior.',ikError, 'Error en el orden de la edad.',5000);
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreDiagnedad,'Seleccione un diagnóstico para continuar.',ikError, 'Error campo vacio.',5000);
    end;
end;

procedure TFDatosMiscelaneos.SPB_1Click(Sender: TObject);
begin
  try
    _FEnfermedades:=TFEnfermedades.Create(Self);
    with _FEnfermedades do
      begin
        SeleccionarDiagnEdad:=True;
        MM_Seleccionar1.Visible:=True;
        SeleccionarExt:=True;
        ShowModal;
        SeleccionarExt:=False;
        Free;
      end;
  except
    SeleccionarExt:=False;
    _FEnfermedades.Free;
  end;
end;

procedure TFDatosMiscelaneos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFDatosMiscelaneos.BT_AceptarExtranjeriaClick(Sender: TObject);
var
  Id_Nacionalidad: Integer;
begin
  if CompareDate(DateOf(DTP_FechaFinal_Extranjeria.Date), DateOf(DTP_FechaInicial_Extranjeria.Date)) >= 0 then
    begin
      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
      Id_Nacionalidad:=_FNuevoPaciente.ObtenerIdNacionalidad(CBB_Nacionalidad_Extranjeria.Text);
      _FNuevoPaciente.Free;
      _FReportes:=TFReportes.Create(Self);
      with _FReportes do
        begin
          if CBB_Nacionalidad_Extranjeria.ItemIndex > 0 then
            begin
              With IBQr_Nacionalidad do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('select distinct IDNACIONALIDAD, PAIS, GENTILICIO');
                  SQL.Add('from NACIONALIDAD, PACIENTES,  DIAGNOSTICOS_PACIENTES');
                  SQL.Add('where(IDPACIENTE = ID_PACIENTE) and (IDNACIONALIDAD = NACIONALIDAD) and');
                  SQL.Add('(NACIONALIDAD = :p0) and (FECHA_DIAGNOSTICO between :p1 and :p2) order by CODIGO_PACIENTE;');
                end;
            end
          else
          if CBB_Nacionalidad_Extranjeria.ItemIndex = 0 then
            begin
              With IBQr_Nacionalidad do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add('select distinct IDNACIONALIDAD, PAIS, GENTILICIO');
                  SQL.Add('from NACIONALIDAD, PACIENTES,  DIAGNOSTICOS_PACIENTES');
                  SQL.Add('where(IDPACIENTE = ID_PACIENTE) and (IDNACIONALIDAD = NACIONALIDAD) and');
                  SQL.Add('(NACIONALIDAD <> 182) and (FECHA_DIAGNOSTICO between :p1 and :p2) order by CODIGO_PACIENTE;');
                end;
            end;

          with IBQr_Nacionalidad do
            begin
              Close;
              if CBB_Nacionalidad_Extranjeria.ItemIndex > 0 then
                begin
                  ParamByName('p0').Value:=Id_Nacionalidad;
                end;
              ParamByName('p1').Value:=DateOf(DTP_FechaInicial_Extranjeria.Date);
              ParamByName('p2').Value:=DateOf(DTP_FechaFinal_Extranjeria.Date);
              Open;
            end;
          if(IBQr_Nacionalidad.RecordCount > 0)then
            begin
              QRLabel53.Caption:='Reporte de Consultas por Nacionalidad Desde: '+DateToStr(DTP_FechaInicial_Extranjeria.Date)+
              ' Hasta: '+DateToStr(DTP_FechaFinal_Extranjeria.Date)+' para un total de: '+IntToStr(1+DaysBetween(DTP_FechaFinal_Extranjeria.Date, DTP_FechaInicial_Extranjeria.Date))+' dias.';
              if RCB_Extranjeria_Pantalla.Checked = True then
                begin
                  QRP_ConsultasExtranjeria.Preview;
                end
              else
                begin
                  QRP_ConsultasExtranjeria.Print;
                end;
              _FReportes.Free;
            end
          else
            begin
              DTP_FechaInicial_Extranjeria.SetFocus;
              FPrincipal.MS_Personalizado.MessageDlg('No se hallaron datos.', mtInformation, [mbOK], 0);
            end;
        end;
    end
  else
    begin
      DTP_FechaInicial_Extranjeria.SetFocus;
      FPrincipal.JvBalloonHint1.ActivateHint(DTP_FechaInicial_Extranjeria, 'La fecha inicial debe ser igual o inferior a la fecha final.', ikError, 'Error en este campo.', 5000);
    end;
end;

procedure TFDatosMiscelaneos.BT_AceptarConsultaMedicaClick(
  Sender: TObject);
var
  Id_MedicoConsulta: Integer;
begin
  if CompareDate(DateOf(DTP_ConsultaMedica_FechaFinal.Date), DateOf(DTP_ConsultaMedica_FechaInicial.Date)) >= 0 then
    begin
      //FPrincipal.GBR_Estado.Value:=10;
      _FReportes:=TFReportes.Create(Self);
      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
      with _FReportes do
        begin
          if BT_AceptarConsultaMedica.Tag = 0 then
            begin
              if CBB_ConsultaMedica.ItemIndex = 0 then
                begin
                  with IBQr_ConsultaMedica_Medicos do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('select  distinct NOMBRE_MEDICO, NOMBRE_ESPECIALIDAD, ID_MEDICO');
                      SQL.Add('from MEDICOS, ESPECIALIDAD_MEDICA, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (ID_ESPECIALIDAD = IDESPECIALIDAD) and (IDMEDICO = ID_MEDICO) and');
                      SQL.Add('(FECHA_DIAGNOSTICO between :p1 and :p2) order by NOMBRE_MEDICO;');
                    end;
                  //FPrincipal.GBR_Estado.Value:=10;
                end
              else
              if CBB_ConsultaMedica.ItemIndex > 0 then
                begin
                  with IBQr_ConsultaMedica_Medicos do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('select  distinct NOMBRE_MEDICO, NOMBRE_ESPECIALIDAD, ID_MEDICO');
                      SQL.Add('from MEDICOS, ESPECIALIDAD_MEDICA, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (ID_ESPECIALIDAD = IDESPECIALIDAD) and (IDMEDICO = ID_MEDICO) and');
                      SQL.Add('(ID_MEDICO = :p0) and (FECHA_DIAGNOSTICO between :p1 and :p2) order by NOMBRE_MEDICO;');
                    end;
                  //FPrincipal.GBR_Estado.Value:=10;
                end;
              with IBQr_ConsultaMedica_Medicos do
                begin
                  Close;
                  if CBB_ConsultaMedica.ItemIndex > 0 then
                    begin
                      _FMedicos:=TFMedicos.Create(Self);
                      Id_MedicoConsulta:=_FMedicos.ObtenerIdMedico_NombreMedico(Trim(CBB_ConsultaMedica.Text));
                      _FMedicos.Free;
                      ParamByName('p0').Value:=Id_MedicoConsulta;
                    end;
                  ParamByName('p1').Value:=DateOf(DTP_ConsultaMedica_FechaInicial.Date);
                  ParamByName('p2').Value:=DateOf(DTP_ConsultaMedica_FechaFinal.Date);
                  Open;
                  //FPrincipal.GBR_Estado.Value:=FPrincipal.GBR_Estado.Value+10;
                end;
              if IBQr_ConsultaMedica_Medicos.RecordCount > 0 then
                begin
                  QRIMG_ConsultasMedicas.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
                  if CBB_ConsultaMedica.ItemIndex = 0 then
                    begin
                      QRLabel63.Caption:='Reporte de Consulta General Desde: '+DateToStr(DTP_ConsultaMedica_FechaInicial.Date)+
                      ' Hasta: '+DateToStr(DTP_ConsultaMedica_FechaFinal.Date)+' para un total de: '+IntToStr(1+DaysBetween(DTP_ConsultaMedica_FechaFinal.Date, DTP_ConsultaMedica_FechaInicial.Date))+' dias.';
                    end
                  else
                  if CBB_ConsultaMedica.ItemIndex > 0 then
                    begin
                      QRLabel63.Caption:='Reporte de Consulta por Médico Desde: '+DateToStr(DTP_ConsultaMedica_FechaInicial.Date)+
                      ' Hasta: '+DateToStr(DTP_ConsultaMedica_FechaFinal.Date)+' para un total de: '+IntToStr(1+DaysBetween(DTP_ConsultaMedica_FechaFinal.Date, DTP_ConsultaMedica_FechaInicial.Date))+' dias.';
                    end;
                  if RCB_ConsultaMedica_Pantalla.Checked = True then
                    begin
                      //FPrincipal.GBR_Estado.Value:=100;
                      //FPrincipal.GBR_Estado.Value:=0;
                      QRP_ConsultasMedicas.Preview;
                    end
                  else
                    begin
                      //FPrincipal.GBR_Estado.Value:=100;
                      //FPrincipal.GBR_Estado.Value:=0;
                      QRP_ConsultasMedicas.Print;
                    end;
                  _FNuevoPaciente.Free;
                  _FReportes.Free;
                end
              else
                begin
                  //FPrincipal.GBR_Estado.Value:=100;
                  //FPrincipal.GBR_Estado.Value:=0;
                  DTP_ConsultaMedica_FechaInicial.SetFocus;
                  FPrincipal.MS_Personalizado.MessageDlg('No se hallarón datos.', mtInformation, [mbOK], 0);
                end;
            end
          else
          if BT_AceptarConsultaMedica.Tag = 1 then
            begin
//              FPrincipal.GBR_Estado.Value:=10;
              _FArs:=TFArs.Create(Self);
              if CBB_ConsultaMedica.ItemIndex < 1 then
                begin
                  with IBQr_ARS do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('select distinct NOMBRE_ARS from ARS, NSS, PACIENTES, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (IDARS = ID_ARS) and (IDNSS = ID_NSS)and(IDPACIENTE = ID_PACIENTE)and');
                      SQL.Add('(FECHA_DIAGNOSTICO between :p1 and :p2) order by NOMBRE_ARS;');
                    end;
                  //FPrincipal.GBR_Estado.Value:=FPrincipal.GBR_Estado.Value+10;
                end
              else
                begin
                  with IBQr_ARS do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add('select distinct NOMBRE_ARS from ARS, NSS, PACIENTES, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (IDARS = ID_ARS) and (IDNSS = ID_NSS)and(IDPACIENTE = ID_PACIENTE)and');
                      SQL.Add('(ID_ARS = :p0)and(FECHA_DIAGNOSTICO between :p1 and :p2) order by NOMBRE_ARS;');
                    end;
                  //FPrincipal.GBR_Estado.Value:=FPrincipal.GBR_Estado.Value+10;
                end;
              with IBQr_ARS do
                begin
                  Close;
                  if CBB_ConsultaMedica.ItemIndex > 0 then
                    begin
                      //ParamByName('p0').Value:=_FArs.ObtenerIDARS_NombreARS(Trim(CBB_ConsultaMedica.Text));
                    end;
                  ParamByName('p1').Value:=DateOf(DTP_ConsultaMedica_FechaInicial.Date);
                  ParamByName('p2').Value:=DateOf(DTP_ConsultaMedica_FechaFinal.Date);
                  Open;
                  //FPrincipal.GBR_Estado.Value:=FPrincipal.GBR_Estado.Value+10;
                end;
              if IBQr_ARS.RecordCount > 0 then
                begin
                  QRIMG_ConsultaAsegurados.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
                  QRLabel85.Caption:='Reporte de Consulta por NSS Desde: '+DateToStr(DTP_ConsultaMedica_FechaInicial.Date)+
                  ' Hasta: '+DateToStr(DTP_ConsultaMedica_FechaFinal.Date)+' para un total de: '+IntToStr(1+DaysBetween(DTP_ConsultaMedica_FechaFinal.Date, DTP_ConsultaMedica_FechaInicial.Date))+' dias.';
                  if RCB_ConsultaMedica_Pantalla.Checked = True then
                    begin
                      //FPrincipal.GBR_Estado.Value:=100;
                      //FPrincipal.GBR_Estado.Value:=0;
                      QRP_ConsultasPacientesAsegurados.Preview;
                    end
                  else
                    begin
                      //FPrincipal.GBR_Estado.Value:=100;
                      //FPrincipal.GBR_Estado.Value:=0;
                      QRP_ConsultasPacientesAsegurados.Print;
                    end;
                  _FNuevoPaciente.Free;
                  IBQr_NSS.Free;
                end
              else
                begin
                  //FPrincipal.GBR_Estado.Value:=100;
                  //FPrincipal.GBR_Estado.Value:=0;
                  DTP_ConsultaMedica_FechaInicial.SetFocus;
                  FPrincipal.MS_Personalizado.MessageDlg('No se hallarón datos.', mtInformation, [mbOK], 0);
                end;
              _FArs.Free;
            end;
        end;
    end
  else
    begin
      DTP_ConsultaMedica_FechaInicial.SetFocus;
      FPrincipal.JvBalloonHint1.ActivateHint(DTP_ConsultaMedica_FechaInicial, 'La fecha inicial debe ser igual o inferior a la fecha final.', ikError, 'Error en este campo.', 5000);
    end;
end;

procedure TFDatosMiscelaneos.BT_Aceptar_ListaPacientesNuevosClick(
  Sender: TObject);
begin
  if CompareDate(DateOf(DTP_ListanuevosPacientes_FechaFinal.Date), DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date)) >= 0 then
    begin
      _FReportes:=TFReportes.Create(Self);
      with _FReportes do
        begin        
          if BT_Aceptar_ListaPacientesNuevos.Tag = 0 then
            begin 
                  with IBQr_ListaNuevosPacienes do
                    begin
                      Close;
                      ParamByName('p0').Value:=DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date);
                      ParamByName('p1').Value:=DateOf(DTP_ListanuevosPacientes_FechaFinal.Date);
                      Open;
                    end;
                  if IBQr_ListaNuevosPacienes.RecordCount > 0 then
                    begin
                      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
                      QRLabel75.Caption:='Reporte Lista de Nuevos Pacientes Desde: '+DateToStr(DTP_ListaNuevoPacientes_FechaInicial.Date)+
                      ' Hasta: '+DateToStr(DTP_ListanuevosPacientes_FechaFinal.Date)+' para un total de: '+
                      IntToStr(1+DaysBetween(DTP_ListanuevosPacientes_FechaFinal.Date, DTP_ListaNuevoPacientes_FechaInicial.Date))+' dias.';
                      if RCB_ListaNuevosPacientes_Pantalla.Checked = True then
                        begin
                          QRP_ListaNuevoPaciente.Preview;
                        end
                      else
                        begin
                          QRP_ListaNuevoPaciente.Print;
                        end;
                      _FNuevoPaciente.Free;
                      _FReportes.Free;
                    end
                  else
                    begin
                      DTP_ListaNuevoPacientes_FechaInicial.SetFocus;
                      FPrincipal.MS_Personalizado.MessageDlg('No se hallarón datos.', mtInformation, [mbOK], 0);
                    end;
            end
          else
          if(BT_Aceptar_ListaPacientesNuevos.Tag = 1)then
            begin
              if RCB_MostrarTodaConsultaReincide.Checked then
                begin
                  with IBQr_Reincidentes do
                    begin
                      QRLB_52.Caption:='Reporte de Consultas Pacientes Reincidentes. Desde: '+
                      DateToStr(DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date))+ ' Hasta: '+
                      DateToStr(DateOf(DTP_ListanuevosPacientes_FechaFinal.Date))+' para un total de: '+
                      IntToStr(DaysBetween(DateOf(DTP_ListanuevosPacientes_FechaFinal.Date), DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date)))+' dias.';
                      QRLB_57.Enabled:=True;
                      Close;
                      CampoDato:=TDateField.Create(Self);
                      CampoDato.FieldName:='FECHA_DIAGNOSTICO';
                      CampoDato.Name:='IBQr_ReincidentesFECHA_DIAGNOSTICO';
                      CampoDato.Index:=IBQr_Reincidentes.FieldCount;
                      CampoDato.DataSet:=IBQr_Reincidentes;
                      IBQr_Reincidentes.FieldDefs.Update;
                      SQL.Clear;
                      SQL.Add('select NOMBRES, APELLIDOS,  CODIGO_PACIENTE,');
                      SQL.Add('FECHA_NACIMIENTO as edad, SEXO, FECHA_DIAGNOSTICO');
                      SQL.Add('from  PACIENTES, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (IDPACIENTE = ID_PACIENTE)and(REINCIDE = 1)and');
                      SQL.Add('(FECHA_DIAGNOSTICO between :p0 and :p1)');
                      SQL.Add('order by CODIGO_PACIENTE;');
                      QRDBL_FECHA_DIAGNOSTICO.DataField:='FECHA_DIAGNOSTICO';
                      ParamByName('p0').Value:=DateOf(_FDatosMicelaneos.DTP_ListaNuevoPacientes_FechaInicial.Date);
                      ParamByName('p1').Value:=DateOf(_FDatosMicelaneos.DTP_ListanuevosPacientes_FechaFinal.Date);
                      Open;
                    end;
                end
              else
                begin
                 with IBQr_Reincidentes do
                    begin
                      QRLB_52.Caption:='Reporte Pacientes Reincidentes. Desde: '+
                      DateToStr(DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date))+ ' Hasta: '+
                      DateToStr(DateOf(DTP_ListanuevosPacientes_FechaFinal.Date))+' para un total de: '+
                      IntToStr(DaysBetween(DateOf(DTP_ListanuevosPacientes_FechaFinal.Date), DateOf(DTP_ListaNuevoPacientes_FechaInicial.Date)))+' dias.';
                      QRLB_57.Enabled:=False;
                      Close;
                      SQL.Clear;
                      SQL.Add('select distinct NOMBRES, APELLIDOS,  CODIGO_PACIENTE,');
                      SQL.Add(' FECHA_NACIMIENTO as edad, SEXO');
                      SQL.Add('from  PACIENTES, DIAGNOSTICOS_PACIENTES');
                      SQL.Add('where (IDPACIENTE = ID_PACIENTE)and(REINCIDE = 1)and');
                      SQL.Add('(FECHA_DIAGNOSTICO between :p0 and :p1)');
                      SQL.Add('order by CODIGO_PACIENTE;');
                      ParamByName('p0').Value:=DateOf(_FDatosMicelaneos.DTP_ListaNuevoPacientes_FechaInicial.Date);
                      ParamByName('p1').Value:=DateOf(_FDatosMicelaneos.DTP_ListanuevosPacientes_FechaFinal.Date);
                      Open;
                    end;
                end;
              IBQr_Reincidentes.Last;
              if(IBQr_Reincidentes.RecordCount > 0)then
                begin
                  IBQr_Reincidentes.First;
                  _FNuevoPaciente:=TFNuevoPaciente.Create(self);
                  QRIMG_Reincidente.Picture.LoadFromFile(RutaArchivosImagenes+LogoCentro);
                  if(RCB_ListaNuevosPacientes_Pantalla.Checked)then
                    Begin
                      QRP_ConsultasPacientesReincidentes.Preview;
                    end
                  else
                    begin
                      QRP_ConsultasPacientesReincidentes.Print;
                    end;
                  if RCB_MostrarTodaConsultaReincide.Checked then
                    begin
                      IBQr_Reincidentes.Close;
                      CampoDato.Free;
                      IBQr_Reincidentes.FieldDefs.Update;
                      IBQr_Reincidentes.Open;
                    end;
                  _FNuevoPaciente.Free;
                end
              else
                begin

                end;
            end;
        end;
    end
  else
    begin
      DTP_ListaNuevoPacientes_FechaInicial.SetFocus;
      FPrincipal.JvBalloonHint1.ActivateHint(DTP_ListaNuevoPacientes_FechaInicial, 'La fecha inicial debe ser igual o inferior a la fecha final.', ikError, 'Error en este campo.', 5000);
    end;
end;

procedure TFDatosMiscelaneos.SPB_ReporteSeguridadClick(Sender: TObject);
var
  _Flogin: TFLoginUsuario;
begin
  {if(R_RESERVADOS_USU = 1)or(Autorizado)then
    begin }
      Autorizado:=False;
      if(PSSDLG_Autoriza.Execute)then
        begin
          _Flogin:=TFLoginUsuario.Create(Self); 
          if _Flogin.AutorizaAcceso(PSSDLG_Autoriza.Password) then
            begin
              PSSDLG_Autoriza.Password:='';
              Autorizado:=True;
              FPrincipal.DesAutoriza(TiempoAutorizado, LB_29);
            end;
          _Flogin.Free;
        end;
  {  end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtWarning, [mbOK], 0);
    end; }
end;

procedure TFDatosMiscelaneos.E_BuscarPaciente_act_desacKeyPress(
  Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#8, #13])then
    begin
      key:=#0;
    end;
  if Key = #13 then
    begin
      SPB_BuscarPaciente_act_desacClick(Self);
    end;
end;

procedure TFDatosMiscelaneos.SPB_BuscarPaciente_act_desacClick(
  Sender: TObject);
begin
  if Trim(E_BuscarPaciente_act_desac.Text) <> '' then
    begin
      with IBQr_Busca_Act_Desac_Paciente do
        begin
          Close;
          ParamByName('p0').Value:=StrToInt(E_BuscarPaciente_act_desac.Text);
          Open;
        end;
      if(IBQr_Busca_Act_Desac_Paciente.RecordCount > 0)then
        begin
          BT_Aceptar_Act_Desac_Paciente.Enabled:=True;
        end
      else
        begin
          BT_Aceptar_Act_Desac_Paciente.Enabled:=False;
        end;
      if(IBQr_Busca_Act_Desac_PacienteESTADO.AsInteger = 1)then
        begin
          RCB_Paciente_Activo.Checked := True;
        end
      else
        begin
          RCB_Paciente_Inactivo.Checked:=True;
        end;
    end;
end;

procedure TFDatosMiscelaneos.BT_Aceptar_Act_Desac_PacienteClick(
  Sender: TObject);
var
  _Flogin: TFLoginUsuario;
  CadenaEstado: String;
  Estado: integer;
begin
  Autorizado:=False;
  if(FPrincipal.PSSDLG_Autorizar.Execute)then
    begin
      _Flogin:=TFLoginUsuario.Create(Self);
      if _Flogin.AutorizaAcceso(FPrincipal.PSSDLG_Autorizar.Password) then
        begin
          FPrincipal.PSSDLG_Autorizar.Password:='';
          if(IBQr_Busca_Act_Desac_PacienteESTADO.AsInteger = 1)then
            begin
              //CadenaEstado:=' desactivar ';
              BT_Aceptar_Act_Desac_Paciente.Caption:='&Desactivar';
            end
          else
            begin
              //CadenaEstado:=' activar ';
              BT_Aceptar_Act_Desac_Paciente.Caption:='&Activar';
            end;
          if(RCB_Paciente_Activo.Checked = True)then
            begin
              Estado:=1;
              CadenaEstado:=' activar ';
            end
          else
            begin
              Estado:=0;
              CadenaEstado:=' desactivar ';
            end;
          if(FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea realmente'+CadenaEstado+'este paciente?', mtConfirmation, [mbYes,mbNo],0) = IDYES)then
            begin
              FPrincipal.EstadoPaciente(IBQr_Busca_Act_Desac_PacienteIDPACIENTE.AsInteger, Estado, 1);
              FPrincipal.Actualiza_PM_Estado(IBQr_Busca_Act_Desac_PacienteIDPACIENTE.AsInteger);
              FPrincipal.BT_BuscarClick(Self);
              RCB_Paciente_Activo.Checked:=false;
              RCB_Paciente_Inactivo.Checked:=false;
              E_BuscarPaciente_act_desac.Clear;
              BT_Aceptar_Act_Desac_Paciente.Enabled:=false;
            end;
        end;
      FPrincipal.PSSDLG_Autorizar.Password:='';
      _Flogin.Free;
    end;

end;

procedure TFDatosMiscelaneos.RCB_Paciente_ActivoClick(Sender: TObject);
begin
  BT_Aceptar_Act_Desac_Paciente.Caption:='&Activar';
end;

procedure TFDatosMiscelaneos.RCB_Paciente_InactivoClick(Sender: TObject);
begin
  BT_Aceptar_Act_Desac_Paciente.Caption:='&Desactivar';
end;

procedure TFDatosMiscelaneos.BT_1Click(Sender: TObject);
begin
  ShowMessage('Meses entre fechas: '+IntToStr(MonthsBetween(DTP_2.Date, DTP_1.Date))+
  '   Primer Mes :'+IntToStr(MonthOf(DTP_1.Date))+'  Segundo Mes: '+IntToStr(MonthOf(dtp_2.Date)));
end;

end.
