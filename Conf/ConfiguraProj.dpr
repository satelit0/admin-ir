program ConfiguraProj;

uses
  Forms,
  UConfiguracion in 'UConfiguracion.pas' {_FConfiguracion},
  AES in '..\AES.pas',
  base64 in '..\base64.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Configuarción';
  Application.CreateForm(T_FConfiguracion, _FConfiguracion);
  Application.Run;
end.
