unit U_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, System.IOUtils;

type
  TFormCadastro = class(TForm)
    PageControlCadastros: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PanelNome: TPanel;
    EditNome: TEdit;
    LabelNome: TLabel;
    PanelEndereco: TPanel;
    LabelEndereco: TLabel;
    EditEndereco: TEdit;
    PanelNumero: TPanel;
    LabelNumero: TLabel;
    EditNumero: TEdit;
    PanelBairro: TPanel;
    LabelBairro: TLabel;
    EditBairro: TEdit;
    PanelCep: TPanel;
    LabelCep: TLabel;
    EditCep: TEdit;
    PanelMunicipio: TPanel;
    LabelMunicipio: TLabel;
    EditMunicipio: TEdit;
    PanelUf: TPanel;
    LabelUf: TLabel;
    EditUf: TEdit;
    PanelEmail: TPanel;
    LabelEmail: TLabel;
    EditEmail: TEdit;
    PanelTelefone: TPanel;
    LabelTelefone: TLabel;
    EditTelefone: TEdit;
    PanelCelular: TPanel;
    LabelCelular: TLabel;
    EditCelular: TEdit;
    PanelEscolaridade: TPanel;
    LabelEscolaridade: TLabel;
    EditEscolaridade: TEdit;
    PanelNascimento: TPanel;
    LabelNascimento: TLabel;
    DateTimePickerNascimento: TDateTimePicker;
    PanelNacionalidade: TPanel;
    LabelNacionalidade: TLabel;
    EditNacionalidade: TEdit;
    PanelProfissao: TPanel;
    LabelProfissao: TLabel;
    EditProfissao: TEdit;
    PanelCpf: TPanel;
    LabelCpf: TLabel;
    EditCpf: TEdit;
    PanelRg: TPanel;
    LabelRg: TLabel;
    EditRg: TEdit;
    PanelEnviar: TPanel;
    PanelNomeJuri: TPanel;
    LabelNomeJuri: TLabel;
    EditNomeJuri: TEdit;
    PanelEnderecoJuri: TPanel;
    LabelEnderecoJuri: TLabel;
    EditEnderecoJuri: TEdit;
    PanelNumeroJuri: TPanel;
    LabelNumeroJuri: TLabel;
    EditNumeroJuri: TEdit;
    PanelBairroJuri: TPanel;
    LabelBairroJuri: TLabel;
    EditBairroJuri: TEdit;
    PanelCepJuri: TPanel;
    LabelCepJuri: TLabel;
    EditCepJuri: TEdit;
    PanelMunicipioJuri: TPanel;
    LabelMunicipioJuri: TLabel;
    EditMunicipioJuri: TEdit;
    PanelUfJuri: TPanel;
    LabelUfJuri: TLabel;
    EditUfJuri: TEdit;
    PanelEmailJuri: TPanel;
    LabelEmailJuri: TLabel;
    EditEmailJuri: TEdit;
    PanelTelefoneJuri: TPanel;
    LabelTelefoneJuri: TLabel;
    EditTelefoneJuri: TEdit;
    PanelCelularJuri: TPanel;
    LabelCelularJuri: TLabel;
    EditCelularJuri: TEdit;
    PanelNacionalidadeJuri: TPanel;
    LabelNacionalidadeJuri: TLabel;
    EditNacionalidadeJuri: TEdit;
    PanelCnpjJuri: TPanel;
    LabelCnpjJuri: TLabel;
    EditCnpjJuri: TEdit;
    PanelInscricaoJuri: TPanel;
    LabelInscricaoJuri: TLabel;
    EditInscricaoJuri: TEdit;
    PanelEnviarJuri: TPanel;
    procedure PanelEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelEnviarJuriClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  FormCadastro: TFormCadastro;
  IDAtual: Integer = 1;

implementation

{$R *.dfm}

uses U_home, U_classes;

{ TFormCadastro }

constructor TFormCadastro.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
var
  Arquivo: TextFile;
  Registro: string;
