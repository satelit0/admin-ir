unit UEstanteria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, StdCtrls, bsSkinBoxCtrls, Mask, bsSkinCtrls,
  bsdbctrls, bsSkinGrids, bsDBGrids, ExtCtrls, DBCtrls, DB,
  IBCustomDataSet, IBQuery, JvComponentBase, JvBalloonHint, Menus,
  bsSkinMenus;

type
  TFEstanteria = class(TForm)
    E_NombreEstante: TbsSkinEdit;
    M_DescripcionSeccion: TbsSkinMemo;
    BBT_Guardar: TbsSkinButton;
    BBT_Limpiar: TbsSkinButton;
    BBT_Salir: TbsSkinButton;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    bsSkinPanel1: TbsSkinPanel;
    LB_3: TbsSkinStdLabel;
    DBG_Estantes: TbsSkinDBGrid;
    NV_1: TbsSkinDBNavigator;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinPanel2: TbsSkinPanel;
    DBG_Secciones: TbsSkinDBGrid;
    bsSkinDBNavigator1: TbsSkinDBNavigator;
    bsSkinScrollBar2: TbsSkinScrollBar;
    LB_4: TbsSkinStdLabel;
    E_NombreSeccion: TbsSkinEdit;
    LB_5: TbsSkinStdLabel;
    LB_6: TbsSkinStdLabel;
    BBT_GuardarSecciones: TbsSkinButton;
    DBL_Seleccion: TDBText;
    IBQr_Estates: TIBQuery;
    JVBH_1: TJvBalloonHint;
    IBQr_EstatesCOD_STOCK: TIntegerField;
    IBQr_EstatesNOMBRE_ESTANTE: TIBStringField;
    IBQr_EstatesDESCRIPCION_ESTANTE: TIBStringField;
    IBQr_Secciones: TIBQuery;
    IBQr_SeccionesIDSECCION: TIntegerField;
    IBQr_SeccionesCOD_STOCK: TIntegerField;
    IBQr_SeccionesSECCION: TIBStringField;
    IBQr_SeccionesCAP_MAX: TIntegerField;
    DS_Estantes: TDataSource;
    DS_Secciones: TDataSource;
    BBT_Buscar: TbsSkinButton;
    BSSF_1: TbsBusinessSkinForm;
    PM_2: TbsSkinPopupMenu;
    PM_1: TbsSkinPopupMenu;
    MM_ModificarEstante: TMenuItem;
    N1: TMenuItem;
    MM_EliminarEstante: TMenuItem;
    MM_ModificarSeccion: TMenuItem;
    N2: TMenuItem;
    MM_EliminarSeccion: TMenuItem;
    BBT_Cancelar: TbsSkinButton;
    LB_7: TbsSkinStdLabel;
    BBT_CancelarModSeccion: TbsSkinButton;
    SE_Can_Max: TbsSkinSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure BBT_GuardarClick(Sender: TObject);
    procedure BBT_BuscarClick(Sender: TObject);
    procedure E_NombreEstanteChange(Sender: TObject);
    procedure BBT_LimpiarClick(Sender: TObject);
    procedure BBT_SalirClick(Sender: TObject);
    procedure BBT_GuardarSeccionesClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IBQr_EstatesAfterOpen(DataSet: TDataSet);
    procedure IBQr_EstatesAfterScroll(DataSet: TDataSet);
    procedure DBG_EstantesCellClick(Column: TbsColumn);
    procedure DBG_SeccionesCellClick(Column: TbsColumn);
    procedure IBQr_SeccionesAfterOpen(DataSet: TDataSet);
    procedure MM_ModificarEstanteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MM_EliminarEstanteClick(Sender: TObject);
    procedure MM_ModificarSeccionClick(Sender: TObject);
    procedure MM_EliminarSeccionClick(Sender: TObject);
    procedure IBQr_SeccionesAfterScroll(DataSet: TDataSet);
    procedure BBT_CancelarModSeccionClick(Sender: TObject);
    procedure BBT_CancelarClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaExistEstantes(Id_Estante:Integer; NombreEstante:string; Modifar:Boolean):Boolean;
    function ValidaExistSeccion(Id_Seccion, Id_Estante:Integer; NombreSeccion:string; Modifar:Boolean):Boolean;

    procedure InsertaEstante(NombEstante, Descripcion:string; Mensaje:Integer);
    procedure ModificaEstante(Cod_Stock:Integer; NombEstante, Descripcion:string; Mensaje:Integer);
    procedure EliminaEstante(Cod_Stock, Mensaje:Integer);

    procedure InsertaSeccion(Cod_Stock:Integer; NombreSeccion:string; CapMax, Mensaje:Integer);
    procedure ModificaSeccion(Id_Seccion, Cod_Stock:Integer; NombreSeccion:string; CapMax, Mensaje:Integer);
    procedure EliminaSeccion(Id_Seccion, Mensaje:Integer);
    procedure DeshacerModSecc;
    procedure DeshacerModEst;
  public
    { Public declarations }


    procedure BuscaEstante(NombreEstante:string; Mensaje, BusquedaGenral:Integer); // mensaje en 0 omite toda alerta 1 las activa, Busqueda general activa la busquda sin excepciones.
    procedure BuscaSecciones(Cod_Stock, Mensaje:Integer);
    function GetCodigoStock(const NombreEstante:string):Integer;
    function GetCapMaxSecc(const Id_Secc:Integer):Integer;
    function GetIdUbicacionExp_IdPat(const Id_Pat:Integer):Integer;
    //function GetCalEspSeccUsa():Integer;
    function GetIdSeccion(const NombreSeccion:string):Integer;
    function ValidaNumeroSeccUsaExiste(const Cod_Stock, Id_Seccion, Orden_Seccion:Integer):Boolean;
    function ValidaPatExisteUbExp(Id_Pat:Integer):Boolean;
    function ValidaUbicacionExp(const Id_Pact, Cod_Stock, Id_Secc, Orden_Secc:Integer; Modifica:Boolean):Boolean;
    function CalculaEspacioSecc(var Cod_Stock, Id_Secc:Integer):Integer;
    function GetNOrdSecc(Cod_Stock, Id_Secc, Numero_Orden:Integer; Continuar:Boolean):Integer;
  end;

