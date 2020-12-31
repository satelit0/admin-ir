unit UDiagnostico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, BusinessSkinForm, StdCtrls, JvExStdCtrls,
  JvCombobox, Mask, bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, bsdbctrls,
  ExtCtrls, DBCtrls, DB, IBCustomDataSet, IBQuery, JvBalloonHint, JvGIF,DateUtils,
  Grids, DBGrids, DBClient, {DBLocal, DBLocalI,} Menus, bsSkinMenus;

type
  TFDiagnostico = class(TForm)
    BSF_F1: TbsBusinessSkinForm;
    GB_1: TbsSkinGroupBox;
    GB_2: TbsSkinGroupBox;
    E_BuscaPaciente: TbsSkinEdit;
    LB_1: TbsSkinStdLabel;
    CBB_Medicos: TJvComboBox;
    LB_2: TbsSkinStdLabel;
    LB_3: TbsSkinStdLabel;
    LB_4: TbsSkinStdLabel;
    LB_5: TbsSkinStdLabel;
    LB_6: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;
    BT_Cancelar: TbsSkinButton;
    IMG_1: TImage;
    DBTEXT_NOMBREC: TDBText;
    DBTEXT_EDAD: TDBText;
    DBTEXT_SEXO: TDBText;
    IBQr_Diagnostico: TIBQuery;
    bsknbvl1: TbsSkinBevel;
    SPB_SeleccionarEnfermedad: TbsSkinSpeedButton;
    IBQr_Paciente: TIBQuery;
    DS_Pacientes: TDataSource;
    bsknbvl5: TbsSkinBevel;
    DS_Diagnostico: TDataSource;
    IBQr_DiagnosticoFECHA_DIAGNOSTICO: TDateField;
    IBQr_DiagnosticoID_MEDICO: TIntegerField;
    IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE: TIntegerField;
    IBQr_DiagnosticoCODIGO_PACIENTE: TIntegerField;
    IBQr_DiagnosticoNOMBREC: TIBStringField;
    IBQr_DiagnosticoSEXO: TIBStringField;
    IBQr_DiagnosticoIDPACIENTE: TIntegerField;
    grp1: TGroupBox;
    bsSkinSplitter1: TbsSkinSplitter;
    GB_DP: TGroupBox;
    NV_1: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    DBG_1: TbsSkinDBGrid;
    SCRB_2: TbsSkinScrollBar;
    LB_10: TbsSkinStdLabel;
    IBQr_DiagnosticoMedico: TIBQuery;
    IBQr_DiagnosticoMedicoID_DIAGNOSTICO: TIntegerField;
    IBQr_DiagnosticoMedicoID_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_DiagnosticoMedicoIDDIAGNOSTICOMEDICO: TIntegerField;
    IBQr_DiagnosticoMedicoREINCIDE: TIntegerField;
    DS_DiagnosticoMedico: TDataSource;
    DBG_2: TbsSkinDBGrid;
    BT_BuscaPaciente: TbsSkinButton;
    PM_1: TbsSkinPopupMenu;
    MM_Modificar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Eliminar1: TMenuItem;
    PM_2: TbsSkinPopupMenu;
    MM_EliminarDiagnosticoCLB: TMenuItem;
    TBL_Virtual_DiagnosticoMedico: TClientDataSet;
    TBL_Virtual_DiagnosticoMedicoIndice: TIntegerField;
    TBL_Virtual_DiagnosticoMedicoId_DiagnosticoMedico: TIntegerField;
    TBL_Virtual_DiagnosticoMedicoId_Diagnostico: TIntegerField;
    TBL_Virtual_DiagnosticoMedicoId_Diagnostico_Paciente: TIntegerField;
    TBL_Virtual_DiagnosticoMedicoReincide: TIntegerField;
    TBL_Virtual_DiagnosticoMedicoEstado: TIntegerField;
    ListBx_1: TbsSkinListBox;
    IBQr_PacienteEDAD: TDateField;
    IBQr_PacienteNACIONALIDAD: TIntegerField;
    IBQr_PacienteNOMBREC: TIBStringField;
    IBQr_PacienteSEXO: TIBStringField;
    IBQr_PacienteIDPACIENTE: TIntegerField;
    PM_3: TbsSkinPopupMenu;
    MM_EliminaDiadMedico: TMenuItem;
    BT_1: TButton;
    procedure CBB_MedicosDropDown(Sender: TObject);
    procedure IBQr_PacienteEDADGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBQr_PacienteNACIONALIDADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure E_BuscaPacienteKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_MedicosChange(Sender: TObject);
    procedure SPB_SeleccionarEnfermedadClick(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TBL_Virtual_DiagnosticoMedicoReincideGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_DiagnosticoMedicoID_DIAGNOSTICOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure BT_CancelarClick(Sender: TObject);
    procedure IBQr_DiagnosticoAfterOpen(DataSet: TDataSet);
    procedure IBQr_DiagnosticoMedicoREINCIDEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBG_1CellClick(Column: TbsColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_BuscaPacienteClick(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure MM_EliminarDiagnosticoCLBClick(Sender: TObject);
    procedure CLB_1ClickCheck(Sender: TObject);
    procedure PM_2Popup(Sender: TObject);
    procedure PM_1Popup(Sender: TObject);
    procedure CBB_MedicosCloseUp(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MM_Eliminar1Click(Sender: TObject);
    procedure CBB_MedicosKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MM_EliminaDiadMedicoClick(Sender: TObject);
    procedure DS_DiagnosticoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
//    procedure ActualizaDiagPaciente(Id_);
    procedure ModificarDiagMedico(ID_DIAGNOSTICO, ID_DIAGNOSTICO_PACIENTE, REINCIDE, IDDIAGNOSTICOMEDICO, Mensaje: Integer);
    procedure InsertaDiagnosticoMedico(ID_DIAGNOSTICOPACIENTE, ID_DIAGNOSTICO, REINCIDE, Mensaje:Integer);
    function ValidaPacienteExite(IdPaciente, IdMedico:Integer; FechaDiagnostico:TDateTime; Modificar: Boolean):Boolean;
    procedure InsertaDiagn(FECHA_DIAGNOSTICO: TDateTime; ID_MEDICO, ID_PACIENTE, Mensaje: Integer);
    procedure ModificarDiagn(FECHA_DIAGNOSTICO: TDateTime; ID_MEDICO, ID_PACIENTE, IDDIAGNOSTICOPACIENTE, Mensaje: Integer);
    procedure EliminarDiagn(IdDiagnostico, Mensaje: Integer);
    procedure EliminaDiagnosticoMedico(Id_DiagnosticoMedico, Mensaje: Integer);
    function ObtenerUltimoId_DignPacientes:Integer;
  public
    { Public declarations }
    function ValidaPosee_El_Diagnostico(Id_Paciente, Id_Diagnostico: Integer):Boolean;
    procedure LimpiarCampos;
    procedure InsertaTBLVirtual(Id_Diagnostico_Medico, Id_Diagnosco_Paciente, Id_Diagnostico,
                                Reincide, Estado: Integer);
    procedure ModificaTBLVirtual_Reincide(Id_Diagnostico, Reincide, Estado: Integer);
    procedure ModificaTBLVirtual(Id_Diagnostico_Medico, Estado: Integer);
    procedure BuscaPaciente_Diagnostico(CodigoPaciente, Mensaje:Integer);
    procedure BuscaDiagn(IdMedico: Integer);
    function ObternerIdDiagnosticoMedico(NombreDiagnosticoMedico:string):Integer;
    function BuscaDiagMedico(Id_DiagPaciente:Integer):Boolean;
  end;

var
  FDiagnostico: TFDiagnostico;
  Diagnostico_IdMedico:Integer;   // ID del medico en el diagnostico del medico
  Diagnostico_IdPaciente, Diagnostico_IdDiagnostico:Integer;
  ReincideDiagnostico, ModificaDiagn, EnviarMensaje_IM: Boolean;
  Anterior_IdMedico: Integer;
  //NombreDiagnostico:string;
implementation

uses UPrincipal, UMedicos, UContenedorDatos, UNuevoPaciente,
  UEspecialidadMedica, UEnfermedades, UArs;

{$R *.dfm}

procedure TFDiagnostico.BuscaPaciente_Diagnostico(CodigoPaciente, Mensaje: Integer);     // si mensaje es igual a 2 cierra el set de datos.
var
  Pacientes: TFNuevoPaciente;
begin
  if Mensaje <> 2 then
    begin
      with IBQr_Paciente do
        begin
          Close;
          ParamByName('p0').Value:=CodigoPaciente;
          Open;
        end;
      Pacientes:=TFNuevoPaciente.Create(Self);
      IMG_1.Picture.LoadFromFile(Pacientes.CargarFoto(IntToStr(CodigoPaciente), RutaGuardarFoto, 1));
      Pacientes.Free;
      if(IBQr_Paciente.RecordCount < 1)then
        begin
          Diagnostico_IdPaciente:=-1;
          if Mensaje = 1 then
            FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'No existe paciente con este código.',ikInformation,'No encontrado.',5000);
        end
      else
        begin
          Diagnostico_IdPaciente:=IBQr_PacienteIDPACIENTE.AsInteger;
        end;
    end
  else
    begin
      IBQr_Paciente.Close;
      Diagnostico_IdPaciente:=-1;
    end;                         
end;

procedure TFDiagnostico.CBB_MedicosDropDown(Sender: TObject);
begin
  FPrincipal.LlenarComboMedico(CBB_Medicos);
end;

procedure TFDiagnostico.IBQr_PacienteEDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_PacienteEDAD.AsString <> '' then
    begin
      _FNuevoPaciente:=TFNuevoPaciente.Create(Self);
      Text:=_FNuevoPaciente.CalculaEdad(IBQr_PacienteEDAD.AsDateTime, 'A', 'M', 'D');
      _FNuevoPaciente.Free;
    end;
end;

procedure TFDiagnostico.IBQr_PacienteNACIONALIDADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=FPrincipal.BuscaNacionalidad(IBQr_PacienteNACIONALIDAD.AsInteger);
end;

procedure TFDiagnostico.E_BuscaPacienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(Key in['0'..'9',#8,#13])then
    begin
      Key:=#0;
    end;
  if Key = #13 then
    if Trim(E_BuscaPaciente.Text) <> '' then
      begin
        BT_BuscaPacienteClick(Self);
      end;
end;

procedure TFDiagnostico.CBB_MedicosChange(Sender: TObject);
begin
  if (CBB_Medicos.ItemIndex <> 0) then
    begin
      _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
      LB_3.Caption:='Especialidad Médica:'+#13+_FEspecialidadMedica.ObtenerNombreEspec_NombreMedico(CBB_Medicos.Text);
      _FEspecialidadMedica.Free;
      _FMedicos:=TFMedicos.Create(Self);
      //if ModificaDiagn = False then
        begin
          Diagnostico_IdMedico:=_FMedicos.ObtenerIdMedico_NombreMedico(CBB_Medicos.Text);
          BuscaDiagn(Diagnostico_IdMedico);
        end;
      _FMedicos.Free;        
      IBQr_Diagnostico.Locate('IDPACIENTE',IBQr_PacienteIDPACIENTE.AsInteger,[]);
      IBQr_DiagnosticoAfterOpen(nil);
    end
  else
    begin
      //IBQr_Diagnostico.Close;
      Diagnostico_IdMedico:=-1;
      LB_3.Caption:='Especialidad Médica:';
    end;
end;

procedure TFDiagnostico.SPB_SeleccionarEnfermedadClick(Sender: TObject);
begin
  if Diagnostico_IdPaciente > 0 then
    begin
      if Trim(CBB_Medicos.Text) <> ''then
        begin
          _FEnfermedades:=TFEnfermedades.Create(Self);
          with _FEnfermedades do
            begin
              SeleccionarExt:=True;
              MM_Seleccionar1.Visible:=True;
              ShowModal;
              Free;
            end;
        end
      else
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(CBB_Medicos,'Seleccione un médico de la lista.',ikError,'Error seleccione médico.',5000);
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'Seleccione un paciente ingresando un código de paciente.',ikError,'Error seleccione paciente.',5000);
    end;
end;

procedure TFDiagnostico.InsertaDiagn(FECHA_DIAGNOSTICO: TDateTime; ID_MEDICO,
ID_PACIENTE,  Mensaje: Integer);
var
  IBQr_InsertDiagn:TIBQuery;
  Id_DiagnPaciente, ItemsCLB, ReincideCLB, I, Id_Diagn:Integer;
begin
  try
    if(C_DIAGNOSTICO_PACIENTE_USU = 1)or(Autorizado)then
      begin
        IBQr_InsertDiagn:=TIBQuery.Create(Self);
        with IBQr_InsertDiagn do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            Close;
            SQL.Clear;
            SQL.Add('insert into DIAGNOSTICOS_PACIENTES(FECHA_DIAGNOSTICO, ID_MEDICO, ID_PACIENTE)');
            SQL.Add('values(:p0, :p1, :p2)');
            ParamByName('p0').Value:=FECHA_DIAGNOSTICO;
            ParamByName('p1').Value:=ID_MEDICO;;
            ParamByName('p2').Value:=ID_PACIENTE;
            //ParamByName('p3').Value:=ID_DIAGNOSTICO;
            ExecSQL;
            Free;
            Id_DiagnPaciente:=ObtenerUltimoId_DignPacientes;
            ItemsCLB:=ListBx_1.Items.Count;
            _FEnfermedades:=TFEnfermedades.Create(Self);
            for I := 0 to ItemsCLB - 1 do
            begin
              Id_Diagn:=_FEnfermedades.ObtenerIdDiagnostico(Trim(ListBx_1.Items.Strings[I]));
              InsertaDiagnosticoMedico(Id_DiagnPaciente, Id_Diagn, ReincideCLB, 0);
            end;
            _FEnfermedades.Free;
            if Mensaje = 1 then
              EnviarMensaje_IM:=True
            else
              EnviarMensaje_IM:=false;
          end;
      end
    else
      begin
        FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
      end;  
  except
  end;
end;

procedure TFDiagnostico.BuscaDiagn(IdMedico: Integer);
begin
  with IBQr_Diagnostico do
    begin
      Close;
      ParamByName('p0').Value:=IdMedico;
      ParamByName('p1').Value:=DateOf(Now);
      Open;
    end;
end;

procedure TFDiagnostico.ModificarDiagn(FECHA_DIAGNOSTICO: TDateTime; ID_MEDICO,
ID_PACIENTE, IDDIAGNOSTICOPACIENTE, Mensaje: Integer);
var
  IBQr_InsertDiagn:TIBQuery;
//  ReincideCLB: Integer;
begin
  try
    if(M_DIAGNOSTICO_PACIENTE_USU = 1)or(Autorizado)then
      begin
        IBQr_InsertDiagn:=TIBQuery.Create(Self);
        with IBQr_InsertDiagn do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            Close;
            SQL.Clear;
            SQL.Add('update DIAGNOSTICOS_PACIENTES set FECHA_DIAGNOSTICO = :p0, ID_MEDICO = :p1,');
            SQL.Add('ID_PACIENTE = :p2');
            SQL.Add('where IDDIAGNOSTICOPACIENTE = :p3;');
            ParamByName('p0').Value:=FECHA_DIAGNOSTICO;
            ParamByName('p1').Value:=ID_MEDICO;
            ParamByName('p2').Value:=ID_PACIENTE;
            ParamByName('p3').Value:=IDDIAGNOSTICOPACIENTE;
            ExecSQL;
            Free;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation,[mbOK],0);

          end;
      end
    else
      begin
        FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
      end;
  except
  end;
end;

procedure TFDiagnostico.EliminarDiagn(IdDiagnostico, Mensaje: Integer);
var
  IBQr_InsertDiagn:TIBQuery;
begin
  try
    IBQr_InsertDiagn:=TIBQuery.Create(Self);
    with IBQr_InsertDiagn do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        Close;
        SQL.Clear;
        SQL.Add('delete from DIAGNOSTICOS_PACIENTES');
        SQL.Add('where IDDIAGNOSTICOPACIENTE = :p0;');
        ParamByName('p0').Value:=IdDiagnostico;
        ExecSQL;
        Free;
        if Mensaje = 1 then
          FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con éxito.', mtInformation,[mbOK],0);
      end;
  except
  end;
end;

function TFDiagnostico.ValidaPacienteExite(IdPaciente, IdMedico: Integer; FechaDiagnostico:TDateTime; Modificar: Boolean): Boolean;
var
  IBQr_pacExiste:TIBQuery;
begin
  Result:=False;
  IBQr_pacExiste:=TIBQuery.Create(Self);
  with IBQr_pacExiste do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ID_PACIENTE, ID_MEDICO from DIAGNOSTICOS_PACIENTES where (ID_PACIENTE = :p0) and (FECHA_DIAGNOSTICO = :p1)and(ID_MEDICO = :p2)');
      ParamByName('p0').Value:=IdPaciente;
      ParamByName('p1').Value:=FechaDiagnostico;
      ParamByName('p2').Value:=IdMedico;
      Open;
    end;
  if(IBQr_pacExiste.RecordCount > 0)then
    begin
      if(Modificar = False)or(Anterior_IdMedico <> IBQr_DiagnosticoID_MEDICO.AsInteger)then
        begin
          Result:=False;
          FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'Este paciente ya esta registrado con un diagnóstico para esta fecha y médico.',ikError,'Error paciente repetido',5000);
        end
      else
      if (Modificar = True)and(IdPaciente <> IBQr_pacExiste.FieldByName('ID_PACIENTE').AsInteger)and(IdMedico <> IBQr_pacExiste.FieldByName('ID_MEDICO').AsInteger)then
        begin
          Result:=False;
          FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'Este paciente ya esta registrado con un diagnóstico para esta fecha y médico.',ikError,'Error paciente repetido',5000);
        enD
      else
      if(Modificar = True)and(IdPaciente = IBQr_pacExiste.FieldByName('ID_PACIENTE').AsInteger)and(IdMedico = IBQr_pacExiste.FieldByName('ID_MEDICO').AsInteger)then
        begin
          Result:=True;
        end;
    end
  else
    begin
      Result:=True;
    end;
  IBQr_pacExiste.Free;
end;

procedure TFDiagnostico.BT_AceptarClick(Sender: TObject);
var
  I, CodigoPaciente: Integer;
begin
  if (Trim(CBB_Medicos.Text) <> '')and(CBB_Medicos.ItemIndex > 0) then
    begin
      if(Diagnostico_IdPaciente > 0)then
        begin
          if(ListBx_1.Items.Count > 0)then
            begin
              if(ValidaPacienteExite(Diagnostico_IdPaciente, Diagnostico_IdMedico ,DateOf(Now), ModificaDiagn) = True)then
                begin
                  _FEnfermedades:=TFEnfermedades.Create(Self);
                  if not ModificaDiagn then
                    begin
                      InsertaDiagn(DateOf(Now),Diagnostico_IdMedico,Diagnostico_IdPaciente,1);
                    end
                  else
                  if ModificaDiagn then
                    begin
                      if(M_DIAGNOSTICO_PACIENTE_USU = 1)or(Autorizado)then
                        begin
                           ModificarDiagn(DateOf(Now), Diagnostico_IdMedico, Diagnostico_IdPaciente, Diagnostico_IdDiagnostico,1);
                           TBL_Virtual_DiagnosticoMedico.First;
                           for I := 0 to TBL_Virtual_DiagnosticoMedico.RecordCount - 1 do
                             begin
                               if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = 1 then
                                  begin
                                    InsertaDiagnosticoMedico(Diagnostico_IdDiagnostico,
                                    TBL_Virtual_DiagnosticoMedicoId_Diagnostico.AsInteger,
                                    TBL_Virtual_DiagnosticoMedicoReincide.AsInteger, 0);
                                  end
                               else
                               if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = -1 then
                                  begin
                                    EliminaDiagnosticoMedico(TBL_Virtual_DiagnosticoMedicoId_DiagnosticoMedico.AsInteger, 0);
                                  end
                               else
                               if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = 2 then
                                  begin
                                    ModificarDiagMedico(TBL_Virtual_DiagnosticoMedicoId_Diagnostico.AsInteger,
                                                        TBL_Virtual_DiagnosticoMedicoId_Diagnostico_Paciente.AsInteger,
                                                        TBL_Virtual_DiagnosticoMedicoReincide.AsInteger,
                                                        TBL_Virtual_DiagnosticoMedicoId_DiagnosticoMedico.AsInteger, 0);
                                  end;
                               TBL_Virtual_DiagnosticoMedico.Next;
                             end;
                          Diagnostico_IdDiagnostico:=-1;
                          //Diagnostico_IdMedico:=-1;
                          Diagnostico_IdPaciente:=-1;
                          ModificaDiagn:=False;
                          Caption:='Diagnósticos.';
                        end
                      else
                        begin
                          FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
                        end;
                    end;
                  Caption:='Diagnósticos.';
                  E_BuscaPaciente.Enabled:=True;
                  BT_BuscaPaciente.Enabled:=True;
                  LimpiarCampos;
                  CodigoPaciente:=IBQr_DiagnosticoCODIGO_PACIENTE.AsInteger;
                  BuscaDiagn(Diagnostico_IdMedico);
                  IBQr_Diagnostico.Locate('CODIGO_PACIENTE', CodigoPaciente,[]);
                  IBQr_DiagnosticoAfterOpen(nil);
                  CodigoPaciente:=-1;
                  Anterior_IdMedico:=-1;
                end;
            end
          else
            begin
              FPrincipal.JvBalloonHint1.ActivateHint(SPB_SeleccionarEnfermedad,'Seleccione un diagnóstico para continuar.',ikError,'Error.',5000);
            end;
        end
      else
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'Ingrese el código del paciente para continuar.',ikError,'Error en código.',5000);
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(CBB_Medicos,'Seleccione un médico de la lista.',ikError,'Error.',5000);
    end;