begin
  if FileExists
    ('C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt') then
  begin
    AssignFile(Arquivo,
      'C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt');
    Reset(Arquivo);
    try
      while not Eof(Arquivo) do
      begin
        Readln(Arquivo, Registro);
        if Copy(Registro, 1, 4) = 'ID: ' then
        begin
          // Extrai o ID do registro
          IDAtual := StrToIntDef(Copy(Registro, 5, Length(Registro)), 1);
        end;
      end;
    finally
      CloseFile(Arquivo);
    end;
  end;
end;

procedure TFormCadastro.PanelEnviarClick(Sender: TObject);
var
  Pessoa: Tfisica;
  Arquivo: TextFile;
  Registro, UltimoID: string;
  verificacao: Tpessoa;
  tipo: string;
begin
  tipo := 'Pessoa Física';
  verificacao := Tpessoa.Create;
  if verificacao.CamposPreenchidos then
  begin
    Pessoa := Tfisica.Create(EditNome.Text);
    // Criar uma instância de TFisica em vez de TPessoa
    try
      AssignFile(Arquivo,
        'C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt');
      try
        if FileExists
          ('C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt')
        then
          Append(Arquivo)
        else
          Rewrite(Arquivo);

        // Ler o último ID registrado no arquivo
        Reset(Arquivo);
        UltimoID := '';
        while not Eof(Arquivo) do
        begin
          Readln(Arquivo, Registro);
          if Pos('ID: ', Registro) = 1 then
            UltimoID := Trim(Copy(Registro, 5, MaxInt));
        end;
        CloseFile(Arquivo);

        // Converter o último ID para um número inteiro
        IDAtual := StrToIntDef(UltimoID, 0) + 1;

        Pessoa.ID := IDAtual; // Atribui o IDAtual à pessoa

        // Atribuir os valores aos campos da pessoa
        Pessoa.tipo := tipo; // recebe tipo, = pessoa fisica
        Pessoa.Nome := EditNome.Text;
        Pessoa.Endereco := EditEndereco.Text;
        Pessoa.Numero := EditNumero.Text;
        Pessoa.Bairro := EditBairro.Text;
        Pessoa.Cep := EditCep.Text;
        Pessoa.Municipio := EditMunicipio.Text;
        Pessoa.Uf := EditUf.Text;
        Pessoa.Email := EditEmail.Text;
        Pessoa.Telefone := EditTelefone.Text;
        Pessoa.Celular := EditCelular.Text;
        Pessoa.Cpf := EditCpf.Text;
        Pessoa.Rg := EditRg.Text;
        Pessoa.Escolaridade := EditEscolaridade.Text;
        Pessoa.Nascimento := DateTimePickerNascimento.Date;
        Pessoa.Nacionalidade := EditNacionalidade.Text;

        if Pessoa is Tfisica then
          Tfisica(Pessoa).Profissao := EditProfissao.Text;
        // Acessar o atributo Profissao usando a classe TFisica

        // Montar o registro no formato desejado
        Registro := 'ID: ' + IntToStr(Pessoa.ID) + sLineBreak + 'Tipo: ' +
          Pessoa.Tipo + sLineBreak + 'Nome: ' +
          Pessoa.Nome + sLineBreak + 'Endereço: ' + Pessoa.Endereco + sLineBreak
          + 'Número: ' + Pessoa.Numero + sLineBreak + 'Bairro: ' + Pessoa.Bairro
          + sLineBreak + 'CEP: ' + Pessoa.Cep + sLineBreak + 'Município: ' +
          Pessoa.Municipio + sLineBreak + 'UF: ' + Pessoa.Uf + sLineBreak +
          'Email: ' + Pessoa.Email + sLineBreak + 'Telefone: ' + Pessoa.Telefone
          + sLineBreak + 'Celular: ' + Pessoa.Celular + sLineBreak + 'CPF: ' +
          Pessoa.Cpf + sLineBreak + 'RG: ' + Pessoa.Rg + sLineBreak +
          'Escolaridade: ' + Pessoa.Escolaridade + sLineBreak + 'Nascimento: ' +
          DateToStr(Pessoa.Nascimento) + sLineBreak + 'Nacionalidade: ' +
          Pessoa.Nacionalidade + sLineBreak;

        if Pessoa is Tfisica then
          Registro := Registro + 'Profissão: ' + Tfisica(Pessoa).Profissao +
            sLineBreak;
        // Adicionar a profissão ao registro se a pessoa for do tipo TFisica

        Append(Arquivo);
        Writeln(Arquivo, Registro);
      finally
        CloseFile(Arquivo);
      end;

      ShowMessage('Registro adicionado com sucesso.');
      verificacao.LimparCampos;
    finally
      Pessoa.Free; // Liberar a memória alocada para a instância de Pessoa
    end;
  end;
