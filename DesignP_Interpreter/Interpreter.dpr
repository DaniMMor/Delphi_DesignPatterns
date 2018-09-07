program Interpreter;

uses
  Vcl.Forms,
  Interpreter.View.Principal in 'Interpreter.View.Principal.pas' {Form1},
  Interpreter.Model.Interfaces in 'Interpreter.Model.Interfaces.pas',
  Interpreter.Model.Context in 'Interpreter.Model.Context.pas',
  Interpreter.Model.Expression.Acao in 'Interpreter.Model.Expression.Acao.pas',
  Interpreter.Model.Expression.Item in 'Interpreter.Model.Expression.Item.pas',
  Interpreter.Model.Sintax in 'Interpreter.Model.Sintax.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
