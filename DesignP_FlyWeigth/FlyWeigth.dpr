program FlyWeigth;

uses
  Vcl.Forms,
  FlyWeigth.View.Principal in 'FlyWeigth.View.Principal.pas' {Form1},
  FlyWeigth.Model.Interfaces in 'FlyWeigth.Model.Interfaces.pas',
  FlyWeigth.Model.Cliente in 'FlyWeigth.Model.Cliente.pas',
  FlyWeigth.Model.FlyWeigth in 'FlyWeigth.Model.FlyWeigth.pas',
  FlyWeigth.Model.ClienteBrasil in 'FlyWeigth.Model.ClienteBrasil.pas',
  FlyWeigth.Model.ClienteUSA in 'FlyWeigth.Model.ClienteUSA.pas',
  FlyWeigth.Model.ClienteESPANHA in 'FlyWeigth.Model.ClienteESPANHA.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
