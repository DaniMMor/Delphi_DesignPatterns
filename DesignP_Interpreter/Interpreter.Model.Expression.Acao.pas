unit Interpreter.Model.Expression.Acao;

interface

uses
  Interpreter.Model.Interfaces;

type
   TModelExpressionAcao = class(TInterfacedObject, iExpression)
      private
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iExpression;
         function Interpreter(value : iContext) : iExpression;

end;

implementation

uses
  System.SysUtils;

{ TModelExpressionAcao }

constructor TModelExpressionAcao.Create;
begin

end;

destructor TModelExpressionAcao.Destroy;
begin

  inherited;
end;

function TModelExpressionAcao.Interpreter(value: iContext): iExpression;
begin
   Result := Self;
   if Pos('VENDER', UPPERCASE(value.Entrada)) > 0 then
      value.Saida := 'VENDIDO O ITEM ';

   if Pos('CANCELAR', UpperCase(value.Entrada)) > 0 then
      value.Saida := 'CANCELADO O ITEM ';

   if Pos('DEVOLVER',UpperCase(value.Entrada)) > 0 then
      value.Saida := 'DEVOLVIDO O ITEM ';
end;

class function TModelExpressionAcao.New: iExpression;
begin
  Result := Self.Create;
end;

end.
