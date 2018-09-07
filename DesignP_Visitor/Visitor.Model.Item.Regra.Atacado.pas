unit Visitor.Model.Item.Regra.Atacado;

interface

uses
  Visitor.Model.Interfaces;

type
   TModelItemRegraAtacado = class(TInterfacedObject, iItemRegras, iVisitor)
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

{ TModelItemRegraAtacado }

constructor TModelItemRegraAtacado.Create;
begin

end;

destructor TModelItemRegraAtacado.Destroy;
begin

  inherited;
end;

class function TModelItemRegraAtacado.New: iItemRegras;
begin
  Result := Self.Create;
end;

function TModelItemRegraAtacado.PrecoPromocao: Currency;
begin
   Result := (FVisit.PrecoUnitario * 0.6);
end;

function TModelItemRegraAtacado.PrecoVenda: Currency;
begin
  Result := (FVisit.PrecoUnitario * 0.8);
end;

function TModelItemRegraAtacado.Visit(value: iItem): iItemRegras;
begin
   FVisit := value;
   Result := Self;
end;

function TModelItemRegraAtacado.Visitor: iVisitor;
begin
  Result := Self;
end;

end.
