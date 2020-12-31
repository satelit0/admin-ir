unit UEspecialidadMedica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, BusinessSkinForm, IBQuery,
  bsdbctrls, bsSkinGrids, bsDBGrids, DB, IBCustomDataSet, Menus,
  bsSkinMenus, JvBalloonHint, JvCombobox, JvComponentBase;

type
  TFEspecialidadMedica = class(TForm)
    BSF_F1: TbsBusinessSkinForm;
    GB_1: TbsSkinGroupBox;
    E_NombreEspecialidaMedica: TbsSkinEdit;
    LB_1: TbsSkinStdLabel;
    BT_Aceptar: TbsSkinButton;
    DBG_1: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    IBQr_Espec: TIBQuery;
    IBQr_EspecIDESPECIALIDAD: TIntegerField;
    IBQr_EspecNOMBRE_ESPECIALIDAD: TIBStringField;
    DS_1: TDataSource;
    BT_Buscar: TbsSkinButton;
    PM_1: TbsSkinPopupMenu;
    Modificar1: TMenuItem;
    N1: TMenuItem;
    Eliminar1: TMenuItem;
    N2: TMenuItem;
    Seleccionar1: TMenuItem;
    JVBH_1: TJvBalloonHint;
    procedure FormCreate(Sender: TObject);
    procedure BT_BuscarClick(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure DBG_1DblClick(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Seleccionar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_NombreEspecialidaMedicaChange(Sender: TObject);
  private
    { Private declarations }
    procedure InsertarEspecialidad(Nombre:string; Mensaje:Integer);
    procedure ModificarEspecialidad(Nombre:string; Id_Especialidad, Mensaje:Integer);
    procedure EliminarEspecialidad(Id_Especialidad, Mensaje:Integer);
    function ValidaEspExite(Id_especialida:Integer; NombreEsp:string; Modificar:Boolean):Boolean;
  public
    { Public declarations }
    function ObtenerNombreEspec_NombreMedico(NombreMedico:string):string;
    function BuscaNombreEspec(Id_Espec:Integer):string;
    procedure BuscarEspec(NombreEspec:string);
    function ObtenerIdEspec(NombreEspec:string):Integer;
    procedure LlenarCombEspecialidadMedica(JvComboBoxEspec:TJvComboBox);
  end;

var
  FEspecialidadMedica: TFEspecialidadMedica;
  ModificarEspc:Boolean;
  Id_EspecMedica:Integer;
  Seleccionar:Boolean;

implementation

uses UPrincipal, UMedicos, UContenedorDatos;

{$R *.dfm}

{ TFEspecialidadMedica }

procedure TFEspecialidadMedica.BuscarEspec(NombreEspec: string);
begin
  with IBQr_Espec do
    begin
      Close;
      ParamByName('ns').Value:=NombreEspec+'%';
      Open;
    end;
  if IBQr_Espec.RecordCount < 1then
    IBQr_Espec.Close;
end;

procedure TFEspecialidadMedica.EliminarEspecialidad(Id_Especialidad,
  Mensaje: Integer);
var
  IBQr_ElimEspec:TIBQuery;
begin
  if (E_ESPEC_MEDICA_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_ElimEspec:=TIBQuery.Create(Self);
        with IBQr_ElimEspec do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('delete from ESPECIALIDAD_MEDICA where IDESPECIALIDAD = :p0');
            ParamByName('p0').Value:=Id_Especialidad;
            ExecSQL;
            Free;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con �xito.',mtInformation,[mbOK],0);
          end;
      except

      end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end; 
end;

procedure TFEspecialidadMedica.InsertarEspecialidad(Nombre: string; Mensaje:Integer);
var
  IBQr_InsertEspec:TIBQuery;
begin
  if (C_ESPEC_MEDICA_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_InsertEspec:=TIBQuery.Create(Self);
        with IBQr_InsertEspec do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('insert into ESPECIALIDAD_MEDICA(NOMBRE_ESPECIALIDAD)');
            SQL.Add('values(:p0);');
            ParamByName('p0').Value:=Nombre;
            ExecSQL;
            Free;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con �xito.',mtInformation,[mbOK],0);
          end;
      except

       end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFEspecialidadMedica.ModificarEspecialidad(Nombre: string;
  Id_Especialidad, Mensaje: Integer);
var
  IBQr_ModtEspec:TIBQuery;
begin
  if (M_ESPEC_MEDICA_USU = 1) or (Autorizado) then
    begin
      try
        Autorizado:=False;
        IBQr_ModtEspec:=TIBQuery.Create(Self);
        with IBQr_ModtEspec do
          begin
            Close;
            Database:=DTM_DATOS.IDB_BaseDatos;
            SQL.Clear;
            SQL.Add('update ESPECIALIDAD_MEDICA set NOMBRE_ESPECIALIDAD = :p0');
            SQL.Add('where IDESPECIALIDAD = :P1;');
            ParamByName('P0').Value:=Nombre;
            ParamByName('P1').Value:=Id_Especialidad;
            ExecSQL;
            Free;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
          end;
      except
      end
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opci�n.', mtInformation, [mbOK], 0);
    end;

end;

procedure TFEspecialidadMedica.FormCreate(Sender: TObject);
begin
  BuscarEspec('');
  Id_EspecMedica:=-1;
end;

procedure TFEspecialidadMedica.BT_BuscarClick(Sender: TObject);
begin
  BuscarEspec(Trim(E_NombreEspecialidaMedica.Text));
end;

procedure TFEspecialidadMedica.BT_AceptarClick(Sender: TObject);
begin
  if(Trim(E_NombreEspecialidaMedica.Text) <> '')then
    begin
      if not ValidaEspExite(IBQr_EspecIDESPECIALIDAD.AsInteger, Trim(E_NombreEspecialidaMedica.Text), ModificarEspc)then
        begin
          if(not ModificarEspc)then
            begin
              InsertarEspecialidad(E_NombreEspecialidaMedica.Text,1);
              E_NombreEspecialidaMedica.Clear;
              E_NombreEspecialidaMedica.SetFocus;
            end
          else
            begin
              ModificarEspecialidad(E_NombreEspecialidaMedica.Text,Id_EspecMedica,1);
              ModificarEspc:=False;
              Caption:='Especialidades Medicas';
              Id_EspecMedica:=-1;
              E_NombreEspecialidaMedica.Clear;
              E_NombreEspecialidaMedica.SetFocus;
              Eliminar1.Enabled:=True;
            end;
          BuscarEspec('');
        end
      else
        begin
          JVBH_1.ActivateHint(E_NombreEspecialidaMedica, 'Este nombre de especialidad ya �xiste.', ikInformation, 'Informaci�n', 5000);
        end;
    end
  else
    begin
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreEspecialidaMedica, 'Ingrese el nombre de la especialidad m�dica.',ikError,'Error en este campo.',5000);
    end;
end;

procedure TFEspecialidadMedica.DBG_1DblClick(Sender: TObject);
begin
  if(IBQr_Espec.Active)then
    if(IBQr_Espec.RecordCount > 0)then
      begin
        if not Seleccionar then
          begin
            ModificarEspc:=True;
            Id_EspecMedica:=IBQr_EspecIDESPECIALIDAD.AsInteger;
            E_NombreEspecialidaMedica.Text:=IBQr_EspecNOMBRE_ESPECIALIDAD.AsString;
            Caption:='Modificar Especialidade Medica.';
            Eliminar1.Enabled:=False;
          end
        else
          begin
            Seleccionar1Click(Self);
          end;
      end;
end;

procedure TFEspecialidadMedica.Modificar1Click(Sender: TObject);
begin
  DBG_1DblClick(Self);
end;

procedure TFEspecialidadMedica.Eliminar1Click(Sender: TObject);
begin
  if IBQr_Espec.Active = True then
    if IBQr_Espec.RecordCount > 0 then
      if(FPrincipal.MS_Personalizado.MessageDlg('Confirme eliminar la especialidad m�dica: '+
      IBQr_EspecNOMBRE_ESPECIALIDAD.AsString+#13+#13+'Pulse Si para eliminar.',
      mtConfirmation,[mbYes,mbNo],0) = IDYES)then
        begin
          EliminarEspecialidad(IBQr_EspecIDESPECIALIDAD.AsInteger,1);
          BuscarEspec('');
          ModificarEspc:=False;
          Caption:='Especialidades Medicas';
          Id_EspecMedica:=-1;
          E_NombreEspecialidaMedica.Clear;
          E_NombreEspecialidaMedica.SetFocus;
        end;
end;

procedure TFEspecialidadMedica.Seleccionar1Click(Sender: TObject);
begin
  if(Seleccionar = True)then
    begin
      _FMedicos.E_EspecialidadMedica.Text:=IBQr_EspecNOMBRE_ESPECIALIDAD.AsString;
      Id_EspcMedica_Medicos:=IBQr_EspecIDESPECIALIDAD.AsInteger;
      Self.Close;
    end;
end;

procedure TFEspecialidadMedica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModificarEspc then
    if FPrincipal.MS_Personalizado.MessageDlg('Desea salir sin guardar los cambios?', mtConfirmation, [mbYes, mbNo], 0) = idyes then
      Action:=caFree
    else
      Action:=caNone
  else
    Action:=caFree;
end;

function TFEspecialidadMedica.BuscaNombreEspec(Id_Espec: Integer): string;
var
  IBQr_NombreEspec:TIBQuery;
begin
  IBQr_NombreEspec:=TIBQuery.Create(Self);
  with IBQr_NombreEspec do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_ESPECIALIDAD from ESPECIALIDAD_MEDICA where IDESPECIALIDAD = :id;');
      ParamByName('id').Value:=Id_Espec;
      Open;
    end;
  Result:=IBQr_NombreEspec.FieldByName('NOMBRE_ESPECIALIDAD').AsString;
  IBQr_NombreEspec.Free;
end;

function TFEspecialidadMedica.ObtenerIdEspec(NombreEspec: string): Integer;
var
  IBQr_NombreEspec:TIBQuery;
begin
  IBQr_NombreEspec:=TIBQuery.Create(Self);
  with IBQr_NombreEspec do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDESPECIALIDAD from ESPECIALIDAD_MEDICA where NOMBRE_ESPECIALIDAD = :P0;');
      ParamByName('P0').Value:=NombreEspec;
      Open;
    end;
  Result:=IBQr_NombreEspec.FieldByName('IDESPECIALIDAD').AsInteger;
  IBQr_NombreEspec.Free;  
end;

procedure TFEspecialidadMedica.LlenarCombEspecialidadMedica(
  JvComboBoxEspec: TJvComboBox);
var
  IBQr_Espec:TIBQuery;
begin
  IBQr_Espec:=TIBQuery.Create(Self);
  with IBQr_Espec do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_ESPECIALIDAD from ESPECIALIDAD_MEDICA');
      Open;
    end;
  IBQr_Espec.First;
  JvComboBoxEspec.Clear;
  while not IBQr_Espec.Eof do
    begin
      JvComboBoxEspec.Items.Add(IBQr_Espec.FieldByName('NOMBRE_ESPECIALIDAD').AsString);
      IBQr_Espec.Next;
    end;
  IBQr_Espec.Free;
end;


function TFEspecialidadMedica.ObtenerNombreEspec_NombreMedico(
  NombreMedico: string): string;
var
  IBQr_Espec, IBQr_Medico:TIBQuery;
begin
  IBQr_Medico:=TIBQuery.Create(Self);
  with IBQr_Medico do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ID_ESPECIALIDAD from MEDICOS where NOMBRE_MEDICO = :P0');
      ParamByName('P0').Value:=NombreMedico;
      Open;
    end;
  if IBQr_Medico.RecordCount > 0 then
    begin
      IBQr_Espec:=TIBQuery.Create(Self);
      with IBQr_Espec do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('select NOMBRE_ESPECIALIDAD from ESPECIALIDAD_MEDICA where IDESPECIALIDAD = :P0');
          ParamByName('P0').Value:=IBQr_Medico.FieldByName('ID_ESPECIALIDAD').AsInteger;
          Open;
        end;
      Result:=IBQr_Espec.FieldByName('NOMBRE_ESPECIALIDAD').AsString;
    end
  else
    begin
      Result:='';
    end;
  IBQr_Medico.Free;
  IBQr_Espec.Free;
end;

procedure TFEspecialidadMedica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFEspecialidadMedica.E_NombreEspecialidaMedicaChange(
  Sender: TObject);
begin
BuscarEspec(E_NombreEspecialidaMedica.Text);
end;

function TFEspecialidadMedica.ValidaEspExite(Id_especialida:Integer; NombreEsp: string; Modificar:Boolean): Boolean;
var
  IBqr_Esp:TIBQuery;
  Id_Esp:Integer;
begin
  IBqr_Esp:=TIBQuery.Create(Self);
  with IBqr_Esp do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select idespecialidad from especialidad_medica where nombre_especialidad = :p0');
      Params[0].Value:=NombreEsp;
      Open;
    end;
  Id_Esp:=IBqr_Esp.fieldbyname('idespecialidad').AsInteger;
  if IBqr_Esp.RecordCount > 0 then
    begin
      if (Modificar)and(Id_especialida = Id_Esp) then
        Result:=False
      else
        Result:=True;
    end
  else
    Result:=False;
end;

end.
