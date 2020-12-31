unit UEnfermedades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, Mask, bsSkinBoxCtrls, bsdbctrls,
  bsSkinGrids, bsDBGrids, BusinessSkinForm, DB, IBQuery, IBCustomDataSet,
  JvBalloonHint, Menus, bsSkinMenus;

type
  TFEnfermedades = class(TForm)
    GB_1: TbsSkinGroupBox;
    BSF_F1: TbsBusinessSkinForm;
    DBG_1: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    E_NombreEnfermedad: TbsSkinEdit;
    LB_1: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;      
    BT_Cancelar: TbsSkinButton;
    DS_Enfermedades: TDataSource;
    IBQr_Enfermedades: TIBQuery;
    PM_1: TbsSkinPopupMenu;
    MM_Seleccionar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Modificar1: TMenuItem;
    MM_N2: TMenuItem;
    MM_Eliminar1: TMenuItem;
    IBQr_EnfermedadesIDDIAGNOSTICO: TIntegerField;
    IBQr_EnfermedadesNOMBRE_DIAGNOSTICO: TIBStringField;
    RCB_DiagnosticoReservado: TbsSkinCheckRadioBox;
    BT_Buscar: TbsSkinButton;
    IBQr_EnfermedadesRESERVADO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure BT_CancelarClick(Sender: TObject);
    procedure DBG_1DblClick(Sender: TObject);
    procedure MM_Eliminar1Click(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure MM_Seleccionar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BT_BuscarClick(Sender: TObject);
    procedure IBQr_EnfermedadesRESERVADOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure E_NombreEnfermedadChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function ValidaExisteEnfermedad(NombreEnfermedad:string; Modificar: Boolean; IdEnfermedad:Integer): Boolean;
  public
    { Public declarations }
    procedure BuscarEnfermedad(NombreEnfermedad:string);
    procedure InsertarEnfermedad(NombreEnfermedad:string;
              Reservado, Mensaje: Integer);
    procedure ModificarEnfermedad(IdEnfermedad, Reservado, Mensaje: Integer;
              NombreEnfermedad: string);
    procedure EliminaEnfermedad(IdEnfermedad, Mensaje:Integer);
    function ObtenerNombreEnfermedad(IdEnfermedad:Integer):string;
    function ObtenerIdDiagnostico(NombreEnfermedad: String):Integer;
  end;

var
  FEnfermedades: TFEnfermedades;
  Id_Emfermedad:Integer;
  SeleccionarExt, ModificarEnferm: Boolean;


implementation

uses UPrincipal, UContenedorDatos, UDiagnostico, UReportes,
  UDatosMiscelaneos;

{$R *.dfm}

{ TFEnfermedades }

procedure TFEnfermedades.BuscarEnfermedad(NombreEnfermedad: string);
begin
  with IBQr_Enfermedades do
    begin
      Close;
      ParamByName('p0').Value:=NombreEnfermedad+'%';
      Open;
    end;
  if IBQr_Enfermedades.RecordCount < 1then
    begin
      IBQr_Enfermedades.Close;
    end;
end;

procedure TFEnfermedades.EliminaEnfermedad(IdEnfermedad, Mensaje: Integer);
var
  IBQr_Enfermedad:TIBQuery;
begin
  if (E_DIAGNOSTICO_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_Enfermedad:=TIBQuery.Create(Self);
        with IBQr_Enfermedad do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('delete from DIAGNOSTICOS where IDDIAGNOSTICO = :p0');
            ParamByName('p0').Value:=IdEnfermedad;
            ExecSQL;
            Free;
          end;
          if Mensaje = 1 then
            FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con éxito.', mtInformation,[mbOK],0);
      except
        FPrincipal.MS_Personalizado.MessageDlg('Error al intentar eliminar el Diagnóstico, comunique este error al administrador.'+#13+'E0x003', mtInformation,[mbOK],0);
      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;


procedure TFEnfermedades.InsertarEnfermedad(NombreEnfermedad: string;
  Reservado, Mensaje: Integer);
var
  IBQr_Enfermedad:TIBQuery;
begin
  if (C_DIAGNOSTICO_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_Enfermedad:=TIBQuery.Create(Self);
        with IBQr_Enfermedad do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('insert into DIAGNOSTICOS(NOMBRE_DIAGNOSTICO, RESERVADO)');
            SQL.Add('values(:p0, :P1)');
            ParamByName('p0').Value:=NombreEnfermedad;
            ParamByName('p1').Value:=Reservado;
            ExecSQL;
            Free;
          end;
          if Mensaje = 1 then
            FPrincipal.MS_Personalizado.MessageDlg('Acción realizada con éxito.', mtInformation,[mbOK],0);
      except
        FPrincipal.MS_Personalizado.MessageDlg('Error al intentar guardar los datos, comunique este error al administrador.'+#13+'E0x001', mtInformation,[mbOK],0);
      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFEnfermedades.ModificarEnfermedad(IdEnfermedad,
  Reservado, Mensaje: Integer; NombreEnfermedad: string);
var
  IBQr_Enfermedad:TIBQuery;
begin
  if (M_DIAGNOSTICO_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_Enfermedad:=TIBQuery.Create(Self);
        with IBQr_Enfermedad do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('update DIAGNOSTICOS set NOMBRE_DIAGNOSTICO = :P0, RESERVADO = :p1');
            SQL.Add('where IDDIAGNOSTICO = :p2');
            ParamByName('p0').Value:=NombreEnfermedad;
            ParamByName('p1').Value:=Reservado;
            ParamByName('p2').Value:=IdEnfermedad;
            ExecSQL;
            Free;
          end;
          if Mensaje = 1 then
            FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation,[mbOK],0);
      except
        FPrincipal.MS_Personalizado.MessageDlg('Error al intentar modificar la Diagnóstico, comunique este error al administrador.'+#13+'E0x002', mtInformation,[mbOK],0);
      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

function TFEnfermedades.ObtenerIdDiagnostico(
  NombreEnfermedad: String): Integer;
var
  IBQr_Enfermedad:TIBQuery;
begin
 // Result:=0;
  IBQr_Enfermedad:=TIBQuery.Create(Self);
  with IBQr_Enfermedad do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDDIAGNOSTICO from DIAGNOSTICOS where NOMBRE_DIAGNOSTICO = :p0');
      ParamByName('p0').Value:=NombreEnfermedad;
      Open;
      //Free;
    end;
  Result:=IBQr_Enfermedad.fieldbyname('IDDIAGNOSTICO').AsInteger;
  IBQr_Enfermedad.Free;
end;

function TFEnfermedades.ObtenerNombreEnfermedad(
  IdEnfermedad: Integer): string;
var
  IBQr_Enfermedad:TIBQuery;
begin
  try
    IBQr_Enfermedad:=TIBQuery.Create(Self);
    with IBQr_Enfermedad do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select NOMBRE_DIAGNOSTICO from DIAGNOSTICOS where IDDIAGNOSTICO = :p0');
        ParamByName('p0').Value:=IdEnfermedad;
        Open;
        //Free;
      end;
    Result:=IBQr_Enfermedad.fieldbyname('NOMBRE_DIAGNOSTICO').AsString;
    IBQr_Enfermedad.Free;
  except
    //FPrincipal.MS_Personalizado.MessageDlg('Error al intentar eliminar la enfermedad, comunique este error al administrador.'+#13+'E0x001', mtInformation,[mbOK],0);
  end;

end;

procedure TFEnfermedades.FormShow(Sender: TObject);
begin
  BuscarEnfermedad('');
end;

function TFEnfermedades.ValidaExisteEnfermedad(NombreEnfermedad: string;
  Modificar: Boolean; IdEnfermedad: Integer): Boolean;
var
  IBQr_Enfermedad:TIBQuery;
begin
  Result:=False;
  IBQr_Enfermedad:=TIBQuery.Create(Self);
  with IBQr_Enfermedad do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_DIAGNOSTICO, IDDIAGNOSTICO from DIAGNOSTICOS where NOMBRE_DIAGNOSTICO = :p0');
      ParamByName('p0').Value:=NombreEnfermedad;
      Open;
      //Free;
    end;
  if(IBQr_Enfermedad.RecordCount > 0)then
    begin
      if(Modificar = False)then
        begin
          Result:=False;
          FPrincipal.JvBalloonHint1.ActivateHint(E_NombreEnfermedad,'Este diagnóstico ya existe en el catalogo.',ikError, 'Error diagnóstico existe.',5000);
        end
      else
      if(IdEnfermedad <> IBQr_Enfermedad.FieldByName('IDDIAGNOSTICO').AsInteger)and(Modificar = True)then
        begin
          Result:=False;
          FPrincipal.JvBalloonHint1.ActivateHint(E_NombreEnfermedad,'Este diagnóstico ya existe.',ikError, 'Error Diagnóstico existe.',5000);
        end;
      if(ModificarEnferm = True)and(Id_Emfermedad = IBQr_Enfermedad.FieldByName('IDDIAGNOSTICO').AsInteger)then
        begin
          Result:=True;
        end;
    end
  else
    begin
      Result:=True;
    end;
  IBQr_Enfermedad.Free;
end;

procedure TFEnfermedades.BT_AceptarClick(Sender: TObject);
var
  Reservado: Integer;
begin
  if(Trim(E_NombreEnfermedad.Text) <> '')then
    begin
      if ValidaExisteEnfermedad(E_NombreEnfermedad.Text,ModificarEnferm, Id_Emfermedad) = True then
        begin
          if(RCB_DiagnosticoReservado.Checked)then
            begin
              Reservado:=1;
            end
          else
            begin
              Reservado:=0;
            end;
          if(not ModificarEnferm)then
            begin
              InsertarEnfermedad(E_NombreEnfermedad.Text, Reservado, 1);
            end
          else
            begin
              ModificarEnfermedad(Id_Emfermedad, Reservado, 1,E_NombreEnfermedad.Text);
              Caption:='Catálogo de Diagnóstico Médico.';
              MM_Eliminar1.Enabled:=True;
            end;
          BT_Aceptar.Caption:='&Guardar';
          Id_Emfermedad:=0;
          ModificarEnferm:=False;
          E_NombreEnfermedad.Clear;
          RCB_DiagnosticoReservado.Checked:=False;
          BuscarEnfermedad('');
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreEnfermedad,'Ingrese un nombre de diagnóstico para continuar.',ikError, 'Error campo vacio.',5000);
    end;
end;

procedure TFEnfermedades.BT_CancelarClick(Sender: TObject);
begin
 // ModificarEnferm:=False;
  Self.Close;
end;

procedure TFEnfermedades.DBG_1DblClick(Sender: TObject);
begin
  if(IBQr_Enfermedades.Active = True )then
    begin
      if(IBQr_Enfermedades.RecordCount > 0)then
        begin
          if(SeleccionarExt = False)then
            begin
              Id_Emfermedad:=IBQr_EnfermedadesIDDIAGNOSTICO.AsInteger;
              E_NombreEnfermedad.Text:=IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString;
              if IBQr_EnfermedadesRESERVADO.AsInteger = 1 then
                begin
                  RCB_DiagnosticoReservado.Checked:=True;
                end
              else
              if IBQr_EnfermedadesRESERVADO.AsInteger = 0 then
                begin
                  RCB_DiagnosticoReservado.Checked:=False;
                end;
              ModificarEnferm:=True;
              Caption:='Modificar Diagnóstico.';
            end
          else
            begin
              MM_Seleccionar1Click(Self);
            end;          
        end;
    end;
end;

procedure TFEnfermedades.MM_Eliminar1Click(Sender: TObject);
var
  IBQr_TieneRegistro:TIBQuery;
begin
  IBQr_TieneRegistro:=TIBQuery.Create(Self);
  with IBQr_TieneRegistro do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ID_DIAGNOSTICO from DIAGNOSTICO_MEDICO where ID_DIAGNOSTICO > 0');
      Open;
    end;
  if(IBQr_TieneRegistro.RecordCount > 0)then
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Imposible eliminar este diagnóstico, esta vinculada con paciente(s).'+#13+
      'Para realizar esta acción deberá desvincular el diagnóstico de cualquir paciente.', mtInformation,[mbOK],0);
    end
  else
    begin
      if(FPrincipal.MS_Personalizado.MessageDlg('Confirme que desea realmente eliminar el diagnóstico seleccionado?'+#13+#13+
      'Pulse Sí para eliminar, de lo contrario pulse No.', mtConfirmation, [mbYes, mbNo],0) = IDYES)then
        begin
          EliminaEnfermedad(IBQr_EnfermedadesIDDIAGNOSTICO.AsInteger,1);
          BuscarEnfermedad('');
          Caption:='Catalogo de Diagnóstico Médico.';
          Id_Emfermedad:=0;
          ModificarEnferm:=False;
          E_NombreEnfermedad.Clear;
        end;
    end;
end;

procedure TFEnfermedades.MM_Modificar1Click(Sender: TObject);
begin
  Id_Emfermedad:=IBQr_EnfermedadesIDDIAGNOSTICO.AsInteger;
  E_NombreEnfermedad.Text:=IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString;
  if IBQr_EnfermedadesRESERVADO.AsInteger = 1then
      RCB_DiagnosticoReservado.Checked:=True
  else
    RCB_DiagnosticoReservado.Checked:=False;
  ModificarEnferm:=True;
  Caption:='Modificar Diagnóstico.';
  MM_Eliminar1.Enabled:=False;
end;

procedure TFEnfermedades.MM_Seleccionar1Click(Sender: TObject);
var
  I: Integer;
  ExisteDiagn: Boolean;
begin
  if SeleccionarDiagnEdad = False then
    begin
      if(_FDiagnostico.ListBx_1.Items.Count > 0)then
        begin
          ExisteDiagn:=False;
          for I := 0 to _FDiagnostico.ListBx_1.Items.Count - 1 do
            begin
              if(_FDiagnostico.ListBx_1.Items.Strings[I] =  IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString)then
                begin
                  FPrincipal.MS_Personalizado.MessageDlg('El diagnóstico seleccionado ya esta en lista de diagnósticos del paciente.', mtInformation, [mbOK], 0);
                  ExisteDiagn:=True;
                  Break;
                end;
            end;
          if ExisteDiagn = False then
            begin
              _FDiagnostico.ListBx_1.Items.Add(IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString);
              if ModificaDiagn = True then
                begin
                  _FDiagnostico.InsertaTBLVirtual(0, Diagnostico_IdDiagnostico,
                  IBQr_EnfermedadesIDDIAGNOSTICO.AsInteger, 0, 1);
                end;
              SeleccionarExt:=False;
              Self.Close;
            end;
        end
      else
        begin
          _FDiagnostico.ListBx_1.Items.Add(IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString);
          if ModificaDiagn = True then
            begin
              _FDiagnostico.InsertaTBLVirtual(0, Diagnostico_IdDiagnostico,
              IBQr_EnfermedadesIDDIAGNOSTICO.AsInteger, 0, 1);
              SeleccionarExt:=False;
            end;
          Self.Close;
        end;

    end
  else
  if SeleccionarDiagnEdad = True then
    begin
      _FDatosMicelaneos.E_NombreDiagnedad.Text:=IBQr_EnfermedadesNOMBRE_DIAGNOSTICO.AsString;
      SeleccionarDiagnEdad:=False;
      Self.Close;
    end;
end;

procedure TFEnfermedades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFEnfermedades.BT_BuscarClick(Sender: TObject);
begin
  BuscarEnfermedad(E_NombreEnfermedad.Text);
end;

procedure TFEnfermedades.IBQr_EnfermedadesRESERVADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if IBQr_EnfermedadesRESERVADO.AsInteger = 1 then
    begin
      Text:='Si';
    end
  else
    begin
      Text:='No';
    end;
end;

procedure TFEnfermedades.E_NombreEnfermedadChange(Sender: TObject);
begin
  BuscarEnfermedad(Trim(E_NombreEnfermedad.Text));
end;

procedure TFEnfermedades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(ModificarEnferm)then
    if FPrincipal.MS_Personalizado.MessageDlg('Desea salir sin guardar los cambios?', mtConfirmation, [mbYes, mbNo], 0) = idyes then
      Action:=caFree
    else
      Action:=caNone   
  else
    Action:=caFree;
end;

end.
