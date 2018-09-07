program Adapter;

uses
  Vcl.Forms,
  Adapter.View.Principal in 'Adapter.View.Principal.pas' {Form1},
  Adapter.Model.Interfaces in 'Adapter.Model.Interfaces.pas',
  Adapter.Model.Itens in 'Adapter.Model.Itens.pas',
  Adapter.Controller.Itens in 'Adapter.Controller.Itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
