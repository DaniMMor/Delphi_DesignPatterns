unit Interpreter.Model.Expression.Item;

interface

uses
  Interpreter.Model.Interfaces, System.Classes, System.SysUtils;

type
   TModelExpressionItem = class(TInterfacedObject, iExpression)
      private
        FLista : TStringlist;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iExpression;
         function Interpreter(value : iContext) : iExpression;

end;

implementation

{ TModelExpressionItem }

constructor TModelExpressionItem.Create;
begin
    FLista := TStringlist.Create;
end;

destructor TModelExpressionItem.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelExpressionItem.Interpreter(value: iContext): iExpression;
begin
   ExtractStrings([' '],[],PWideChar(value.Entrada), FLista);
   if Pos('VENDIDO O ITEM', UPPERCASE(value.Saida)) > 0 then
      value.Saida := FLista[1];

   if Pos('CANCELADO O ITEM', UpperCase(value.Saida)) > 0 then
      value.Saida := FLista[1];

   if Pos('DEVOLVIDO O ITEM',UpperCase(value.Saida)) > 0 then
      value.Saida := FLista[1];


end;

class function TModelExpressionItem.New: iExpression;
begin
  Result := Self.Create;
end;

end.
