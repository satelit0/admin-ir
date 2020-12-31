unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls,
  DB, IBCustomDataSet, IBQuery, ExtCtrls, bsdbctrls, bsSkinGrids, bsDBGrids,
  Menus, bsSkinMenus, JvBalloonHint, DateUtils, AppEvnts;

type
  TFUsuarios = class(TForm)
    BSF_F1: TbsBusinessSkinForm;
    GB_1: TbsSkinGroupBox;
    E_Nombres: TbsSkinEdit;
    E_Apellidos: TbsSkinEdit;
    E_Cedula: TbsSkinEdit;
    GB_2: TbsSkinGroupBox;
    E_NombreUsuario: TbsSkinEdit;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    LB_3: TbsSkinStdLabel;
    LB_4: TbsSkinStdLabel;
    LB_5: TbsSkinStdLabel;
    GB_3: TbsSkinGroupBox;
    CLB_Privilegios: TbsSkinCheckListBox;
    IBQr_Usuarios: TIBQuery;
    GB_4: TbsSkinGroupBox;
    BT_Aceptar: TbsSkinButton;
    BT_Limpiar: TbsSkinButton;
    BT_Cancelar: TbsSkinButton;
    DBG_Usuarios: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    SCRB_1: TbsSkinScrollBar;
    PM_Usuarios: TbsSkinPopupMenu;
    MM_Modificar: TMenuItem;
    MM_N1: TMenuItem;
    MM_Eliminar: TMenuItem;
    IBQr_Privilegios: TIBQuery;
    DS_Usuarios: TDataSource;
    IBQr_PrivilegiosC_ARS: TIntegerField;
    IBQr_PrivilegiosC_CITA: TIntegerField;
    IBQr_PrivilegiosC_DIAGNOSTICO: TIntegerField;
    IBQr_PrivilegiosC_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_PrivilegiosC_ESPEC_MEDICA: TIntegerField;
    IBQr_PrivilegiosC_MEDICO: TIntegerField;
    IBQr_PrivilegiosC_PACIENTE: TIntegerField;
    IBQr_PrivilegiosE_ARS: TIntegerField;
    IBQr_PrivilegiosE_CITA: TIntegerField;
    IBQr_PrivilegiosE_DIAGNOSTICO: TIntegerField;
    IBQr_PrivilegiosE_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_PrivilegiosE_ESPEC_MEDICA: TIntegerField;
    IBQr_PrivilegiosE_MEDICO: TIntegerField;
    IBQr_PrivilegiosE_PACIENTE: TIntegerField;
    IBQr_PrivilegiosID_USUARIO: TIntegerField;
    IBQr_PrivilegiosIDPRIVILEGIOUSUARIO: TIntegerField;
    IBQr_PrivilegiosM_ARS: TIntegerField;
    IBQr_PrivilegiosM_CITA: TIntegerField;
    IBQr_PrivilegiosM_DIAGNOSTICO: TIntegerField;
    IBQr_PrivilegiosM_DIAGNOSTICO_PACIENTE: TIntegerField;
    IBQr_PrivilegiosM_ESPEC_MEDICA: TIntegerField;
    IBQr_PrivilegiosM_MEIDCO: TIntegerField;
    IBQr_PrivilegiosM_PACIENTE: TIntegerField;
    IBQr_PrivilegiosR_CITAS: TIntegerField;
    IBQr_PrivilegiosR_CONSULTAS_ASEGURDOS: TIntegerField;
    IBQr_PrivilegiosR_CONSULTAS_DIAGNOSTICOS: TIntegerField;
    IBQr_PrivilegiosR_CONSULTAS_MEDICAS: TIntegerField;
    IBQr_PrivilegiosR_CONSULTAS_NACIONALIDAD: TIntegerField;
    IBQr_PrivilegiosR_CONSULTAS_REINCIDENTES: TIntegerField;
    IBQr_PrivilegiosR_LISTA_PACIENTES: TIntegerField;
    IBQr_PrivilegiosR_NUEVOS_PACIENTES: TIntegerField;
    IBQr_PrivilegiosR_PACIENTES_NACIONALIDAD: TIntegerField;
    IBQr_PrivilegiosR_PRODUCTIVIDAD_MEDICA: TIntegerField;
    IBQr_PrivilegiosR_RESERVADOS: TIntegerField;
    IBQr_UsuariosIDUSUARIO: TIntegerField;
    IBQr_UsuariosCEDULA: TIBStringField;
    IBQr_UsuariosNOMBRES: TIBStringField;
    IBQr_UsuariosAPELLIDOS: TIBStringField;
    IBQr_UsuariosNOMBRE_USUARIO: TIBStringField;
    IBQr_UsuariosCLAVE_USUARIO: TIBStringField;
    IBQr_UsuariosULTIMA_FECHA_LOGIN: TDateField;
    IBQr_UsuariosFECHA_CREADO: TDateField;
    SPB_SeleccionarTodo: TbsSkinSpeedButton;
    SPB_2: TbsSkinSpeedButton;
    ME_ClaveUsuario: TMaskEdit;
    IBQr_PrivilegiosPRINT_DATOS_PACIENTES: TIntegerField;
    IBQr_PrivilegiosAUTORIZAR: TIntegerField;
    APPEVENT_Medicos: TApplicationEvents;
    procedure BT_LimpiarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_AceptarClick(Sender: TObject);
    procedure IBQr_UsuariosNOMBRESGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SPB_SeleccionarTodoClick(Sender: TObject);
    procedure SPB_2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MM_ModificarClick(Sender: TObject);
    procedure MM_EliminarClick(Sender: TObject);
    procedure BT_CancelarClick(Sender: TObject);
    procedure APPEVENT_MedicosMessage(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
    procedure InsertaPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO, C_DIAGNOSTICO_PACIENTE,
              C_ESPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS, E_CITA, E_DIAGNOSTICO,
              E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO, E_PACIENTE, ID_USUARIO,
              M_ARS, M_CITA, M_DIAGNOSTICO, M_DIAGNOSTICO_PACIENTE,
              M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CITAS, R_CONSULTAS_ASEGURDOS,
              R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS, R_CONSULTAS_NACIONALIDAD,
              R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES, R_NUEVOS_PACIENTES,
              R_PACIENTES_NACIONALIDAD, R_PRODUCTIVIDAD_MEDICA, R_RESERVADOS,
              PRINT_DATOS_PACIENTES, AUTORIZAR: Integer);
    procedure ModificarPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO, C_DIAGNOSTICO_PACIENTE,
              C_ESPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS, E_CITA, E_DIAGNOSTICO,
              E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO, E_PACIENTE, ID_USUARIO,
              M_ARS, M_CITA, M_DIAGNOSTICO, M_DIAGNOSTICO_PACIENTE,
              M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CITAS, R_CONSULTAS_ASEGURDOS,
              R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS, R_CONSULTAS_NACIONALIDAD,
              R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES, R_NUEVOS_PACIENTES,
              R_PACIENTES_NACIONALIDAD, R_PRODUCTIVIDAD_MEDICA, R_RESERVADOS,
              PRINT_DATOS_PACIENTES, AUTORIZAR: Integer);
    procedure EliminarPrivilegio(Id_Usuario: Integer);
    function GenerarIdUsuario:Integer;
    procedure InsertaUsuario(APELLIDOS, CEDULA, CLAVE_USUARIO:string; FECHA_CREADO:TDateTime; IDUSUARIO:Integer; NOMBRE_USUARIO, NOMBRES:string; Mensaje: Integer);
    procedure ModificarUsuario(APELLIDOS, CEDULA, CLAVE_USUARIO:string; IDUSUARIO:Integer; NOMBRE_USUARIO, NOMBRES:string; Mensaje: Integer);

    procedure EliminarUsuario(IDUSUARIO, Mensaje: Integer);
    function ValidaCampos: Boolean;
    function ValidaCedula(Cedula: string; Id_Usuario: Integer; Modificar: Boolean):Boolean;
    function ValidaNombreUsuario(NombreUsuario: string; Id_Usuario: Integer; Modificar: Boolean):Boolean;
    procedure Privilegios;
    procedure LlenarCapos;
  public
    { Public declarations }
    procedure ModificarBitacora(IDUSUARIO:integer; ULTIMA_FECHA_LOGIN, ULTIMA_HORA_LOGIN: TDateTime);
    procedure BuscarPrivilegio(IdUsuario: Integer);
    procedure BuscarUsuario(Nombre_Usuario: String; Control: TCustomControl; Mensaje: integer);
    procedure LimpiarCampos;
  end;

