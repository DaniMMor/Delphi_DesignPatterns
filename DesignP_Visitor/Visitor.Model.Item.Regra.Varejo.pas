unit Visitor.Model.Item.Regra.Varejo;

interface

uses
  Visitor.Model.Interfaces;

type
   TModelItemRegraVarejo = class(TInterfacedObject, iItemRegras, iVisitor)
      private
        FVisit : iItem;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iItemRegras;
         function PrecoVenda : Currency;
         function PrecoPromocao : Currency;
         function Visit(value : iItem) : iItemRegras;
         function Visitor : iVisitor;

end;

implementation

{ TModelItemRegraVarejo }

constructor TModelItemRegraVarejo.Create;
begin

end;

destructor TModelItemRegraVarejo.Destroy;
begin

  inherited;
end;

class function TModelItemRegraVarejo.New: iItemRegras;
begin
  Result := Self.Create;
end;

function TModelItemRegraVarejo.PrecoPromocao: Currency;
begin
   Result := (FVisit.PrecoUnitario * 0.8);
end;

function TModelItemRegraVarejo.PrecoVenda: Currency;
begin
  Result := (FVisit.PrecoUnitario * 1);
end;

function TModelItemRegraVarejo.Visit(value: iItem): iItemRegras;
begin
   FVisit := value;
   Result := Self;
end;

function TModelItemRegraVarejo.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
