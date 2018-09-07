unit Bridge.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Bridge.Model.Venda, Bridge.Model.SPED.C100, Bridge.Model.SPED.C190,
  Bridge.Model.SPED.C140;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   TModelVenda.New
     .Exportar(
       TModelSPEDc100.new)
     .Exportar(
       TModelSPEDC190.new)
     .Exportar(
       TModelSPEDC140.New);
end;

end.
