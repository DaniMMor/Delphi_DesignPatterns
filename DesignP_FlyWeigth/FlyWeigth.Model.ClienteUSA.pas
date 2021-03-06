unit FlyWeigth.Model.ClienteUSA;

interface

uses
  FlyWeigth.Model.Interfaces;

type
   TModelClienteUSA = class(TInterfacedObject, iCliente)
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

{ TModelClienteUSA }

constructor TModelClienteUSA.Create;
begin

end;

destructor TModelClienteUSA.Destroy;
begin

  inherited;
end;

function TModelClienteUSA.Display(value: TEvDisplay): iCliente;
begin
   Result := Self;
   FDisplay := Value ;
end;

function TModelClienteUSA.EnviarEmail: iCliente;
begin
  Result := Self;
  FDisplay('USA '+FNome + ' - ' + FEmail);
end;

class function TModelClienteUSA.New: iCliente;
begin
  Result := Self.Create;
end;

procedure TModelClienteUSA.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TModelClienteUSA.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

