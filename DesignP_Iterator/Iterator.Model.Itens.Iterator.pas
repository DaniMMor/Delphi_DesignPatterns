unit Iterator.Model.Itens.Iterator;

interface

uses
  Iterator.Model.Interfaces, System.Generics.Collections;

type
   TModelItensIterator = class(TInterfacedObject, iIteratorItens)
      private
        FLista : TList<iItens>;
        FCount : Integer;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iIteratorItens;
         function hasNext : Boolean;
         function Next : iItens;
         function AddList(value : TList<iItens>) : IIteratorItens;

end;

implementation

{ TModelItensIterator }

function TModelItensIterator.AddList(value : TList<iItens>) : IIteratorItens;
begin
   Result := self;
   FLista := value;
   FCount := 0;
end;

constructor TModelItensIterator.Create;
begin
   FCount := 0;
end;

destructor TModelItensIterator.Destroy;
begin

  inherited;
end;

function TModelItensIterator.hasNext: Boolean;
begin
    Result := not (FCount = FLista.Count);
end;

class function TModelItensIterator.New: iIteratorItens;
begin
  Result := Self.Create;
end;

function TModelItensIterator.Next: iItens;
begin
   Result := Flista[FCount];
   Inc(FCount);
end;

end.
