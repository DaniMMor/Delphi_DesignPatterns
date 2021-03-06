unit Memento.Model.Memento;

interface

uses
  Memento.Model.Interfaces, System.Generics.Collections;

type
   TModelMemento = class(TInterfacedObject, iMementoZelador<iCliente>)
      private
        Flist : TDictionary<string, iCliente>;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iMementoZelador<iCliente>;
         function SaveState(key : string; value : iCliente) : iMementoZelador<iCliente>;
         function Restore(key : string) : iCliente;

end;

implementation

uses
  System.SysUtils;

{ TModelMemento }

constructor TModelMemento.Create;
begin
   Flist := TDictionary<string, iCliente>.Create;
end;

destructor TModelMemento.Destroy;
begin
  FreeAndNil(Flist);
  inherited;
end;

class function TModelMemento.New: iMementoZelador<iCliente>;
begin
  Result := Self.Create;
end;

function TModelMemento.Restore(key: string): iCliente;
begin
  Result := Flist.Items[key];
end;

function TModelMemento.SaveState(key: string;
  value: iCliente): iMementoZelador<iCliente>;
begin
   Result := self;
   Flist.Add(key,value);
end;

end.
