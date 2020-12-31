unit UConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, BusinessSkinForm, StdCtrls, Mask, bsSkinBoxCtrls,
  bsSkinShellCtrls, bsMessages, JvBalloonHint, JvComponentBase, IniFiles, DB,
  IBDatabase, bsSkinData, ExtCtrls, AppEvnts, Buttons, Spin,
  CEditInsideHelp, Registry, CWMIBase, CDiskDriveInfo, ExtDlgs, RxCtrls, ShellAPI,
  ZipMstr, RxToolEdit, JvExMask, JvToolEdit;

type
  TFConf = class(TForm)
    NB_Conf: TbsSkinNotebook;
    BF_Conf: TbsBusinessSkinForm;
    E_UsuarioDB: TbsSkinEdit;
    LB_1: TbsSkinStdLabel;
    LB_2: TbsSkinStdLabel;
    LB_3: TbsSkinStdLabel;
    BT_GuardaDatosDB: TbsSkinButton;
    E_Servidor: TbsSkinEdit;
    RCB_Remoto: TbsSkinCheckRadioBox;
    RCB_Local: TbsSkinCheckRadioBox;
    BT_CargaConf: TbsSkinButton;
    LB_4: TbsSkinStdLabel;
    MS_Conf: TbsSkinMessage;
    JVB_conf: TJvBalloonHint;
    BT_PruebaConeccion: TbsSkinButton;
    IBD_Prueba: TIBDatabase;
    IBT_Prueba: TIBTransaction;
    bsResourceStrData1: TbsResourceStrData;
    BSF_SD1: TbsSkinData;
    BSF_CSL1: TbsCompressedSkinList;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    ApplicationEvents1: TApplicationEvents;
    E_ClaveDB: TbsSkinPasswordEdit;
    RCB_Cedulados: TbsSkinCheckRadioBox;
    CHK_ModificaFechaIngreso: TCheckBox;
    BBT_Aplicar_1: TBitBtn;
    BBT_Aceptar_1: TBitBtn;
    bsSkinBevel3: TbsSkinBevel;
    CHK_BuscarEnCedulados: TCheckBox;
    CHK_MostrarFotoPaciente: TCheckBox;
    BBT_Salir_1: TBitBtn;
    CHK_ImprimeLogoCentro: TCheckBox;
    RG_BusquedaExacta: TRadioGroup;
    RB_B_Exacta: TRadioButton;
    RB_B_Aproximada: TRadioButton;
    CHK_CerrarFormPacientes: TCheckBox;
    CHK_ManejoEstantes: TCheckBox;
    LB_5: TLabel;
    SE_MaximosResitrosGrid: TSpinEdit;
    LB_6: TbsSkinStdLabel;
    LB_7: TbsSkinStdLabel;
    BBT_GuardaSerialDD: TbsSkinButton;
    //DDI_Conf: TDiskDriveInfo;
    BT_1: TButton;
    BBT_IniciarRestauracionDB: TbsSkinButton;
    RG_BackupRestore: TRadioGroup;
    RCB_Opcion_1: TbsSkinCheckRadioBox;
    RCB_Opcion_2: TbsSkinCheckRadioBox;
    BBT_SalirRestaurar: TbsSkinButton;
    DE_RutaBackup: TDirectoryEdit;
    FNE_BaseDatos_Backup: TFilenameEdit;
    RXLB_RestoreBackup: TRxLabel;
    FNE_RutaDB: TFilenameEdit;
    DiskDriveInfo1: TDiskDriveInfo;
    procedure RCB_RemotoClick(Sender: TObject);
    procedure RCB_LocalClick(Sender: TObject);
    procedure BT_GuardaDatosDBClick(Sender: TObject);
    procedure BT_CargaConfClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_PruebaConeccionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBT_Aceptar_1Click(Sender: TObject);
    procedure BBT_Aplicar_1Click(Sender: TObject);
    procedure BBT_Salir_1Click(Sender: TObject);
    procedure BBT_GuardaSerialDDClick(Sender: TObject);
    procedure BBT_IniciarRestauracionDBClick(Sender: TObject);
    procedure FNE_BaseDatos_BackupAfterDialog(Sender: TObject; var AName: String;
      var Action: Boolean);
    procedure BBT_SalirRestaurarClick(Sender: TObject);
    procedure FNE_RutaDBBeforeDialog(Sender: TObject; var AName: String;
      var Action: Boolean);
  private
    { Private declarations }
    function leCadINI (clave, cadena : string; defecto : String) : String;
    procedure esCadINI (clave, cadena : string; valor : String);
    procedure GuardaConf(Mensaje:Integer);
  public
    { Public declarations }
    class function Execute : boolean;
    function Cifrar(Str,Clave: String): String;
    function Descifrar(Str,Clave: String): String;
    procedure RestaurarDBFB(RutaBackup, RutaDestino, OpcionRest:string);
    procedure CrearBackup(RutaDB, RutaDestBackup, OpcionesBackup:string; Mensaje:Integer);
    function EjecutarProceso(NombreProceso:string):Cardinal;
    function EnDeCrypt(const Value: string): string;
  end;
