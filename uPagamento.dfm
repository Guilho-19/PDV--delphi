object frmPagamento: TfrmPagamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmPagamento'
  ClientHeight = 601
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnlTopPgto: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = -5
    object lblTituloPagamentoVenda: TLabel
      Left = 0
      Top = 0
      Width = 703
      Height = 41
      Align = alClient
      Alignment = taCenter
      Caption = 'PAGAMENTO DA VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 240
      ExplicitTop = 1
      ExplicitWidth = 246
      ExplicitHeight = 30
    end
  end
  object pnlRodapePgto: TPanel
    Left = 0
    Top = 560
    Width = 703
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 89
    ExplicitWidth = 1206
    object lblLegendaPgto: TLabel
      Left = 0
      Top = 0
      Width = 703
      Height = 41
      Align = alClient
      Alignment = taCenter
      Caption = 
        '[ F1 ] DINHEIRO   [ F2 ] CART'#195'O DE CR'#201'DITO   [ F3 ] CART'#195'O DE D'#201 +
        'BITO   [ F4 ] PIX'
      Layout = tlCenter
      ExplicitLeft = 152
      ExplicitTop = 18
      ExplicitWidth = 430
      ExplicitHeight = 15
    end
  end
  object Panel2: TPanel
    Left = 353
    Top = 41
    Width = 350
    Height = 519
    Align = alRight
    TabOrder = 2
    ExplicitLeft = 611
    object gridPagamentos: TStringGrid
      Left = 1
      Top = 1
      Width = 348
      Height = 517
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 14
      ExplicitTop = 208
      ExplicitWidth = 320
      ExplicitHeight = 120
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 353
    Height = 519
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 88
    ExplicitTop = 304
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblTotalVenda: TLabel
      Left = 16
      Top = 32
      Width = 204
      Height = 45
      Caption = 'lblTotalVenda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTroco: TLabel
      Left = 16
      Top = 155
      Width = 123
      Height = 45
      Caption = 'lblTroco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorRestante: TLabel
      Left = 16
      Top = 96
      Width = 244
      Height = 45
      Caption = 'lblValorRestante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtValorPgto: TEdit
      Left = 16
      Top = 240
      Width = 233
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'edtValorPgto'
    end
  end
end
