unit Proxy.Model.Produto;

interface

uses
  Proxy.Model.Inferfaces;

type
   TModelProduto = class(TInterfacedObject, iModelProduto)
      private
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iModelProduto;
         function ConsultaID(value : Integer):iModelProduto;

end;

implementation

uses
  System.SysUtils;

{ TModelProduto }

function TModelProduto.ConsultaID(value: Integer): iModelProduto;
begin
  Result:=Self;
  sleep(5000);
end;

constructor TModelProduto.Create;
begin

end;

destructor TModelProduto.Destroy;
begin

  inherited;
end;

class function TModelProduto.New: iModelProduto;
begin
  Result := Self.Create;
end;

end.
