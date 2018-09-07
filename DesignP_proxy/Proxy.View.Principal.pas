unit Proxy.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Proxy.Model.Inferfaces,
  Proxy.Model.Produto.Proxy;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    mmo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FProduto : iProxyProduto;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  mmo1.Lines.Add('BUSCANDO O PRODUTO: ' + edt1.Text + ' AGUARDE...');
  FProduto.ConsultaID(StrToInt(edt1.text));
  mmo1.Lines.Add('PRODUTO: '+ edt1.Text + ' ENCONTRADO');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FProduto := TModelProdutoProxy.New;
end;

end.
