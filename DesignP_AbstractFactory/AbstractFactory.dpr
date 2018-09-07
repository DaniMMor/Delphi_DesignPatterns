program AbstractFactory;

uses
  System.StartUpCopy,
  FMX.Forms,
  frmPrincipal in 'frmPrincipal.pas' {Form1},
  Model.Interfaces in 'Model.Interfaces.pas',
  Model.Pessoal in 'Model.Pessoal.pas',
  Model.NotaFiscal in 'Model.NotaFiscal.pas',
  Model.Factory in 'Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
