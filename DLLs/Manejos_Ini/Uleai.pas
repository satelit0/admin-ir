unit Uleai;

interface
uses
  //ShareMem,
  SysUtils,
  Classes,
  IniFiles,
  Dialogs;

  function leCadINI({clave, cadena, defecto: String}): PChar; stdcall;
  procedure esCadINI(clave, cadena, valor: String); stdcall;


implementation

function leCadINI({clave, cadena, defecto: String}): PChar; stdcall;
begin
 { with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;  }
  Result:='ok';
end;

procedure esCadINI(clave, cadena, valor: String); stdcall;
begin
{  with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;       }
end;
end.
