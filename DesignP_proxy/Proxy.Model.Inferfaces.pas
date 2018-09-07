unit Proxy.Model.Inferfaces;

interface
type
  iModelProduto = interface
    ['{02B1CEF0-CBD0-4EC8-AF38-09A7C62562B5}']
    function ConsultaID(value : Integer):iModelProduto;
  end;

  iProxyProduto = interface
    ['{4FED94BF-D848-40E3-BA28-32CFB356F7BB}']
    function ConsultaID(value : Integer):iModelProduto;
  end;

implementation

end.