end;

procedure TFDiagnostico.FormCreate(Sender: TObject);
begin
  ModificaDiagn:=False;
  Diagnostico_IdDiagnostico:=-1;
  Diagnostico_IdPaciente:=-1;
  Diagnostico_IdMedico:=-1;
  GB_DP.Width:=StrToInt(FPrincipal.leCadINI('SPLIT','with_Diagnostico','568'));
end;

procedure TFDiagnostico.TBL_Virtual_DiagnosticoMedicoReincideGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if TBL_Virtual_DiagnosticoMedicoReincide.AsInteger = 1 then
    begin
      Text:='Sí';
    end
  else
  if TBL_Virtual_DiagnosticoMedicoReincide.AsInteger = -1 then
    begin
      Text:='Nuevo';
    end
  else
  if TBL_Virtual_DiagnosticoMedicoReincide.AsInteger = 0 then
    begin
      Text:='';
    end;
end;

procedure TFDiagnostico.InsertaTBLVirtual(Id_Diagnostico_Medico,
  Id_Diagnosco_Paciente, Id_Diagnostico, Reincide, Estado: Integer);
begin
  with TBL_Virtual_DiagnosticoMedico do
    begin
      Append;
      TBL_Virtual_DiagnosticoMedicoId_DiagnosticoMedico.AsInteger:=Id_Diagnostico_Medico;
      TBL_Virtual_DiagnosticoMedicoId_diagnostico_Paciente.AsInteger:=Id_Diagnosco_Paciente;
      TBL_Virtual_DiagnosticoMedicoId_Diagnostico.AsInteger:=Id_Diagnostico;
      TBL_Virtual_DiagnosticoMedicoReincide.AsInteger:=Reincide;
      TBL_Virtual_DiagnosticoMedicoEstado.AsInteger:=Estado;
      Post;
    end;
