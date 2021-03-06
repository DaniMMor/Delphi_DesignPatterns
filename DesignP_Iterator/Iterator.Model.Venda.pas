unit Iterator.Model.Venda;

interface

uses
  Iterator.Model.Interfaces, System.Generics.Collections;

type
   TModelVenda = class(TInterfacedObject, iVenda)
      private
       FItens : TList<iItens>;
       FIteratorItens : iIteratorItens;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iVenda;
         function Add(value : iItens) : iVenda;
         function Total : Currency;
         function Itens : iIteratorItens;


end;

implementation

uses
  System.SysUtils, Iterator.Model.Itens.Iterator;

{ TModelVenda }

function TModelVenda.Add(value: iItens): iVenda;
begin
   Result := self;
   FItens.Add(value);
end;

constructor TModelVenda.Create;
begin
  FItens := TList<iItens>.Create;
  FIteratorItens := TModelItensIterator.new;
end;

destructor TModelVenda.Destroy;
begin
  FreeAndNil(FItens);
  inherited;
end;

function TModelVenda.Itens: iIteratorItens;
begin
   Result := FIteratorItens.AddList(FItens);
end;

class function TModelVenda.New: iVenda;
begin
  Result := Self.Create;
end;

function TModelVenda.Total: Currency;
var
  I: iIteratorItens;
begin
  Result := 0;
  i := Self.Itens;

  while i.hasNext do
    Result := Result + i.Next.Total;
end;

end.
