unit U_classes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.IOUtils;


 type
  TPessoa = class
  private
    FID: Integer;
    FNome: string;
    FEndereco: string;
    FNumero: string;
    FBairro: string;
    FCep: string;
    FMunicipio: string;
    FUf: string;
    FEmail: string;
    FTelefone: string;
    FCelular: string;
    FNacionalidade: string;
  public
    function CamposPreenchidos: Boolean;
    procedure LimparCampos;
    function GerarNovoID: Integer;
    constructor Create(Nome: string); overload;
    property ID: Integer read FID write FID;
    property Nome: string read FNome write FNome;
    property Endereco: string read FEndereco write FEndereco;
    property Numero: string read FNumero write FNumero;
    property Bairro: string read FBairro write FBairro;
    property Cep: string read FCep write FCep;
    property Municipio: string read FMunicipio write FMunicipio;
    property Uf: string read FUf write FUf;
    property Email: string read FEmail write FEmail;
    property Telefone: string read FTelefone write FTelefone;
    property Celular: string read FCelular write FCelular;
    property Nacionalidade: string read FNacionalidade write FNacionalidade;
  end;

  TFisica = class(TPessoa)
  private
  FCpf: string;
    FRg: string;
    FEscolaridade: string;
    FGenero: string;
    FNascimento: TDateTime;
     FProfissao: string;
     FTipo:string;
  public
  property Tipo: string read FTipo write FTipo;
   property Cpf: string read FCpf write FCpf;
    property Rg: string read FRg write FRg;
  property Profissao: string read FProfissao write FProfissao;
  property Nascimento: TDateTime read FNascimento write FNascimento;
    property Escolaridade: string read FEscolaridade write FEscolaridade;
    property Genero: string read FGenero write FGenero;
  end;

  TJuridica = class(TPessoa)
  private
    FCnpj: string;
    FInscricaoMunicipal: string;
    FTipo:string;
  public
  property Tipo: string read FTipo write FTipo;
    property Cnpj: string read FCnpj write FCnpj;
    property InscricaoMunicipal: string read FInscricaoMunicipal
      write FInscricaoMunicipal;
  end;
implementation

uses U_cadastro, U_clientes, U_home;

function TPessoa.CamposPreenchidos: Boolean;
begin
 Result := (TrimRight(FormCadastro.EditNome.Text) <> '') and
  (TrimRight(FormCadastro.EditEndereco.Text) <> '') and
  (TrimRight(FormCadastro.EditNumero.Text) <> '') and
  (TrimRight(FormCadastro.EditBairro.Text) <> '') and
  (TrimRight(FormCadastro.EditCep.Text) <> '') and
  (TrimRight(FormCadastro.EditMunicipio.Text) <> '') and
  (TrimRight(FormCadastro.EditUf.Text) <> '') and
  (TrimRight(FormCadastro.EditEmail.Text) <> '') and
  (TrimRight(FormCadastro.EditTelefone.Text) <> '') and
  (TrimRight(FormCadastro.EditCelular.Text) <> '') and
  (TrimRight(FormCadastro.EditEscolaridade.Text) <> '') and
  (TrimRight(FormCadastro.EditNacionalidade.Text) <> '') and
  (TrimRight(FormCadastro.EditProfissao.Text) <> '') and
  (TrimRight(FormCadastro.EditCpf.Text) <> '') and
  (TrimRight(FormCadastro.EditRg.Text) <> '');

end;

constructor TPessoa.Create(Nome: string);
begin
  FID := IDAtual;
  FNome := Nome;
end;
function Tpessoa.GerarNovoID: Integer;
begin
  Result := IDAtual;
  Inc(IDAtual);
end;

procedure Tpessoa.LimparCampos;
begin
  FormCadastro.EditNome.Text := '';
  FormCadastro.EditEndereco.Text := '';
  FormCadastro.EditNumero.Text := '';
  FormCadastro.EditBairro.Text := '';
  FormCadastro.EditCep.Text := '';
  FormCadastro.EditMunicipio.Text := '';
  FormCadastro.EditUf.Text := '';
  FormCadastro.EditEmail.Text := '';
  FormCadastro.EditTelefone.Text := '';
  FormCadastro.EditCelular.Text := '';
  FormCadastro.EditEscolaridade.Text := '';
  FormCadastro.EditNacionalidade.Text := '';
  FormCadastro.EditProfissao.Text := '';
  FormCadastro.EditCpf.Text := '';
  FormCadastro.EditRg.Text := '';
end;

end.