end;

procedure TFDiagnostico.InsertaDiagnosticoMedico(ID_DIAGNOSTICOPACIENTE,
  ID_DIAGNOSTICO, REINCIDE, Mensaje: Integer);
var
  IBQr_diagnMed:TIBQuery;
begin
  IBQr_diagnMed:=TIBQuery.Create(Self);
  with IBQr_diagnMed do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('insert into DIAGNOSTICO_MEDICO(ID_DIAGNOSTICO_PACIENTE, ID_DIAGNOSTICO, REINCIDE)');
      SQL.Add('values(:p0, :p1, :p2);');
      ParamByName('p0').Value:=ID_DIAGNOSTICOPACIENTE;
      ParamByName('p1').Value:=ID_DIAGNOSTICO;
      ParamByName('p2').Value:=REINCIDE;
      ExecSQL;
      Free;
      if Mensaje = 1 then
        FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con éxito.',mtInformation,[mbOK],0);
    end;
end;

function TFDiagnostico.ObtenerUltimoId_DignPacientes: Integer;
var
  ibqr:TIBQuery;
begin
  ibqr:=TIBQuery.Create(Self);
  with ibqr do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select gen_id(GEN_DIAGNOSTICOS_PACIENTES_ID,0) as idx from rdb$database');
      Open;
    end;
    Result:=ibqr.fieldbyname('idx').AsInteger;
    ibqr.Free;