end;

procedure TFormCadastro.PanelEnviarJuriClick(Sender: TObject);
var
  Pessoa: TJuridica;
  Arquivo: TextFile;
  Registro, UltimoID, tipo: string;
  verificacao: Tpessoa;
begin
  tipo := 'Pessoa Jurídica';
    Pessoa := TJuridica.Create(EditNomeJuri.Text);
    // Criar uma instância de TFisica em vez de TPessoa
    try
      AssignFile(Arquivo,
        'C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt');
      try
        if FileExists
          ('C:\Users\huszc\OneDrive\Área de Trabalho\atividade 10\BDteste.txt')
        then
          Append(Arquivo)
        else
          Rewrite(Arquivo);

        // Ler o último ID registrado no arquivo
        Reset(Arquivo);
        UltimoID := '';
        while not Eof(Arquivo) do
        begin
          Readln(Arquivo, Registro);
          if Pos('ID: ', Registro) = 1 then
            UltimoID := Trim(Copy(Registro, 5, MaxInt));
        end;
        CloseFile(Arquivo);

        // Converter o último ID para um número inteiro
        IDAtual := StrToIntDef(UltimoID, 0) + 1;

        Pessoa.ID := IDAtual; // Atribui o IDAtual à pessoa

        // Atribuir os valores aos campos da pessoa
        Pessoa.tipo := tipo; // recebe tipo, = pessoa fisica
        Pessoa.Nome := EditNomeJuri.Text;
        Pessoa.Endereco := EditEnderecoJuri.Text;
        Pessoa.Numero := EditNumeroJuri.Text;
        Pessoa.Bairro := EditBairroJuri.Text;
        Pessoa.Cep := EditCepJuri.Text;
        Pessoa.Municipio := EditMunicipioJuri.Text;
        Pessoa.Uf := EditUfJuri.Text;
        Pessoa.Email := EditEmailJuri.Text;
        Pessoa.Telefone := EditTelefoneJuri.Text;
        Pessoa.Celular := EditCelularJuri.Text;
        Pessoa.Cnpj := EditCnpjJuri.Text;
        Pessoa.Nacionalidade := EditNacionalidadeJuri.Text;
        Pessoa.InscricaoMunicipal := EditInscricaoJuri.Text;

        // Montar o registro no formato desejado
        Registro := 'ID: ' + IntToStr(Pessoa.ID) + sLineBreak + 'Tipo: ' +
          Pessoa.Tipo + sLineBreak + 'Nome: ' +
          Pessoa.Nome + sLineBreak + 'Endereço: ' + Pessoa.Endereco + sLineBreak
          + 'Número: ' + Pessoa.Numero + sLineBreak + 'Bairro: ' + Pessoa.Bairro
          + sLineBreak + 'CEP: ' + Pessoa.Cep + sLineBreak + 'Município: ' +
          Pessoa.Municipio + sLineBreak + 'UF: ' + Pessoa.Uf + sLineBreak +
          'Email: ' + Pessoa.Email + sLineBreak + 'Telefone: ' + Pessoa.Telefone
          + sLineBreak + 'Celular: ' + Pessoa.Celular + sLineBreak + 'CNPJ: ' +
          Pessoa.Cnpj + sLineBreak + 'Nacionalidade: ' +
          pessoa.Nacionalidade + sLineBreak + 'Inscrição municipal: ' +
          Pessoa.InscricaoMunicipal + sLineBreak;
        // Adicionar a profissão ao registro se a pessoa for do tipo TFisica

        Append(Arquivo);
        Writeln(Arquivo, Registro);
      finally
        CloseFile(Arquivo);
      end;

      ShowMessage('Registro adicionado com sucesso.');
      verificacao.LimparCampos;
    finally
      Pessoa.Free; // Liberar a memória alocada para a instância de Pessoa
    end;
  end;

end.
