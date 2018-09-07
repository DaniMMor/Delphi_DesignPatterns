unit Bridge.Model.SPED.C190;

interface

uses
  Bridge.Model.Interfaces, System.Classes;

type
   TModelSPEDC190 = class(TInterfacedObject, iExport<TVenda>)
      private
        FArquivo : TStringList;
      public
         constructor Create ;
         destructor Destroy ; override;
         class function New: iExport<TVenda>;
         function GerarRegistros(Value : TVenda) : iExport<TVenda>;

end;

implementation

uses
  System.SysUtils;

const
   ARQUIVO = 'SPED.TXT';

{ TModelSPEDC190 }

constructor TModelSPEDC190.Create;
begin
   FArquivo := TStringList.Create;

   if FileExists(ARQUIVO) then
      FArquivo.LoadFromFile(ARQUIVO);

   FArquivo.Add('|C190|0|1|');
end;

destructor TModelSPEDC190.Destroy;
begin
  FreeAndNil(FArquivo);
  inherited;
end;

function TModelSPEDC190.GerarRegistros(Value: TVenda): iExport<TVenda>;
begin
   Result := Self;
   FArquivo.Add(Format('|C190|%d|%d|%f|0|0|0|0|',[value.CO, value.Itens, value.Total]));
   FArquivo.SaveToFile(ARQUIVO);
end;

class function TModelSPEDC190.New: iExport<TVenda>;
begin
  Result := Self.Create;
end;

end.

