program proxy;

uses
  Vcl.Forms,
  Proxy.View.Principal in 'Proxy.View.Principal.pas' {Form1},
  Proxy.Model.Inferfaces in 'Proxy.Model.Inferfaces.pas',
  Proxy.Model.Produto in 'Proxy.Model.Produto.pas',
  Proxy.Model.Produto.Proxy in 'Proxy.Model.Produto.Proxy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
