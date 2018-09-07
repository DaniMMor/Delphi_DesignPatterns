unit Interpreter.Model.Sintax;

interface

uses
  Interpreter.Model.Interfaces, System.Generics.Collections, System.SysUtils, Interpreter.Model.Context, Interpreter.Model.Expression.Acao, Interpreter.Model.Expression.Item;

type
   TModelSintax = class(TInterfacedObject, iSyntax)
      private
        FLista : TList<iExpression>;
        FContext : iContext;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iSyntax;
         function Process(value : string) : string;

end;

implementation

{ TModelSintax }

constructor TModelSintax.Create;
begin
  FLista := TList<iExpression>.Create;
  FContext := TModelContext.New;
end;

destructor TModelSintax.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

class function TModelSintax.New: iSyntax;
begin
  Result := Self.Create;
end;

function TModelSintax.Process(value: string): string;
var
    i : Integer;
begin
   FContext.Entrada := value;
   FLista.Add(TModelExpressionAcao.New);
   FLista.Add(TModelExpressionItem.New);

   for i := 0 to Pred(FLista.Count) do
     FLista[i].Interpreter(FContext);

   Result := FContext.Saida;



end;

end.
