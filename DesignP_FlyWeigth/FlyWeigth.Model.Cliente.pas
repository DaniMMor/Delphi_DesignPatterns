unit FlyWeigth.Model.Cliente;

interface

uses
  FlyWeigth.Model.Interfaces;

type
   TModelCliente = class(TInterfacedObject, iCliente)
      private
    FEmail: string;
    FNome: string;
    FDisplay : TEvDisplay;
    function SetEmail(const Value: string):iCliente;
    function SetNome(const Value: string):iCliente;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iCliente;
         function Display(value : TEvDisplay) : iCliente;
         function EnviarEmail : iCliente;
end;

implementation

{ TModelCliente }

constructor TModelCliente.Create;
begin

end;

destructor TModelCliente.Destroy;
begin

  inherited;
end;

function TModelCliente.Display(value: TEvDisplay): iCliente;
begin
   Result := Self;
   FDisplay := Value ;
end;

function TModelCliente.EnviarEmail: iCliente;
begin
  Result := Self;
  FDisplay('DEFAULT '+FNome + ' - ' + FEmail);
end;

class function TModelCliente.New: iCliente;
begin
  Result := Self.Create;
end;

function TModelCliente.SetEmail(const Value: string):iCliente;
begin
  Result := Self;
  FEmail := Value;
end;

function TModelCliente.SetNome(const Value: string):iCliente;
begin
  Result := Self;
  FNome := Value;
end;

end.
