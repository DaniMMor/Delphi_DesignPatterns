unit Adapter.Model.Interfaces;

interface

uses
  System.Generics.Collections;

type
  TItens = record
      Produto : string;
      Valor : Currency;
  end;

  iControllerItens = interface
    ['{95602543-7EB5-41B8-BDF2-12B4D958F2C0}']
    function Add(Value :TItens) : iControllerItens;
    function Itens : TList<TItens>;
  end;

  iModelItens = interface
    ['{46560C65-58E7-461A-B035-4E243D7C87A4}']
    function Add(Value : iModelItens) : iModelItens;
    function Itens : TList<iModelItens>;
    function GetProduto : string;
    function GetValor : Currency;
    function SetProduto(Value : string) : iModelItens;
    function SetValor(Value : Currency) : iModelItens;
  end;

implementation

end.
