unit Mediator.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Mediator.Model.Interfaces, Mediator.Model.Pedido;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    mmo2: TMemo;
    btn1: TButton;
    btn2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FMediator : iMediator;
    FCaixa, FCozinha : iColleague;
  public
    { Public declarations }
    procedure ExibirCaixa(value : string);
    procedure ExibirCozinha(value : string);

  end;

var
  Form1: TForm1;

implementation

uses
  Mediator.Model.Pedido.Mediator;

{$R *.dfm}

{ TForm1 }

procedure TForm1.btn1Click(Sender: TObject);
begin
  FCaixa
    .EnviarPedido(
     FCozinha,
     'Big Mac'
    );
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  FCozinha
    .EnviarPedido(
      FCaixa,
      'Big Mac está pronto'
    );
end;

procedure TForm1.ExibirCaixa(value: string);
begin
  mmo1.Lines.Add(value);
end;

procedure TForm1.ExibirCozinha(value: string);
begin
  mmo2.Lines.Add(value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FMediator := TModelPedidoMediator.New;
   FCaixa := TModelPedido.New(FMediator,'CAIXA').Display.Exibir(ExibirCaixa).&end;
   FCozinha := TModelPedido.New(FMediator,'COZINHA').Display.Exibir(ExibirCozinha).&end;
end;

end.
