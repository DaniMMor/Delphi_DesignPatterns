unit Memento.Model.Cliente;

interface

uses
  Memento.Model.Interfaces, Memento.Model.Memento;

type
   TModelCliente = class(TInterfacedObject, iCliente, iMemento<iCliente>)
      private
        FNome : string;
        FMemento : iMementoZelador<iCliente>;
        function GetNome : string;
        procedure SetNome(const value : string);
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iCliente;
         property Nome : string read GetNome write SetNome;
         function Memento : iMemento<iCliente>;
         function Save(key : string) : iMemento<iCliente>;
         function Restore(key : string) : iCliente;

end;

implementation

{ TModelCliente }

constructor TModelCliente.Create;
begin
  FMemento := TModelMemento.New;
end;

destructor TModelCliente.Destroy;
begin

  inherited;
end;

function TModelCliente.GetNome: string;
begin
  Result := FNome;
end;

function TModelCliente.Memento: iMemento<iCliente>;
begin
   Result := Self;
end;

class function TModelCliente.New: iCliente;
begin
  Result := Self.Create;
end;

function TModelCliente.Restore(key: string): iCliente;
var
  OldState : iCliente;
begin
  OldState := FMemento.Restore(key);
  Self.Nome := OldState.Nome;
  Result := Self;
end;

function TModelCliente.Save(key: string): iMemento<iCliente>;
var
   NewCliente : iCliente;
begin
   Result := Self;
   NewCliente := TModelCliente.New;
   NewCliente.Nome := Self.Nome;
   FMemento.SaveState(key, NewCliente);
end;

procedure TModelCliente.SetNome(const value: string);
begin
   FNome := value;
end;

end.
