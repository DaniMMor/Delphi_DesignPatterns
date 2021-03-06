unit Composite.Model.Interfaces;

interface

type
  iItens = interface;

  iVenda = interface
    ['{36366445-0284-4AEE-9379-12FC49AA24DC}']
    function Add(value : iItens) : iVenda;
    function Total : Currency;
  end;

  iItens = interface
    ['{5407CEEC-BAA0-468D-9EB8-5E02189BF4D4}']
    function Quantidade(Value : Currency) : iItens;
    function Preco(Value : Currency) : iItens;
    function Total : Currency;
  end;

implementation

end.
