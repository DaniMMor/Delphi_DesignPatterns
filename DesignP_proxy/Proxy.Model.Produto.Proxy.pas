unit Proxy.Model.Produto.Proxy;

interface

uses
  Proxy.Model.Inferfaces, System.Generics.Collections, System.SysUtils, Proxy.Model.Produto;
type
   TModelProdutoProxy = class(TInterfacedObject, iProxyProduto)
      private
        FList : TDictionary<Integer,iModelProduto>;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iProxyProduto;
         function ConsultaID(value : Integer):iModelProduto;

end;

implementation



{ TModelProdutoProxy }

function TModelProdutoProxy.ConsultaID(value: Integer): iModelProduto;
begin
  if not FList.TryGetValue(value,Result) then
  begin
    Result := TModelProduto.New.ConsultaID(value);
    FList.Add(value,result);
  end;

end;

constructor TModelProdutoProxy.Create;
begin
   FList := TDictionary<Integer,iModelProduto>.Create;
end;

destructor TModelProdutoProxy.Destroy;
begin
  FreeAndNil(Flist);
  inherited;
end;

class function TModelProdutoProxy.New: iProxyProduto;
begin
  Result := Self.Create;
end;

end.
