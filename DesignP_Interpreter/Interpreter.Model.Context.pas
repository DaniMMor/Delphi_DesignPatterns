unit Interpreter.Model.Context;

interface

uses
  Interpreter.Model.Interfaces;

type
   TModelContext = class(TInterfacedObject, iContext)
      private
         FEntrada : string;
         FSaida : string;
         function GetEntrada : string;
         function GetSaida : string;
         procedure SetEntrada(const value:string);
         procedure SetSaida(const value:string);
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iContext;
         property  Entrada : string read GetEntrada write SetEntrada;
         property  Saida : string read GetSaida write  SetSaida;

end;

implementation

{ TModelContext }

constructor TModelContext.Create;
begin

end;

destructor TModelContext.Destroy;
begin

  inherited;
end;

function TModelContext.GetEntrada: string;
begin
    Result := FEntrada;
end;

function TModelContext.GetSaida: string;
begin
    Result := FSaida;
end;

class function TModelContext.New: iContext;
begin
  Result := Self.Create;
end;

procedure TModelContext.SetEntrada(const value: string);
begin
   FEntrada := value;
end;

procedure TModelContext.SetSaida(const value: string);
begin
   FSaida := FSaida + value;
end;

end.
