unit ProtoType.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ProtoType.Model.Interfaces,ProtoType.Model.Itens,
  System.Generics.Collections;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    mmo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FLista : TList<iItens>;
    procedure ExibeItens;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  Item : iItens;
begin
  Item := ProtoType.Model.Itens.TItens.New;
  Item.Codigo := StrToInt(edt1.Text);
  Item.Descricao := edt2.Text;
  FLista.Add(Item);
  ExibeItens;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  FLista.Add(Flista[Pred(FLista.Count)].Prototype.Clone);
  ExibeItens;
end;

procedure TForm1.ExibeItens;
var
  i : Integer;
begin
  mmo1.Lines.Clear;
  for I := 0 to Pred(FLista.Count) do
    mmo1.Lines.Add(FLista[i].Codigo.ToString + ' - ' + FLista[i].Descricao +
    FormatCurr(' -  R$ #,##0.00', FLista[i].PrecoVenda)  );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    FLista := TList<iItens>.Create;
end;

end.
