unit Iterator.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Iterator.Model.Interfaces,
  Iterator.Model.Itens, Iterator.Model.Venda;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FVenda : iVenda;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  FVenda.Add(
    TModelItens.New
     .Quantidade(StrToCurr(edt1.Text))
     .Preco(StrToCurr(edt2.Text))
  );
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
   mmo1.Lines.Add(FormatCurr('R$ #,##0.00',FVenda.Total));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FVenda := TModelVenda.New;
end;

end.
