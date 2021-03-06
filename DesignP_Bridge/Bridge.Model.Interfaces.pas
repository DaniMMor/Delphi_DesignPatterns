unit Bridge.Model.Interfaces;

interface
type
  TVenda = record
    CO : Integer;
    Itens : Integer;
    Total : Currency;
  end;

  iExport<t> = interface;

  iSource<t> = interface
    ['{D0D6C1DD-62EC-4818-87BF-C9C5BD238162}']
    function Exportar(Value : iExport<t>) : iSource<t>;
  end;

  iExport<t> = interface
    ['{DE5EA395-008B-4E01-8458-B6A508EE209D}']
    function GerarRegistros(Value : t) : iExport<t>;
  end;


implementation

end.