const
  _vZIP_ :string = '.zip';
  _vFBK_ :string = '.fbk';
  _vGBK_ :string = '.gbk';
var
  FConf: TFConf;
  PermiteCerrarForm:Boolean=True;
  RestBackup:Integer = 0; //0 = Restaurar, 1 = Backup
//  RutaDB2:string;
implementation

uses UContenedorDatos, UPrincipal, ULogin, AES, base64, URestauraDB;

{$R *.dfm}
class function TFConf.Execute: boolean;
begin
  with TFConf.Create(nil) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;

procedure TFConf.RCB_RemotoClick(Sender: TObject);
begin
  E_Servidor.Enabled:=True;
end;

procedure TFConf.RCB_LocalClick(Sender: TObject);
begin
  E_Servidor.Enabled:=False;
//  CBB_Protocolo.Enabled:=False;
end;

procedure TFConf.BT_GuardaDatosDBClick(Sender: TObject);
var
  str:string;      //2942 maiquel
begin
  str:=ExtractFileDir(Trim(FNE_RutaDB.FileName))+'\'+ExtractFileName(Trim(FNE_RutaDB.FileName));
  if (RCB_Remoto.Checked) and (Trim(E_Servidor.Text) = '')then
    begin
      JVB_conf.ActivateHint(E_Servidor,'Ingrese la IP del Servidor',ikInformation,'Informaci�n',500);
      E_Servidor.SetFocus;
    end
  else
  if Trim(FNE_RutaDB.Text) = '' then
    begin
      JVB_conf.ActivateHint(FNE_RutaDB,'Ingrese la ruta de la Base de Datos en el servidor',ikInformation,'Informaci�n',500);
      FNE_RutaDB.SetFocus;
    end
  else
  if Trim(E_UsuarioDB.Text) = '' then
    begin
      JVB_conf.ActivateHint(E_UsuarioDB,'Ingrese el Nombre de Usuario.',ikInformation,'Informaci�n',500);
      E_UsuarioDB.SetFocus;
    end
  else
  if Trim(E_ClaveDB.Text) = '' then
    begin
      JVB_conf.ActivateHint(E_ClaveDB,'Ingrese la contrase�a.',ikInformation,'Informaci�n',500);
      E_UsuarioDB.SetFocus;
    end
  else
    begin
      if(MS_Conf.MessageDlg('Desea realmente guardar estos datos de configuraci�n?', mtConfirmation, [mbYes, mbNo],0) = idyes)then
        begin
          if RCB_Remoto.Checked then
            begin
              esCadINI('SUCONF', 'RTMP', Trim(E_Servidor.Text)+':'+str);
            end
          else
            begin
              esCadINI('SUCONF', 'RTMP', str);
            end;
          if RCB_Cedulados.Checked then
            begin
              esCadINI('DB', 'Rt2', '1');
            end
          else
            begin
              esCadINI('DB', 'Rt2', '0');
            end;
          esCadINI('DB', 'Serv', Trim(E_Servidor.Text));
          if RCB_Remoto.Checked then
            begin
              esCadINI('DB', 'TipoServ', 'R');
            end
          else
            begin
              esCadINI('DB', 'TipoServ', 'L');
            end;
          esCadINI('DB', 'NUsu', Trim(Trim(E_UsuarioDB.Text)));
          esCadINI('DB', 'CUsu', Trim(Trim(E_ClaveDB.Text)));
          BT_CargaConf.Enabled:=True;
          MS_Conf.MessageDlg('Datos guardados con �xito.', mtInformation, [mbOK],0);
          PermiteCerrarForm:=False;
          if Tag = 0 then
            ModalResult:=mrOk;
        end;
    end;
