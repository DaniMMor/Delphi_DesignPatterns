unit Command.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Command.Model.NotaFiscal, Command.Model.Interfaces;

type
  TForm1 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  FNota : iNotaFiscal;
  public
    { Public declarations }
    procedure Exibir(Value:String);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  FNota.EnviarNotaFiscal;
end;

procedure TForm1.Exibir(Value: String);
begin
  mmo1.Lines.Add(Value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FNota := TModelNotaFiscall.New.Display(Exibir);
end;

end.
