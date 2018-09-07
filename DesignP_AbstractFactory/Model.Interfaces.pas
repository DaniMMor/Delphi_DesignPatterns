unit Model.Interfaces;

interface
type
  iPessoa = interface
    ['{E3389092-C6AE-4B89-8AF1-EB60ED94409F}']
    function Nome : string;
  end;

  iNotaFiscal = interface
    ['{832920FE-1B3F-42E6-BC87-531E00A750AB}']
    function NotaFiscal : Integer;
  end;

  iFactory = interface
    ['{D1EBE4C0-D6B0-4340-AF23-35EE4811BA35}']
    function Pessoa : iPessoa;
    function NotaFiscal : iNotaFiscal;

  end;

implementation

end.
