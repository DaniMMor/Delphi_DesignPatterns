unit FactoryMethod.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox, FactoryMethod.Model.Factory;

type
  TForm1 = class(TForm)
    cbb1: TComboBox;
    btn1: TButton;
    procedure FormCreate(Sender: TObject);
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
  FactoryMethod.Model.Interfaces;

{$R *.fmx}

procedure TForm1.btn1Click(Sender: TObject);
begin
    ShowMessage(
     TModelFactory.New.Refrigerante(TTipoRefrigerante(cbb1.ItemIndex)).GetNome);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   ReportMemoryLeaksOnShutdown := True;
end;

end.
