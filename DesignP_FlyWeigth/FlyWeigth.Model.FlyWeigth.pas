unit FlyWeigth.Model.FlyWeigth;

interface

uses
  FlyWeigth.Model.Interfaces, System.Generics.Collections;

type
   TModelFlyWeigth = class(TInterfacedObject, iFlyWeight)
      private
       FListaCliente : TDictionary<string,iCliente>;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iFlyWeight;
         function GetCliente(value : string): iCliente;

end;

implementation

uses
  System.SysUtils, FlyWeigth.Model.Cliente, FlyWeigth.Model.ClienteUSA,
  FlyWeigth.Model.ClienteESPANHA, FlyWeigth.Model.ClienteBrasil;

{ TModelFlyWeigth }

constructor TModelFlyWeigth.Create;
begin
   FListaCliente := TDictionary<string,iCliente>.Create;
end;

destructor TModelFlyWeigth.Destroy;
begin
  FreeAndNil(FListaCliente);
  inherited;
end;

function TModelFlyWeigth.GetCliente(value: string): iCliente;
begin
  if not FListaCliente.TryGetValue(value,Result) then
  begin
      if value = 'Brasil' then
         Result := TModelClienteBrasil.new;

      if value = 'USA' then
         Result := TModelClienteUSA.new;

      if value = 'Espanha' then
         Result := TModelClienteEspanha.new;

      FListaCliente.Add(value,Result);
  end;


end;

class function TModelFlyWeigth.New: iFlyWeight;
begin
  Result := Self.Create;
end;

end.
