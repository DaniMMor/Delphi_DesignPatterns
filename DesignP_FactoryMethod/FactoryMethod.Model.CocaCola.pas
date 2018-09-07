unit FactoryMethod.Model.CocaCola;

interface

uses
  FactoryMethod.Model.Interfaces;

type
  TModelCocaCola = class(TInterfacedObject, iRefrigerante)
  private
  public
    constructor Create ;
    destructor Destroy ; override;
    class function New: iRefrigerante;
    function GetNome : string;

end;

implementation

{ TModelCocaCola }

constructor TModelCocaCola.Create;
begin

end;

destructor TModelCocaCola.Destroy;
begin

  inherited;
end;

function TModelCocaCola.GetNome: string;
begin
  Result := 'Coca Cola';
end;

class function TModelCocaCola.New: iRefrigerante;
begin
  Result := Self.Create;
end;

end.
