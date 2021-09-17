unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TCalculadora }

  TCalculadora = class(TForm)
    btLimpar: TButton;
    edtResultado: TEdit;
    lbResultado: TLabel;
    rdgOperacoes: TRadioGroup;
    edtNum1: TEdit;
    edtNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btLimparClick(Sender: TObject);
    procedure rdgOperacoesClick(Sender: TObject);
  private

  public

  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.lfm}

{ TCalculadora }

procedure TCalculadora.rdgOperacoesClick(Sender: TObject);
        var
          Resultado, Num1 , Num2 : Real;
begin
      Num1 :=StrToFloat (edtNum1.text);
      Num2 :=StrToFloat (edtNum2.text);

      case rdgOperacoes.ItemIndex of
     0:Resultado:=Num1+Num2;
     1:Resultado:=Num1-Num2;
     2:Resultado:=Num1*Num2;
     3:Resultado:=Num1/Num2;
   end;
    edtResultado.text := FloatToStr(Resultado);
   end;

procedure TCalculadora.btLimparClick(Sender: TObject);
begin
  edtNum1.clear;
  edtNum2.Clear;
  edtResultado.clear;
end;


end.

