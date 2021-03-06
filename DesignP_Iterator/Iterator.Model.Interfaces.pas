unit Iterator.Model.Interfaces;

interface
    uses
       System.Generics.Collections;
type
  iItens = interface;
  iIteratorItens = interface;

  iVenda = interface
    ['{36366445-0284-4AEE-9379-12FC49AA24DC}']
    function Add(value : iItens) : iVenda;
    function Total : Currency;
    function Itens : iIteratorItens;
  end;

  iItens = interface
    ['{5407CEEC-BAA0-468D-9EB8-5E02189BF4D4}']
    function Quantidade(Value : Currency) : iItens;
    function Preco(Value : Currency) : iItens;
    function Total : Currency;
  end;

  iIteratorItens = interface
    ['{54E7E730-4E20-4762-87A0-E6E9CDF5CDE9}']
    function hasNext : Boolean;
    function Next : iItens;
    function AddList(value : TList<iItens>) : IIteratorItens;
  end;

implementation

end.
