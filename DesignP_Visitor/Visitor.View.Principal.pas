unit Visitor.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Visitor.Model.Interfaces, Visitor.Model.Item,
  Visitor.Model.Item.Regra.Atacado, Visitor.Model.Item.Regra.Varejo;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FItem : iItem;
    function TabelaPreco : iVisitor;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  showmessage(FormatCurr('R$ #,##0.00',
  FItem
     .SetPrecoUnitario(StrToCurr(Edit1.text))
     .regras
     .Accept(TabelaPreco)
     .PrecoVenda));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    showmessage(FormatCurr('R$ #,##0.00',
  FItem
     .SetPrecoUnitario(StrToCurr(Edit1.text))
     .regras
     .Accept(TabelaPreco)
     .PrecoPromocao));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FItem := TModelItem.new;
end;

function TForm1.TabelaPreco: iVisitor;
begin
  case ComboBox1.itemindex of
    1: REsult := TModelItemRegraAtacado.new.visitor;
    0: Result := TModelItemRegraVarejo.new.visitor;
  end;
end;

end.
