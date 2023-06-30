object FormCadastro: TFormCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'FormCadastro'
  ClientHeight = 512
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PageControlCadastros: TPageControl
    Left = 0
    Top = 0
    Width = 791
    Height = 512
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pessoa f'#237'sica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      object PanelNome: TPanel
        Left = 99
        Top = 8
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 0
        object LabelNome: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 51
        end
        object EditNome: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelEndereco: TPanel
        Left = 298
        Top = 8
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 1
        object LabelEndereco: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 75
        end
        object EditEndereco: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelNumero: TPanel
        Left = 498
        Top = 8
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 2
        object LabelNumero: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
        end
        object EditNumero: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 8
        end
      end
      object PanelBairro: TPanel
        Left = 99
        Top = 82
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 3
        object LabelBairro: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 49
        end
        object EditBairro: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelCep: TPanel
        Left = 298
        Top = 82
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 4
        object LabelCep: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 34
        end
        object EditCep: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelMunicipio: TPanel
        Left = 498
        Top = 82
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 5
        object LabelMunicipio: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Munic'#237'pio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 79
        end
        object EditMunicipio: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelUf: TPanel
        Left = 99
        Top = 147
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 6
        object LabelUf: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 24
        end
        object EditUf: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelEmail: TPanel
        Left = 298
        Top = 147
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 7
        object LabelEmail: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 45
        end
        object EditEmail: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelTelefone: TPanel
        Left = 498
        Top = 147
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 8
        object LabelTelefone: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
        end
        object EditTelefone: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelCelular: TPanel
        Left = 99
        Top = 211
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 9
        object LabelCelular: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 57
        end
        object EditCelular: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelEscolaridade: TPanel
        Left = 99
        Top = 273
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 10
        object LabelEscolaridade: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Escolaridade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 99
        end
        object EditEscolaridade: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelNascimento: TPanel
        Left = 498
        Top = 273
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 11
        object LabelNascimento: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Data de Nascimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 160
        end
        object DateTimePickerNascimento: TDateTimePicker
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvNone
          Date = 45105.000000000000000000
          Time = 0.682459606483462300
          TabOrder = 0
        end
      end
      object PanelNacionalidade: TPanel
        Left = 298
        Top = 273
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 12
        object LabelNacionalidade: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Nacionalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 113
        end
        object EditNacionalidade: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object Panelprofissao: TPanel
        Left = 99
        Top = 334
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 13
        object LabelProfissao: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Profiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 72
        end
        object Editprofissao: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelEnviar: TPanel
        Left = 314
        Top = 343
        Width = 353
        Height = 39
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Enviar'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 14
        OnClick = PanelEnviarClick
      end
      object PanelCpf: TPanel
        Left = 298
        Top = 211
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 15
        object LabelCpf: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 33
        end
        object EditCpf: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
      object PanelRg: TPanel
        Left = 498
        Top = 212
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 16
        object LabelRg: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'RG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 26
        end
        object EditRg: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 36
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pessoa jur'#237'dica'
      ImageIndex = 1
      object PanelNomeJuri: TPanel
        Left = 107
        Top = 49
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 0
        object LabelNomeJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Nome da empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 145
        end
        object EditNomeJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelEnderecoJuri: TPanel
        Left = 306
        Top = 49
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 1
        object LabelEnderecoJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 75
        end
        object EditEnderecoJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelNumeroJuri: TPanel
        Left = 506
        Top = 49
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 2
        object LabelNumeroJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'N'#250'mero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
        end
        object EditNumeroJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelBairroJuri: TPanel
        Left = 107
        Top = 123
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 3
        object LabelBairroJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitTop = 16
        end
        object EditBairroJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelCepJuri: TPanel
        Left = 306
        Top = 123
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 4
        object LabelCepJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitTop = -6
        end
        object EditCepJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelMunicipioJuri: TPanel
        Left = 506
        Top = 123
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 5
        object LabelMunicipioJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Munic'#237'pio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 79
        end
        object EditMunicipioJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelUfJuri: TPanel
        Left = 107
        Top = 188
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 6
        object LabelUfJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 24
        end
        object EditUfJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelEmailJuri: TPanel
        Left = 306
        Top = 188
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 7
        object LabelEmailJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Email:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 45
        end
        object EditEmailJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 29
        end
      end
      object PanelTelefoneJuri: TPanel
        Left = 506
        Top = 188
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 8
        object LabelTelefoneJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 67
        end
        object EditTelefoneJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelCelularJuri: TPanel
        Left = 107
        Top = 259
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 9
        object LabelCelularJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 57
        end
        object EditCelularJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelNacionalidadeJuri: TPanel
        Left = 306
        Top = 259
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 10
        object LabelNacionalidadeJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Nacionalidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 113
        end
        object EditNacionalidadeJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelCnpjJuri: TPanel
        Left = 506
        Top = 259
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 11
        object LabelCnpjJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 43
        end
        object EditCnpjJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelInscricaoJuri: TPanel
        Left = 107
        Top = 328
        Width = 179
        Height = 53
        BevelOuter = bvNone
        TabOrder = 12
        object LabelInscricaoJuri: TLabel
          Left = 0
          Top = 0
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Inscri'#231#227'o municipal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 150
        end
        object EditInscricaoJuri: TEdit
          Left = 0
          Top = 23
          Width = 179
          Height = 30
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 31
        end
      end
      object PanelEnviarJuri: TPanel
        Left = 330
        Top = 335
        Width = 347
        Height = 39
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Enviar'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 13
        OnClick = PanelEnviarJuriClick
      end
    end
  end
end
