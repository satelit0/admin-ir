unit URestauraDB;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, Mask, bsSkinBoxCtrls, bsSkinCtrls,
  DB, DBCtrls, IBCustomDataSet, IBQuery, StdCtrls, ExtCtrls, ShellAPI;
type
  TRestaur = class(TObject)
private

public
  procedure RestaurarDBFB(RutaBackup, RutaDestino:string);

end;
var
  __RestauraDB:TRestaur;

implementation


{ TRestaur }

procedure TRestaur.RestaurarDBFB(RutaBackup, RutaDestino:string);
var
  lpOperation, lpFile, lpParameters, lpDirectory: PChar;
begin
 { if FileExists(RutaBackup) then
    begin
        with TPanel.Create(nil) do
          try
              Caption:= 'Restaurando copia de seguridad, aguarde un momento por favor...';
              Font.Size:= 14;
              Font.Name:= 'Arial';
              Width:= 600;
              Height:= 70;
              Left:= (Self.ClientWidth - Width) div 2;
              Top:= (Self.ClientHeight - Height) div 2;
              BevelInner:= bvNone;
              BevelOuter:= bvNone;
              BevelWidth:= 1;
              BorderStyle:= bsSingle;
              Ctl3D:= False;
              Parent:= Self;

              lpOperation:= 'open';
              lpFile:= 'gbak.exe';
              RutaBackup:= ' "'+RutaBackup+ '" ';
              RutaDestino:= ' "'+RutaDestino+'" ';
              lpParameters:= PChar('-r -v -rep -p 8192 -user SYSDBA -password "33fv7719" ' +
              RutaBackup+RutaDestino);
              lpDirectory:= PChar(GetEnvironmentVariable('ProgramFiles')+'\Firebird\Firebird_2_5\bin');
              ShellExecute(Application.Handle, lpOperation, lpFile, lpParameters, lpDirectory, SW_HIDE);

          finally

          end;

    end;  }

end;

end.
