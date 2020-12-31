program InventarioR;

uses
  Forms,
  Dialogs,
  SysUtils,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UNuevoPaciente in 'UNuevoPaciente.pas' {FNuevoPaciente},
  UContenedorDatos in 'UContenedorDatos.pas' {DTM_DATOS: TDataModule},
  UMedicos in 'UMedicos.pas' {FMedicos},
  UEspecialidadMedica in 'UEspecialidadMedica.pas' {FEspecialidadMedica},
  UReportes in 'UReportes.pas' {FReportes},
  UDatosMiscelaneos in 'UDatosMiscelaneos.pas' {FDatosMiscelaneos},
  UFoto in 'UFoto.pas' {FFotos},
  UDiagnostico in 'UDiagnostico.pas' {FDiagnostico},
  UEnfermedades in 'UEnfermedades.pas' {FEnfermedades},
  UArs in 'UArs.pas' {FArs},
  UUsuario in 'UUsuario.pas' {FUsuarios},
  ULogin in 'ULogin.pas' {FLoginUsuario},
  UCedulados in 'UCedulados.pas' {FCedulados},
  UConf in 'UConf.pas' {FConf},
  UEstanteria in 'UEstanteria.pas' {FEstanteria},
  UNSS in 'UNSS.pas',
  AES in 'AES.pas',
  base64 in 'base64.pas',
  URestauraDB in 'URestauraDB.pas';

{$R *.res}

begin
  Application.Title := 'Inventario Recods';
  if TFLoginUsuario.Execute then
    begin
      Application.Initialize; 
      Application.CreateForm(TDTM_DATOS, DTM_DATOS);
      Application.CreateForm(TFPrincipal, FPrincipal);
      Application.Run;
    end;
end.