var
  FEstanteria: TFEstanteria;
  IdEstante, IdSeccion:Integer; //Captura el valor del estante, seccion.
  ModificarEst, ModificarSecc:Boolean;
  Valor:Integer=0;
  Continuar:Boolean=false;

implementation

uses UPrincipal, UContenedorDatos;

{$R *.dfm}

{ TFEstanteria }

procedure TFEstanteria.BuscaEstante(NombreEstante: string;
  Mensaje, BusquedaGenral: Integer);
begin
  if (Trim(E_NombreEstante.Text)<>'')or(BusquedaGenral = 1)then
    begin
      with IBQr_Estates do
        begin
          Close;
          Params[0].Value:=NombreEstante+'%';
          Open;
        end;
      if IBQr_Estates.RecordCount < 1 then
        if Mensaje = 1 then
          JVBH_1.ActivateHint(E_NombreEstante,'No se hallaron datos.',  ikInformation, 'Información', 5000);
    end
  else
    begin
      if Mensaje = 1 then
      JVBH_1.ActivateHint(E_NombreEstante,'Ingrese un nombre para realizar la búsqueda.',  ikInformation, 'Información', 5000);
    end;
end;

procedure TFEstanteria.EliminaEstante(Cod_Stock, Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('delete from estanteria');
        SQL.Add('where cod_stock = :cod_stock');
        Params[0].Value:=Cod_Stock;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con éxito.', mtInformation, [mbOK], 0);  
end;

procedure TFEstanteria.EliminaSeccion(Id_Seccion, Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('delete from secciones_estanteria');
        SQL.Add('where idseccion = :p0');
        Params[0].Value:=Id_Seccion;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos eliminados con éxito.', mtInformation, [mbOK], 0);
end;

procedure TFEstanteria.InsertaEstante(NombEstante, Descripcion: string;
  Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into estanteria (nombre_estante, descripcion_estante)');
        SQL.Add('values (:nombre_estante, :descripcion_estante)');
        Params[0].Value:=NombEstante;
        Params[1].Value:=Descripcion;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos guardados con éxito.', mtInformation, [mbOK], 0);
end;

procedure TFEstanteria.InsertaSeccion(Cod_Stock: Integer;
  NombreSeccion: string; CapMax, Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into secciones_estanteria (cod_stock, seccion, cap_max)');
        SQL.Add('values (:cod_stock, :seccion, :cap_max)');
        Params[0].Value:=Cod_Stock;
        Params[1].Value:=NombreSeccion;
        Params[2].Value:=CapMax;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation, [mbOK], 0);  
end;

procedure TFEstanteria.ModificaEstante(Cod_Stock:Integer; NombEstante, Descripcion: string;
  Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update estanteria');
        SQL.Add('set nombre_estante = :nombre_estante,');
        SQL.Add('descripcion_estante = :descripcion_estante');
        SQL.Add('where (cod_stock = :cod_stock)');
        Params[0].Value:=NombEstante;
        Params[1].Value:=Descripcion;
        Params[2].Value:=Cod_Stock;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation, [mbOK], 0);
end;

procedure TFEstanteria.ModificaSeccion(Id_Seccion, Cod_Stock: Integer;
  NombreSeccion: string; CapMax, Mensaje: Integer);
var
  IBQr_Post:TIBQuery;
begin
  IBQr_Post:=TIBQuery.Create(Self);
  try
    with IBQr_Post do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update secciones_estanteria');
        SQL.Add('set cod_stock = :cod_stock, seccion = :seccion, cap_max = :cap_max');
        SQL.Add('where (idseccion = :idseccion)');
        Params[0].Value:=Cod_Stock;
        Params[1].Value:=NombreSeccion;
        Params[2].Value:=CapMax;
        Params[3].Value:=Id_Seccion;
        ExecSQL;
      end;
  finally
    IBQr_Post.Free;
  end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Datos modificados con éxito.', mtInformation, [mbOK], 0);
end;

function TFEstanteria.ValidaExistEstantes(Id_Estante: Integer; NombreEstante:string;
  Modifar: Boolean): Boolean;
var
  IBQr_Exist:TIBQuery;
  NombEstante:String;
  CantCampos, CodigoStock:Integer;
begin
  //CantCampos:=0;
//  CodigoStock:=-1;
  Result:=False;
  IBQr_Exist:=TIBQuery.Create(Self);
  try
    IBQr_Exist.Close;
    IBQr_Exist.Database:=DTM_DATOS.IDB_BaseDatos;
    IBQr_Exist.SQL.Clear;
    IBQr_Exist.SQL.Add('select NOMBRE_ESTANTE, COD_STOCK from ESTANTERIA where NOMBRE_ESTANTE = :p0');
    IBQr_Exist.Params[0].Value:=NombreEstante;
    IBQr_Exist.Open;
    NombEstante:=IBQr_Exist.fieldbyname('NOMBRE_ESTANTE').AsString;
    CodigoStock:=IBQr_Exist.fieldbyname('COD_STOCK').AsInteger;
    CantCampos:=IBQr_Exist.RecordCount;
    IBQr_Exist.Close;
  finally
    IBQr_Exist.Free;
  end;
  if(not Modifar)then
    begin
      if(CantCampos > 0)then
        begin
          Result:=True;
          JVBH_1.ActivateHint(E_NombreEstante, 'El nombre de estante ingresa ya éxiste.', ikInformation, 'Nombre repetido', 5000 );
        end
      else
        begin
          Result:=False;
        end;
    end
  else
  if(Modifar)then
    begin
      if(CodigoStock = Id_Estante)or(CantCampos < 1) then
        begin
          Result:=False;
        end
      else
        begin
          Result:=True;
          JVBH_1.ActivateHint(E_NombreEstante, 'El nombre de estante ingresa ya éxiste.', ikInformation, 'Nombre repetido', 5000 );
        end;
    end;
end;

function TFEstanteria.ValidaExistSeccion(Id_Seccion, Id_Estante: Integer;
  NombreSeccion: string; Modifar: Boolean): Boolean;
var
  IBQr_Exist:TIBQuery;
  NombSeccion:String;
  CantCampos, IdSecc:Integer;
begin
  Result:=False;
 // CantCampos:=0;                                  
 // IdSecc:=-1;
  IBQr_Exist:=TIBQuery.Create(Self);
  try
    IBQr_Exist.Close;
    IBQr_Exist.Database:=DTM_DATOS.IDB_BaseDatos;
    IBQr_Exist.SQL.Clear;
    IBQr_Exist.SQL.Add('select SECCION, IDSECCION, COD_STOCK');
    IBQr_Exist.SQL.Add('from SECCIONES_ESTANTERIA where (SECCION = :p0)and(COD_STOCK = :p1)');
    IBQr_Exist.Params[0].Value:=NombreSeccion;
    IBQr_Exist.Params[1].Value:=Id_Estante;
    IBQr_Exist.Open;
    NombSeccion:=IBQr_Exist.fieldbyname('SECCION').AsString;
    IdSecc:=IBQr_Exist.fieldbyname('IDSECCION').AsInteger;
    //Cod_Stock_Secc:=IBQr_Exist.fieldbyname('COD_STOCK').AsInteger;
    CantCampos:=IBQr_Exist.RecordCount;
    IBQr_Exist.Close;
  finally
    IBQr_Exist.Free;
  end;
  if(not Modifar)then
    begin
      if(CantCampos > 0){and(Id_Estante=Cod_Stock_Secc)}then
        begin
          Result:=True;
          JVBH_1.ActivateHint(E_NombreSeccion, 'El nombre de sección ingresado ya éxiste en este estante.', ikInformation, 'Nombre repetido', 5000 );
        end
      else
        begin
          Result:=False;
        end;
    end
  else
  if(Modifar)then
    begin
      if(IdSecc = Id_Seccion)or(CantCampos = 0){and(Id_Estante = Cod_Stock_Secc)} then
        begin
          Result:=False;
        end
      else
        begin
          Result:=True;
          JVBH_1.ActivateHint(E_NombreSeccion, 'El nombre de sección ingresado ya éxiste en este estante.', ikInformation, 'Nombre repetido', 5000 );
        end;
    end;
end;

procedure TFEstanteria.FormShow(Sender: TObject);
begin
  BuscaEstante('', 0, 1);
end;

procedure TFEstanteria.BuscaSecciones(Cod_Stock, Mensaje: Integer);
begin
  with IBQr_Secciones do
    begin
      Close;
      Params[0].Value:=Cod_Stock;
      Open;
    end;
  if IBQr_Secciones.RecordCount = 0 then
    begin
      IBQr_Secciones.Close;
      if Mensaje = 1 then
        JVBH_1.ActivateHint(E_NombreEstante,'No se hallaron datos.',  ikInformation, 'Información', 5000);
    end;
end;

procedure TFEstanteria.BBT_GuardarClick(Sender: TObject);
begin
  if Trim(E_NombreEstante.Text)=''then
    begin
      JVBH_1.ActivateHint(E_NombreEstante, 'Ingrese un nombre para el estante.', ikInformation, 'Información', 5000);
      E_NombreEstante.SetFocus;
    end
  else
   begin
     if not ValidaExistEstantes(IdEstante, Trim(E_NombreEstante.Text), ModificarEst)then
        begin
         if not ModificarEst then
          begin
            InsertaEstante(E_NombreEstante.Text, M_DescripcionSeccion.Text, 1);
          end
         else
         if ModificarEst then
          begin
            ModificaEstante(IdEstante, E_NombreEstante.Text, M_DescripcionSeccion.Text, 1);
            DeshacerModEst;
          end;
         BuscaEstante('', 0, 1);
         IBQr_Estates.Locate('NOMBRE_ESTANTE', Trim(E_NombreEstante.Text), []);
         E_NombreEstante.Clear;
         M_DescripcionSeccion.Lines.Clear;

        end; 
   end;
end;

procedure TFEstanteria.BBT_BuscarClick(Sender: TObject);
begin
  BuscaEstante(Trim(E_NombreEstante.Text), 1, 0);
end;

procedure TFEstanteria.E_NombreEstanteChange(Sender: TObject);
begin
  if (not ModificarEst)and(not ModificarSecc) then
    begin
      if Trim(E_NombreEstante.Text)=''then
      BuscaEstante('', 0, 1);
    end;
end;

procedure TFEstanteria.BBT_LimpiarClick(Sender: TObject);
begin
  E_NombreEstante.Clear;
  M_DescripcionSeccion.Lines.Clear;
end;

procedure TFEstanteria.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFEstanteria.BBT_GuardarSeccionesClick(Sender: TObject);
begin
  if Trim(E_NombreSeccion.Text)=''then
    begin
      JVBH_1.ActivateHint(E_NombreSeccion, 'Ingrese un nombre para la sección.', ikInformation, 'Información', 5000);
      E_NombreSeccion.SetFocus;
    end
  else
  if SE_Can_Max.Value < 1then
    begin
      JVBH_1.ActivateHint(SE_Can_Max, 'La cantidad debe ser mayor a cero(0).', ikInformation, 'Información', 5000);
      SE_Can_Max.SetFocus;
    end
  else
   begin
     if not ValidaExistSeccion(IdSeccion, IdEstante, Trim(E_NombreSeccion.Text) ,ModificarSecc)then
        begin
         if not ModificarSecc then
          begin
            InsertaSeccion(IdEstante, E_NombreSeccion.Text, StrToInt(SE_Can_Max.Text), 1);
          end
         else
         if ModificarSecc then
          begin
            ModificaSeccion(IdSeccion, IdEstante, E_NombreSeccion.Text, StrToInt(SE_Can_Max.Text), 1);
            DeshacerModSecc;
          end;
          BuscaSecciones(IdEstante, 0);
          IBQr_Secciones.Locate('IDSECCION', IdSeccion, []);
          E_NombreSeccion.Clear;
          SE_Can_Max.Value:=0;
        end;
   end;

end;

procedure TFEstanteria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    begin
      Self.Close;
    end;
end;

procedure TFEstanteria.IBQr_EstatesAfterOpen(DataSet: TDataSet);
begin
  IdEstante:=IBQr_EstatesCOD_STOCK.AsInteger;
  BuscaSecciones(IBQr_EstatesCOD_STOCK.AsInteger, 0);
  DBG_EstantesCellClick(nil);
end;

procedure TFEstanteria.IBQr_EstatesAfterScroll(DataSet: TDataSet);
begin
  IdEstante:=IBQr_EstatesCOD_STOCK.AsInteger;
  if not ModificarSecc then
    begin
      BuscaSecciones(IBQr_EstatesCOD_STOCK.AsInteger, 0);
    end;
  if(ModificarEst)then
    begin
      DeshacerModEst;
    end;
end;

procedure TFEstanteria.DBG_EstantesCellClick(Column: TbsColumn);
begin
  if (IBQr_Estates.RecordCount > 0)and(not ModificarSecc)then
    begin
      MM_ModificarEstante.Enabled:=True;
      MM_EliminarEstante.Enabled:=True;
      IdEstante:=IBQr_EstatesCOD_STOCK.AsInteger;
    end
  else
    begin
      MM_ModificarEstante.Enabled:=False;
      MM_EliminarEstante.Enabled:=False;
    end;
end;

procedure TFEstanteria.DBG_SeccionesCellClick(Column: TbsColumn);
begin
  if (IBQr_Secciones.RecordCount > 0)and(not ModificarEst)then
    begin
      MM_ModificarSeccion.Enabled:=True;
      MM_EliminarSeccion.Enabled:=True;
      IdSeccion:=IBQr_SeccionesIDSECCION.AsInteger;
    end
  else
    begin
      MM_ModificarSeccion.Enabled:=False;
      MM_EliminarSeccion.Enabled:=False
    end;
end;

procedure TFEstanteria.IBQr_SeccionesAfterOpen(DataSet: TDataSet);
begin
  DBG_SeccionesCellClick(nil);
end;

procedure TFEstanteria.MM_ModificarEstanteClick(Sender: TObject);
begin
  E_NombreEstante.Clear;
  M_DescripcionSeccion.Clear;
  ModificarEst:=True;
  E_NombreEstante.Text:=IBQr_EstatesNOMBRE_ESTANTE.AsString;
  M_DescripcionSeccion.Text:=IBQr_EstatesDESCRIPCION_ESTANTE.AsString;
  BBT_Cancelar.Visible:=True;
  BBT_Buscar.Enabled:=False;
  Caption:='Modificar Estante';
  BBT_GuardarSecciones.Enabled:=False;
  MM_ModificarSeccion.Enabled:=False;
  MM_EliminarSeccion.Enabled:=False;
end;

procedure TFEstanteria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (ModificarEst)or(ModificarSecc)then
    begin
      if(FPrincipal.MS_Personalizado.MessageDlg('Salir sin guardar los cambios?', mtConfirmation, [mbNo, mbYes], 0)=idyes)then
        begin
          Action:=caFree;
        end
      else
        begin
          Action:=caNone;
        end;
    end
  else
    begin
      Action:=caFree;
    end;
end;

procedure TFEstanteria.MM_EliminarEstanteClick(Sender: TObject);
begin
  if(FPrincipal.MS_Personalizado.MessageDlg('Se propone eliminar este estante. Si elimina este estante perderá'+#13+
  'todas las secciones asociadas a el.'+#13+#13+'Desea realmente eliminar el estante selecionado?', mtWarning, [mbNo, mbYes], 0)= idyes)then
    begin
      EliminaEstante(IdEstante, 1);
      BuscaEstante('', 0, 1);
    end;                     
end;

procedure TFEstanteria.MM_ModificarSeccionClick(Sender: TObject);
begin
  DBG_Estantes.Enabled:=False;
  NV_1.Enabled:=False;
  E_NombreSeccion.Clear;
  SE_Can_Max.Value:=0;
  ModificarSecc:=True;
  E_NombreSeccion.Text:=IBQr_SeccionesSECCION.AsString;
  SE_Can_Max.Value:=IBQr_SeccionesCAP_MAX.AsInteger;
  BBT_CancelarModSeccion.Visible:=True;
  Caption:='Modificar Sección';
  MM_ModificarEstante.Enabled:=False;
  MM_EliminarEstante.Enabled:=False;
  BBT_Guardar.Enabled:=False;
end;

procedure TFEstanteria.MM_EliminarSeccionClick(Sender: TObject);
begin
  if(FPrincipal.MS_Personalizado.MessageDlg('Desea realmente eliminar la sección selecionado?', mtConfirmation, [mbNo, mbYes], 0)= idyes)then
    begin
      EliminaSeccion(IdSeccion, 1);
      BuscaSecciones(IdEstante, 0);
    end;
end;

procedure TFEstanteria.IBQr_SeccionesAfterScroll(DataSet: TDataSet);
begin
  if ModificarSecc then
    DeshacerModSecc;
end;

procedure TFEstanteria.DeshacerModSecc;
begin
  ModificarSecc:=False;
  BBT_CancelarModSeccion.Visible:=False;
  BBT_Guardar.Enabled:=True;
  Caption:='Manejo de Estantes';
  if IBQr_Estates.RecordCount > 0 then
  begin
    MM_ModificarEstante.Enabled:=True;
    MM_EliminarEstante.Enabled:=True;
  end;
  DBG_Estantes.Enabled:=True;
  NV_1.Enabled:=True;
end;

procedure TFEstanteria.BBT_CancelarModSeccionClick(Sender: TObject);
begin
  DeshacerModSecc;
end;

procedure TFEstanteria.DeshacerModEst;
begin
  ModificarEst:=False;
  BBT_Cancelar.Visible:=False;
  BBT_Buscar.Enabled:=True;
  Caption:='Manejo de Estantes';
  if IBQr_Secciones.RecordCount > 0 then
    begin
      MM_ModificarSeccion.Enabled:=True;
      MM_EliminarSeccion.Enabled:=True;
    end;
  BBT_GuardarSecciones.Enabled:=True;
end;

procedure TFEstanteria.BBT_CancelarClick(Sender: TObject);
begin
  DeshacerModEst
end;

function TFEstanteria.GetCodigoStock(const NombreEstante: string): Integer;
var
  IBQr_Cod:TIBQuery;
begin
  IBQr_Cod:=TIBQuery.Create(Self);
  try
    with IBQr_Cod do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select cod_stock from estanteria where nombre_estante = :p0');
        Params[0].Value:=NombreEstante;
        Open;
      end;
    if IBQr_Cod.RecordCount > 0then
      begin
        Result:=IBQr_Cod.fieldbyname('cod_stock').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Cod.Free;
  end;
end;

function TFEstanteria.GetCapMaxSecc(const Id_Secc:Integer): Integer;
var
  IBQr_Cod:TIBQuery;
begin
  Result:=0;
  IBQr_Cod:=TIBQuery.Create(Self);
  try
    with IBQr_Cod do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select cap_max from secciones_estanteria where IdSeccion = :p0');
        Params[0].Value:=Id_Secc;
        //SParams[1].Value:=Cod_Stock;
        Open;
      end;
    if IBQr_Cod.RecordCount > 0then
      begin
        Result:=IBQr_Cod.fieldbyname('cap_max').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Cod.Free;
  end;
end;

function TFEstanteria.GetIdSeccion(const NombreSeccion: string): Integer;
var
  IBQr_Cod:TIBQuery;
begin
  IBQr_Cod:=TIBQuery.Create(Self);
  try
    with IBQr_Cod do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select idseccion from secciones_estanteria where seccion = :p0');
        Params[0].Value:=NombreSeccion;
        //Params[1].Value:=Cod_Stock;
        Open;
      end;
    if IBQr_Cod.RecordCount > 0then
      begin
        Result:=IBQr_Cod.fieldbyname('idseccion').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Cod.Free;
  end;
end;

function TFEstanteria.ValidaNumeroSeccUsaExiste(const Cod_Stock,
  Id_Seccion, Orden_Seccion: Integer): Boolean;
var
  IBQr_Exist:TIBQuery;
begin
  IBQr_Exist:=TIBQuery.Create(Self);
  try
    with IBQr_Exist do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select orden_seccion from ubicacion_expediente ');
        SQL.Add('where (cod_stock = :p0)and(id_seccion = :p1)and(orden_seccion = :p2)');
        Params[0].Value:=Cod_Stock;
        Params[1].Value:=Id_Seccion;
        Params[2].Value:=Orden_Seccion;
        Open;
      end;
    if IBQr_Exist.RecordCount > 0then
      begin
        Result:=True;
      end
    else
      begin
        Result:=False;
      end;
  finally
    IBQr_Exist.Free;
  end;
end;

function TFEstanteria.ValidaPatExisteUbExp(Id_Pat: Integer): Boolean;
var
  IBQr_Exist:TIBQuery;
begin
  IBQr_Exist:=TIBQuery.Create(Self);
  try
    with IBQr_Exist do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select id_paciente from ubicacion_expediente ');
        SQL.Add('where (id_paciente = :p0)');
        Params[0].Value:=Id_Pat;
        Open;
      end;
    if IBQr_Exist.RecordCount > 0then
      begin
        Result:=True;
      end
    else
      begin
        Result:=False;
      end;
  finally
    IBQr_Exist.Free;
  end;
end;

function TFEstanteria.GetIdUbicacionExp_IdPat(const Id_Pat:Integer): Integer;
var
  IBQr_Exist:TIBQuery;
begin
  IBQr_Exist:=TIBQuery.Create(Self);
  try
    with IBQr_Exist do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select idubicacionexpediente from ubicacion_expediente ');
        SQL.Add('where (id_paciente = :p0)');
        Params[0].Value:=Id_Pat;
        Open;
      end;
    if IBQr_Exist.RecordCount > 0then
      begin
        Result:=IBQr_Exist.fieldByName('idubicacionexpediente').AsInteger;
      end
    else
      begin
        Result:=0;
      end;
  finally
    IBQr_Exist.Free;
  end;
end;

function TFEstanteria.ValidaUbicacionExp(const Id_Pact, Cod_Stock, Id_Secc,
  Orden_Secc: Integer; Modifica:Boolean): Boolean;
var
  IBQr_Ub:TIBQuery;
  Id_Pac_e:Integer;
begin
  IBQr_Ub:=TIBQuery.Create(Self);
  with IBQr_Ub do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select idubicacionexpediente, id_paciente from ubicacion_expediente');
      SQL.Add('where cod_stock = :p1 and id_seccion = :p2 and orden_seccion = :p3');
      //Params[0].Value:=Id_Pact;
      Params[0].Value:=Cod_Stock;
      Params[1].Value:=Id_Secc;
      Params[2].Value:=Orden_Secc;
      Open;
    end;
  if IBQr_Ub.RecordCount > 0then
    begin
      Id_Pac_e:=IBQr_Ub.fieldbyname('id_paciente').AsInteger;
      if Modifica then
        begin
          if (Id_Pac_e = Id_Pact) then
            begin
              Result:=False;
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
    end
  else
    begin
      Result:=False;
    end;
end;

function TFEstanteria.CalculaEspacioSecc(var Cod_Stock,
  Id_Secc: Integer): Integer;
var
  IBQr_Cal:TIBQuery;
begin
  IBQr_Cal:=TIBQuery.Create(Self);
  try
    with IBQr_Cal do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select count(cod_stock) totalSeccion from ubicacion_expediente u');
        SQL.Add('where u.cod_stock = :p0 and u.id_seccion = :p1');
        Params[0].Value:=Cod_Stock;
        Params[1].Value:=Id_Secc;
        Open;
      end;
    Result:=IBQr_Cal.fieldbyname('totalSeccion').AsInteger;
  finally
    IBQr_Cal.Free;
  end;
end;

function TFEstanteria.GetNOrdSecc( Cod_Stock, Id_Secc, Numero_Orden: Integer;
  Continuar: Boolean): Integer;
var
  //IBQr_SecOrd:TIBQuery;
  I, Secc_Cap_Max, N_O:Integer;
begin
   Result:=0;
    I:=Valor;
   Secc_Cap_Max:=GetCapMaxSecc(Id_Secc);
   if Valor >= Secc_Cap_Max then
   begin
    Numero_Orden:=0;
    I:=0;
   end;
   while I < Secc_Cap_Max do
    begin
      if Continuar then
        Numero_Orden:=Numero_Orden+1;
      I:=Numero_Orden;
      if not ValidaNumeroSeccUsaExiste(Cod_Stock, Id_Secc, Numero_Orden) then
        begin
          Result:=Numero_Orden;
          Numero_Orden:=Numero_Orden+1;
          Valor:=I;
          Break;

        end;

    end;
   Application.ProcessMessages;


end;

end.

