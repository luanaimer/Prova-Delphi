program QS6;

{$APPTYPE CONSOLE}

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}

var
  vSubstitui : TSubstitui;
  vStringSubstituida : String;
  vReadln : String;
begin
  vSubstitui := TSubstitui.Create;
  try
    vStringSubstituida := vSubstitui.Substituir('O rato roeu a roupa do rei de roma','ro','teste');
    Writeln(vStringSubstituida);
    Readln(vReadln);

  finally
    vSubstitui.Free;
  end;
end.

