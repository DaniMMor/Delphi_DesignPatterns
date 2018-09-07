unit Command.Model.Interfaces;

interface

type
    TEvDisplay = procedure (Value : String) of object;

    iCommand = interface
      ['{5995562C-F91A-45C0-B3C8-4D7F657B94DD}']
      function Execute : iCommand;
    end;

    iInvoker = interface
      ['{CEC0D732-947A-42FB-A282-54D4C4D83CAE}']
      function Add(value : iCommand) : iInvoker;
      function Execute : iInvoker;
    end;

    iNotaFiscal = interface
      ['{6F9C2C55-892C-486C-B07B-490AA2E53EA3}']
      function Criar : iNotaFiscal;
      function Validar : iNotaFiscal;
      function Enviar : iNotaFiscal;
      function Gravar : iNotaFiscal;
      function Email : iNotaFiscal;
      function Display(Value : TEvDisplay) : iNotaFiscal;
      function EnviarNotaFiscal : iNotaFiscal;
    end;

implementation

end.
