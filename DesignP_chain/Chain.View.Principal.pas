unit Chain.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Chain.Model.Item, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edt1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   TModelItem.New.Operacaoes.Desconto(StrToCurr(edt1.Text));
end;

end.
