unit ProtoType.Model.Interfaces;

interface

type

 iPrototype<T> = interface
   ['{538B47D2-9D14-4A8B-9C96-9DDA670812AC}']
   function Clone : T;
 end;

 iItens = interface
   ['{343604EA-F6B7-47F5-AEDC-3C1A66F77C7A}']
   procedure SetCodigo(const Value: Integer);
   procedure SetDescricao(const Value: string);
   function GetCodigo : Integer;
   function GetDescricao : String;
   function GetPrecoUnitario: Currency;
   procedure SetPrecounitario(const Value: Currency);
   property Codigo : Integer read GetCodigo write SetCodigo;
   property Descricao : string read GetDescricao write SetDescricao;
   property PrecoUnitario : Currency read GetPrecoUnitario write SetPrecounitario;
   function Prototype : iPrototype<iItens>;
   function PrecoVenda : Currency;

 end;

implementation

end.
