object frmPagamento: TfrmPagamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = ' Pagamento'
  ClientHeight = 601
  ClientWidth = 703
  Color = clWhite
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
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = $003A3A3A
    ParentBackground = False
    TabOrder = 0
    object lblTituloPagamentoVenda: TLabel
      Left = 0
      Top = 0
      Width = 703
      Height = 60
      Align = alClient
      Alignment = taCenter
      Caption = 'PAGAMENTO DA VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object pnlRodapePgto: TPanel
    Left = 0
    Top = 551
    Width = 703
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = $00F0F0F0
    ParentBackground = False
    TabOrder = 1
    object lblLegendaPgto: TLabel
      Left = 0
      Top = 0
      Width = 703
      Height = 50
      Align = alClient
      Alignment = taCenter
      Caption = 
        '[ F1 ] DINHEIRO   [ F2 ] CART'#195'O DE CR'#201'DITO   [ F3 ] CART'#195'O DE D'#201 +
        'BITO   [ F4 ] PIX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel2: TPanel
    Left = 353
    Top = 60
    Width = 350
    Height = 491
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object gridPagamentos: TStringGrid
      Left = 0
      Top = 0
      Width = 350
      Height = 491
      Align = alClient
      FixedColor = $00F2F2F2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 353
    Height = 491
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object lblTotalVenda: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 335
      Height = 45
      Margins.Right = 15
      Margins.Bottom = 20
      Align = alTop
      Alignment = taRightJustify
      Caption = 'Total Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTroco: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 139
      Width = 335
      Height = 45
      Margins.Right = 15
      Margins.Bottom = 20
      Align = alTop
      Alignment = taRightJustify
      Caption = 'Troco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = $002E8B57
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorRestante: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 71
      Width = 335
      Height = 45
      Margins.Right = 15
      Margins.Bottom = 20
      Align = alTop
      Alignment = taRightJustify
      Caption = 'Valor Restante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = $000000C0
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtValorPgto: TEdit
      AlignWithMargins = True
      Left = 3
      Top = 207
      Width = 335
      Height = 53
      Margins.Right = 15
      Margins.Bottom = 30
      Align = alTop
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Valor Pgto'
    end
  end
end
