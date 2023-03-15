object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consulta com Banco de Dados'
  ClientHeight = 454
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlBottom: TPanel
    Left = 0
    Top = 145
    Width = 683
    Height = 309
    Align = alBottom
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 681
      Height = 307
      Align = alClient
      DataSource = DM.dtsConsulta
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 139
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 1
    object lblConsulta: TLabel
      Left = 345
      Top = 26
      Width = 65
      Height = 13
      Caption = 'Digite o nome'
    end
    object BtnConsulta: TBitBtn
      Left = 8
      Top = 89
      Width = 663
      Height = 50
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnConsultaClick
    end
    object edtConsulta: TEdit
      Left = 345
      Top = 45
      Width = 296
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtConsultaChange
    end
    object opcoes: TRadioGroup
      Left = 25
      Top = 14
      Width = 276
      Height = 69
      Caption = 'Consulta de Clientes por'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Bairro')
      TabOrder = 2
      OnClick = opcoesClick
    end
  end
end
