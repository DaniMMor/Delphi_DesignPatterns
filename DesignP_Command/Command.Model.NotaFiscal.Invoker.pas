unit Command.Model.NotaFiscal.Invoker;

interface

uses
  Command.Model.Interfaces, System.Generics.Collections;

type
   TModelNotaFiscalInvoker = class(TInterfacedObject, iInvoker)
      private
         FLista : TList<iCommand>;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iInvoker;
         function Add(value : iCommand) : iInvoker;
         function Execute : iInvoker;

end;

implementation

uses
  System.SysUtils;

{ TModelNotaFiscalInvoker }

function TModelNotaFiscalInvoker.Add(value: iCommand): iInvoker;
begin
  Result := self;
  FLista.Add(value);
end;

constructor TModelNotaFiscalInvoker.Create;
begin
   FLista := TList<iCommand>.Create;
end;

destructor TModelNotaFiscalInvoker.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelNotaFiscalInvoker.Execute: iInvoker;
var
  i: Integer;
begin
  Result := Self;
  for i := 0 to Pred(FLista.Count) do
      FLista[i].Execute;
end;

class function TModelNotaFiscalInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