end;

procedure TFDiagnostico.IBQr_DiagnosticoMedicoID_DIAGNOSTICOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  _FEnfermedades:=TFEnfermedades.Create(Self);
  Text:=_FEnfermedades.ObtenerNombreEnfermedad(IBQr_DiagnosticoMedicoID_DIAGNOSTICO.AsInteger);
  _FEnfermedades.Free;
end;

procedure TFDiagnostico.BT_CancelarClick(Sender: TObject);
begin
  //TBL_Virtual_DiagnosticoMedico.EmptyDataSet;
  //TBL_Virtual_DiagnosticoMedico.Open;
  Self.Close;
end;

procedure TFDiagnostico.IBQr_DiagnosticoAfterOpen(DataSet: TDataSet);
begin
  //BuscaDiagMedico(IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger);
end;

procedure TFDiagnostico.IBQr_DiagnosticoMedicoREINCIDEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if IBQr_DiagnosticoMedicoREINCIDE.AsInteger = 1 then
    begin
      Text:='Sí';
    end
  else
  if IBQr_DiagnosticoMedicoREINCIDE.AsInteger = -1 then
    begin
      Text:='Nuevo';
    end
  else
  if IBQr_DiagnosticoMedicoREINCIDE.AsInteger = 0then
    begin
      Text:='';
    end;
