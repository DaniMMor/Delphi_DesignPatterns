unit Interpreter.Model.Interfaces;

interface

type
    iContext = interface
    ['{07931C31-C788-48C1-8267-043244ADBB81}']
      function GetEntrada : string;
      function GetSaida : string;
      procedure SetEntrada(const value:string);
      procedure SetSaida(const value:string);
      property  Entrada : string read GetEntrada write SetEntrada;
      property  Saida : string read GetSaida write  SetSaida;
    end;

    iExpression = interface
    ['{C6CCB56D-C6F1-42F4-A7DE-6AB61BFEAA90}']
      function Interpreter(value : iContext) : iExpression;
    end;

    iSyntax = interface
    ['{19295E2F-C724-4372-BB7E-56279B8D70C4}']
      function Process(value : string) : string;

    end;

implementation

end.
