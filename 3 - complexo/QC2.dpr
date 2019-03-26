program QC2;


{$APPTYPE CONSOLE}

uses
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas',
  SysUtils;

{$R *.RES}

var
  vFrame: TFrame;
  vBotao: TBotao;
  vMemo: TMemo;
  vLabel: TLabel;

  vX : Integer;
  vY : Integer;
  vAltura : Integer;
  vLargura : Integer;
begin
  vFrame := TFrame.Create;
  vFrame.X := 10;
  vFrame.Y := 10;
  vFrame.Altura := 350;
  vFrame.Largura := 450;

  vLabel := TLabel.Create;
  vLabel.X := 10;
  vLabel.Y := 10;
  vLabel.Altura := 20;
  vLabel.Largura := 100;

  vMemo := TMemo.Create;
  vMemo.X := 10;
  vMemo.Y := 40;
  vMemo.Altura := 40;
  vMemo.Largura := 100;

  vBotao := TBotao.Create;
  vBotao.X := 10;
  vBotao.Y := 60;
  vBotao.Altura := 20;
  vBotao.Largura := 100;

  Writeln('Dimensoes:');
  Writeln('Frame: (X: ' + IntToStr(vFrame.X) + ', Y: ' + IntToStr(vFrame.Y) + '), (' + IntToStr(vFrame.Altura) + 'x' + IntToStr(vFrame.Largura) + ')');
  Writeln('Label: (X: ' + IntToStr(vLabel.X) + ', Y: ' + IntToStr(vLabel.Y) + '), (' + IntToStr(vLabel.Altura) + 'x' + IntToStr(vLabel.Largura) + ')');
  Writeln('Memo: (X: ' + IntToStr(vMemo.X) + ', Y: ' + IntToStr(vMemo.Y) + '), (' + IntToStr(vMemo.Altura) + 'x' + IntToStr(vMemo.Largura) + ')');
  Writeln('Botao: (X: ' + IntToStr(vBotao.X) + ', Y: ' + IntToStr(vBotao.Y) + '), (' + IntToStr(vBotao.Altura) + 'x' + IntToStr(vBotao.Largura) + ')');
        
  while True do
    begin
      Writeln('');
      Writeln('Redimensionar Frame:');
      Write('X:');
      Readln(vX);
      Write('Y:');
      Readln(vY);
      Write('Altura:');
      Readln(vAltura);
      Write('Largura:');
      Readln(vLargura);      

      vFrame.AdicionaComponente(vBotao);
      vFrame.AdicionaComponente(vMemo);
      vFrame.AdicionaComponente(vLabel);
            
      vFrame.X := vX;
      vFrame.Y := vY;
      vFrame.Altura := vAltura;
      vFrame.Largura := vLargura;  

      Writeln('');
      Writeln('Frame: (X: ' + IntToStr(vFrame.X) + ', Y: ' + IntToStr(vFrame.Y) + '), (' + IntToStr(vFrame.Altura) + 'x' + IntToStr(vFrame.Largura) + ')');
      Writeln('Label: (X: ' + IntToStr(vLabel.X) + ', Y: ' + IntToStr(vLabel.Y) + '), (' + IntToStr(vLabel.Altura) + 'x' + IntToStr(vLabel.Largura) + ')');
      Writeln('Memo: (X: ' + IntToStr(vMemo.X) + ', Y: ' + IntToStr(vMemo.Y) + '), (' + IntToStr(vMemo.Altura) + 'x' + IntToStr(vMemo.Largura) + ')');            
      Writeln('Botao: (X: ' + IntToStr(vBotao.X) + ', Y: ' + IntToStr(vBotao.Y) + '), (' + IntToStr(vBotao.Altura) + 'x' + IntToStr(vBotao.Largura) + ')');
    end
end.

