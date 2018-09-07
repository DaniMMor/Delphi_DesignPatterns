unit Adapter.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Adapter.Model.Interfaces;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    mmo1: TMemo;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FItem : iControllerItens;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Adapter.Controller.Itens;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var item: TItens;
begin
  item.Produto := edt1.Text;
  item.Valor := StrToCurr(edt2.text);
  FItem.Add(item);
end;

procedure TForm1.btn2Click(Sender: TObject);
var i: Integer;
begin
  mmo1.Lines.Clear;
  for I := 0 to Pred(fitem.Itens.Count) do
    mmo1.Lines.Add(
       FItem.Itens[i].Produto + '  -  ' +
       FormatCurr('R$ #,##0.00', FItem.Itens[i].Valor)
    );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    FItem := TControllerItens.New;
end;

end.
