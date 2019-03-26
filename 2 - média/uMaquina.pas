unit uMaquina;

interface

uses
  uIMaquina, Classes,

  uTroco;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  vTroco        : TTroco;
  vQtd,
  vValorNotas,
  vValorMoedas,
  wI            : Integer;
  vDecimal      : Double;
begin
  vValorNotas   := Trunc(aTroco);
  
  vDecimal      := aTroco - vValorNotas;
  if vDecimal > 0 then
    vValorMoedas  := Trunc(vDecimal * 100);

  wI     := 0;
  Result := TList.Create;

  while vValorNotas <> 0 do
    begin
      vQtd := 0;
      vQtd := vValorNotas div 100;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 100);
          vTroco := TTroco.Create(ceNota100, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 50;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 50);
          vTroco := TTroco.Create(ceNota50, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 20;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 20);
          vTroco := TTroco.Create(ceNota20, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 10;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 10);
          vTroco := TTroco.Create(ceNota10, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 5;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 5);
          vTroco := TTroco.Create(ceNota5, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 2;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 2);
          vTroco := TTroco.Create(ceNota2, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorNotas div 1;
      if vQtd > 0 then
        begin
          vValorNotas := vValorNotas - (vQtd * 1);
          vTroco := TTroco.Create(ceMoeda100, vQtd);
          Result.Add(vTroco);
        end;                          
    end;

  while vValorMoedas <> 0 do
    begin
      vQtd := 0;
      vQtd := vValorMoedas div 50;
      if vQtd > 0 then
        begin
          vValorMoedas := vValorMoedas - (vQtd * 50);
          vTroco := TTroco.Create(ceMoeda50, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorMoedas div 25;
      if vQtd > 0 then
        begin
          vValorMoedas := vValorMoedas - (vQtd * 25);
          vTroco := TTroco.Create(ceMoeda25, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorMoedas div 10;
      if vQtd > 0 then
        begin
          vValorMoedas := vValorMoedas - (vQtd * 10);
          vTroco := TTroco.Create(ceMoeda10, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorMoedas div 5;
      if vQtd > 0 then
        begin
          vValorMoedas := vValorMoedas - (vQtd * 5);
          vTroco := TTroco.Create(ceMoeda5, vQtd);
          Result.Add(vTroco);
        end;

      vQtd := 0;
      vQtd := vValorMoedas div 1;
      if vQtd > 0 then
        begin
          vValorMoedas := vValorMoedas - (vQtd * 1);
          vTroco := TTroco.Create(ceMoeda1, vQtd);
          Result.Add(vTroco);
        end;
    end;
end;

end.