end;

procedure TFDiagnostico.DBG_1CellClick(Column: TbsColumn);
var
  CodicoPaciente:Integer;
begin
  if IBQr_Diagnostico.Active = True then
    begin
      if IBQr_Diagnostico.RecordCount > 0 then
        begin
          CodicoPaciente:=IBQr_DiagnosticoCODIGO_PACIENTE.AsInteger;
          IBQr_Diagnostico.Locate('CODIGO_PACIENTE',CodicoPaciente,[]);
          //IBQr_DiagnosticoAfterOpen(nil);
        end;
    end;
end;

procedure TFDiagnostico.LimpiarCampos;
begin
  BuscaPaciente_Diagnostico(0,2);
  E_BuscaPaciente.Clear;
  ListBx_1.Items.Clear;

  IMG_1.Picture.LoadFromFile(RutaSilueta);
end;

procedure TFDiagnostico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FPrincipal.esCadINI('SPLIT','with_Diagnostico',IntToStr(GB_DP.Width));
end;

procedure TFDiagnostico.BT_BuscaPacienteClick(Sender: TObject);
begin
  if Trim(E_BuscaPaciente.Text) <> '' then
    begin
      BuscaPaciente_Diagnostico(StrToInt(E_BuscaPaciente.Text),1);
      if(IBQr_Diagnostico.Active = True)then
        begin
          IBQr_Diagnostico.Filter:='CODIGO_PACIENTE';
          IBQr_Diagnostico.Locate('CODIGO_PACIENTE',E_BuscaPaciente.Text,[]);
          DBG_1CellClick(nil);
        end;
      if(CBB_Medicos.ItemIndex>-1)then
        begin
          CBB_MedicosChange(Self);
        end; 
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_BuscaPaciente,'Ingrese un codigo de paciente para continuar.',ikError,'Error campo Vacio.',5000);
    end;
