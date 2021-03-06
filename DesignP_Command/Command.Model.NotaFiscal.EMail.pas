unit Command.Model.NotaFiscal.EMail;

interface

uses
  Command.Model.Interfaces;

type
   TModelNotaFiscalEMail = class(TInterfacedObject, iCommand)
      private
        FReceiver : iNotaFiscal;
      public
         constructor Create(Value : iNotaFiscal) ;
         destructor Destroy ; override;
         class function New(FReceiver :iNotaFiscal): iCommand;
         function Execute : iCommand;

end;

implementation

{ TModelNotaFiscalEMail }

constructor TModelNotaFiscalEMail.Create(Value : iNotaFiscal) ;
begin
   FReceiver := Value;
end;

destructor TModelNotaFiscalEMail.Destroy;
begin

  inherited;
end;

function TModelNotaFiscalEMail.Execute: iCommand;
begin
   Result := Self;
   FReceiver.Email;
end;

class function TModelNotaFiscalEMail.New(FReceiver :iNotaFiscal): iCommand;
begin
  Result := Self.Create(FReceiver);
end;

end.
