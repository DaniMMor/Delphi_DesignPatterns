unit State.Model.Interfaces;

interface
type
  iState<t> = interface;
  iItemOperacoes = interface;

  iItem = interface
    ['{B3A3DE93-38EE-444C-A37F-47375842092E}']
    function State : iState<iItemOperacoes>;
    function Operacoes : iItemOperacoes;

  end;

  iItemOperacoes = interface
    ['{06EE7C68-1DF0-426F-9233-8C28151C943B}']
    function Vender : iItemOperacoes;
    function Cancelar : iItemOperacoes;
    function Desconto : iItemOperacoes;
    function Devolver : iItemOperacoes;
  end;

  iState<t> = interface
    ['{09B3D4F2-B0C1-487A-A437-88D06737DDA1}']
    function SetState(Value : t) : t;
  end;

implementation

end.
