unit FlyWeigth.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  FlyWeigth.Model.Interfaces, System.Generics.Collections;

type
  TClientes = record
    Nome : string;
    Email : string;
    Nacionalidade : string;
  end;

  TForm1 = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FFlyWeight : iFlyWeight;
    Flista : TList<TClientes>;

  public
    { Public declarations }
    procedure Exibir (value : string);
  end;

var
  Form1: TForm1;

implementation

uses
  FlyWeigth.Model.FlyWeigth;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  Cliente : TClientes;
  i:Integer;
begin
   Cliente.Nome := 'Daniel';
   Cliente.Email := 'danimmor@gmail.com';
   Cliente.Nacionalidade := 'Brasil';
   Flista.add(cliente);

   Cliente.Nome := 'Daniela';
   Cliente.Email := 'danimmora@gmail.com';
   Cliente.Nacionalidade := 'USA';
   Flista.add(cliente);

   Cliente.Nome := 'Danielo';
   Cliente.Email := 'danimmoro@gmail.com';
   Cliente.Nacionalidade := 'ESPANHA';
   Flista.add(cliente);

   for I := 0 to PRED(Flista.count)do
       FFlyweight
         .GetCliente(Flista[i].Nacionalidade)
         .Display(exibir)
         .SetEmail(Flista[i].Email)
         .SetNome(Flista[i].Nome)
         .enviarEmail



end;

procedure TForm1.Exibir(value: string);
begin
  mmo1.Lines.Add(value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FFlyWeight := TModelFlyWeigth.new;
  Flista := TList<TClientes>.create;
end;

procedure TForm1.FormDestroy(Sender: TObject);

begin
  Flista.Free;
end;

end.
