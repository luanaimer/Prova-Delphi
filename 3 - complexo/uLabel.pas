unit uLabel;

interface

uses
  uComponente;

type

  TLabel = class(TComponente)
  private
    procedure RedimensionaX(aXNovo, aXAntigo : Integer); override;
    procedure RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer); override;
    procedure RedimensionaLargura(aLarguraNova, aLarguraAntiga : Integer); override;    
    procedure RedimensionaY(aYNova, aYAntiga : Integer); override;
  end;

implementation

{ TLabel }

procedure TLabel.RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer);
begin
  inherited;
end;

procedure TLabel.RedimensionaLargura(aLarguraNova, aLarguraAntiga: Integer);
begin
  inherited;
end;

procedure TLabel.RedimensionaX(aXNovo, aXAntigo: Integer);
var
  vX : Integer;
begin
  inherited;
  vX := Trunc((aXNovo * X) / aXAntigo);
  SetX(vX);
end;

procedure TLabel.RedimensionaY(aYNova, aYAntiga: Integer);
var
  vY : Integer;
begin
  inherited;
  vY := Trunc((aYNova * Y) / aYAntiga);
  SetY(vY);
end;

end.

