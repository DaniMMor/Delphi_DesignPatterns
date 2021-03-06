unit FactoryMethod.Model.Interfaces;

interface

type
 TTipoRefrigerante = (CocaCola, Guarana);

 iRefrigerante = interface
   ['{2BE1D599-1D54-47C9-83E9-0E0AEAFF0B6B}']
   function GetNome : string;
 end;

 iRefrigeranteFactory = interface
   ['{F83AFE1C-DE59-42AA-946D-E65380E904A7}']
   function Refrigerante (Tipo: TTipoRefrigerante) : iRefrigerante;
 end;

implementation

end.
