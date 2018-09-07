unit Command.Model.NotaFiscal;

interface

uses
  Command.Model.Interfaces;

type
   TModelNotaFiscall = class(TInterfacedObject, iNotaFiscal)
      private
      FDisplay : TEvDisplay;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iNotaFiscal;
          function Criar : iNotaFiscal;
          function Validar : iNotaFiscal;
          function Enviar : iNotaFiscal;
          function Gravar : iNotaFiscal;
          function Email : iNotaFiscal;
          function Display(Value : TEvDisplay) : iNotaFiscal;
          function EnviarNotaFiscal : iNotaFiscal;

end;

implementation

uses
  Command.Model.NotaFiscal.Invoker, Command.Model.NotaFiscal.Criar,
  Command.Model.NotaFiscal.Validar, Command.Model.NotaFiscal.Enviar,
  Command.Model.NotaFiscal.Gravar, Command.Model.NotaFiscal.EMail;

{ TModelNotaFiscall }

constructor TModelNotaFiscall.Create;
begin

end;

function TModelNotaFiscall.Criar: iNotaFiscal;
begin
   Result := Self;
   FDisplay('Nota Fiscal - Criar');
end;

destructor TModelNotaFiscall.Destroy;
begin

  inherited;
end;

function TModelNotaFiscall.Display(Value: TEvDisplay): iNotaFiscal;
begin
    Result := Self;
    FDisplay := Value;
end;

function TModelNotaFiscall.Email: iNotaFiscal;
begin
   Result := Self;
   FDisplay('Nota Fiscal - EMail');
end;

function TModelNotaFiscall.Enviar: iNotaFiscal;
begin
   Result := Self;
   FDisplay('Nota Fiscal - Enviar');
end;

function TModelNotaFiscall.EnviarNotaFiscal: iNotaFiscal;
begin
    TModelNotaFiscalInvoker.New
    .Add(TModelNotaFiscalCriar.New(Self))
    .Add(TModelNotaFiscalValidar.New(Self))
    .Add(TModelNotaFiscalEnviar.New(Self))
    .Add(TModelNotaFiscalGravar.New(Self))
    .Add(TModelNotaFiscalEMail.New(Self))
    .Execute;
end;

function TModelNotaFiscall.Gravar: iNotaFiscal;
begin
    Result := Self;
   FDisplay('Nota Fiscal - Gravar');
end;

class function TModelNotaFiscall.New: iNotaFiscal;
begin
  Result := Self.Create;
end;

function TModelNotaFiscall.Validar: iNotaFiscal;
begin
   Result := Self;
   FDisplay('Nota Fiscal - Validar');
end;

end.
