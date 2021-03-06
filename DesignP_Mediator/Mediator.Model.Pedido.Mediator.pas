unit Mediator.Model.Pedido.Mediator;

interface

uses
  Mediator.Model.Interfaces, System.Generics.Collections, System.SysUtils;

type
   TModelPedidoMediator = class(TInterfacedObject, iMediator, iDisplay<iMediator>)
      private
         FLista : TDictionary<string,iColleague>;
         FDisplay : TEvExibir;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iMediator;
         function Add(value : iColleague) : iMediator;
         function EnviarPedido(FOrigem, FDestino : iColleague; Pedido : string) : iMediator;
         function Get(value : string) : iColleague;
         function Display : iDisplay<iMediator>;
         function Exibir(value : TEvExibir) : iDisplay<iMediator>;
         function &end : iMediator;
         function Remove(value : string) : iMediator;

end;

implementation

{ TModelPedidoMediator }

function TModelPedidoMediator.&end: iMediator;
begin
    Result := self;
end;

function TModelPedidoMediator.Add(value: iColleague): iMediator;
begin
   Result := self;
   FLista.Add(value.GetName,value);

end;

constructor TModelPedidoMediator.Create;
begin
   FLista := TDictionary<string,iColleague>.Create;
end;

destructor TModelPedidoMediator.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelPedidoMediator.Display: iDisplay<iMediator>;
begin
   Result := Self;
end;

function TModelPedidoMediator.EnviarPedido(FOrigem, FDestino: iColleague;
  Pedido: string): iMediator;
begin
  Result := Self;
  FLista.Items[FDestino.GetName].ReceberPedido(FOrigem,Pedido);
end;

function TModelPedidoMediator.Exibir(value: TEvExibir): iDisplay<iMediator>;
begin
   Result := self;
   Fdisplay := value;
end;

function TModelPedidoMediator.Get(value: string): iColleague;
begin
   Result := Flista.Items[value];
end;

class function TModelPedidoMediator.New: iMediator;
begin
  Result := Self.Create;
end;

function TModelPedidoMediator.Remove(value: string): iMediator;
begin
   Result := self;
   FLista.Remove(value);
end;

end.
