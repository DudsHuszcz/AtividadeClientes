program P_home;

uses
  Vcl.Forms,
  U_home in 'U_home.pas' {FormHome},
  U_cadastro in 'U_cadastro.pas' {FormCadastro},
  U_clientes in 'U_clientes.pas' {FormClientes},
  U_classes in 'U_classes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHome, FormHome);
  Application.CreateForm(TFormCadastro, FormCadastro);
  Application.CreateForm(TFormClientes, FormClientes);
  Application.Run;
end.
