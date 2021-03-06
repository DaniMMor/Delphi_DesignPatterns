unit FlyWeigth.Model.Interfaces;

interface

type
  iCliente = interface;

  TEvDisplay = procedure (Value : string) of object;

  iFlyWeight = interface
    ['{DFE91DD6-EED7-48A4-B3AA-0888B85809D4}']
    function GetCliente(value : string): iCliente;
  end;

  iCliente = interface
    ['{6B0E9ADC-EFC7-47C6-AC1F-2B0FF7B6E205}']
    function Display(value : TEvDisplay) : iCliente;
    function EnviarEmail : iCliente;
    procedure SetEmail(const Value: string);
    procedure SetNome(const Value: string);
    
  end;

implementation

end.
