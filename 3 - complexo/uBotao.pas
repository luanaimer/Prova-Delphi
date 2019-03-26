unit uBotao;

interface

uses
  uComponente;

type

  TBotao = class(TComponente)  
  private
    procedure RedimensionaX(aXNovo, aXAntigo : Integer); override;
    procedure RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer); override;
    procedure RedimensionaLargura(aLarguraNova, aLarguraAntiga : Integer); override;
    procedure RedimensionaY(aYNova, aYAntiga : Integer); override;
  end;

implementation


{ TBotao }

procedure TBotao.RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer);
begin
  inherited;

end;

procedure TBotao.RedimensionaLargura(aLarguraNova,
  aLarguraAntiga: Integer);
var
  vLargura : Integer;
begin
  inherited;
  vLargura := Trunc((aLarguraNova * Largura) / aLarguraAntiga);
  SetLargura(vLargura);
end;

procedure TBotao.RedimensionaX(aXNovo, aXAntigo: Integer);
var
  vX : Integer;
begin
  inherited;
  vX := Trunc((aXNovo * X) / aXAntigo);
  SetX(vX);
end;

procedure TBotao.RedimensionaY(aYNova, aYAntiga: Integer);
var
  vY : Integer;
begin
  inherited;
  vY := Trunc((aYNova * Y) / aYAntiga);
  SetY(vY);
end;

end.

