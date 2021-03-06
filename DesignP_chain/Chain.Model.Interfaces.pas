unit Chain.Model.Interfaces;

interface
type
  iItem = interface;

  iResponsability = interface
    ['{5792EF0F-6D25-4169-B0C4-BC5476D5AE77}']
    function NextResponsability(value:iResponsability) : iResponsability;
    function Desconto(value:Currency) : iResponsability;
  end;

  iUsuario = interface
    ['{0A292810-1015-4724-99FB-F5ACF002620F}']
    function Responsability : iResponsability;
  end;

  iOperacoes = interface
   ['{F9563DFE-938D-4470-93F0-B58CA015A78E}']
   function Desconto(value : Currency) : iOperacoes;
   function &end : iItem;
  end;

  iItem = interface
    ['{53466A5C-8AB2-4624-AFB0-A864C71BA253}']
    function Operacaoes : iOperacoes;
  end;

implementation

end.
