program Mediator;

uses
  Vcl.Forms,
  Mediator.View.Principal in 'Mediator.View.Principal.pas' {Form1},
  Mediator.Model.Interfaces in 'Mediator.Model.Interfaces.pas',
  Mediator.Model.Pedido in 'Mediator.Model.Pedido.pas',
  Mediator.Model.Pedido.Mediator in 'Mediator.Model.Pedido.Mediator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
