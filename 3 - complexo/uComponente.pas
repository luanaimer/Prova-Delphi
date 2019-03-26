unit uComponente;

interface

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;

    procedure SetXComponentes(aXAntigo : Integer);
    procedure SetAlturaComponentes(aAlturaAntiga : Integer);
    procedure SetLarguraComponentes(aLarguraAntiga : Integer);
    procedure SetYComponentes(aYAntigo : Integer);
  protected
    procedure SetX(const Value: Integer);
    procedure SetAltura(const Value: Integer);
    procedure SetComponentes(const Value: TComponenteArray);
    procedure SetLargura(const Value: Integer);
    procedure SetY(const Value: Integer);
      
    procedure RedimensionaX(aXNovo, aXAntigo : Integer); virtual; abstract;
    procedure RedimensionaAltura(aAlturaNova, aAlturaAntiga: Integer); virtual; abstract;
    procedure RedimensionaLargura(aLarguraNova, aLarguraAntiga : Integer); virtual; abstract;
    procedure RedimensionaY(aYNova, aYAntiga : Integer); virtual; abstract;
  public
    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;

    property X           : Integer          read FX            write SetX;
    property Y           : Integer          read FY            write SetY;
    property Altura      : Integer          read FAltura       write SetAltura;
    property Largura     : Integer          read FLargura      write SetLargura;
    property Componentes : TComponenteArray read FComponentes  write SetComponentes;
  end;

implementation

procedure TComponente.AdicionaComponente(aComponente: TComponente);
var
  vComponentes : TComponenteArray;
begin
  vComponentes := Componentes;

  SetLength(vComponentes, Length(vComponentes)+1);
  vComponentes[Length(vComponentes)-1] := aComponente;

  SetComponentes(vComponentes);
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
var
  vComponentes : TComponenteArray;
  vI : Integer;
  vPos : Integer;
begin
  vComponentes := Componentes;
  vPos := 0;

  for vI := 0 to Length(vComponentes) - 1 do
    begin
      if (vComponentes[vI] = aComponente) then
        vPos := vI;
    end;

   for vI := vPos to Length(vComponentes) - 2 do
     begin
       vComponentes[vI] := vComponentes[vI+1];
     end;

  SetLength(vComponentes, Length(vComponentes)-1);
  SetComponentes(vComponentes);
end;

procedure TComponente.SetAltura(const Value: Integer);
var
  vAlturaAntigo : Integer;
begin
  vAlturaAntigo := Altura;
  FAltura := Value;
  SetAlturaComponentes(vAlturaAntigo);
end;

procedure TComponente.SetAlturaComponentes(aAlturaAntiga: Integer);
var
  vI : Integer;
begin
  for vI := 0 to Length(Componentes) - 1 do
    begin
      Componentes[vI].RedimensionaAltura(Altura, aAlturaAntiga);
    end;
end;

procedure TComponente.SetComponentes(const Value: TComponenteArray);
begin
  FComponentes := Value;
end;

procedure TComponente.SetLargura(const Value: Integer);
var
  vLarguraAntigo : Integer;
begin
  vLarguraAntigo := Largura;
  FLargura := Value;
  SetLarguraComponentes(vLarguraAntigo);
end;

procedure TComponente.SetLarguraComponentes(aLarguraAntiga: Integer);
var
  vI : Integer;
begin
  for vI := 0 to Length(Componentes) - 1 do
    begin
      Componentes[vI].RedimensionaLargura(Largura, aLarguraAntiga);
    end;
end;

procedure TComponente.SetX(const Value: Integer);
var
  vXAntigo : Integer;
begin
  vXAntigo := X;
  FX := Value;
  SetXComponentes(vXAntigo);
end;

procedure TComponente.SetXComponentes(aXAntigo: Integer);
var
  vI : Integer;
begin
  for vI := 0 to Length(Componentes) - 1 do
    begin
      Componentes[vI].RedimensionaX(X, aXAntigo);
    end;
end;

procedure TComponente.SetY(const Value: Integer);
var
  vYAntigo : Integer;
begin
  vYAntigo := Y;
  FY := Value;
  SetYComponentes(vYAntigo);
end;

procedure TComponente.SetYComponentes(aYAntigo: Integer);
var
  vI : Integer;
begin
  for vI := 0 to Length(Componentes) - 1 do
    begin
      Componentes[vI].RedimensionaY(Y, aYAntigo);
    end;
end;

end.

