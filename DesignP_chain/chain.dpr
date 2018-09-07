program chain;

uses
  Vcl.Forms,
  Chain.View.Principal in 'Chain.View.Principal.pas' {Form1},
  Chain.Model.Interfaces in 'Chain.Model.Interfaces.pas',
  Chain.Model.Usuario.Caixa in 'Chain.Model.Usuario.Caixa.pas',
  Chain.Model.Usuario.Fiscal in 'Chain.Model.Usuario.Fiscal.pas',
  Chain.Model.Usuario.Gerente in 'Chain.Model.Usuario.Gerente.pas',
  Chain.Model.Item in 'Chain.Model.Item.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
