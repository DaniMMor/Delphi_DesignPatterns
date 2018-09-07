unit Chain.Model.Item;

interface

uses
  Chain.Model.Interfaces, Chain.Model.Usuario.Caixa, Chain.Model.Usuario.Fiscal, Chain.Model.Usuario.Gerente;

type
   TModelItem = class(TInterfacedObject, iItem, iOperacoes)
      private
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iItem;
         function Operacaoes : iOperacoes;
         function Desconto(value : Currency) : iOperacoes;
         function &end : iItem;

end;

implementation

{ TModelItem }

function TModelItem.&end: iItem;
begin
    Result := Self;
end;

constructor TModelItem.Create;
begin

end;

function TModelItem.Desconto(value: Currency): iOperacoes;
begin
   TModelUsuarioCaixa.New
      .Responsability
        .NextResponsability(
          TModelUsuarioFiscal.New
            .Responsability
              .NextResponsability(
                TModelUsuarioGerente.New
                  .Responsability
                    .NextResponsability(nil)
              )
        ).Desconto(value);
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iItem;
begin
  Result := Self.Create;
end;

function TModelItem.Operacaoes: iOperacoes;
begin
   Result := Self;
end;

end.
