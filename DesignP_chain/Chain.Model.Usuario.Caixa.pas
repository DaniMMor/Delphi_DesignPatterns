unit Chain.Model.Usuario.Caixa;

interface

uses
  Chain.Model.Interfaces;

type
   TModelUsuarioCaixa = class(TInterfacedObject, iUsuario, iResponsability)
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

{ TModelUsuarioCaixa }

constructor TModelUsuarioCaixa.Create;
begin

end;

function TModelUsuarioCaixa.Desconto(value: Currency): iResponsability;
begin
   Result := Self;

   if value <= 10 then
    raise Exception.Create('Desconto concedido pelo caixa com sucesso');

   if not Assigned(FSucessor) then
    raise Exception.Create('Essa operacao n�o pode ser executada pelo caixa');

   FSucessor.Desconto(value);

end;

destructor TModelUsuarioCaixa.Destroy;
begin

  inherited;
end;

class function TModelUsuarioCaixa.New: iUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioCaixa.NextResponsability(
  value: iResponsability): iResponsability;
begin
   Result := Self;
   FSucessor := value;
end;

function TModelUsuarioCaixa.Responsability: iResponsability;
begin
  Result := Self;
end;

end.