end;

procedure TFDiagnostico.MM_Modificar1Click(Sender: TObject);
var
  I: Integer;
  NombreMedico:string;
begin
  TBL_Virtual_DiagnosticoMedico.EmptyDataSet;
  Caption:='Modificar Diagnóstico.';
  ModificaDiagn:=True;
  Diagnostico_IdDiagnostico:=IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger;
  Anterior_IdMedico:=IBQr_DiagnosticoID_MEDICO.AsInteger;
  E_BuscaPaciente.Clear;
  E_BuscaPaciente.Text:=IBQr_DiagnosticoCODIGO_PACIENTE.AsString;
  E_BuscaPaciente.Enabled:=False;
  BT_BuscaPaciente.Enabled:=False;
  BuscaPaciente_Diagnostico(IBQr_DiagnosticoCODIGO_PACIENTE.AsInteger,0);
  _FMedicos:=TFMedicos.Create(Self);
  NombreMedico:=_FMedicos.ObtenerNombreMedico_IdMedico(IBQr_DiagnosticoID_MEDICO.AsInteger);
  _FMedicos.Free;
  for I := 0 to CBB_Medicos.Items.Count - 1 do
  begin
    CBB_Medicos.ItemIndex:=I;
    if CBB_Medicos.Text = NombreMedico then
      Break;
  end;      
  IBQr_DiagnosticoMedico.First;
  ListBx_1.Clear;
  for I := 0 to IBQr_DiagnosticoMedico.RecordCount - 1 do
  begin
   { if(IBQr_DiagnosticoMedicoREINCIDE.AsInteger = 1)then
      begin }
        _FEnfermedades:=TFEnfermedades.Create(Self);
        ListBx_1.Items.Insert(I,_FEnfermedades.ObtenerNombreEnfermedad(IBQr_DiagnosticoMedicoID_DIAGNOSTICO.AsInteger));
        //CLB_1.Checked[I]:=True;
        _FEnfermedades.Free;
   {   end
    else
    if(IBQr_DiagnosticoMedicoREINCIDE.AsInteger = -1)then
      begin
        _FEnfermedades:=TFEnfermedades.Create(Self);
        ListBx_1.Items.Insert(I,_FEnfermedades.ObtenerNombreEnfermedad(IBQr_DiagnosticoMedicoID_DIAGNOSTICO.AsInteger));
        //CLB_1.Checked[I]:=False;
        _FEnfermedades.Free;
      end;}
    InsertaTBLVirtual(IBQr_DiagnosticoMedicoIDDIAGNOSTICOMEDICO.AsInteger, IBQr_DiagnosticoMedicoID_DIAGNOSTICO_PACIENTE.AsInteger,
                          IBQr_DiagnosticoMedicoID_DIAGNOSTICO.AsInteger, IBQr_DiagnosticoMedicoREINCIDE.AsInteger, 0);
    IBQr_DiagnosticoMedico.Next;
  end;
end;
procedure TFDiagnostico.ModificarDiagMedico(ID_DIAGNOSTICO, ID_DIAGNOSTICO_PACIENTE, REINCIDE, IDDIAGNOSTICOMEDICO, Mensaje: Integer);
var
  IBQr_InsertDiagn:TIBQuery;
begin
  try
    IBQr_InsertDiagn:=TIBQuery.Create(Self);
    with IBQr_InsertDiagn do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        Close;
        SQL.Clear;
        SQL.Add('update DIAGNOSTICO_MEDICO set ID_DIAGNOSTICO = :p0, ID_DIAGNOSTICO_PACIENTE = :p1, REINCIDE = :p2');
        SQL.Add('where IDDIAGNOSTICOMEDICO = :p3;');
        ParamByName('p0').Value:=ID_DIAGNOSTICO;;
        ParamByName('p1').Value:=ID_DIAGNOSTICO_PACIENTE;
        ParamByName('p2').Value:=REINCIDE;
        ParamByName('p3').Value:=IDDIAGNOSTICOMEDICO;
        ExecSQL;
        Free;
        if Mensaje = 1 then
          FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation,[mbOK],0);
      end;
  except
  end;     
