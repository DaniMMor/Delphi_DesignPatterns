unit Visitor.Model.Interfaces;

interface
  type
    iVisitor = interface;
    iVisitable = interface;

    iItem = interface
      ['{98F2F535-9ED1-43FE-8F97-4D4637877A21}']
      function SetPrecoUnitario(value : Currency) : iItem;
      function PrecoUnitario : Currency;
      function Regras : iVisitable;
    end;

    iItemRegras = interface
      ['{04598898-1397-49E7-93AC-0B7A990C2C4A}']
      function PrecoVenda : Currency;
      function PrecoPromocao : Currency;
      function Visitor : iVisitor;
    end;

    iVisitor = interface
      ['{79A7DFC7-EBDE-4018-A716-04EB5F72A33D}']
      function Visit(value : iItem) : iItemRegras;
    end;

    iVisitable = interface
      ['{B7892EF6-FFBB-454B-AFB6-5A77AC6EB09A}']
      function Accept(value : iVisitor) : iItemRegras;
    end;


implementation

end.
