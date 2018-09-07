unit Model.Factory;

interface

uses
  Model.Interfaces;

type TModelFactory = class(TInterfacedObject, iFactory)
  private
  public
    constructor Create ;
    destructor Destroy ; override;
    class function New: iFactory;
    function Pessoa : iPessoa;
    function NotaFiscal : iNotaFiscal;

end;

implementation

uses
  Model.NotaFiscal, Model.Pessoal;

{ TModelFactory }

constructor TModelFactory.Create;
begin

end;

destructor TModelFactory.Destroy;
begin

  inherited;
end;

class function TModelFactory.New: iFactory;
begin
  Result := Self.Create;
end;

function TModelFactory.NotaFiscal: iNotaFiscal;
begin
   Result :=  TModelNotaFiscal.New;
end;

function TModelFactory.Pessoa: iPessoa;
begin
     Result :=  TModelPessoa.New;
end;

end.
