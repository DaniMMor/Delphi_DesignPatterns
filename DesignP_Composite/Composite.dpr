program Composite;

uses
  Vcl.Forms,
  Composite.View.Principal in 'Composite.View.Principal.pas' {Form1},
  Composite.Model.Interfaces in 'Composite.Model.Interfaces.pas',
  Composite.Model.Venda in 'Composite.Model.Venda.pas',
  Composite.Model.Itens in 'Composite.Model.Itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
