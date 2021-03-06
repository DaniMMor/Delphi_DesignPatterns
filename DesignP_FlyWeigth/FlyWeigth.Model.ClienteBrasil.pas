unit FlyWeigth.Model.ClienteBrasil;

interface

uses
  FlyWeigth.Model.Interfaces;

type
   TModelClienteBrasil = class(TInterfacedObject, iCliente)
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

{ TModelClienteBrasil }

constructor TModelClienteBrasil.Create;
begin

end;

destructor TModelClienteBrasil.Destroy;
begin

  inherited;
end;

function TModelClienteBrasil.Display(value: TEvDisplay): iCliente;
begin
   Result := Self;
   FDisplay := Value ;
end;

function TModelClienteBrasil.EnviarEmail: iCliente;
begin
  Result := Self;
  FDisplay('PORTUGUES '+ FNome + ' - ' + FEmail);
end;

class function TModelClienteBrasil.New: iCliente;
begin
  Result := Self.Create;
end;

procedure TModelClienteBrasil.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TModelClienteBrasil.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

