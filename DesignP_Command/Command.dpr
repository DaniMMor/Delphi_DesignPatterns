program Command;

uses
  Vcl.Forms,
  Command.View.Principal in 'Command.View.Principal.pas' {Form1},
  Command.Model.Interfaces in 'Command.Model.Interfaces.pas',
  Command.Model.NotaFiscal in 'Command.Model.NotaFiscal.pas',
  Command.Model.NotaFiscal.Invoker in 'Command.Model.NotaFiscal.Invoker.pas',
  Command.Model.NotaFiscal.Criar in 'Command.Model.NotaFiscal.Criar.pas',
  Command.Model.NotaFiscal.Validar in 'Command.Model.NotaFiscal.Validar.pas',
  Command.Model.NotaFiscal.Enviar in 'Command.Model.NotaFiscal.Enviar.pas',
  Command.Model.NotaFiscal.Gravar in 'Command.Model.NotaFiscal.Gravar.pas',
  Command.Model.NotaFiscal.EMail in 'Command.Model.NotaFiscal.EMail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
