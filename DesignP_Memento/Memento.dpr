program Memento;

uses
  Vcl.Forms,
  Memento.View.Principal in 'Memento.View.Principal.pas' {Form1},
  Memento.Model.Interfaces in 'Memento.Model.Interfaces.pas',
  Memento.Model.Memento in 'Memento.Model.Memento.pas',
  Memento.Model.Cliente in 'Memento.Model.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
