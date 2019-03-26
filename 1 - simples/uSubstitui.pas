unit uSubstitui;

interface

uses
 uISubstitui;

type

 TSubstitui = class(TInterfacedObject, ISubstitui)
 public
  function Substituir(aStr, aVelho, aNovo: String): String;
 end;

implementation

{ TSubstitui }

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
 vCont1,
 vCont2,
 vCont3,
 vPosIni,
 vPosFinal: Integer;
begin
  Result := '';

  vCont1 := 1;
  while vCont1 <= Length(aStr) do
    begin
      vPosIni := 0;
      vPosFinal := 0;

      if aStr[vCont1] = aVelho[1] then
        begin
         vPosIni := vCont1;
         vCont3 := vCont1;

         for vCont2 := 1 to Length(aVelho) do
           begin
            if aStr[vCont3] = aVelho[vCont2] then
             vPosFinal := vCont3
            else
             vPosFinal := 0;

            Inc(vCont3);
           end;
        end;

      if vPosFinal > 0 then
        begin
         vCont1 := vPosFinal;
         Result := Result + aNovo;
        end
      else
        begin
          Result := Result + aStr[vCont1];
        end;

      Inc(vCont1);
    end;

  if Result = '' then
     Result := aStr;
end;

end.
