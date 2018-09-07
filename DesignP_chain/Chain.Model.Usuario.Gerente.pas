unit Chain.Model.Usuario.Gerente;

interface

uses
  Chain.Model.Interfaces;

type
   TModelUsuarioGerente = class(TInterfacedObject, iUsuario, iResponsability)
      private
       FSucessor : iResponsability;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iUsuario;
         function Responsability : iResponsability;
         function NextResponsability(value:iResponsability) : iResponsability;
         function Desconto(value:Currency) : iResponsability;

end;

implementation

uses
  System.SysUtils;

{ TModelUsuarioGerente }

constructor TModelUsuarioGerente.Create;
begin

end;

function TModelUsuarioGerente.Desconto(value: Currency): iResponsability;
begin
   Result := Self;
   raise Exception.Create('Desconto concedido pelo gerente com sucesso');
end;

destructor TModelUsuarioGerente.Destroy;
begin

  inherited;
end;

class function TModelUsuarioGerente.New: iUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioGerente.NextResponsability(
  value: iResponsability): iResponsability;
begin
   Result := Self;
   FSucessor := value;
end;

function TModelUsuarioGerente.Responsability: iResponsability;
begin
  Result := Self;
end;

end.


