unit Mediator.Model.Pedido;

interface

uses
  Mediator.Model.Interfaces;

type
   TModelPedido = class(TInterfacedObject, iColleague, iDisplay<iColleague>)
      private
        FDestino, FOrigem : iColleague;
        FMediator : iMediator;
        FPedido, FName : string;
        FDisplay : TEvExibir;

      public
         constructor Create(value : iMediator; Name : string);
         destructor Destroy ; override;
         class function New(value : iMediator; Name : string): iColleague;
         function EnviarPedido(FDestino : iColleague; Pedido : string) : iColleague;
         function ReceberPedido(FOrigem : iColleague; Pedido : string) : iColleague;
         function GetName : string;
         function Display : iDisplay<iColleague>;
         function Exibir(value : TEvExibir) : iDisplay<iColleague>;
         function &end : iColleague;
end;

implementation

uses
  System.SysUtils;

{ TModelPedido }

function TModelPedido.&end: iColleague;
begin
   Result := Self;
end;

constructor TModelPedido.Create(value : iMediator; Name : string);
begin
   FMediator := value;
   FName := Name;
   FMediator.Add(self);
end;

destructor TModelPedido.Destroy;
begin
  FMediator.Remove(FName);
  inherited;
end;

function TModelPedido.Display: iDisplay<iColleague>;
begin
   Result := Self;
end;

function TModelPedido.EnviarPedido(FDestino: iColleague;
  Pedido: string): iColleague;
begin
   Result := Self;
   FMediator.EnviarPedido(Self,FDestino,Pedido);
   FDisplay(Format('Pedido %s enviado para o setor %s', [Pedido,FDestino.GetName]));
end;

function TModelPedido.Exibir(value: TEvExibir): iDisplay<iColleague>;
begin
   Result := Self;
   FDisplay := value;
end;

function TModelPedido.GetName: string;
begin
   Result := FName;
end;

class function TModelPedido.New(value : iMediator; Name : string): iColleague;
begin
  Result := Self.Create(value,Name);
end;

function TModelPedido.ReceberPedido(FOrigem: iColleague;
  Pedido: string): iColleague;
begin
   Result := Self;
   Self.FOrigem := FOrigem;
   Self.FPedido := Pedido;
   FDisplay(Format('Pedido %s foi Recebido com sucesso do setor &s', [FPedido, self.FOrigem.GetName]));
end;

end.
