unit Composite.Model.Venda;

interface

uses
  Composite.Model.Interfaces, System.Generics.Collections;

type
   TModelVenda = class(TInterfacedObject, iVenda)
      private
       FItens : TList<iItens>;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iVenda;
         function Add(value : iItens) : iVenda;
         function Total : Currency;


end;

implementation

uses
  System.SysUtils;

{ TModelVenda }

function TModelVenda.Add(value: iItens): iVenda;
begin
   Result := self;
   FItens.Add(value);
end;

constructor TModelVenda.Create;
begin
  FItens := TList<iItens>.Create;
end;

destructor TModelVenda.Destroy;
begin
  FreeAndNil(FItens);
  inherited;
end;

class function TModelVenda.New: iVenda;
begin
  Result := Self.Create;
end;

function TModelVenda.Total: Currency;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to Pred(FItens.Count) do
    Result := Result + FItens[i].Total;
end;

end.
