unit Adapter.Model.Itens;

interface

uses
  Adapter.Model.Interfaces, System.Generics.Collections;

type
   TModelItens = class(TInterfacedObject, iModelItens)
      private
        FLista : TList<iModelItens>;
        FProduto : string;
        FValor : Currency;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iModelItens;
         function Add(Value : iModelItens) : iModelItens;
         function Itens : TList<iModelItens>;
         function GetProduto : string;
         function GetValor : Currency;
         function SetProduto(Value : string) : iModelItens;
         function SetValor(Value : Currency) : iModelItens;

end;

implementation

uses
  System.SysUtils;

{ TModelItens }

function TModelItens.Add(Value: iModelItens): iModelItens;
begin
   Result := Self;
   FLista.Add(Value);
end;

constructor TModelItens.Create;
begin
   FLista := TList<iModelItens>.Create;
end;

destructor TModelItens.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelItens.GetProduto: string;
begin
    Result := FProduto;
end;

function TModelItens.GetValor: Currency;
begin
    Result := FValor;
end;

function TModelItens.Itens: TList<iModelItens>;
begin
    Result := FLista;
end;

class function TModelItens.New: iModelItens;
begin
  Result := Self.Create;
end;

function TModelItens.SetProduto(Value: string): iModelItens;
begin
    Result := Self;
    FProduto := Value;
end;

function TModelItens.SetValor(Value: Currency): iModelItens;
begin
   Result := self;
   FValor := Value;
end;

end.
