unit UMedicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask,
  bsdbctrls, bsSkinGrids, bsDBGrids, DB, IBCustomDataSet, IBQuery, DateUtils,
  Menus, bsSkinMenus, ExtCtrls, JvBalloonHint, AppEvnts;

type
  TFMedicos = class(TForm)
    BSF_F1: TbsBusinessSkinForm;       
    E_NombreMedico: TbsSkinEdit;
    SE_MaxTurno: TbsSkinSpinEdit;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;
    BT_Limpiar: TbsSkinButton;
    BT_Cancelar: TbsSkinButton;
    BT_Buscar: TbsSkinButton;
    IBQr_Medicos: TIBQuery;
    RCB_Estado: TbsSkinCheckRadioBox;
    IBQr_MedicosNOMBRE_MEDICO: TIBStringField;
    IBQr_MedicosMAX_TURNO: TIntegerField;
    IBQr_MedicosESTADO: TIntegerField;
    IBQr_MedicosEXCEDER_MAX: TIntegerField;
    IBQr_MedicosNOTIFICAR_MAX: TIntegerField;
    DS_1: TDataSource;
    PM_1: TbsSkinPopupMenu;
    Modificar1: TMenuItem;
    N2: TMenuItem;
    Deshabilitar1: TMenuItem;
    N1: TMenuItem;
    Habilitar1: TMenuItem;
    GB_2: TbsSkinGroupBox;
    GB_1: TbsSkinGroupBox;
    DBG_1: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    LB_3: TbsSkinStdLabel;
    E_EspecialidadMedica: TbsSkinEdit;
    SPB_BuscaEspecialidad: TbsSkinSpeedButton;
    IBQr_MedicosID_ESPECIALIDAD: TIntegerField;
    IBQr_MedicosIDMEDICO: TIntegerField;
    IBQr_MedicosCREADO: TDateField;
    RCB_Excedente: TbsSkinCheckRadioBox;
    RCB_Notificar: TbsSkinCheckRadioBox;
    MM_N3: TMenuItem;
    MM_Eliminar1: TMenuItem;
    APPEVENT_Medicos: TApplicationEvents;
    procedure BT_AceptarClick(Sender: TObject);
    procedure RCB_EstadoClick(Sender: TObject);
    procedure BT_BuscarClick(Sender: TObject);
    procedure BT_LimpiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IBQr_MedicosESTADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure IBQr_MedicosEXCEDER_MAXGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_MedicosNOTIFICAR_MAXGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure IBQr_MedicosMAX_TURNOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBG_1DblClick(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure SE_MaxTurnoChange(Sender: TObject);
    procedure Deshabilitar1Click(Sender: TObject);
    procedure Habilitar1Click(Sender: TObject);
    procedure PM_1Popup(Sender: TObject);
    procedure SPB_BuscaEspecialidadClick(Sender: TObject);
    procedure BT_CancelarClick(Sender: TObject);
    procedure RCB_ExcedenteClick(Sender: TObject);
    procedure MM_Eliminar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure APPEVENT_MedicosMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure E_NombreMedicoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure EliminarMedico(Id_Medico, Mensaje: Integer);
    procedure DeshabilitaMedico(Id_Medico, Estado, Mensaje:Integer);
    procedure InsertarMedico(NOMBRE_MEDICOS:string; MAX_TURNO, EXCEDE_MAX, NOTIFICAR, ESTADO,
                             ID_ESPECIALIDAD, Mensaje: Integer);
    procedure LimpiarCampos;
    procedure BuscaMedico(Nombre_Medico: string; Mensaje:integer);
    procedure LlenarCamposM;
    procedure ModificarMedico(NOMBRE_MEDICOS:string; ID_MEDICO, MAX_TURNO, EXCEDE_MAX, NOTIFICAR,
                              ESTADO, ID_ESPECIALIDAD, Mensaje: Integer);
    function ValidaNombreMedicoExiste(NombreMedico: string; ModificarValidaM:Boolean; Id_MedicoValidaM, Mensaje: Integer):Boolean;
  public
    { Public declarations }
    function ObtenerIdMedico_NombreMedico(NombreMedico:string):Integer;
    function ObtenerNombreMedico_IdMedico(IdMedico:Integer):string;
  end;

var
  FMedicos: TFMedicos;
  ModificarM: Boolean;
  Id_EspcMedica_Medicos:Integer;  

implementation

uses UPrincipal, UContenedorDatos, UEspecialidadMedica;

{$R *.dfm}

{ TFMedicos }

procedure TFMedicos.InsertarMedico(NOMBRE_MEDICOS: string; MAX_TURNO,
  EXCEDE_MAX, NOTIFICAR, ESTADO, ID_ESPECIALIDAD, Mensaje: Integer);
var
  IBQr_InstMedico:TIBQuery;
begin
  if (C_MEDICO_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_InstMedico:=TIBQuery.Create(Self);
        with IBQr_InstMedico do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('insert into MEDICOS(CREADO, ESTADO, EXCEDER_MAX, MAX_TURNO, NOMBRE_MEDICO, NOTIFICAR_MAX, ID_ESPECIALIDAD )');
            SQL.Add('VALUES(:CREADO, :ESTADO, :EXCEDER_MAX, :MAX_TURNO, :NOMBRE_MEDICO, :NOTIFICAR_MAX, :ID_ESPECIALIDAD)');
            ParamByName('CREADO').Value:=DateOf(Now);
            ParamByName('ESTADO').Value:=ESTADO;
            ParamByName('EXCEDER_MAX').Value:=EXCEDE_MAX;
            ParamByName('MAX_TURNO').Value:=MAX_TURNO;
            ParamByName('NOMBRE_MEDICO').Value:=NOMBRE_MEDICOS;
            ParamByName('NOTIFICAR_MAX').Value:=NOTIFICAR;
            ParamByName('ID_ESPECIALIDAD').Value:=ID_ESPECIALIDAD;
            ExecSQL;
            Free;
            if(Mensaje = 1)then
              FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con éxito.',mtInformation,[mbOK],0);
          end;
      except
        FPrincipal.MS_Personalizado.MessageDlg('Se produjo un error al intentar guardar los datos.',mtInformation,[mbOK],0);
      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFMedicos.BT_AceptarClick(Sender: TObject);
var
  max, notificar, estado:Integer;
begin
  if(Trim(E_NombreMedico.Text) <> '')then
    begin
      if(RCB_Excedente.Checked = True)then
        begin
          max:=1;
        end
      else
        begin
          max:=0;
        end;
      if(RCB_Notificar.Checked = True)and(RCB_Notificar.Enabled = True)then
        begin
          notificar:=1;
        end
      else
        begin
          notificar:=0;
        end;
      if(RCB_Estado.Checked = True)then
        begin
          estado:=1;
        end
      else
        begin
          estado:=0;
        end;
      _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
      Id_EspcMedica_Medicos:=_FEspecialidadMedica.ObtenerIdEspec(E_EspecialidadMedica.Text);
      _FEspecialidadMedica.Free;
      if(Trim(E_EspecialidadMedica.Text) <> '')then
        begin
          if(not ModificarM)then
            begin
              if ValidaNombreMedicoExiste(E_NombreMedico.Text, ModificarM, Id_Medico, 1)then
              InsertarMedico(E_NombreMedico.Text,StrToInt(SE_MaxTurno.Text),max,notificar,estado, Id_EspcMedica_Medicos,1);
            end
          else
          if(ModificarM = True)then
            begin
              if ValidaNombreMedicoExiste(E_NombreMedico.Text, ModificarM, Id_Medico, 1)then
              ModificarMedico(E_NombreMedico.Text,Id_Medico,StrToInt(SE_MaxTurno.Text),max,notificar,estado, Id_EspcMedica_Medicos,1);
              MM_Eliminar1.Enabled:=True;
            end;
          BuscaMedico('', 0);
          ModificarM:=False;
          Id_Medico:=-1;
          LimpiarCampos;
          BT_Aceptar.Caption:='&Guardar';
          Self.Caption:='Crear Nuevo Médico.';
        end
      else
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(E_EspecialidadMedica,'Seleccione una especialidad médica para continuar.',ikInformation,'Información',5000);
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreMedico,'Ingrese el nombre del médico para continuar.',ikInformation,'Información',5000);
    end; 
end;

procedure TFMedicos.LimpiarCampos;
begin
  E_NombreMedico.Clear;
  SE_MaxTurno.Value:=0;
  RCB_Excedente.Checked:=False;
  RCB_Notificar.Checked:=False;
  RCB_Excedente.Enabled:=True;
  RCB_Notificar.Enabled:=True;
  RCB_Estado.Checked:=False;
  E_EspecialidadMedica.Clear;
  RCB_Estado.Caption:='Estado: ACTIVO';
end;

procedure TFMedicos.BuscaMedico(Nombre_Medico: string; Mensaje:integer);
begin
  with IBQr_Medicos do
    begin
      Close;
      ParamByName('nm').Value:=Nombre_Medico+'%';
      Open;
    end;
  if IBQr_Medicos.RecordCount < 1 then
    begin
      IBQr_Medicos.Close;
    end
  else
  if Mensaje = 1 then
     FPrincipal.JvBalloonHint1.ActivateHint(E_NombreMedico, 'No se hallarón datos.', ikInformation, 'Información', 5000);


end;

procedure TFMedicos.RCB_EstadoClick(Sender: TObject);
begin
  if(RCB_Estado.Checked = True)then
    RCB_Estado.Caption:='Estado: ACTIVO'
  else
    RCB_Estado.Caption:='Estado: INACTIVO';
end;

procedure TFMedicos.BT_BuscarClick(Sender: TObject);
begin
  BuscaMedico(Trim(E_NombreMedico.Text), 1);
end;

procedure TFMedicos.BT_LimpiarClick(Sender: TObject);
begin
  LimpiarCampos;
  ModificarM:=False;
  Id_Medico:=-1;
  BT_Aceptar.Caption:='&Guardar';
  Self.Caption:='Crear Nuevo Médico.';
end;

procedure TFMedicos.FormCreate(Sender: TObject);
begin
  BuscaMedico('', 0);
end;

procedure TFMedicos.IBQr_MedicosESTADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(IBQr_MedicosESTADO.AsInteger = 1)then
    Text:='Activo'
  else
    Text:='Inactivo';
end;

procedure TFMedicos.IBQr_MedicosEXCEDER_MAXGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(IBQr_MedicosEXCEDER_MAX.AsInteger = 1)then
    Text:='Sí'
  else
    Text:='No';
end;

procedure TFMedicos.IBQr_MedicosNOTIFICAR_MAXGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(IBQr_MedicosNOTIFICAR_MAX.AsInteger = 1)then
    Text:='Sí'
  else
    Text:='No';
end;

procedure TFMedicos.IBQr_MedicosMAX_TURNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(IBQr_MedicosMAX_TURNO.AsInteger = 0)then
    Text:='Sin Limite'
  else
    Text:=IBQr_MedicosMAX_TURNO.AsString;

end;

procedure TFMedicos.DBG_1DblClick(Sender: TObject);
begin
  if(IBQr_Medicos.Active = True)then
    begin
      if(IBQr_Medicos.RecordCount > 0)then
        begin
          LlenarCamposM;
          ModificarM:=True;
          Id_Medico:=IBQr_MedicosIDMEDICO.AsInteger;
          Caption:='Modificar Datos de Medico.';
          BT_Aceptar.Caption:='&Modificar';
          MM_Eliminar1.Enabled:=False;
        end
      else
        begin
          Id_Medico:=-1;
          ModificarM:=False;
          Caption:='Medicos.';
        end;
    end
  else
    begin
      ModificarM:=False;
      Id_Medico:=-1;
      Caption:='Medicos.';
    end;
end;

procedure TFMedicos.LlenarCamposM;
begin
  E_NombreMedico.Text:=IBQr_MedicosNOMBRE_MEDICO.AsString;
  SE_MaxTurno.Value:=IBQr_MedicosMAX_TURNO.AsInteger;
  _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
  E_EspecialidadMedica.Text:=_FEspecialidadMedica.BuscaNombreEspec(IBQr_MedicosID_ESPECIALIDAD.AsInteger);
  _FEspecialidadMedica.Free;
  if(IBQr_MedicosESTADO.Value = 1)then
    RCB_Estado.Checked:=True
  else
    RCB_Estado.Checked:=False;

  if(IBQr_MedicosEXCEDER_MAX.Value = 1)then
    RCB_Excedente.Checked:=True
  else
    RCB_Excedente.Checked:=False;

  if(IBQr_MedicosNOTIFICAR_MAX.Value = 1)then
    RCB_Notificar.Checked:=True
  else
    RCB_Notificar.Checked:=False;
end;

procedure TFMedicos.Modificar1Click(Sender: TObject);
begin
  DBG_1DblClick(Self);
end;

procedure TFMedicos.ModificarMedico(NOMBRE_MEDICOS: string; ID_MEDICO,
  MAX_TURNO, EXCEDE_MAX, NOTIFICAR, ESTADO, ID_ESPECIALIDAD, Mensaje: Integer);
var
  IBQr_MM: TIBQuery;
begin
  if (M_MEIDCO_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_MM:=TIBQuery.Create(Self);
        with IBQr_MM do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('update MEDICOS set ID_ESPECIALIDAD = :p0, ESTADO = :p1, EXCEDER_MAX = :p2, MAX_TURNO = :p3, NOMBRE_MEDICO = :p4, NOTIFICAR_MAX = :p5');
            SQL.Add('where IDMEDICO = :p6');
            ParamByName('p0').Value:=ID_ESPECIALIDAD;
            ParamByName('p1').Value:=ESTADO;
            ParamByName('p2').Value:=EXCEDE_MAX;
            ParamByName('p3').Value:=MAX_TURNO;
            ParamByName('p4').Value:=NOMBRE_MEDICOS;
            ParamByName('p5').Value:=NOTIFICAR;
            ParamByName('p6').Value:=ID_MEDICO;
            ExecSQL;
            Free;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
          end;
      except

      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFMedicos.SE_MaxTurnoChange(Sender: TObject);
begin
  if(SE_MaxTurno.Value = 0)then
    begin
      RCB_Excedente.Checked:=True;
      RCB_Excedente.Enabled:=False;
      RCB_Notificar.Enabled:=False;
    end
  else
  if(SE_MaxTurno.Value > 0)then
    begin
      RCB_Excedente.Enabled:=True;
      RCB_Notificar.Enabled:=True;

    end;
end;

procedure TFMedicos.DeshabilitaMedico(Id_Medico, Estado, Mensaje: Integer);
var
  IBQr_DeshM:TIBQuery;
begin
  try
    IBQr_DeshM:=TIBQuery.Create(Self);
    with IBQr_DeshM do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update MEDICOS set ESTADO = :p0 where IDMEDICO = :p1');
        ParamByName('p0').Value:=Estado;
        ParamByName('p1').Value:=Id_Medico;
        ExecSQL;
        Free;
        if(Mensaje = 1)then
          FPrincipal.MS_Personalizado.MessageDlg('Acción reaizada con éxito.',mtInformation,[mbOK],0);
      end;
  except
  end;

end;

procedure TFMedicos.Deshabilitar1Click(Sender: TObject);
begin
  if FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea deshabilitar el médico: '+IBQr_MedicosNOMBRE_MEDICO.AsString+#13+
  #13+'Pulse Si para realizar esta acción.',mtConfirmation,[mbYes, mbNo],0) = idyes then
    begin
      Id_Medico:=IBQr_MedicosIDMEDICO.AsInteger;
      DeshabilitaMedico(Id_Medico,0,1);
      BuscaMedico('', 0);
    end
  else
    begin
      Id_Medico:=-1;
    end;
end;

procedure TFMedicos.Habilitar1Click(Sender: TObject);
begin
  if FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea habilitar el médico: '+IBQr_MedicosNOMBRE_MEDICO.AsString+#13+
  #13+'Pulse Si para realizar esta acción.',mtConfirmation,[mbYes, mbNo],0) = idyes then
    begin
      Id_Medico:=IBQr_MedicosIDMEDICO.AsInteger;
      DeshabilitaMedico(Id_Medico,1,1);
      BuscaMedico('', 0);
    end
  else
    begin
      Id_Medico:=-1;
    end;
end;

procedure TFMedicos.PM_1Popup(Sender: TObject);
begin
  if(IBQr_MedicosESTADO.AsInteger = 1)then
    begin
      Habilitar1.Enabled:=False;
      Deshabilitar1.Enabled:=True;      
    end
  else
  if(IBQr_MedicosESTADO.AsInteger = 0)then
    begin
      Habilitar1.Enabled:=True;
      Deshabilitar1.Enabled:=False;
    end;
end;

procedure TFMedicos.SPB_BuscaEspecialidadClick(Sender: TObject);
begin
  try
    _FEspecialidadMedica:=TFEspecialidadMedica.Create(Self);
    with _FEspecialidadMedica do
      begin
        Seleccionar:=True;
        Seleccionar1.Visible:=True;
        ShowModal;
        //Id_EspcMedica_Medicos:=-1;
        Seleccionar:=False;
        Free;
      end;
  except

  end;
end;

procedure TFMedicos.BT_CancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFMedicos.RCB_ExcedenteClick(Sender: TObject);
begin
  if RCB_Excedente.Checked = True then
    begin
      RCB_Notificar.Enabled:=False;
    end
  else
  if RCB_Excedente.Checked = False then
    begin
      RCB_Notificar.Enabled:=True;
    end;
end;

function TFMedicos.ValidaNombreMedicoExiste(NombreMedico: string;
ModificarValidaM: Boolean; Id_MedicoValidaM, Mensaje: Integer): Boolean;
var
  IBQr_BuscaM:TIBQuery;
begin
  Result:=False;
    IBQr_BuscaM:=TIBQuery.Create(Self);
    with IBQr_BuscaM do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select IDMEDICO from MEDICOS where NOMBRE_MEDICO = :p0');
        ParamByName('p0').Value:=NombreMedico;
        Open;
      end;
    if IBQr_BuscaM.RecordCount > 0 then
      begin
        if (ModificarValidaM = True)and(Id_MedicoValidaM = IBQr_BuscaM.FieldByName('IDMEDICO').AsInteger) then
          begin
            Result:=True;
          end
        else
        if(ModificarValidaM = True)and(Id_MedicoValidaM <> IBQr_BuscaM.FieldByName('IDMEDICO').AsInteger)then
          begin
            Result:=False;
            FPrincipal.MS_Personalizado.MessageDlg('Este nombre de médico ya esta registrado.',mtInformation,[mbOK],0);
          end
        else
        if(ModificarValidaM = False)then
          begin
            Result:=False;
            FPrincipal.MS_Personalizado.MessageDlg('Este nombre de médico ya esta registrado.',mtInformation,[mbOK],0);
          end;
      end
    else
      begin
        Result:=True;
      end;                 
end;

procedure TFMedicos.EliminarMedico(Id_Medico, Mensaje: Integer);
var
  IBQr_ElimMedico, IBQr_BuscaTieneCita:TIBQuery;
begin
  if (E_MEDICO_USU = 1) or (Autorizado) then
    begin
      Autorizado:=False;
      IBQr_ElimMedico:=TIBQuery.Create(Self);
      IBQr_BuscaTieneCita:=TIBQuery.Create(Self);
      with IBQr_BuscaTieneCita do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('select ID_MEDICO from CITAS where ID_MEDICO = :p0');
          ParamByName('p0').Value:=Id_Medico;
          Open;
        end;
      if IBQr_BuscaTieneCita.RecordCount < 1 then
        begin
          if FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea eliminar el médico seleccionado.'+#13+#13+
          'Pulse Si para realizar esta acción.',mtConfirmation,[mbYes, mbNo],0) = mrYES then
            begin
              with IBQr_ElimMedico do
                begin
                  Close;
                  Database:=DTM_DATOS.IDB_BaseDatos;
                  SQL.Clear;
                  SQL.Add('Delete from MEDICOS where IDMEDICO = :p0');
                  ParamByName('p0').Value:=Id_Medico;
                  ExecSQL;
                  Free;
                  if Mensaje = 1 then
                    FPrincipal.MS_Personalizado.MessageDlg('Acción realizada con éxito.',mtInformation,[mbOK],0);
                end;
            end;
        end
      else
      if IBQr_BuscaTieneCita.RecordCount > 0 then
        begin
          if FPrincipal.MS_Personalizado.MessageDlg('Si elimina este médico perdera las citas futuras realizadas'+#13+'a pacientes, recomendamos Deshabilitar el mismo.'+#13+#13+
          'Pulse Si para eliminar el médico seleccionado.',mtConfirmation,[mbYes, mbNo],0) = mrYES then
            begin
              with IBQr_ElimMedico do
                begin
                  TIBQuery.Create(Self);
                  Close;
                  Database:=DTM_DATOS.IDB_BaseDatos;
                  SQL.Clear;
                  SQL.Add('Delete from MEDICOS where IDMEDICO = :p0');
                  ParamByName('p0').Value:=Id_Medico;
                  ExecSQL;
                  Free;
                  if Mensaje = 1 then
                    FPrincipal.MS_Personalizado.MessageDlg('Acción realizada con éxito.',mtInformation,[mbOK],0);
                end;
            end;
        end;
      IBQr_BuscaTieneCita.Free;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFMedicos.MM_Eliminar1Click(Sender: TObject);
begin
  Id_Medico:=IBQr_MedicosIDMEDICO.AsInteger;
  EliminarMedico(Id_Medico,1);
  BuscaMedico('', 0);
  Id_Medico:=-1;
end;

procedure TFMedicos.FormShow(Sender: TObject);
begin
  SE_MaxTurnoChange(Self);
end;

function TFMedicos.ObtenerIdMedico_NombreMedico(
  NombreMedico: string): Integer;
var
  IBQr_IDM:TIBQuery;
begin
  IBQr_IDM:=TIBQuery.Create(Self);
  with IBQr_IDM do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDMEDICO from MEDICOS where NOMBRE_MEDICO = :p0');
      ParamByName('p0').Value:=NombreMedico;
      Open;
    end;
  if IBQr_IDM.RecordCount > 0 then
    begin
      Result:=IBQr_IDM.FieldByName('IDMEDICO').AsInteger;
    end
  else
    begin
      Result:=-1;
    end;
  IBQr_IDM.Free;
end;

function TFMedicos.ObtenerNombreMedico_IdMedico(IdMedico: Integer): string;
var
  IBQr_IDM:TIBQuery;
begin
  IBQr_IDM:=TIBQuery.Create(Self);
  with IBQr_IDM do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_MEDICO from MEDICOS where IDMEDICO = :p0');
      ParamByName('p0').Value:=IdMedico;
      Open;
    end;
  Result:=IBQr_IDM.FieldByName('NOMBRE_MEDICO').AsString;
  IBQr_IDM.Free;
end;

procedure TFMedicos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFMedicos.APPEVENT_MedicosMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  with Msg do
    if (message = WM_KEYDOWN) and (wParam = VK_RETURN) and
    ((ActiveControl is TCustomEdit)or(ActiveControl is TbsSkinCheckRadioBox)or(ActiveControl is TbsSkinButton)) then
      begin
        SelectNext(ActiveControl, true, true);
        Handled := true;
      end;
end;

procedure TFMedicos.E_NombreMedicoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BuscaMedico('', 1);
end;

end.
