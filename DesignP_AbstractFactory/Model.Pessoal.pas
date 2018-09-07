unit Model.Pessoal;

interface

uses
  Model.Interfaces;

type TModelPessoa = class(TInterfacedObject, iPessoa)
  private
  public
    constructor Create ;
    destructor Destroy ; override;
    class function New: iPessoa;
    function Nome : string;

end;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

  inherited;
end;

class function TModelPessoa.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoa.Nome: string;
begin
   Result := 'Daniel';
end;

end.