var
  FUsuarios: TFUsuarios;
  ModificarUsu: Boolean;
  Id_Usuario: Integer;

implementation

uses UPrincipal, UContenedorDatos;

{$R *.dfm}

{ TFUsuarios }

procedure TFUsuarios.BuscarUsuario(Nombre_Usuario: String;
  Control: TCustomControl; Mensaje: integer);
begin
  with IBQr_Usuarios do
    begin
      Close;
      ParamByName('p0').Value:=Nombre_Usuario+'%';
      Open;
    end;
  if IBQr_Usuarios.RecordCount > 0 then
    begin
      if Mensaje = 1 then
        FPrincipal.JvBalloonHint1.ActivateHint(Control, 'No se hallar�n datos con este criterio de b�squeda.', ikError, 'Error', 3000);
    end;
end;

procedure TFUsuarios.EliminarUsuario(IDUSUARIO, Mensaje: Integer);
var
  IBQr_Usuario: TIBQuery;
begin
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('delete from USUARIOS where IDUSUARIO = :p0');
        ParamByName('p0').Value:=IDUSUARIO;
        ExecSQL;
        Free;
      end;
    if Mensaje = 1 then
      FPrincipal.MS_Personalizado.MessageDlg('Usuario eliminado con �xito.', mtInformation, [mbOK], 0);
  except
    IBQr_Usuario.Free;
  end;
end;

procedure TFUsuarios.InsertaUsuario(APELLIDOS, CEDULA,
  CLAVE_USUARIO: string; FECHA_CREADO: TDateTime; IDUSUARIO: Integer;
  NOMBRE_USUARIO, NOMBRES: string; Mensaje: Integer);
var
  IBQr_Usuario: TIBQuery;
