unit Model.NotaFiscal;

interface

uses
  Model.Interfaces;

type TModelNotaFiscal = class(TInterfacedObject, iNotaFiscal)
  private
  public
    constructor Create ;
    destructor Destroy ; override;
    class function New: iNotaFiscal;
    function NotaFiscal : Integer;

end;

implementation

{ TModelNotaFiscal }

constructor TModelNotaFiscal.Create;
begin

end;

destructor TModelNotaFiscal.Destroy;
begin

  inherited;
end;

class function TModelNotaFiscal.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TModelNotaFiscal.NotaFiscal: Integer;
begin
  Result := 123;
end;

end.
