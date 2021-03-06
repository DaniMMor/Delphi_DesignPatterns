unit Memento.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Memento.Model.Interfaces, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    lst1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
  private
    { Private declarations }
    FCliente : iCliente;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Memento.Model.Cliente;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Key : string;
begin
  FCliente.Nome := Edit1.Text;
  Key := TGUID.NewGuid.ToString;
  FCliente.Memento.Save(key);
  lst1.Items.Add(key);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   FCliente := TModelCliente.New;
end;

procedure TForm1.lst1Click(Sender: TObject);
begin
  FCliente := FCliente.Memento.Restore(lst1.Items[lst1.ItemIndex]);
  Edit1.Text := FCliente.Nome;
end;

end.
