unit Mediator.Model.Interfaces;

interface
type
    TEvExibir = procedure (value : string) of object;
    iDisplay<t> = interface;

    iColleague = interface
      ['{57D1B512-DC31-4F70-9807-2BDF0C69573D}']
      function EnviarPedido(FDestino : iColleague; Pedido : string) : iColleague;
      function ReceberPedido(FOrigem : iColleague; Pedido : string) : iColleague;
      function GetName : string;
      function Display : iDisplay<iColleague>;
    end;

    iMediator = interface
      ['{EF1CED95-763A-4D9E-8143-7DA933F9FFD3}']
      function Add(value : iColleague) : iMediator;
      function EnviarPedido(FOrigem, FDestino : iColleague; Pedido : string) : iMediator;
      function Get(value : string) : iColleague;
      function Display : iDisplay<iMediator>;
      function Remove(value : string) : iMediator;
    end;

    iDisplay<t> = interface
      ['{55B022E4-9E6C-4777-9C1A-2F3866D1E47C}']
      function Exibir(value : TEvExibir) : iDisplay<t>;
      function &end : t;
    end;

implementation

end.
