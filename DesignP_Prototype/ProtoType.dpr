program ProtoType;

uses
  Vcl.Forms,
  ProtoType.View.Principal in 'ProtoType.View.Principal.pas' {Form1},
  ProtoType.Model.Itens in 'ProtoType.Model.Itens.pas',
  ProtoType.Model.Interfaces in 'ProtoType.Model.Interfaces.pas',
  ProtoType.Model.Strategy in 'ProtoType.Model.Strategy.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
