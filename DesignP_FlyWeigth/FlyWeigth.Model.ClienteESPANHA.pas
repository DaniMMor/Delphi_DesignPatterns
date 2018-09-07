unit FlyWeigth.Model.ClienteESPANHA;

interface

uses
  FlyWeigth.Model.Interfaces;

type
   TModelClienteESPANHA = class(TInterfacedObject, iCliente)
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

{ TModelClienteESPANHA }

constructor TModelClienteESPANHA.Create;
begin

end;

destructor TModelClienteESPANHA.Destroy;
begin

  inherited;
end;

function TModelClienteESPANHA.Display(value: TEvDisplay): iCliente;
begin
   Result := Self;
   FDisplay := Value ;
end;

function TModelClienteESPANHA.EnviarEmail: iCliente;
begin
  Result := Self;
  FDisplay('ESPANHA '+ FNome + ' - ' + FEmail);
end;

class function TModelClienteESPANHA.New: iCliente;
begin
  Result := Self.Create;
end;

procedure TModelClienteESPANHA.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TModelClienteESPANHA.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