begin
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into USUARIOS(APELLIDOS, CEDULA, CLAVE_USUARIO, FECHA_CREADO,');
        SQL.Add('IDUSUARIO, NOMBRE_USUARIO, NOMBRES)');
        SQL.Add('values(:p0, :p1, :p2, :p3, :p4, :p5, :p6)');
        ParamByName('p0').Value:=APELLIDOS;
        ParamByName('p1').Value:=CEDULA;
        ParamByName('p2').Value:=CLAVE_USUARIO;
        ParamByName('p3').Value:=FECHA_CREADO;
        ParamByName('p4').Value:=IDUSUARIO;
        ParamByName('p5').Value:=NOMBRE_USUARIO;
        ParamByName('p6').Value:=NOMBRES;
        ExecSQL;
        Free;
      end;
    if Mensaje = 1 then
      FPrincipal.MS_Personalizado.MessageDlg('Usuario creado con �xito.', mtInformation, [mbOK], 0);
  except
    IBQr_Usuario.Free;
  end;
end;

procedure TFUsuarios.LimpiarCampos;
var
  I: Integer;
begin
  E_Nombres.Clear;
  E_Apellidos.Clear;
  E_Cedula.Clear;
  E_NombreUsuario.Clear;
  ME_ClaveUsuario.Clear;
  for I := 0 to CLB_Privilegios.Items.Count - 1 do
  begin
    CLB_Privilegios.Checked[I]:=False;
  end;                                
end;

procedure TFUsuarios.ModificarBitacora(IDUSUARIO: integer;
  ULTIMA_FECHA_LOGIN, ULTIMA_HORA_LOGIN: TDateTime);
var
  IBQr_Usuario: TIBQuery;
begin
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update USUARIOS set ULTIMA_FECHA_LOGIN = :p0, ULTIMA_HORA_LOGIN = :P1');
        SQL.Add('where IDUSUARIO = :p2');
        ParamByName('p0').Value:=ULTIMA_FECHA_LOGIN;
        ParamByName('p1').Value:=ULTIMA_HORA_LOGIN;
        ParamByName('p2').Value:=IDUSUARIO;
        ExecSQL;
        Free;
      end;
  except
    IBQr_Usuario.Free;
  end;
end;

procedure TFUsuarios.ModificarUsuario(APELLIDOS, CEDULA,
  CLAVE_USUARIO: string; IDUSUARIO: Integer;
  NOMBRE_USUARIO, NOMBRES: string; Mensaje: Integer);
var
  IBQr_Usuario: TIBQuery;
begin
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update USUARIOS set APELLIDOS = :p0, CEDULA = :p1, CLAVE_USUARIO = :p2,');
        SQL.Add('NOMBRE_USUARIO = :p3, NOMBRES = :p4 ');
        SQL.Add('where IDUSUARIO = :p5');
        ParamByName('p0').Value:=APELLIDOS;
        ParamByName('p1').Value:=CEDULA;
        ParamByName('p2').Value:=CLAVE_USUARIO;
        ParamByName('p3').Value:=NOMBRE_USUARIO;
        ParamByName('p4').Value:=NOMBRES;
        ParamByName('p5').Value:=IDUSUARIO;
        ExecSQL;
        Free;
      end;
    if Mensaje = 1 then
      FPrincipal.MS_Personalizado.MessageDlg('Usuario modificado con �xito.', mtInformation, [mbOK], 0);
  except
    IBQr_Usuario.Free;
  end;
end;

procedure TFUsuarios.BT_LimpiarClick(Sender: TObject);
begin
  LimpiarCampos;
  ModificarUsu:=False;
  Self.Caption:='Crear Nuevo Usuario';
  BT_Aceptar.Caption:='&Guardar';
  SPB_SeleccionarTodo.Enabled:=True;
  SPB_2.Enabled:=True;
  E_NombreUsuario.Enabled:=True;
end;

procedure TFUsuarios.FormShow(Sender: TObject);
begin
  BuscarUsuario('', BT_Aceptar, 0);
end;

function TFUsuarios.ValidaCampos: Boolean;
var
  I: Integer;
  PrivilegioVacio: Boolean;
begin
  PrivilegioVacio:=False;
  for I := 0 to CLB_Privilegios.Items.Count -1 do
  begin
    if(CLB_Privilegios.Checked[I])then
      begin
        PrivilegioVacio:=True;
        Break;
      end;
  end;
  if(Trim(E_Nombres.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_Nombres, 'Ingrese el nombre del usuario.', ikError, 'Error, campo vacio.', 3000);
    end
  else
  if(Trim(E_Apellidos.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_Apellidos, 'Ingrese el/los apellidos del usuario.', ikError, 'Error, campo vacio.', 3000);
    end
  else
  if(Trim(E_Cedula.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_Cedula, 'Ingrese la c�dula del usuario.', ikError, 'Error, campo vacio.', 3000);
    end
  else
  if(Trim(E_NombreUsuario.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreUsuario, 'Ingrese el nombre usuario.', ikError, 'Error, campo vacio.', 3000);
    end
  else
  if(Trim(ME_ClaveUsuario.Text) = '')then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(ME_ClaveUsuario, 'Ingrese una clave para el usuario.', ikError, 'Error, campo vacio.', 3000);
    end
  else
  if not(PrivilegioVacio)then
    begin
      Result:=False;
      FPrincipal.MS_Personalizado.MessageDlg('Aun no ha definido los privilegios del usuario, Seleccione privilegios para continuar.', mtInformation, [mbOK], 0);
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFUsuarios.BT_AceptarClick(Sender: TObject);
var
  IdUsuario: Integer;
begin
  if ValidaCampos then
    begin
      if ValidaNombreUsuario(E_NombreUsuario.Text, Id_Usuario, ModificarUsu) then
        begin
          if ValidaCedula(E_Cedula.Text, Id_Usuario, ModificarUsu) then
            begin
              if not ModificarUsu then
                begin
                  Privilegios;
                  IdUsuario:=GenerarIdUsuario;
                  InsertaUsuario(E_Apellidos.Text, E_Cedula.Text, ME_ClaveUsuario.Text,
                                 Now, IdUsuario, E_NombreUsuario.Text, E_Nombres.Text, 1);
                  InsertaPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO, C_DIAGNOSTICO_PACIENTE, C_ESPEC_MEDICA,
                                    C_MEDICO, C_PACIENTE, E_ARS, E_CITA, E_DIAGNOSTICO, E_DIAGNOSTICO_PACIENTE,
                                    E_ESPEC_MEDICA, E_MEDICO, E_PACIENTE, IdUsuario, M_ARS, M_CITA, M_DIAGNOSTICO,
                                    M_DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEDICO, M_PACIENTE, R_CITAS,
                                    R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS, R_CONSULTAS_NACIONALIDAD,
                                    R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES, R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD,
                                    R_PRODUCTIVIDAD_MEDICA, R_RESERVADOS, PRINT_DATOS_PACIENTES, AUTORIZAR);
                end
              else
                begin
                  Privilegios;
                  ModificarUsuario(E_Apellidos.Text, E_Cedula.Text, ME_ClaveUsuario.Text,
                                   Id_Usuario, E_NombreUsuario.Text, E_Nombres.Text, 1);
                  ModificarPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO, C_DIAGNOSTICO_PACIENTE, C_ESPEC_MEDICA,
                                      C_MEDICO, C_PACIENTE, E_ARS, E_CITA, E_DIAGNOSTICO, E_DIAGNOSTICO_PACIENTE,
                                      E_ESPEC_MEDICA, E_MEDICO, E_PACIENTE, Id_Usuario, M_ARS, M_CITA, M_DIAGNOSTICO,
                                      M_DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEDICO, M_PACIENTE, R_CITAS,
                                      R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS, R_CONSULTAS_NACIONALIDAD,
                                      R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES, R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD,
                                      R_PRODUCTIVIDAD_MEDICA, R_RESERVADOS, PRINT_DATOS_PACIENTES, AUTORIZAR);
                end;
              Self.Caption:='Crear Nuevo Usuario';
              BT_Aceptar.Caption:='&Guardar';
              LimpiarCampos;
              BuscarUsuario('', BT_Aceptar, 0);
              ModificarUsu:=False;
            end;
        end;
    end;
end;

function TFUsuarios.ValidaCedula(Cedula: string; Id_Usuario: Integer;
  Modificar: Boolean): Boolean;
var
  IBQr_Usuario: TIBQuery;
begin
  Result:=False;
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select IDUSUARIO from USUARIOS');
        SQL.Add('where CEDULA = :p0');
        ParamByName('p0').Value:=Cedula;
        Open;
      end;
    if(IBQr_Usuario.RecordCount > 0)then
      begin
        if((Modificar)and(Id_Usuario <> IBQr_Usuario.FieldByName('IDUSUARIO').AsInteger))or(not Modificar)then
          begin
            Result:=False;
            FPrincipal.JvBalloonHint1.ActivateHint(E_Cedula, 'La c�dula ingresado ya existe para otro usuario.', ikError, 'Error en este campo.', 3000);
          end
        else
          begin
            Result:=True;
          end;
      end
    else
      begin
        Result:=True;
      end;
  except
    IBQr_Usuario.Free;
  end;
end;

function TFUsuarios.ValidaNombreUsuario(NombreUsuario: string;
  Id_Usuario: Integer; Modificar: Boolean): Boolean;
var
  IBQr_Usuario: TIBQuery;
begin
  Result:=False;
  try
    IBQr_Usuario:=TIBQuery.Create(Self);
    with IBQr_Usuario do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select IDUSUARIO from USUARIOS');
        SQL.Add('where NOMBRE_USUARIO = :p0');
        ParamByName('p0').Value:=NombreUsuario;
        Open;
      end;
    if(IBQr_Usuario.RecordCount > 0)then
      begin
        if((Modificar)and(Id_Usuario <> IBQr_Usuario.FieldByName('IDUSUARIO').AsInteger))or(not Modificar)then
          begin
            Result:=False;
            FPrincipal.JvBalloonHint1.ActivateHint(E_NombreUsuario, 'Este nombre de usuario no esta disponible.', ikError, 'Error.', 3000);
          end
        else
          begin
            Result:=True;
          end;
      end
    else
      begin
        Result:=True;
      end;
  except
    IBQr_Usuario.Free;
  end;
end;

function TFUsuarios.GenerarIdUsuario: Integer;
var
  IBQr_Usuario: TIBQuery;
begin
  IBQr_Usuario:=TIBQuery.Create(Self);
  with IBQr_Usuario do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select gen_id(GEN_USUARIOS_ID, 1) as IdUsuario from rdb$database;');
      Open;
    end;
  Result:=IBQr_Usuario.FieldByName('IdUsuario').AsInteger;
  IBQr_Usuario.Free;
end;

procedure TFUsuarios.EliminarPrivilegio(Id_Usuario: Integer);
var
  IBQr_Privilegio: TIBQuery;
begin
  try
    IBQr_Privilegio:=TIBQuery.Create(Self);
    with IBQr_Privilegio do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('delete from PRIVILEGIOS_USUARIOS where ID_USUARIO = :p0');
        ParamByName('p0').Value:=Id_Usuario;
        ExecSQL;
        Free;
      end;
  except
    IBQr_Privilegio.Free;
  end;


end;

procedure TFUsuarios.InsertaPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO,
  C_DIAGNOSTICO_PACIENTE, C_ESPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS,
  E_CITA, E_DIAGNOSTICO, E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO,
  E_PACIENTE, ID_USUARIO, M_ARS, M_CITA, M_DIAGNOSTICO,
  M_DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CITAS,
  R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS,
  R_CONSULTAS_NACIONALIDAD, R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES,
  R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD, R_PRODUCTIVIDAD_MEDICA,
  R_RESERVADOS, PRINT_DATOS_PACIENTES, AUTORIZAR: Integer);
var
  IBQr_Privilegio: TIBQuery;
begin
  try
    IBQr_Privilegio:=TIBQuery.Create(Self);
    with IBQr_Privilegio do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into PRIVILEGIOS_USUARIOS(C_ARS, C_CITA, C_DIAGNOSTICO,');
        SQL.Add('C_DIAGNOSTICO_PACIENTE, C_ESPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS,');
        SQL.Add('E_CITA, E_DIAGNOSTICO, E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO,');
        SQL.Add('E_PACIENTE, ID_USUARIO, M_ARS, M_CITA, M_DIAGNOSTICO,');
        SQL.Add('M_DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CITAS,');
        SQL.Add('R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS,');
        SQL.Add('R_CONSULTAS_NACIONALIDAD, R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES,');
        SQL.Add('R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD, R_PRODUCTIVIDAD_MEDICA,');
        SQL.Add('R_RESERVADOS, PRINT_DATOS_PACIENTES, AUTORIZAR)');
        SQL.Add('values(:p0, :p1, :p2, :p3, :p4, :p5, :p6,');
        SQL.Add(':p7, :p8, :p9, :p10, :p11, :p12, :p13,');
        SQL.Add(':p14, :p15, :p16, :p17, :p18, :p19, :p20,');
        SQL.Add(':p21, :p22, :p23, :p24, :p25, :p26, :p27,');
        SQL.Add(':p28, :p29, :p30, :p31, :p32, :p33, :p34)');
        ParamByName('p0').Value:=C_ARS;
        ParamByName('p1').Value:=C_CITA;
        ParamByName('p2').Value:=C_DIAGNOSTICO;
        ParamByName('p3').Value:=C_DIAGNOSTICO_PACIENTE;
        ParamByName('p4').Value:=C_ESPEC_MEDICA;
        ParamByName('p5').Value:=C_MEDICO;
        ParamByName('p6').Value:=C_PACIENTE;
        ParamByName('p7').Value:=E_ARS;
        ParamByName('p8').Value:=E_CITA;
        ParamByName('p9').Value:=E_DIAGNOSTICO;
        ParamByName('p10').Value:=E_DIAGNOSTICO_PACIENTE;
        ParamByName('p11').Value:=E_ESPEC_MEDICA;
        ParamByName('p12').Value:=E_MEDICO;
        ParamByName('p13').Value:=E_PACIENTE;
        ParamByName('p14').Value:=ID_USUARIO;
        ParamByName('p15').Value:=M_ARS;
        ParamByName('p16').Value:=M_CITA;
        ParamByName('p17').Value:=M_DIAGNOSTICO;
        ParamByName('p18').Value:=M_DIAGNOSTICO_PACIENTE;
        ParamByName('p19').Value:=M_ESPEC_MEDICA;
        ParamByName('p20').Value:=M_MEIDCO;
        ParamByName('p21').Value:=M_PACIENTE;
        ParamByName('p22').Value:=R_CITAS;
        ParamByName('p23').Value:=R_CONSULTAS_ASEGURDOS;
        ParamByName('p24').Value:=R_CONSULTAS_DIAGNOSTICOS;
        ParamByName('p25').Value:=R_CONSULTAS_MEDICAS;
        ParamByName('p26').Value:=R_CONSULTAS_NACIONALIDAD;
        ParamByName('p27').Value:=R_CONSULTAS_REINCIDENTES;
        ParamByName('p28').Value:=R_LISTA_PACIENTES;
        ParamByName('p29').Value:=R_NUEVOS_PACIENTES;
        ParamByName('p30').Value:=R_PACIENTES_NACIONALIDAD;
        ParamByName('p31').Value:=R_PRODUCTIVIDAD_MEDICA;
        ParamByName('p32').Value:=R_RESERVADOS;
        ParamByName('p33').Value:=PRINT_DATOS_PACIENTES;
        ParamByName('p34').Value:=AUTORIZAR;
        ExecSQL;
        Free;
      end;
  except
    IBQr_Privilegio.Free;
  end;
end;

procedure TFUsuarios.ModificarPrivilegio(C_ARS, C_CITA, C_DIAGNOSTICO,
  C_DIAGNOSTICO_PACIENTE, C_ESPEC_MEDICA, C_MEDICO, C_PACIENTE, E_ARS,
  E_CITA, E_DIAGNOSTICO, E_DIAGNOSTICO_PACIENTE, E_ESPEC_MEDICA, E_MEDICO,
  E_PACIENTE, ID_USUARIO, M_ARS, M_CITA, M_DIAGNOSTICO,
  M_DIAGNOSTICO_PACIENTE, M_ESPEC_MEDICA, M_MEIDCO, M_PACIENTE, R_CITAS,
  R_CONSULTAS_ASEGURDOS, R_CONSULTAS_DIAGNOSTICOS, R_CONSULTAS_MEDICAS,
  R_CONSULTAS_NACIONALIDAD, R_CONSULTAS_REINCIDENTES, R_LISTA_PACIENTES,
  R_NUEVOS_PACIENTES, R_PACIENTES_NACIONALIDAD, R_PRODUCTIVIDAD_MEDICA,
  R_RESERVADOS,PRINT_DATOS_PACIENTES, AUTORIZAR: Integer);
var
  IBQr_Privilegio: TIBQuery;
begin
  try
    IBQr_Privilegio:=TIBQuery.Create(Self);
    with IBQr_Privilegio do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update PRIVILEGIOS_USUARIOS set C_ARS = :p0, C_CITA = :p1, C_DIAGNOSTICO = :p2,');
        SQL.Add('C_DIAGNOSTICO_PACIENTE = :p3, C_ESPEC_MEDICA = :p4, C_MEDICO = :p5, C_PACIENTE = :p6, E_ARS = :p7,');
        SQL.Add('E_CITA = :p8, E_DIAGNOSTICO = :p9, E_DIAGNOSTICO_PACIENTE = :p10, E_ESPEC_MEDICA = :p11, E_MEDICO = :p12,');
        SQL.Add('E_PACIENTE = :p13, M_ARS = :p15, M_CITA = :p16, M_DIAGNOSTICO = :p17,');
        SQL.Add('M_DIAGNOSTICO_PACIENTE = :p18, M_ESPEC_MEDICA = :p19, M_MEIDCO = :p20, M_PACIENTE = :p21, R_CITAS = :p22,');
        SQL.Add('R_CONSULTAS_ASEGURDOS = :p23, R_CONSULTAS_DIAGNOSTICOS = :p24, R_CONSULTAS_MEDICAS = :p25,');
        SQL.Add('R_CONSULTAS_NACIONALIDAD = :p26, R_CONSULTAS_REINCIDENTES = :p27, R_LISTA_PACIENTES = :p28,');
        SQL.Add('R_NUEVOS_PACIENTES = :p29, R_PACIENTES_NACIONALIDAD = :p30, R_PRODUCTIVIDAD_MEDICA = :p31,');
        SQL.Add('R_RESERVADOS = :p32, PRINT_DATOS_PACIENTES = :p33, AUTORIZAR = :p34 where ID_USUARIO = :p14;');
        ParamByName('p0').Value:=C_ARS;
        ParamByName('p1').Value:=C_CITA;
        ParamByName('p2').Value:=C_DIAGNOSTICO;
        ParamByName('p3').Value:=C_DIAGNOSTICO_PACIENTE;
        ParamByName('p4').Value:=C_ESPEC_MEDICA;
        ParamByName('p5').Value:=C_MEDICO;
        ParamByName('p6').Value:=C_PACIENTE;
        ParamByName('p7').Value:=E_ARS;
        ParamByName('p8').Value:=E_CITA;
        ParamByName('p9').Value:=E_DIAGNOSTICO;
        ParamByName('p10').Value:=E_DIAGNOSTICO_PACIENTE;
        ParamByName('p11').Value:=E_ESPEC_MEDICA;
        ParamByName('p12').Value:=E_MEDICO;
        ParamByName('p13').Value:=E_PACIENTE;
        ParamByName('p14').Value:=ID_USUARIO;
        ParamByName('p15').Value:=M_ARS;
        ParamByName('p16').Value:=M_CITA;
        ParamByName('p17').Value:=M_DIAGNOSTICO;
        ParamByName('p18').Value:=M_DIAGNOSTICO_PACIENTE;
        ParamByName('p19').Value:=M_ESPEC_MEDICA;
        ParamByName('p20').Value:=M_MEIDCO;
        ParamByName('p21').Value:=M_PACIENTE;
        ParamByName('p22').Value:=R_CITAS;
        ParamByName('p23').Value:=R_CONSULTAS_ASEGURDOS;
        ParamByName('p24').Value:=R_CONSULTAS_DIAGNOSTICOS;
        ParamByName('p25').Value:=R_CONSULTAS_MEDICAS;
        ParamByName('p26').Value:=R_CONSULTAS_NACIONALIDAD;
        ParamByName('p27').Value:=R_CONSULTAS_REINCIDENTES;
        ParamByName('p28').Value:=R_LISTA_PACIENTES;
        ParamByName('p29').Value:=R_NUEVOS_PACIENTES;
        ParamByName('p30').Value:=R_PACIENTES_NACIONALIDAD;
        ParamByName('p31').Value:=R_PRODUCTIVIDAD_MEDICA;
        ParamByName('p32').Value:=R_RESERVADOS;
        ParamByName('p33').Value:=PRINT_DATOS_PACIENTES;
        ParamByName('p34').Value:=AUTORIZAR;
        ExecSQL;
        Free;
      end;
  except
    IBQr_Privilegio.Free;
  end;
end;

procedure TFUsuarios.Privilegios;
begin
  if CLB_Privilegios.Checked[0]then
    begin
      C_PACIENTE:=1;
    end
  else
    begin
      C_PACIENTE:=0;
    end;
  if CLB_Privilegios.Checked[1]then
    begin
      M_PACIENTE:=1;
    end
  else
    begin
      M_PACIENTE:=0;
    end;
  if CLB_Privilegios.Checked[2]then
    begin
      E_PACIENTE:=1;
    end
  else
    begin
      E_PACIENTE:=0;
    end;
  if CLB_Privilegios.Checked[3]then
    begin
      C_CITA:=1;
    end
  else
    begin
      C_CITA:=0;
    end;
  if CLB_Privilegios.Checked[4]then
    begin
      M_CITA:=1;
    end
  else
    begin
      M_CITA:=0;
    end;
  if CLB_Privilegios.Checked[5]then
    begin
      E_CITA:=1;
    end
  else
    begin
      E_CITA:=0;
    end;
  if CLB_Privilegios.Checked[6]then
    begin
      C_DIAGNOSTICO:=1;
    end
  else
    begin
      C_DIAGNOSTICO:=0;
    end;
  if CLB_Privilegios.Checked[7]then
    begin
      M_DIAGNOSTICO:=1;
    end
  else
    begin
      M_DIAGNOSTICO:=0;
    end;
  if CLB_Privilegios.Checked[8]then
    begin
      E_DIAGNOSTICO:=1;
    end
  else
    begin
      E_DIAGNOSTICO:=0;
    end;
  if CLB_Privilegios.Checked[9]then
    begin
      C_DIAGNOSTICO_PACIENTE:=1;
    end
  else
    begin
      C_DIAGNOSTICO_PACIENTE:=0;
    end;

  if CLB_Privilegios.Checked[10]then
    begin
      M_DIAGNOSTICO_PACIENTE:=1;
    end
  else
    begin
      M_DIAGNOSTICO_PACIENTE:=0;
    end;
  if CLB_Privilegios.Checked[11]then
    begin
      E_DIAGNOSTICO_PACIENTE:=1;
    end
  else
    begin
      E_DIAGNOSTICO_PACIENTE:=0;
    end;
  if CLB_Privilegios.Checked[12]then
    begin
      C_ARS:=1;
    end
  else
    begin
      C_ARS:=0;
    end;
  if CLB_Privilegios.Checked[13]then
    begin
      M_ARS:=1;
    end
  else
    begin
      M_ARS:=0;
    end;
  if CLB_Privilegios.Checked[14]then
    begin
      E_ARS:=1;
    end
  else
    begin
      E_ARS:=0;
    end;
  if CLB_Privilegios.Checked[15]then
    begin
      C_MEDICO:=1;
    end
  else
    begin
      C_MEDICO:=0;
    end;
  if CLB_Privilegios.Checked[16]then
    begin
      M_MEDICO:=1;
    end
  else
    begin
      M_MEDICO:=0;
    end;
  if CLB_Privilegios.Checked[17]then
    begin
      E_MEDICO:=1;
    end
  else
    begin
      E_MEDICO:=0;
    end;
  if CLB_Privilegios.Checked[18]then
    begin
      C_ESPEC_MEDICA:=1;
    end
  else
    begin
      C_ESPEC_MEDICA:=0;
    end;
  if CLB_Privilegios.Checked[19]then
    begin
      M_ESPEC_MEDICA:=1;
    end
  else
    begin
      M_ESPEC_MEDICA:=0;
    end;
  if CLB_Privilegios.Checked[20]then
    begin
      E_ESPEC_MEDICA:=1;
    end
  else
    begin
      E_ESPEC_MEDICA:=0;
    end;
  if CLB_Privilegios.Checked[21]then
    begin
      R_RESERVADOS:=1;
    end
  else
    begin
      R_RESERVADOS:=0;
    end;
  if CLB_Privilegios.Checked[22]then
    begin
      R_LISTA_PACIENTES:=1;
    end
  else
    begin
      R_LISTA_PACIENTES:=0;
    end;
  if CLB_Privilegios.Checked[23]then
    begin
      R_NUEVOS_PACIENTES:=1;
    end
  else
    begin
      R_NUEVOS_PACIENTES:=0;
    end;
  if CLB_Privilegios.Checked[24]then
    begin
      R_PACIENTES_NACIONALIDAD:=1;
    end
  else
    begin
      R_PACIENTES_NACIONALIDAD:=0;
    end;
  if CLB_Privilegios.Checked[25]then
    begin
      R_CONSULTAS_MEDICAS:=1;
    end
  else
    begin
      R_CONSULTAS_MEDICAS:=0;
    end;
  if CLB_Privilegios.Checked[26]then
    begin
      R_CONSULTAS_DIAGNOSTICOS:=1;
    end
  else
    begin
      R_CONSULTAS_DIAGNOSTICOS:=0;
    end;
  if CLB_Privilegios.Checked[27]then
    begin
      R_CONSULTAS_NACIONALIDAD:=1;
    end
  else
    begin
      R_CONSULTAS_NACIONALIDAD:=0;
    end;
  if CLB_Privilegios.Checked[28]then
    begin
      R_CONSULTAS_ASEGURDOS:=1;
    end
  else
    begin
      R_CONSULTAS_ASEGURDOS:=0;
    end;
  if CLB_Privilegios.Checked[29]then
    begin
      R_CONSULTAS_REINCIDENTES:=1;
    end
  else
    begin
      R_CONSULTAS_REINCIDENTES:=0;
    end;
  if CLB_Privilegios.Checked[30]then
    begin
      R_CITAS:=1;
    end
  else
    begin
      R_CITAS:=0;
    end;
  if CLB_Privilegios.Checked[31]then
    begin
      R_PRODUCTIVIDAD_MEDICA:=1;
    end
  else
    begin
      R_PRODUCTIVIDAD_MEDICA:=0;
    end;
  if CLB_Privilegios.Checked[32]then
    begin
      PRINT_DATOS_PACIENTES:=1;
    end
  else
    begin
      PRINT_DATOS_PACIENTES:=0;
    end;
  if CLB_Privilegios.Checked[33]then
    begin
      AUTORIZAR:=1;
    end
  else
    begin
      AUTORIZAR:=0;
    end;
end;

procedure TFUsuarios.IBQr_UsuariosNOMBRESGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:=IBQr_UsuariosNOMBRES.AsString+' '+IBQr_UsuariosAPELLIDOS.AsString;
end;

procedure TFUsuarios.LlenarCapos;
begin
  E_Nombres.Text:=IBQr_UsuariosNOMBRES.AsString;
  E_Apellidos.Text:=IBQr_UsuariosAPELLIDOS.AsString;
  E_Cedula.Text:=IBQr_UsuariosCEDULA.AsString;
  E_NombreUsuario.Text:=IBQr_UsuariosNOMBRE_USUARIO.AsString;
  ME_ClaveUsuario.Text:=IBQr_UsuariosCLAVE_USUARIO.AsString;
  if IBQr_UsuariosNOMBRE_USUARIO.AsString = 'admin' then
    begin
      E_NombreUsuario.Enabled:=False;
      CLB_Privilegios.Enabled:=False;
      SPB_SeleccionarTodo.Enabled:=False;
      SPB_2.Enabled:=False;
    end
  else
    begin
      E_NombreUsuario.Enabled:=True;
      CLB_Privilegios.Enabled:=True;
      SPB_SeleccionarTodo.Enabled:=True;
      SPB_2.Enabled:=True;
    end;
  if IBQr_PrivilegiosC_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[0]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[0]:=False;
    end;
  if IBQr_PrivilegiosM_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[1]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[1]:=False;
    end;
  if IBQr_PrivilegiosE_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[2]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[2]:=False;
    end;
  if IBQr_PrivilegiosC_CITA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[3]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[3]:=False;
    end;
  if IBQr_PrivilegiosM_CITA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[4]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[4]:=False;
    end;
  if IBQr_PrivilegiosE_CITA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[5]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[5]:=False;
    end;
  if IBQr_PrivilegiosC_DIAGNOSTICO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[6]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[6]:=False;
    end;
  if IBQr_PrivilegiosM_DIAGNOSTICO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[7]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[7]:=False;
    end;
  if IBQr_PrivilegiosE_DIAGNOSTICO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[8]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[8]:=False;
    end;

  if IBQr_PrivilegiosC_DIAGNOSTICO_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[9]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[9]:=False;
    end;

  if IBQr_PrivilegiosM_DIAGNOSTICO_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[10]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[10]:=False;
    end;

  if IBQr_PrivilegiosE_DIAGNOSTICO_PACIENTE.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[11]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[11]:=False;
    end;

  if IBQr_PrivilegiosC_ARS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[12]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[12]:=False;
    end;
  if IBQr_PrivilegiosM_ARS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[13]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[13]:=False;
    end;
  if IBQr_PrivilegiosE_ARS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[14]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[14]:=False;
    end;
  if IBQr_PrivilegiosC_MEDICO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[15]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[15]:=False;
    end;

  if IBQr_PrivilegiosM_MEIDCO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[16]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[16]:=False;
    end;

  if IBQr_PrivilegiosE_MEDICO.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[17]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[17]:=False;
    end;

  if IBQr_PrivilegiosC_ESPEC_MEDICA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[18]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[18]:=False;
    end;
  if IBQr_PrivilegiosM_ESPEC_MEDICA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[19]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[19]:=False;
    end;
  if IBQr_PrivilegiosE_ESPEC_MEDICA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[20]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[20]:=False;
    end;
  if IBQr_PrivilegiosR_RESERVADOS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[21]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[21]:=False;
    end;

  if IBQr_PrivilegiosR_LISTA_PACIENTES.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[22]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[22]:=False;
    end;

  if IBQr_PrivilegiosR_LISTA_PACIENTES.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[23]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[23]:=False;
    end;

  if IBQr_PrivilegiosR_PACIENTES_NACIONALIDAD.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[24]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[24]:=False;
    end;
  if IBQr_PrivilegiosR_CONSULTAS_MEDICAS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[25]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[25]:=False;
    end;

  if IBQr_PrivilegiosR_CONSULTAS_DIAGNOSTICOS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[26]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[26]:=False;
    end;

  if IBQr_PrivilegiosR_CONSULTAS_NACIONALIDAD.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[27]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[27]:=False;
    end;
  if IBQr_PrivilegiosR_CONSULTAS_ASEGURDOS.AsInteger = 1then
    begin
      CLB_Privilegios.Checked[28]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[28]:=False;
    end;
  if IBQr_PrivilegiosR_CONSULTAS_REINCIDENTES.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[29]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[29]:=False;
    end;
  if IBQr_PrivilegiosR_CITAS.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[30]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[30]:=False;
    end;
  if IBQr_PrivilegiosR_PRODUCTIVIDAD_MEDICA.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[31]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[31]:=False;
    end;
  if IBQr_PrivilegiosPRINT_DATOS_PACIENTES.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[32]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[32]:=False;
    end;
  if IBQr_PrivilegiosAUTORIZAR.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[33]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[33]:=False;
    end;
 { if IBQr_PrivilegiosAUTORIZAR.AsInteger = 1 then
    begin
      CLB_Privilegios.Checked[34]:=True;
    end
  else
    begin
      CLB_Privilegios.Checked[34]:=False;
    end;   }
end;

procedure TFUsuarios.BuscarPrivilegio(IdUsuario: Integer);
begin
  with IBQr_Privilegios do
    begin
      Close;
      ParamByName('p0').Value:=IdUsuario;
      Open;
    end;
end;

procedure TFUsuarios.SPB_SeleccionarTodoClick(Sender: TObject);
  var
    I: Integer;
begin
  for I := 0 to CLB_Privilegios.Items.Count - 1 do
  begin
    CLB_Privilegios.Checked[I]:=True;
  end;
end;

procedure TFUsuarios.SPB_2Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to CLB_Privilegios.Items.Count - 1 do
    begin
      CLB_Privilegios.Checked[I]:=False;
    end;
end;

procedure TFUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TFUsuarios.MM_ModificarClick(Sender: TObject);
begin
  if IBQr_Usuarios.Active = True then
    begin
      if IBQr_Usuarios.RecordCount > 0 then
        begin
          Id_Usuario:=IBQr_UsuariosIDUSUARIO.AsInteger;
          ModificarUsu:=True;
          Caption:='Modificar Usuario.';
          BT_Aceptar.Caption:='&Modificar';
          BuscarPrivilegio(Id_Usuario);
          LlenarCapos;
        end
      else
        begin

        end;
    end;
end;

procedure TFUsuarios.MM_EliminarClick(Sender: TObject);
begin
  if IBQr_UsuariosNOMBRE_USUARIO.AsString <> 'admin' then
    begin
      if FPrincipal.MS_Personalizado.MessageDlg('Se propone eliminar el usuario: '+IBQr_UsuariosNOMBRES.AsString+' '+IBQr_UsuariosAPELLIDOS.AsString+'.'+
      #13+#13+'Confirme desea eliminar el usuario?', mtConfirmation, [mbYes,mbNo], 0) = IDYES then
        begin
          Id_Usuario:=IBQr_UsuariosIDUSUARIO.AsInteger;
          EliminarUsuario(Id_Usuario, 1);
          EliminarPrivilegio(Id_Usuario);
          Id_Usuario:=0;
          BuscarUsuario('', BT_Aceptar, 0);
        end;
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Imposible eliminar la cuenta de Administrador del Sistema.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFUsuarios.BT_CancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFUsuarios.APPEVENT_MedicosMessage(var Msg: tagMSG;
  var Handled: Boolean);
begin
  with Msg do
    if (message = WM_KEYDOWN) and (wParam = VK_RETURN) and
    ((ActiveControl is TCustomEdit)or(ActiveControl is TbsSkinCheckRadioBox)or(ActiveControl is TbsSkinButton)) then
      begin
        SelectNext(ActiveControl, true, true);
        Handled := True;
      end;
end;

end.
