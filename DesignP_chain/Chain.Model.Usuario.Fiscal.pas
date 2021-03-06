unit Chain.Model.Usuario.Fiscal;

interface

uses
  Chain.Model.Interfaces;

type
   TModelUsuarioFiscal = class(TInterfacedObject, iUsuario, iResponsability)
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

{ TModelUsuarioFiscal }

constructor TModelUsuarioFiscal.Create;
begin

end;

function TModelUsuarioFiscal.Desconto(value: Currency): iResponsability;
begin
   Result := Self;

   if value <= 70 then
    raise Exception.Create('Desconto concedido pelo fiscal com sucesso');

   if not Assigned(FSucessor) then
    raise Exception.Create('Essa operacao n�o pode ser executada pelo fiscal');

   FSucessor.Desconto(value);

end;

destructor TModelUsuarioFiscal.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFiscal.New: iUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioFiscal.NextResponsability(
  value: iResponsability): iResponsability;
begin
   Result := Self;
   FSucessor := value;
end;

function TModelUsuarioFiscal.Responsability: iResponsability;
begin
  Result := Self;
end;

end.

