unit Memento.Model.Interfaces;

interface
type
    iMemento<t> = interface
      ['{73B46740-549D-4C13-9444-FFDCFFEF1F8C}']
      function Save(key : string) : iMemento<t>;
      function Restore(key : string) : t;
    end;

    iMementoZelador<t> = interface
      ['{E08493D2-EEF7-4C01-8B4B-D782D42C6E45}']
      function SaveState(key : string; value : t) : iMementoZelador<t>;
      function Restore(key : string) : t;
    end;

    iCliente = interface
      function GetNome : string;
      procedure SetNome(const value : string);
      property Nome : string read GetNome write SetNome;
      function Memento : iMemento<iCliente>;

    end;

implementation

end.
