unit uFrame;

interface

uses
  uComponente;

type

  TFrame = class(TComponente)
  private
    procedure RedimensionaX(aXNovo, aXAntigo : Integer); override;
    procedure RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer); override;
    procedure RedimensionaLargura(aLarguraNova, aLarguraAntiga : Integer); override;
    procedure RedimensionaY(aYNova, aYAntiga : Integer); override;
  end;

implementation

{ TFrame }

procedure TFrame.RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer);
var
  vAltura : Integer;
begin
  inherited;
  vAltura := Trunc((aAlturaNova * Altura) / aAlturaAntiga);
  SetAltura(vAltura);
end;

procedure TFrame.RedimensionaLargura(aLarguraNova,
  aLarguraAntiga: Integer);
var
  vLargura : Integer;
begin
  inherited;
  vLargura := Trunc((aLarguraNova * Largura) / aLarguraAntiga);
  SetLargura(vLargura); 
end;

procedure TFrame.RedimensionaX(aXNovo, aXAntigo: Integer);
var
  vX : Integer;
begin
  inherited;
  vX := Trunc((aXNovo * X) / aXAntigo);
  SetX(vX);
end;

procedure TFrame.RedimensionaY(aYNova, aYAntiga: Integer);
var
  vY : Integer;
begin
  inherited;
  vY := Trunc((aYNova * Y) / aYAntiga);
  SetY(vY);
end;

end.

