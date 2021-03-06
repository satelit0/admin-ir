unit UContenedorDatos;

interface

uses
  SysUtils, Classes, IBDatabase, DB, Dialogs, Windows, Forms;

type
  TDTM_DATOS = class(TDataModule)
    IDB_BaseDatos: TIBDatabase;
    IBT_1: TIBTransaction;
    IBD_Cedulados: TIBDatabase;
    IBT_2: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);               
  private
    { Private declarations }
  public
    { Public declarations }
    function WinExecAndWait32(FileName:String; Visibility:integer):integer;
  end;

var
  DTM_DATOS: TDTM_DATOS;

implementation

uses UPrincipal, UConf;

{$R *.dfm}

procedure TDTM_DATOS.DataModuleCreate(Sender: TObject);
var
  RutaDB2:string;
begin
  try  
    _Fconf:=TFConf.Create(Self);
    //WinExecAndWait32(_Fconf.Descifrar(FPrincipal.leCadINI('SUCONF', 'RTMP', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu'), '337719'), 1);
    with DTM_DATOS.IDB_BaseDatos do
      begin
        Connected:=False;
        LoginPrompt:=False;
        if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'R' then
          begin
            DatabaseName:=Trim(FPrincipal.leCadINI('DB', 'Serv', '')+':'+FPrincipal.leCadINI('SUCONF', 'RTMP', '')){+'\data\datair.fdb')};
          end
        else
        if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'L' then
          begin
            DatabaseName:=Trim('localhost:'+FPrincipal.leCadINI('SUCONF', 'RTMP', '')){+'\data\datair.fdb')};
          end;
        Params.Values['user_name']:=FPrincipal.leCadINI('DB', 'NUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
        Params.Values['password']:=FPrincipal.leCadINI('DB', 'CUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
        Connected:=True;
        RutaDB2:=Trim(ExtractFilePath(FPrincipal.leCadINI('SUCONF', 'RTMP', ''))+'\data\CEDULADOSFB.FDB');

        if(FileExists(RutaDB2))and(FPrincipal.leCadINI('DB', 'Rt2', '') = '1')then
          begin
            with DTM_DATOS.IBD_Cedulados do
              begin
                Connected:=False;
                LoginPrompt:=False;
                if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'R' then
                  begin
                    DatabaseName:=FPrincipal.leCadINI('DB', 'Serv', '')+':'+RutaDB2;
                  end
                else
                if FPrincipal.leCadINI('DB', 'TipoServ', '') = 'L' then
                  begin
                    DatabaseName:='localhost:'+RutaDB2;
                  end;
                Params.Values['user_name']:=FPrincipal.leCadINI('DB', 'NUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
                Params.Values['password']:=FPrincipal.leCadINI('DB', 'CUsu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu');
                Connected:=True;
              end;
          end;
      end;
    _Fconf.Free;
  except
    on E:Exception do
      begin
        _Fconf.Free;
        FPrincipal.MS_Personalizado.MessageDlg('Se produjo un error al intentar conectar con la Base de Datos.'+#13+e.Message, mtInformation, [mbOK], 0);
        Application.Terminate;
      end;
  end;
end;

function TDTM_DATOS.WinExecAndWait32(FileName:String; Visibility:integer):integer;
var 
  zAppName:array[0..512] of char;
  zCurDir:array[0..255] of char;
  WorkDir:String;
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
  Resultado,exitCode: DWord;
begin 
  StrPCopy(zAppName,FileName);
  GetDir(0,WorkDir);
  StrPCopy(zCurDir,WorkDir);
  FillChar(StartupInfo,Sizeof(StartupInfo),#0);
  StartupInfo.cb := Sizeof(StartupInfo);
 
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  CreateProcess(nil,
    zAppName,                      { pointer to command line string }
    nil,                           { pointer to process security attributes}
    nil,                           { pointer to thread security attributes}
    false,                         { handle inheritance flag }
    CREATE_NEW_CONSOLE or          { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil,                           { pointer to new environment block }
    nil,                           { pointer to current directory name }
    StartupInfo,                   { pointer to STARTUPINFO }
    ProcessInfo);
 
  {Espera a que termine la ejecucion}
  {Wait until execution finish}
  repeat 
    exitCode := WaitForSingleObject( ProcessInfo.hProcess,1000);
    Application.ProcessMessages;
  until (exitCode <> WAIT_TIMEOUT);
  GetExitCodeProcess(ProcessInfo.hProcess,Resultado);
  MessageBeep(0);
  CloseHandle(ProcessInfo.hProcess );
  Result:=Resultado;
end;

end.
