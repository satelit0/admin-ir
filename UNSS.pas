unit UNSS;

interface

uses Windows, Messages, SysUtils, Variants, Classes,Dialogs, StdCtrls, DB, IBCustomDataSet,
IBQuery, JvBalloonHint, UNuevoPaciente;

type TNSS = class(TFNuevoPaciente)

private

public
  procedure InsertaNSS(const id_pat, id_ars:Integer; numero_ss:string; fecha_creado:TDateTime);
  procedure ModificaNss(const Id_nss, id_pat, id_ars:Integer; numero_ss:string);
  procedure EliminarNSS(const Id_Nss, Mensaje:Integer);

  function GetIDNSS_IdPaciente(const Id_Pat:Integer):Integer;
  function GetNSS_IdPaciente(const Id_Pat:Integer):string;
  function GetIdARS_NSS(const Nss:string):Integer;
  function GetIdPaciente_NSS(const NSS:string):string;
  function ValidaNssExist(const Nss:string):Boolean;
 end;
var
  NumSegSoc:TNSS;

 implementation

uses UContenedorDatos, UPrincipal;

{ TNSS }

procedure TNSS.EliminarNSS(const Id_Nss, Mensaje: Integer);
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  with IBQr_Nss do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('delete from nss where idnss = :p0;');
      Params[0].Value:=Id_Nss;
      ExecSQL;
      Free;
    end;
  if Mensaje = 1 then
    FPrincipal.MS_Personalizado.MessageDlg('Acción realizada con éxito,', mtInformation, [mbOK], 0);
end;

function TNSS.GetIdARS_NSS(const Nss: string): integer;
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  with IBQr_Nss do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select id_ars from nss where numero_ss = :p0;');
      Params[0].Value:=Nss;
      Open;
    end;
  if IBQr_Nss.RecordCount > 0then
    begin
      Result:=IBQr_Nss.FieldByName('id_ars').AsInteger;
    end
  else
    begin
      Result:=0;
    end;
  IBQr_Nss.Free;
end;

function TNSS.GetIDNSS_IdPaciente(const Id_Pat: Integer): Integer;
var
  IBQr_IdNss:TIBQuery;
begin
  IBQr_IdNss:=TIBQuery.Create(Self);
  with IBQr_IdNss do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select idnss from nss where id_paciente = :p0;');
      Params[0].Value:=Id_Pat;
      Open;
    end;
  if IBQr_IdNss.RecordCount > 0then
    begin
      Result:=IBQr_IdNss.FieldByName('idnss').AsInteger;
    end
  else
    begin
      Result:=0;
    end;
  IBQr_IdNss.Free;
end;

function TNSS.GetIdPaciente_NSS(const NSS: string): string;
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  try
    with IBQr_Nss do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('select id_paciente from nss where numero_ss = :p0');
        Params[0].Value:=NSS;
        Open;
      end;
    if(IBQr_Nss.RecordCount > 0)then
      Result:=IBQr_Nss.fieldByName('id_paciente').AsString
    else
      Result:='0';
  finally
    IBQr_Nss.Free;
  end;
end;

function TNSS.GetNSS_IdPaciente(const Id_Pat: Integer): string;
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  with IBQr_Nss do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select numero_ss from nss where id_paciente = :p0;');
      Params[0].Value:=Id_Pat;
      Open;
    end;
  if IBQr_Nss.RecordCount > 0then
    begin
      Result:=IBQr_Nss.FieldByName('numero_ss').AsString;
    end
  else
    begin
      Result:='';
    end;
  IBQr_Nss.Free;
end;

procedure TNSS.InsertaNSS(const id_pat, id_ars: Integer;
  numero_ss: string; fecha_creado: TDateTime);
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  try
    with IBQr_Nss do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('insert into nss (id_paciente, id_ars, numero_ss, fecha_creado)');
        SQL.Add('values (:id_paciente, :id_ars, :numero_ss, :fecha_creado)');
        Params[0].Value:=id_pat;
        Params[1].Value:=id_ars;
        Params[2].Value:=numero_ss;
        Params[3].Value:=Now;
        ExecSQL;
      end;
  finally
    IBQr_Nss.Free;
  end;
end;

procedure TNSS.ModificaNss(const Id_nss, id_pat, id_ars: Integer;
  numero_ss: string);
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  try
    with IBQr_Nss do
      begin
        Close;
        Database:=DTM_DATOS.IDB_BaseDatos;
        SQL.Clear;
        SQL.Add('update nss');
        SQL.Add('set id_paciente = :id_paciente, id_ars = :id_ars, numero_ss = :numero_ss');
        SQL.Add('where (idnss = :idnss)');
        Params[0].Value:=id_pat;
        Params[1].Value:=id_ars;
        Params[2].Value:=numero_ss;
        Params[3].Value:=Id_nss;
        ExecSQL;
      end;
  finally
    IBQr_Nss.Free;
  end;                         
end;

function TNSS.ValidaNssExist(const Nss:string): Boolean;
var
  IBQr_Nss:TIBQuery;
begin
  IBQr_Nss:=TIBQuery.Create(Self);
  with IBQr_Nss do
    begin
      Close;
      Database:=DTM_DATOS.IDB_BaseDatos;
      SQL.Clear;
      SQL.Add('select numero_ss from nss where numero_ss = :p0;');
      Params[0].Value:=Trim(Nss);
      Open;
    end;
  if IBQr_Nss.RecordCount > 0 then
    begin
      Result:=True;
    end
  else
    begin
      Result:=False;
    end;
  IBQr_Nss.Free;
end;

end.
