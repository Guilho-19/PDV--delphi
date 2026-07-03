object frmPDV: TfrmPDV
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = ' PDV Principal'
  ClientHeight = 628
  ClientWidth = 1242
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1242
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = 3815994
    ParentBackground = False
    TabOrder = 0
    object lblCabecalho: TLabel
      Left = 0
      Top = 0
      Width = 1242
      Height = 60
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'NOME LOJA / NOME OPERADOR / DATA HORA / STATUS CAIXA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object pnlLateral: TPanel
    Left = 0
    Top = 60
    Width = 1145
    Height = 500
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object lblNomeProdutoAtual: TLabel
      Left = 40
      Top = 286
      Width = 21
      Height = 32
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorUnitarioAtual: TLabel
      Left = 746
      Top = 272
      Width = 73
      Height = 50
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQuantidadeAtual: TLabel
      Left = 986
      Top = 276
      Width = 81
      Height = 45
      Caption = '1,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTituloProduto: TLabel
      Left = 40
      Top = 37
      Width = 324
      Height = 21
      Caption = 'C'#211'DIGO DE BARRAS / NOME DO PRODUTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTituloProdutoAtual: TLabel
      Left = 40
      Top = 221
      Width = 130
      Height = 21
      Caption = 'PRODUTO ATUAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTituloValorUnitario: TLabel
      Left = 746
      Top = 221
      Width = 166
      Height = 21
      Caption = 'VALOR UNIT'#193'RIO (R$)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTituloQuantidade: TLabel
      Left = 986
      Top = 221
      Width = 106
      Height = 21
      Caption = 'QUANTIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgProduto: TImage
      Left = 770
      Top = 5
      Width = 200
      Height = 200
      Center = True
      Proportional = True
    end
    object lblTituloQuantidadeMult: TLabel
      Left = 488
      Top = 37
      Width = 106
      Height = 21
      Caption = 'QUANTIDADE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtBuscaProduto: TEdit
      Left = 40
      Top = 64
      Width = 417
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtBuscaProdutoKeyPress
    end
    object edtQuantidade: TEdit
      Left = 488
      Top = 64
      Width = 123
      Height = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MaxLength = 3
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = '1'
      OnKeyPress = edtBuscaProdutoKeyPress
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 560
    Width = 1242
    Height = 68
    Align = alBottom
    BevelOuter = bvNone
    Color = 15790320
    ParentBackground = False
    TabOrder = 2
    object lblTotalVenda: TLabel
      AlignWithMargins = True
      Left = 1011
      Top = 3
      Width = 216
      Height = 62
      Margins.Right = 15
      Align = alRight
      Caption = 'TOTAL R$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3355443
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 1010
      ExplicitHeight = 65
    end
    object lblLegenda: TLabel
      AlignWithMargins = True
      Left = 15
      Top = 3
      Width = 818
      Height = 62
      Margins.Left = 15
      Align = alLeft
      Caption = 
        '[ F1 ] BUSCAR PRODUTO   [ F3 ] FINALIZAR VENDA      [ F5 ] CANCE' +
        'LAR               [ F7 ] RELAT'#211'RIOS                         '#13#10'[ ' +
        'F2 ] QUANTIDADE            [ F4 ] ENTRADA ESTOQUE    [ F6 ] ESTO' +
        'RNO VENDA    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 16
      ExplicitTop = 4
      ExplicitHeight = 42
    end
  end
  object gridItens: TStringGrid
    Left = 1145
    Top = 60
    Width = 97
    Height = 500
    Align = alClient
    ColCount = 7
    FixedColor = 15132390
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 3
  end
  object trmRelogio: TTimer
    OnTimer = trmRelogioTimer
    Left = 1480
    Top = 776
  end
end
