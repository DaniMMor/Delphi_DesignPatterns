unit ProtoType.Model.Itens;

interface

uses
  ProtoType.Model.Interfaces;

type
   TItens = class(TInterfacedObject, iItens, iPrototype<iItens>)
      private
    FDescricao: string;
    FCodigo: Integer;
    FPrecoUnitario : Currency;
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: string);
    function GetCodigo : Integer;
    function GetDescricao : String;
    function GetPrecoUnitario: Currency;
    procedure SetPrecounitario(const Value: Currency);

      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iItens;
         property Codigo : Integer read GetCodigo write SetCodigo;
         property Descricao : string read GetDescricao write SetDescricao;
         property PrecoUnitario : Currency read GetPrecoUnitario write SetPrecounitario;
         function Prototype : iPrototype<iItens>;
         function Clone : iItens;
         function PrecoVenda : Currency;

end;

implementation

uses
  ProtoType.Model.Strategy, System.SysUtils;

{ TItens }

function TItens.Clone: iItens;
begin
  Result := TItens.New;
  Result.Codigo := FCodigo;
  Result.Descricao := FDescricao;
  Result.PrecoUnitario := FPrecoUnitario;
end;

constructor TItens.Create;
begin
   FPrecoUnitario := 10;
end;

destructor TItens.Destroy;
begin

  inherited;
end;

function TItens.GetCodigo: Integer;
begin
   Result := FCodigo;
end;

function TItens.GetDescricao: String;
begin
    Result := FDescricao;
end;

function TItens.GetPrecoUnitario: Currency;
begin
   Result := FPrecoUnitario;
end;

class function TItens.New: iItens;
begin
  Result := Self.Create;
end;

function TItens.PrecoVenda: Currency;
begin
   Result := TPromocao(DayOfWeek(Now)-1).PrecoVenda(FPrecoUnitario);
end;

function TItens.Prototype: iPrototype<iItens>;
begin
  Result := Self;
end;

procedure TItens.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TItens.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TItens.SetPrecounitario(const Value: Currency);
begin
   FPrecoUnitario := Value;
end;

end.
