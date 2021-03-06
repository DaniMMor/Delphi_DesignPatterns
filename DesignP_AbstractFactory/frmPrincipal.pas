unit frmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Model.Factory;




{$R *.fmx}

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowMessage(
   TModelFactory.new.Pessoa.Nome
   );
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  ShowMessage(
   TModelFactory.new.NotaFiscal.NotaFiscal.ToString
   );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 ReportMemoryLeaksOnShutdown := True;
end;

end.