end;

procedure TFConf.BT_CargaConfClick(Sender: TObject);
begin
  if leCadINI('DB', 'TipoServ', '')='R'then
    begin
      RCB_Remoto.Checked:=True;
      E_Servidor.Text:=leCadINI('DB', 'Serv', '');
    end
  else
  if leCadINI('DB', 'TipoServ', '')='L'then
    begin
      RCB_Local.Checked:=True;
    end;
  if leCadINI('DB', 'Rt2', '')='1' then
    begin
      RCB_Cedulados.Checked:=True;
    end
  else
    begin
      RCB_Cedulados.Checked:=False;
    end;
  if leCadINI('SUCONF', 'RTMP', '') <> '' then
  FNE_RutaDB.Text:=Trim(leCadINI('SUCONF', 'RTMP', ''));
  E_UsuarioDB.Text:=leCadINI('DB', 'NUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
  E_ClaveDB.Text:=leCadINI('DB', 'CUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
end;

function TFConf.leCadINI(clave, cadena, defecto: String): String;
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;
end;

procedure TFConf.esCadINI(clave, cadena, valor: String);
begin
  with tinifile.create (changefileext('confir.exe','.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

procedure TFConf.FormShow(Sender: TObject);
var
  Disco:TDiskDriveInfo;
  DiscoProp:TDiskDriveProperties;
begin
  if (leCadINI('DB', 'Serv', '')<>'') or (leCadINI('SUCONF', 'RTMP', '')<> '')or (leCadINI('DB', 'NUsu', '')<>'')or
     (leCadINI('DB', 'CUsu', '')<> '') then
      begin
        BT_CargaConf.Enabled:=True;
      end;
  if Tag = 0 then
    begin
      BF_Conf.SkinData:=BSF_SD1;
      //FNE_RutaDB.SkinData:=BSF_SD1;
      MS_Conf.SkinData:=BSF_SD1;
      LB_4.SkinData:=BSF_SD1;
      LB_3.SkinData:=BSF_SD1;
      LB_2.SkinData:=BSF_SD1;
      LB_1.SkinData:=BSF_SD1;
      RCB_Remoto.SkinData:=BSF_SD1;
      RCB_Local.SkinData:=BSF_SD1;
      RCB_Cedulados.SkinData:=BSF_SD1;
      //DE_RutaDB.SkinData:=BSF_SD1;
      E_Servidor.SkinData:=BSF_SD1;
      E_UsuarioDB.SkinData:=BSF_SD1;
      E_ClaveDB.SkinData:=BSF_SD1;
      BT_CargaConf.SkinData:=BSF_SD1;
      BT_GuardaDatosDB.SkinData:=BSF_SD1;
      BT_PruebaConeccion.SkinData:=BSF_SD1;
      //BT_BuscaDBLocal.SkinData:=BSF_SD1;
    end
  else
  if Tag = 1 then
    begin
      BF_Conf.SkinData:=FPrincipal.BSF_SD1;
      //DE_RutaDB.SkinData:=FPrincipal.BSF_SD1;
      MS_Conf.SkinData:=FPrincipal.BSF_SD1;
      LB_4.SkinData:=FPrincipal.BSF_SD1;
      LB_3.SkinData:=FPrincipal.BSF_SD1;
      LB_2.SkinData:=FPrincipal.BSF_SD1;
      LB_1.SkinData:=FPrincipal.BSF_SD1;
      RCB_Cedulados.SkinData:=FPrincipal.BSF_SD1;
      RCB_Remoto.SkinData:=FPrincipal.BSF_SD1;
      RCB_Local.SkinData:=FPrincipal.BSF_SD1;
      //DE_RutaDB.SkinData:=FPrincipal.BSF_SD1;
      E_Servidor.SkinData:=FPrincipal.BSF_SD1;
      E_UsuarioDB.SkinData:=FPrincipal.BSF_SD1;
      E_ClaveDB.SkinData:=FPrincipal.BSF_SD1;
      BT_CargaConf.SkinData:=FPrincipal.BSF_SD1;
      BT_GuardaDatosDB.SkinData:=FPrincipal.BSF_SD1;
      BT_PruebaConeccion.SkinData:=FPrincipal.BSF_SD1;
      //BT_BuscaDBLocal.SkinData:=FPrincipal.BSF_SD1;
    end
  else
  if Tag = 2 then
    begin
      //Disco:=DDI_Conf;
      DiscoProp:=Disco.DiskDriveProperties;
      Disco.Active:=True;
      //E_SerialDiscoDuro.Text:=DiscoProp.Model;
      Disco.Active:=False;
    end;

end;

procedure TFConf.BT_PruebaConeccionClick(Sender: TObject);
var
  RutaDB:string;
begin
  try
    RutaDB:=Trim(ExtractFileDir(FNE_RutaDB.FileName)+'\'+ExtractFileName(FNE_RutaDB.FileName));
    with IBD_Prueba do
      begin
        Close;
        //DefaultTransaction:=TPrueba;
        //SQLDialect:=3;
        LoginPrompt:=False;
        if RCB_Remoto.Checked then
          begin
            DatabaseName:=Trim(E_Servidor.Text+':'+RutaDB);
          end
        else
          begin
            DatabaseName:=Trim('localhost:'+RutaDB);
          end;
        Params.Values['user_name']:=Trim(E_UsuarioDB.Text);
        Params.Values['password']:=Trim(E_ClaveDB.Text);
        Connected:=True;
        if TestConnected then
          begin
            Connected:=False;
            MS_Conf.MessageDlg('Conexi�n �xitosa.',mtInformation,[mbOK],0);
          end;
      end;
  except
    on e:Exception do
      begin
        MS_Conf.MessageDlg('Error de conexi�n.'+#13+
        'Se ha producido el siguiente error al intentar conectar con la Base de Datos: '+
        #13+'('+e.Message+')', mtInformation, [mbOK], 0);
      end;
  end;
end;

procedure TFConf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Tag = 0)and(PermiteCerrarForm) then
    begin
      Application.Terminate;
    end
  else
  if (Tag = 1)then
    begin
        if(leCadINI('SUCONF', 'BX', '0')='1')then
          begin
            BusquedaExacta:=True;
            FPrincipal.LB_1.Caption:='(Modo b�squeda Exacta Activo.)';
          end
        else
          begin
            BusquedaExacta:=False;
            FPrincipal.LB_1.Caption:='(Modo b�squeda Aproximado Activo.)';
          end;
      Action:=caFree;
    end;
end;

procedure TFConf.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  with Msg do
    if (message = WM_KEYDOWN) and (wParam = VK_RETURN) and
    ((ActiveControl is TbsSkinCustomEdit)or(ActiveControl is TbsSkinCheckRadioBox)or
    (ActiveControl is TbsSkinPasswordEdit)) then
      begin
        SelectNext(ActiveControl, true, true);
        Handled := true;
      end;
end;

procedure TFConf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
    begin
      Self.Close;
    end;
end;

procedure TFConf.GuardaConf(Mensaje: Integer);
var
  cod_paciente:string;
begin
  try
    if (CHK_ModificaFechaIngreso.Checked) then
      begin
        esCadINI('SUCONF', 'MFIP', '1'); //permite la edicion de la fecha de ingreso del paciente.
      end
    else
      begin
        esCadINI('SUCONF', 'MFIP', '0');
      end;
    if (CHK_BuscarEnCedulados.Checked) then
      begin
        esCadINI('DB', 'Rt2', '1');  //habilita la busqueda de pacientes en el padron
      end
    else
      begin
        esCadINI('DB', 'Rt2', '0');
      end;
    if (CHK_MostrarFotoPaciente.Checked) then
      begin
        esCadINI('SUCONF', 'mfrv', '1'); //visualiza la foto del paciente en los reportes
      end
    else
      begin
        esCadINI('SUCONF', 'mfrv', '0');
      end;
    if (CHK_ImprimeLogoCentro.Checked) then
      begin
        esCadINI('SUCONF', 'lc', '1'); //imprime el logo del centrol
      end
    else
      begin
        esCadINI('SUCONF', 'lc', '0');
      end;
    if (RB_B_Exacta.Checked) then
      begin
        esCadINI('SUCONF', 'BX', '1');//Busqueda exacta de pacientes por opciones
      end
    else
      begin
        esCadINI('SUCONF', 'BX', '0');
      end;
   if (CHK_CerrarFormPacientes.Checked) then
      begin
        esCadINI('SUCONF', 'CFP', '1'); //CERRAR form pacientes al terminar/ guardar
      end
   else
      begin
        esCadINI('SUCONF', 'CFP', '0'); //no CERRAR form pacientes al terminar/ guardar
      end;
   if (CHK_ManejoEstantes.Checked) then
      begin
        esCadINI('SUCONF', 'UEXP', '1'); //Asignar lugar a cada expediente, ordenar los expedientes. Visualiza las opciones.
      end
   else
      begin
        esCadINI('SUCONF', 'UEXP', '0');
      end;
   esCadINI('SUCONF', 'CMR', Trim(SE_MaximosResitrosGrid.Text));  //MAXIMA cantidad de record a mostrar en el grid.
   Cant_Max_Record:=Trim(SE_MaximosResitrosGrid.Text);

   cod_paciente:=FPrincipal.IBQr_BuscaPacienteCODIGO_PACIENTE.AsString;
   FPrincipal.BuscaPaciente('', False, 1, 0);
   FPrincipal.ActualizaConsultas;
   FPrincipal.IBQr_BuscaPaciente.Locate('CODIGO_PACIENTE', cod_paciente, []);


    if Mensaje = 1 then
    MS_Conf.MessageDlg('Datos guardados con �xito.', mtInformation,[mbOK],0);
  except
    MS_Conf.MessageDlg('Se ha producido un error al intentar guardar los datos, comuniquese con el administrador.', mtError,[mbOK],0);
  end
end;

procedure TFConf.BBT_Aceptar_1Click(Sender: TObject);
begin
  GuardaConf(0);
  Self.Close;
end;

procedure TFConf.BBT_Aplicar_1Click(Sender: TObject);
begin
  GuardaConf(1);
end;

procedure TFConf.BBT_Salir_1Click(Sender: TObject);
begin
  Self.Close;
end;

function TFConf.Cifrar(Str, Clave: String): String;
var
  Src: TStringStream;
  Dst: TMemoryStream;
  Size: Integer;
  Key: TAESKey;
  ExpandedKey: TAESExpandedKey;
begin
  Result:= EmptyStr;
  Src:= TStringStream.Create(Str);
  try
    Dst:= TMemoryStream.Create;
    try
      // Preparamos la clave, lo ideal es que tenga 32 caracteres
      FillChar(Key,Sizeof(Key),#0);
      if Length(Clave) > Sizeof(Key) then
        move(PChar(Clave)^,Key,Sizeof(key))
      else
        move(PChar(Clave)^,Key,Length(Clave));
      AEsExpandKey(ExpandedKey,Key);
      // Guardamos el tama�o del texto original
      Size:= Src.Size;
      Dst.WriteBuffer(Size,Sizeof(Size));
      // Ciframos el texto
      AESEncryptStreamECB(Src,Dst,ExpandedKey);
      // Lo codificamos a base64
      Result:= BinToStr(Dst.Memory,Dst.Size);
    finally
      Dst.Free;
    end;
  finally
    Src.Free;
  end;
end;


function TFConf.Descifrar(Str, Clave: String): String;
var
  Src: TMemoryStream;
  Dst: TStringStream;
  Size: Integer;
  Key: TAESKey;
  ExpandedKey: TAESExpandedKey;
begin
  Result:= EmptyStr;
  Src:= TMemoryStream.Create;
  try
    Dst:= TStringStream.Create(Str);
    try
      StrToStream(Str,Src);
      Src.Position:= 0;
      FillChar(Key,Sizeof(Key),#0);
      if Length(Clave) > Sizeof(Key) then
        move(PChar(Clave)^,Key,Sizeof(key))
      else
        move(PChar(Clave)^,Key,Length(Clave));
      AESExpandKey(ExpandedKey,Key);
      // Leemos el tama�o del texto
      Src.ReadBuffer(Size,Sizeof(Size));
      AESDecryptStreamECB(Src,Dst,ExpandedKey);
      Dst.Size:= Size;
      Result:= Dst.DataString;
    finally
      Dst.Free;
    end;
  finally
    Src.Free;
  end;
end;
procedure TFConf.BBT_GuardaSerialDDClick(Sender: TObject);
var
  Reg:TRegistry;
begin
  // Creamos un objeto para manejar el registro
  Reg := TRegistry.Create;

  // Guardamos las opciones
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\Software\Invertarior', True) then
    begin
      //Reg.WriteString( 'cliapp', Cifrar(Trim(E_SerialDiscoDuro.Text), '337719') );
     { Reg.WriteInteger( 'COPIAS', COPIAS.Value );
      Reg.WriteBool( 'VISTAPREVIA', VISTAPREVIA.Checked );
      Reg.WriteDate( 'FECHA', FECHA.Date );
      Reg.WriteTime( 'HORA', StrToTime( HORA.Text ) );
      Reg.WriteFloat( 'MARGEN', MARGEN.Value );}

      //ShowMessage(Descifrar(Reg.ReadString('cliapp'), '337719'));
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFConf.BBT_IniciarRestauracionDBClick(Sender: TObject);
var
  RutaDB, OpcionRestBackup, str, vExt:string;
begin
  if RestBackup = 0 then
    begin
      if RCB_Opcion_1.Checked then
        OpcionRestBackup:='-r -rep -v -p 8192 '
      else
      if RCB_Opcion_2.Checked then
        OpcionRestBackup:='-r o -c -v -p 8192 ';

      str:=ExtractFilePath(FNE_BaseDatos_Backup.FileName);
      str:=str+ExtractFileName(FNE_BaseDatos_Backup.FileName);
      vExt:=ExtractFileExt(str);
      RutaDB:=RutaArchivos+'Data\datair.fdb';

      if(FileExists(ChangeFileExt(str, '.gbk'))) then
        begin
          str:=(ChangeFileExt(str, '.gbk'));
          RestaurarDBFB(Trim(str), RutaDB,  OpcionRestBackup);
          DeleteFile(str);
        end
      else
      if(FileExists(ChangeFileExt(str, '.fbk')))then
        begin
          str:=(ChangeFileExt(str, '.fbk'));
          RestaurarDBFB(Trim(str), RutaDB,  OpcionRestBackup);
          DeleteFile(str);
        end
      else
        MS_Conf.MessageDlg('Archivo no hallado.', mtInformation, [mbOK], 0);
    end
  else
  if RestBackup = 1 then
    begin
      RutaDB:=RutaArchivos+'Data\datair.fdb';
      OpcionRestBackup:='-b -v -t ';
      if Trim(DE_RutaBackup.Text) <> '' then
        if DirectoryExists(Trim(DE_RutaBackup.Text)) then
          CrearBackup(RutaDB, Trim(DE_RutaBackup.Text), OpcionRestBackup, 1)
        else
          MS_Conf.MessageDlg('La ruta seleccionada no es valida.', mtInformation, [mbOK], 0)
      else
        JVB_conf.ActivateHint(FNE_BaseDatos_Backup, 'Seleccione un directorio para continuar.', ikInformation, 'Informaci�n', 5000);
    end;
end;

procedure TFConf.RestaurarDBFB(RutaBackup, RutaDestino, OpcionRest: string);
var
  lpOperation, lpFile, lpParameters, lpDirectory: PChar;
  Proceso:Cardinal;
  Restaura:string;
  ExecInfo: TShellExecuteInfo;
begin
  if FileExists(RutaBackup) then
    begin
        RutaBackup:= ' "'+RutaBackup+ '" ';
        RutaDestino:= ' "'+RutaDestino+'" ';
        ExecInfo.cbSize := SizeOf(ExecInfo);
        ExecInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
        ExecInfo.Wnd := Handle;
        ExecInfo.lpVerb := 'open';
        ExecInfo.lpFile := 'gbak.exe';
        ExecInfo.lpParameters :=  PChar(OpcionRest+'-user SYSDBA -password "33fv7719" ' +
        RutaBackup+RutaDestino);
        ExecInfo.lpDirectory := PChar(GetEnvironmentVariable('ProgramFiles')+'\Firebird\Firebird_2_5\bin');
        ExecInfo.nShow := SW_SHOW;
        DTM_DATOS.IDB_BaseDatos.Connected:=False;
        ShellExecuteEx(@ExecInfo);
        WaitForSingleObject(ExecInfo.hProcess, INFINITE);
        DTM_DATOS.IDB_BaseDatos.Connected:=True;
        if DTM_DATOS.IDB_BaseDatos.Connected then
          begin
            FPrincipal.BuscaPaciente('', False, OpcionBusqueda, 0);
            MS_Conf.MessageDlg('La base de datos se ha restaurado �xitosamente.', mtInformation, [mbOK], 0);
          end
        else
          MS_Conf.MessageDlg('Se produjo un error durante la restauraci�n.', mtInformation, [mbOK], 0);
    end
  else
    MS_Conf.MessageDlg('Archivo no hallado.', mtInformation, [mbOK], 0);
end;

function TFConf.EjecutarProceso(NombreProceso: string): Cardinal;
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;           
begin
  Result := 0;
  FillChar(StartInfo, SizeOf(StartInfo), 0);
  StartInfo.cb := SizeOf(StartInfo);
  if CreateProcess(
    PChar(NombreProceso), nil, nil, nil, false, 0,
    nil, nil, StartInfo, ProcInfo)
  then
    Result := ProcInfo.hProcess;
end;

function TFConf.EnDeCrypt(const Value: string): string;
var
  CharIndex:integer;
begin
  Result:=Value;
  for CharIndex := 1 to Length(Value) do
      Result[CharIndex]:= chr(not(ord(Value[CharIndex])));
end;

procedure TFConf.CrearBackup(RutaDB, RutaDestBackup, OpcionesBackup: string;
Mensaje: Integer);
var
  lpOperation, lpFile, lpParameters, lpDirectory: PChar;
  BackupNombre, vExt:string;
  //Restaura:string;
  ExecInfo: TShellExecuteInfo;
begin
   BackupNombre:=ExtractFileName(RutaDB);
   vExt := ExtractFileExt(BackupNombre);
   BackupNombre := Copy(BackupNombre,1,Pos(AnsiUpperCase(vExt),AnsiUpperCase(BackupNombre))-1);
  
  BackupNombre:=BackupNombre+'_'+FormatDateTime('yyyymmddhhnnss', Now)+_vFBK_;
  RutaDestBackup:= ' "'+RutaDestBackup+'\'+BackupNombre+'" ';
  RutaDB:= ' "'+RutaDB+'" ';
  ExecInfo.cbSize := SizeOf(ExecInfo);
  ExecInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
  ExecInfo.Wnd := Handle;
  ExecInfo.lpVerb := 'open';
  ExecInfo.lpFile := 'gbak.exe';
  ExecInfo.lpParameters :=  PChar(OpcionesBackup+'-user SYSDBA -password "33fv7719" ' +
  RutaDB+RutaDestBackup);
  ExecInfo.lpDirectory := PChar(GetEnvironmentVariable('ProgramFiles')+'\Firebird\Firebird_2_5\bin');
  ExecInfo.nShow := SW_SHOW;
  try
    ShellExecuteEx(@ExecInfo);
    WaitForSingleObject(ExecInfo.hProcess, INFINITE);
    //
    if RCB_Opcion_1.Checked then
      begin
        BackupNombre:=ExtractFileName(BackupNombre);
        {ZM_DB.Dll_Load := True;
        ZM_DB.FSpecArgs.Clear;
        ZM_DB.ZipFileName := ChangeFileExt(BackupNombre,_vZIP_);
        ZM_DB.FSpecArgs.Add( BackupNombre ); }
        try
          //ZM_DB.Add;
          if(FileExists(BackupNombre))then
            DeleteFile(BackupNombre);
        except
          MS_Conf.MessageDlg('No ha sido posible comprimir el archivo de backup.', mtWarning, [mbOK], 0)
        end;

      end;
    MS_Conf.MessageDlg('Backup creado �xitosamente.', mtInformation, [mbOK], 0);
  except
    MS_Conf.MessageDlg('El backup no fue realizado.', mtWarning, [mbOK], 0);
  end;
end;

procedure TFConf.FNE_BaseDatos_BackupAfterDialog(Sender: TObject;
  var AName: String; var Action: Boolean);
var
  Ext, RutaZip, NombreArc:string;
begin
  if Action then
    begin
      Ext:=ExtractFileExt(AName);
      Ext:=AnsiLowerCase(Ext);
      if(Ext = '.zip')then
        begin
          //ShowMessage(FNE_BaseDatos_Backup.FileName+ '   '+'"'+AName+'"');
          RutaZip:=ExtractFilePath(AName);
          NombreArc:=ExtractFileName(AName);
          {ZM_DB.DLLDirectory := ExtractFilePath( Application.ExeName );
          ZM_DB.ZipFileName := AName;
          ZM_DB.TempDir := RutaZip;
          ZM_DB.ExtrBaseDir := RutaZip;
          ZM_DB.FSpecArgs.Clear;
          ZM_DB.FSpecArgs.Add('*.*');}
          try
           // ZM_DB.Extract;
            if(FileExists(ChangeFileExt(RutaZip+'\'+NombreArc, '.fbk')))or
              (FileExists(ChangeFileExt(RutaZip+'\'+NombreArc, '.gbk')))then
              BBT_IniciarRestauracionDB.Enabled:=True
            else
              begin
                BBT_IniciarRestauracionDB.Enabled:=False;
                MS_Conf.MessageDlg('El Archivo descomprimido no es valido.', mtError, [mbOK], 0);
                DeleteFile(RutaZip+'\'+NombreArc);

              end;
          except
            BBT_IniciarRestauracionDB.Enabled:=False;
            raise exception.Create( 'Error al descomprimir el archivo.' );
          end;
        end;{
      else
      if(Ext = '.fbk')or(Ext = '.gbk')then
        begin
          FNE_BaseDatos_Backup.Text:='';
        end; }
    end;

end;

procedure TFConf.BBT_SalirRestaurarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFConf.FNE_RutaDBBeforeDialog(Sender: TObject; var AName: String;
  var Action: Boolean);
begin
  FNE_RutaDB.InitialDir:=RutaArchivos+'data\';
end;

end.