end;

procedure TFDiagnostico.ModificaTBLVirtual(Id_Diagnostico_Medico,
  Estado: Integer);
begin
  TBL_Virtual_DiagnosticoMedico.Filter:='Id_DiagnosticoMedico';
  TBL_Virtual_DiagnosticoMedico.Locate('Id_DiagnosticoMedico',Id_Diagnostico_Medico,[]);
  TBL_Virtual_DiagnosticoMedico.Edit;
  TBL_Virtual_DiagnosticoMedicoEstado.AsInteger:=Estado;
  TBL_Virtual_DiagnosticoMedico.Post;
end;

procedure TFDiagnostico.MM_EliminarDiagnosticoCLBClick(Sender: TObject);
begin
  if ListBx_1.ItemIndex > -1then
    begin
      if ModificaDiagn = True then
        begin
          _FEnfermedades:=TFEnfermedades.Create(Self);
          TBL_Virtual_DiagnosticoMedico.Locate('Id_Diagnostico', _FEnfermedades.ObtenerIdDiagnostico(Trim(ListBx_1.Items.Strings[ListBx_1.ItemIndex])), []);
          _FEnfermedades.Free;
          if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger <> 1 then
            begin
              if(FPrincipal.MS_Personalizado.MessageDlg('Adverterncia: La información que se propone eliminar no sera eliminada'+#13+
              'permanentemente hasta que no sean guardados los cambios.'+#13+#13+'Pulse Sí para eliminar de lo contrario pulse No.', mtWarning,[mbYes, mbNo],0) = MrYes)then
                begin
                  ModificaTBLVirtual(ObternerIdDiagnosticoMedico(ListBx_1.Items.Strings[ListBx_1.ItemIndex]), -1);
                  ListBx_1.Items.Delete(ListBx_1.ItemIndex);
                end;
            end
          else
            begin
              TBL_Virtual_DiagnosticoMedico.Delete;
              ListBx_1.Items.Delete(ListBx_1.ItemIndex);
            end;
        end
      else
        begin
          ListBx_1.Items.Delete(ListBx_1.ItemIndex);
        end;                                      
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(ListBx_1,'Seleccione un items para eliminar.', ikError, 'Error al intentar eliminar.', 5000);
    end;
end;

function TFDiagnostico.ObternerIdDiagnosticoMedico(
  NombreDiagnosticoMedico: string): Integer;
var
  IBQr_DiagnMedico:TIBQuery;
begin
  IBQr_DiagnMedico:=TIBQuery.Create(Self);
  with IBQr_DiagnMedico do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDDIAGNOSTICOMEDICO from DIAGNOSTICO_MEDICO, DIAGNOSTICOS where (ID_DIAGNOSTICO = IDDIAGNOSTICO)and(NOMBRE_DIAGNOSTICO = :p0)');
      ParamByName('p0').Value:=NombreDiagnosticoMedico;
      Open;
    end;
  Result:=IBQr_DiagnMedico.FieldByName('IDDIAGNOSTICOMEDICO').AsInteger;
  IBQr_DiagnMedico.Free;
end;

procedure TFDiagnostico.EliminaDiagnosticoMedico(Id_DiagnosticoMedico, Mensaje: Integer);
var
  IBQr_ElimDiagn:TIBQuery;
begin
  IBQr_ElimDiagn:=TIBQuery.Create(Self);
  with IBQr_ElimDiagn do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('delete from DIAGNOSTICO_MEDICO where IDDIAGNOSTICOmedico = :p0;');
      ParamByName('p0').Value:=Id_DiagnosticoMedico;
      ExecSQL;
      Free;
      if Mensaje = 1 then
        FPrincipal.MS_Personalizado.MessageDlg('Acción realizada con éxito.', mtInformation,[mbOK],0);
    end;
end;

procedure TFDiagnostico.ModificaTBLVirtual_Reincide(Id_Diagnostico,
  Reincide, Estado: Integer);
begin
  TBL_Virtual_DiagnosticoMedico.Locate('Id_Diagnostico',Id_Diagnostico,[]);
  TBL_Virtual_DiagnosticoMedico.Edit;
  if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = 0 then
    begin
      TBL_Virtual_DiagnosticoMedicoReincide.AsInteger:=Reincide;
      TBL_Virtual_DiagnosticoMedicoEstado.AsInteger:=2;
    end
  else
  if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = 1 then
    begin
      TBL_Virtual_DiagnosticoMedicoReincide.AsInteger:=Reincide;
    end
  else
  if TBL_Virtual_DiagnosticoMedicoEstado.AsInteger = 2 then
  begin
    TBL_Virtual_DiagnosticoMedicoReincide.AsInteger:=Reincide;
  end;
  TBL_Virtual_DiagnosticoMedico.Post;
end;

procedure TFDiagnostico.CLB_1ClickCheck(Sender: TObject);
{var
  IndiceCLB, Id_Diagnostico: Integer; }
begin
 { IndiceCLB:=CLB_1.ItemIndex;
  _FEnfermedades:=TFEnfermedades.Create(Self);
  ReincideDiagnostico:=ValidaPosee_El_Diagnostico(Diagnostico_IdPaciente, _FEnfermedades.ObtenerIdDiagnostico(Trim(CLB_1.Items.Strings[IndiceCLB])));
  _FEnfermedades.Free;
  if ReincideDiagnostico = False then
    begin
      _FEnfermedades:=TFEnfermedades.Create(Self);
      Id_Diagnostico:=_FEnfermedades.ObtenerIdDiagnostico(Trim(CLB_1.Items.Strings[indiceCLB]));
      _FEnfermedades.Free;
      if CLB_1.Checked[IndiceCLB] = True then
        begin
          ModificaTBLVirtual_Reincide(Id_Diagnostico, 1, 0);
        end
      else
      if CLB_1.Checked[IndiceCLB] = False then
        begin
          ModificaTBLVirtual_Reincide(Id_Diagnostico, -1, 0);
        end;
    end
  else
    begin
      CLB_1.Checked[IndiceCLB]:=True;
      FPrincipal.MS_Personalizado.MessageDlg('Imposible modificar este diagnóstico.'+#13+
      'El paciente tiene antecedentes con este diagnosticado.', mtInformation,[mbOK],0);
    end; }
end;

procedure TFDiagnostico.PM_2Popup(Sender: TObject);
begin
  if ListBx_1.ItemIndex < 0 then
    begin
      MM_EliminarDiagnosticoCLB.Enabled:=False;
    end
  else
    begin
      MM_EliminarDiagnosticoCLB.Enabled:=True;
    end;
end;

function TFDiagnostico.ValidaPosee_El_Diagnostico(Id_Paciente,
  Id_Diagnostico: Integer): Boolean;
var
  IBQr_DiagTiene:TIBQuery;
begin
  IBQr_DiagTiene:= TIBQuery.Create(Self);
  with IBQr_DiagTiene do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDDIAGNOSTICOMEDICO from DIAGNOSTICO_MEDICO, DIAGNOSTICOS_PACIENTES, DIAGNOSTICOS');
      SQL.Add('where (IDDIAGNOSTICOPACIENTE = ID_DIAGNOSTICO_PACIENTE)and(IDDIAGNOSTICO = ID_DIAGNOSTICO)and(ID_PACIENTE = :p0)and(ID_DIAGNOSTICO = :p1)');
      ParamByName('p0').Value:=Id_Paciente;
      ParamByName('p1').Value:=Id_Diagnostico;
      Open;
    end;
  if IBQr_DiagTiene.RecordCount > 0 then
    begin
      Result:=True;
    end
  else
    begin
      Result:=False;
    end;
  IBQr_DiagTiene.Free;
end;

procedure TFDiagnostico.PM_1Popup(Sender: TObject);
begin
     if(IBQr_Diagnostico.Active = True)then
        begin
          if (IBQr_Diagnostico.RecordCount > 0) then
            begin
              MM_Modificar1.Enabled:=True;
              //MM_Visualizar1.Enabled:=True;
              MM_Eliminar1.Enabled:=True;
            end
          else
            begin
              MM_Modificar1.Enabled:=False;
              //MM_Visualizar1.Enabled:=False;
              MM_Eliminar1.Enabled:=False;
            end;
        end
     else
        begin
          MM_Modificar1.Enabled:=False;
          //MM_Visualizar1.Enabled:=False;
          MM_Eliminar1.Enabled:=False;
        end;
end;

procedure TFDiagnostico.CBB_MedicosCloseUp(Sender: TObject);
begin
  if Trim(CBB_Medicos.Text) = '' then
    begin
      IBQr_Diagnostico.Close;
    end;
end;

procedure TFDiagnostico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFDiagnostico.MM_Eliminar1Click(Sender: TObject);
begin
  if(E_DIAGNOSTICO_PACIENTE_USU = 1)or(Autorizado)then
    begin
      if FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea eliminar el diagnóstico seleccionado?'+#13+#13+
        'Para eliminar pulse Si de los contrario pulse No.', mtConfirmation, [mbYes,mbNo],0) = IDYES then
        begin
          //EliminaDiagnosticoMedico(IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger, 0);
          EliminarDiagn(IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger, 1);
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFDiagnostico.CBB_MedicosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    E_BuscaPaciente.SetFocus;
end;

procedure TFDiagnostico.DBG_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if IBQr_DiagnosticoMedico.RecordCount > 0 then
    if Key = vk_delete then
      MM_EliminaDiadMedicoClick(Self);
end;

procedure TFDiagnostico.MM_EliminaDiadMedicoClick(Sender: TObject);
begin
  if FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea eliminar el diagnóstico selecionado?',
  mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      EliminaDiagnosticoMedico(IBQr_DiagnosticoMedicoIDDIAGNOSTICOMEDICO.AsInteger, 1);
      BuscaDiagMedico(IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger);
    end;
end;

function TFDiagnostico.BuscaDiagMedico(Id_DiagPaciente: Integer):Boolean;
begin
  Result:=False;
  with IBQr_DiagnosticoMedico do
    begin
      Close;
      ParamByName('IDDIAGNOSTICOPACIENTE').Value:=Id_DiagPaciente;
      Open;
    end;
  if IBQr_DiagnosticoMedico.RecordCount > 0 then
    Result:=True
  else
    Result:=False;
end;

procedure TFDiagnostico.DS_DiagnosticoDataChange(Sender: TObject;
  Field: TField);
begin
   BuscaDiagMedico(IBQr_DiagnosticoIDDIAGNOSTICOPACIENTE.AsInteger);
end;

end.
