program FactoryMethod;

uses
  System.StartUpCopy,
  FMX.Forms,
  FactoryMethod.View.Principal in 'FactoryMethod.View.Principal.pas' {Form1},
  FactoryMethod.Model.CocaCola in 'FactoryMethod.Model.CocaCola.pas',
  FactoryMethod.Model.Interfaces in 'FactoryMethod.Model.Interfaces.pas',
  FactoryMethod.Model.Guarana in 'FactoryMethod.Model.Guarana.pas',
  FactoryMethod.Model.Factory in 'FactoryMethod.Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
