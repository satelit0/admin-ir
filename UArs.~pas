unit UArs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, BusinessSkinForm, bsSkinCtrls,
  bsSkinGrids, bsDBGrids, bsdbctrls, DB, IBCustomDataSet, IBQuery, JvBalloonHint,
  Menus, bsSkinMenus, JvCombobox;

type
  TFArs = class(TForm)
    BSF_F1: TbsBusinessSkinForm;
    E_NombreARS: TbsSkinEdit;
    GB_1: TbsSkinGroupBox;
    NV_1: TbsSkinDBNavigator;
    DBG_1: TbsSkinDBGrid;
    SCRB_1: TbsSkinScrollBar;
    DS_1: TDataSource;
    BT_Aceptar: TbsSkinButton;
    BT_Cancelar: TbsSkinButton;
    BT_Buscar: TbsSkinButton;
    IBQr_BuscaARS: TIBQuery;
    IBQr_BuscaARSIDARS: TIntegerField;
    IBQr_BuscaARSNOMBRE_ARS: TIBStringField;
    PM_1: TbsSkinPopupMenu;
    MM_Seleccionar: TMenuItem;
    MM_N1: TMenuItem;
    MM_Modificar1: TMenuItem;
    MM_N2: TMenuItem;
    MM_Eliminar1: TMenuItem;
    BT_Seleccionar: TbsSkinButton;
    LB_1: TLabel;
    procedure BT_AceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_BuscarClick(Sender: TObject);
    procedure E_NombreARSChange(Sender: TObject);
    procedure DBG_1DblClick(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BT_CancelarClick(Sender: TObject);
    procedure E_NombreARSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure E_NombreARSKeyPress(Sender: TObject; var Key: Char);
    procedure BT_SeleccionarClick(Sender: TObject);
    procedure MM_SeleccionarClick(Sender: TObject);
    procedure MM_Eliminar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    //procedure ActuralizaNSS_EliminarARS(ID_ARS: Integer);
    procedure InsertaARS(NombreARS: string; Mensaje: Integer);
    procedure ModificaARS(NombreARS: string;Id_ARS, Mensaje: Integer);
    procedure EliminaARS(Id_ARS, Mensaje: Integer);
    function ValidaCompos:Boolean;
    function ValidadExisteARS(NombreARS: string; Modificar: Boolean; Id_ARS: Integer):Boolean;

  public
    { Public declarations }
    procedure LlenarComboBox(Combo_box: TJvComboBox);
    procedure InsertaNSS(NumeroSS: string; Id_NSS, Id_ARS, Mensaje: Integer);
    procedure ModificaNSS(NumeroSS: string; Id_NSS, Id_ARS, Mensaje: Integer);
    procedure EliminaNSS(Id_NSS, Mensaje: Integer);
    //function GenerarID_NSS:Integer;
    procedure LimpiarCampos;
    function GetIdARS_NombreARS(NombreARS: string):Integer;
    function ObtenerNombreARS_IDARS(Id_ARS: Integer):string;
    //function ObtenernoNSS_IDNSS(ID_NSS: Integer):string;
    //function ObtenerIDARS_NSS(NSS: string):Integer;
    function ObtenerIDNS_NSS(NSS: string):Integer;
    procedure BuscaARS(NombreARS: String; Mensaje: Integer);
  end;

var
  FArs: TFArs;
  IdARS: Integer;
  ModificarARS: Boolean;
  Seleccionar: string; //Determina a que form sele enviara el campo seleccinado
implementation

uses UPrincipal, UContenedorDatos;

{$R *.dfm}

{ TFArs }

procedure TFArs.BuscaARS(NombreARS: String; Mensaje: Integer);
begin
  with IBQr_BuscaARS do
    begin
      Close;
      ParamByName('p0').Value:='%'+Trim(NombreARS)+'%';
      Open;
    end;
  if IBQr_BuscaARS.RecordCount < 1 then
    begin
      if Mensaje = 1 then
        begin
          FPrincipal.JvBalloonHint1.ActivateHint(E_NombreARS, 'No se hallarón datos.', ikInformation, 'Información', 5000);
        end;
    end;
end;

procedure TFArs.EliminaARS(Id_ARS, Mensaje: Integer);
var
  IBQr_ARS: TIBQuery;
begin
  if(E_ARS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      IBQr_ARS:=TIBQuery.Create(Self);
      with IBQr_ARS do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('delete from ARS where IDARS = :p0');
          ParamByName('p0').Value:=Id_ARS;
          //Transaction.StartTransaction;
          try
            ExecSQL;
            Transaction.Commit;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Dato eliminado con éxito.', mtInformation, [mbOK], 0);
          except
            Transaction.Rollback;
            if Mensaje = 1 then
              FPrincipal.MS_Personalizado.MessageDlg('Se produjo un error al intentar eliminar la ARS.', mtInformation, [mbOK], 0);
          end;
        end;
      //ActuralizaNSS_EliminarARS(Id_ARS);  
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFArs.InsertaARS(NombreARS: string; Mensaje: Integer);
var
  IBQr_ARS: TIBQuery;
begin
  if(C_ARS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      IBQr_ARS:=TIBQuery.Create(Self);
      with IBQr_ARS do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('insert into ARS(NOMBRE_ARS)');
          SQL.Add('values(:p0)');
          ParamByName('p0').Value:=NombreARS;
          //ParamByName('p1').Value:=NSS;
          ExecSQL;
          Free;
        end;
      if Mensaje = 1 then
        FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con éxito.', mtInformation, [mbOK], 0);
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

procedure TFArs.ModificaARS(NombreARS: string; Id_ARS,
  Mensaje: Integer);
var
  IBQr_ARS: TIBQuery;
begin
  if(M_ARS_USU = 1)or(Autorizado)then
    begin
      Autorizado:=False;
      IBQr_ARS:=TIBQuery.Create(Self);
      with IBQr_ARS do
        begin
          Close;
          Database:=DTM_DATOS.IDB_BaseDatos;
          SQL.Clear;
          SQL.Add('update ARS set NOMBRE_ARS = :p0');
          SQL.Add('where IDARS = :p2');
          ParamByName('p0').Value:=NombreARS;
          //ParamByName('p1').Value:=NSS;
          ParamByName('p2').Value:=Id_ARS;
          ExecSQL;
          Free;
        end;
      if Mensaje = 1 then
        FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation, [mbOK], 0);
    end
  else
    begin
      FPrincipal.MS_Personalizado.MessageDlg('Acceso denegado.'+#13+#13+' Usted no tiene acceso a esta opción.', mtInformation, [mbOK], 0);
    end;
end;

function TFArs.ValidaCompos: Boolean;
begin
  if Trim(E_NombreARS.Text) = '' then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_NombreARS, 'Ingrese un nombre de ARS para continuar.', ikError, 'Campo Vacio.', 5000);
    end
  else
 { if Trim(E_NSS.Text) = '' then
    begin
      Result:=False;
      FPrincipal.JvBalloonHint1.ActivateHint(E_NSS, 'Ingrese un el NSS para continuar.', ikError, 'Campo Vacio.', 5000);
    end
  else  }
    begin
      Result:=True;
    end;
end;

function TFArs.ValidadExisteARS(NombreARS: string; Modificar: Boolean;
  Id_ARS: Integer): Boolean;
var
  IBQr_ARS:TIBQuery;
  Id_ARS_Validar: Integer;
begin
  IBQr_ARS:=TIBQuery.Create(Self);
  with IBQr_ARS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDARS, NOMBRE_ARS from ARS where NOMBRE_ARS = :p0');
      ParamByName('p0').Value:=NombreARS;
      Open;
    end;
  Id_ARS_Validar:=IBQr_ARS.FieldByName('IDARS').AsInteger;
  if IBQr_ARS.RecordCount > 0then
    begin
      if ((Modificar = True)and(Id_ARS_Validar <> Id_ARS))or((Modificar = False)) then
        begin
          Result:=False;
          FPrincipal.JvBalloonHint1.ActivateHint(E_NombreARS, 'La ARS ingresa ya existe.', ikError, 'Error ARS existe.', 5000);
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
end;



procedure TFArs.BT_AceptarClick(Sender: TObject);
begin
  if ValidaCompos then
    begin
      if ValidadExisteARS(E_NombreARS.Text, ModificarARS, IdARS) then
        begin
          if not ModificarARS then
            begin
              InsertaARS(E_NombreARS.Text, 1);
            end
          else
          if ModificarARS then
            begin
              ModificaARS(E_NombreARS.Text, IdARS, 1);
              BT_Aceptar.Caption:='&Guardar';
              Caption:='Manejo de ARS.';
              ModificarARS:=False;
              MM_Eliminar1.Enabled:=True;
            end;
          IdARS:=0;
          BuscaARS('', 0);
          LimpiarCampos;
          E_NombreARS.SetFocus;
        end;
    end;
end;

procedure TFArs.FormShow(Sender: TObject);
begin
  BuscaARS('', 0);
  E_NombreARS.SetFocus;
end;

function TFArs.GetIdARS_NombreARS(NombreARS: string): Integer;
var
  IBQr_ARS:TIBQuery;
begin
  IBQr_ARS:=TIBQuery.Create(Self);
  with IBQr_ARS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDARS from ARS where NOMBRE_ARS = :p0');
      ParamByName('p0').Value:=NombreARS;
      Open;
    end;
 Result:=IBQr_ARS.FieldByName('IDARS').AsInteger;
 IBQr_ARS.Free;
end;

function TFArs.ObtenerNombreARS_IDARS(Id_ARS: Integer): string;
var
  IBQr_ARS:TIBQuery;
begin
  IBQr_ARS:=TIBQuery.Create(Self);
  with IBQr_ARS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_ARS from ARS where IDARS = :p0');
      ParamByName('p0').Value:=Id_ARS;
      Open;
    end;
 Result:=IBQr_ARS.FieldByName('NOMBRE_ARS').AsString;
 IBQr_ARS.Free;
end;

procedure TFArs.BT_BuscarClick(Sender: TObject);
begin
  BuscaARS(E_NombreARS.Text, 1);
end;

procedure TFArs.E_NombreARSChange(Sender: TObject);
begin
  //BuscaARS(E_NombreARS.Text, 0);
end;

procedure TFArs.DBG_1DblClick(Sender: TObject);
begin
  if Seleccionar = 'P' then
    begin
      ModificarARS:=False;
      MM_SeleccionarClick(Self);
    end
  else
  if Seleccionar = 'S' then
    begin
      MM_Modificar1Click(Self);
    end;
  //Seleccionar:='S';
end;

procedure TFArs.MM_Modificar1Click(Sender: TObject);
begin
  E_NombreARS.Text:=IBQr_BuscaARSNOMBRE_ARS.AsString;
  IdARS:=IBQr_BuscaARSIDARS.AsInteger;
  ModificarARS:=True;
  Caption:='Modificar ARS.';
  BT_Aceptar.Caption:='&Modificar';
  MM_Eliminar1.Enabled:=False;
end;

procedure TFArs.LimpiarCampos;
begin
  E_NombreARS.Clear;
end;

procedure TFArs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TFArs.BT_CancelarClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TFArs.E_NombreARSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_UP then
    BT_Aceptar.SetFocus
 else
 if Key = VK_LEFT then
  BT_Buscar.SetFocus;

end;

procedure TFArs.E_NombreARSKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BT_Buscar.SetFocus;
end;

procedure TFArs.BT_SeleccionarClick(Sender: TObject);
begin
  MM_SeleccionarClick(Self);
end;

procedure TFArs.MM_SeleccionarClick(Sender: TObject);
begin
  //_FNuevoPaciente.ME_NumeroSeguroSocial.Text:=IBQr_BuscaARSNSS.AsString;
  _FNuevoPaciente.E_ARS.Text:=IBQr_BuscaARSNOMBRE_ARS.AsString;
  Self.Close;
end;

function TFArs.ObtenerIDNS_NSS(NSS: string): Integer;
var
  IBQr_ARS:TIBQuery;
begin
  IBQr_ARS:=TIBQuery.Create(Self);
  with IBQr_ARS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select IDNSS from NSS where NUMERO_SS = :p0');
      ParamByName('p0').Value:=NSS;
      Open;
    end;
 Result:=IBQr_ARS.FieldByName('IDNSS').AsInteger;
 IBQr_ARS.Free;
end;

procedure TFArs.EliminaNSS(Id_NSS, Mensaje: Integer);
var
  IBQr_NSS: TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('delete from NSS where IDNSS = :p0');
      ParamByName('p0').Value:=Id_NSS;
      ExecSQL;
      Free;
    end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con éxito.', mtInformation, [mbOK], 0);   
end;

procedure TFArs.InsertaNSS(NumeroSS: string; Id_NSS, Id_ARS, Mensaje: Integer);
var
  IBQr_NSS: TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('insert into NSS(IDNSS, NUMERO_SS, ID_ARS)');
      SQL.Add('values(:p0, :p1, :p2)');
      ParamByName('p0').Value:=Id_NSS;
      ParamByName('p1').Value:=NumeroSS;
      ParamByName('p2').Value:=Id_ARS;
      ExecSQL;
      Free;
    end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con éxito.', mtInformation, [mbOK], 0);

end;

procedure TFArs.ModificaNSS(NumeroSS: string; Id_NSS, Id_ARS, Mensaje: Integer);
var
  IBQr_NSS: TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('update NSS set NUMERO_SS = :p0, ID_ARS = :p1');
      SQL.Add('where IDNSS = :p2');
      ParamByName('p0').Value:=NumeroSS;
      ParamByName('p1').Value:=Id_ARS;
      ParamByName('p2').Value:=Id_NSS;
      ExecSQL;
      Free;
    end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation, [mbOK], 0);
end;

{function TFArs.GenerarID_NSS: Integer;
var
  IBQr_Gen_ID:TIBQuery;
begin
  IBQr_Gen_ID:=TIBQuery.Create(Self);
  with IBQr_Gen_ID do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select gen_id(GEN_NSS_ID, 1) as IDNSS_N from rdb$database');
      Open;
    end;
  Result:=IBQr_Gen_ID.FieldByName('IDNSS_N').AsInteger;
  IBQr_Gen_ID.Free;
end;                        }

{function TFArs.ObtenernoNSS_IDNSS(ID_NSS: Integer): string;
var
  IBQr_NSS:TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NUMERO_SS from NSS where IDNSS = :p0');
      ParamByName('p0').Value:=ID_NSS;
      Open;
    end;
 Result:=IBQr_NSS.FieldByName('NUMERO_SS').AsString;
 IBQr_NSS.Free;
end;                             }

{function TFArs.ObtenerIDARS_NSS(NSS: string): Integer;
var
  IBQr_NSS:TIBQuery;
begin
  IBQr_NSS:=TIBQuery.Create(Self);
  with IBQr_NSS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select ID_ARS from NSS where NUMERO_SS = :p0');
      ParamByName('p0').Value:=NSS;
      Open;
    end;
 Result:=IBQr_NSS.FieldByName('ID_ARS').AsInteger;
 IBQr_NSS.Free;

end;}

procedure TFArs.LlenarComboBox(Combo_box: TJvComboBox);
var
  IBQr_ARS: TIBQuery;
begin
  IBQr_ARS:=TIBQuery.Create(Self);
  with IBQr_ARS do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select NOMBRE_ARS from ARS order by NOMBRE_ARS');
      Open;
    end;
  IBQr_ARS.First;
  Combo_box.Items.Clear;
  Combo_box.Items.Add('Selecione ARS');
  while not IBQr_ARS.Eof do
    begin
      Combo_box.Items.Add(IBQr_ARS.FieldByName('NOMBRE_ARS').AsString);
      IBQr_ARS.Next;
    end;
  Combo_box.ItemIndex:=0;
  IBQr_ARS.Free;
end;

{procedure TFArs.ActuralizaNSS_EliminarARS(ID_ARS: Integer);
var
  IBQr_NSS: TIBQuery;
begin
  try
    IBQr_NSS:=TIBQuery.Create(Self);
    with IBQr_NSS do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update NSS set ID_ARS = 0 where ID_ARS = :p0');
        ParamByName('p0').Value:=ID_ARS;
        ExecSQL;
        Free;
      end;
  except
    IBQr_NSS.Free;
  end;
end;}

procedure TFArs.MM_Eliminar1Click(Sender: TObject);
var
  IBQr_Nss:TIBQuery;
  Id_ARS_Eliminar:Integer;
  TotalNss:Integer;
begin
  Id_ARS_Eliminar:=IBQr_BuscaARSIDARS.AsInteger;
  IBQr_Nss:=TIBQuery.Create(Self);
  try
    with IBQr_Nss do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select  count(n.idnss) total from nss n where n.id_ars = :idars');
        Params[0].Value:=Id_ARS_Eliminar;
        Open;
      end;
    TotalNss:=IBQr_Nss.fieldByName('total').AsInteger;
    if (TotalNss > 0) then
      begin
        FPrincipal.MS_Personalizado.MessageDlg('Para eliminar esta ARS deberá eliminar'+#13+
        'el vinculo que existe con: '+IntToStr(TotalNss)+' Número(s) de Seguro Social.', mtInformation, [mbOK], 0);
          { begin
              with IBQr_Nss do
                begin
                  Close;
                  Database:=DTM_DATOS.IDB_BaseDatos;
                  SQL.Clear;
                  SQL.Add('update nss set id_ars = :p0 where (id_ars = :idars)');
                  Params[0].Value:=0;
                  Params[1].Value:=Id_ARS_Eliminar;
                  //Transaction.StartTransaction;
                  try
                    ExecSQL;
                    Transaction.Commit;
                    EliminaARS(Id_ARS_Eliminar, 1);
                  except
                    Transaction.Rollback;
                    FPrincipal.MS_Personalizado.MessageDlg('Se ha producido un error al intentar eliminar el vinculo.', mtInformation, [mbOK], 0);
                  end;
                end;
           end;   }
      end
    else
    if FPrincipal.MS_Personalizado.MessageDlg('Se propone eliminar la ARS: '+IBQr_BuscaARSNOMBRE_ARS.AsString+#13+#13+
    'Confirme que desea eliminar la ARS?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
      begin
        EliminaARS(Id_ARS_Eliminar, 1);
        BuscaARS('', 0);
      end;
  finally
    IBQr_Nss.Free;
  end;
end;

procedure TFArs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModificarARS then
    if FPrincipal.MS_Personalizado.MessageDlg('Desea salir sin guardar los cambios?', mtConfirmation, [mbYes, mbNo], 0) = idyes then
      Action:=caFree
    else
      Action:=caNone
  else
    Action:=caFree;
  FPrincipal.esCadINI('COL_G', 'ARS0', IntToStr(DBG_1.Columns[0].Width));
end;

procedure TFArs.FormCreate(Sender: TObject);
begin
  DBG_1.Columns[0].Width:= StrToInt(FPrincipal.leCadINI('COL_G', 'ARS','387'));
end;

end.
