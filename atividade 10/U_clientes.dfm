object FormClientes: TFormClientes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormClientes'
  ClientHeight = 488
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 65
    Align = alTop
    Caption = 'Clientes Cadastrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 104
    Width = 697
    Height = 329
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
