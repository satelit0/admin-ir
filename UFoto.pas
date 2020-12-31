unit UFoto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ExtCtrls, bsSkinCtrls, StdCtrls, {tscap32_rt,}
  Clipbrd, Menus;

type
  TFFotos = class(TForm)
    BT_CapturarImagen: TbsSkinButton;
    PN_Foto: TPanel;
    {CaptImagen_1: TtsCap32;
    tsCap32PopupMenu1: TtsCap32PopupMenu;
    tsCap32Dialogs1: TtsCap32Dialogs;}
    BSF_F1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT_CapturarImagenClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    idResultado : THandle;
    procedure IniciarCamara;
  public
    { Public declarations }
  end;

var
  FFotos: TFFotos;

implementation

uses UPrincipal, UNuevoPaciente;

{$R *.dfm}
  const WM_CAP_START = WM_USER;
  const WM_CAP_STOP = WM_CAP_START + 68;
  const WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;
  const WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;
  const WM_CAP_SAVEDIB = WM_CAP_START + 25;
  const WM_CAP_GRAB_FRAME = WM_CAP_START + 60;
  const WM_CAP_SEQUENCE = WM_CAP_START + 62;
  const WM_CAP_FILE_SET_CAPTURE_FILEA = WM_CAP_START + 20;
  const WM_CAP_EDIT_COPY = WM_CAP_START+ 30;
  const WM_CAP_SET_PREVIEW = WM_CAP_START+ 50;
  const WM_CAP_SET_PREVIEWRATE = WM_CAP_START+ 52;

  function capCreateCaptureWindowA(lpszWindowName : PCHAR;
          dwStyle : longint; x : integer; y : integer; nWidth : integer;
          nHeight : integer; ParentWin : HWND; nId : integer): HWND; stdcall external 'AVICAP32.DLL';

{ TFFotos }

procedure TFFotos.IniciarCamara;
begin
  {idResultado := capCreateCaptureWindowA('My Own Capture Window',
  WS_CHILD or WS_VISIBLE,  PN_Foto.Left, PN_Foto.Top, PN_Foto.Width,
  PN_Foto.Height, _FFotos.Handle, 0);
  if idResultado <> 0 then
    begin
      try
        SendMessage(idResultado, WM_CAP_DRIVER_CONNECT, 0, 0);
        SendMessage(idResultado, WM_CAP_SET_PREVIEWRATE, 40, 0);
        SendMessage(idResultado, WM_CAP_SET_PREVIEW, 1, 0);
      except

      raise;

      end;
    end
  else
    begin
      MessageDlg ('Error al conectar al driver de la cámara.',
      mtError, [mbok], 0);
    end;  }
end;

procedure TFFotos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{if idResultado <> 0 then
  begin
    SendMessage(idResultado, WM_CAP_DRIVER_DISCONNECT, 0, 0);
    idResultado := 0;
  end;}
  //_FNuevoPaciente.IMG_Paciente.Picture.LoadFromClipboardFormat(CF_BITMAP, Clipboard.GetAsHandle(CF_PICTURE),0);
end;

procedure TFFotos.BT_CapturarImagenClick(Sender: TObject);
begin
 { CaptImagen_1.CopyToClipBoard:=True;
  _FNuevoPaciente.IMG_Paciente.Picture.LoadFromClipboardFormat(CF_BITMAP, Clipboard.GetAsHandle(CF_BITMAP),0);
  _FNuevoPaciente.IMG_Paciente.Tag:=2;
  R_N_FotoPaciente:='';
  Self.Close;}
end;

procedure TFFotos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

end.
