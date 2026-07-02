object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 441
  ClientWidth = 624
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = 3815994
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 20
      Top = 15
      Width = 199
      Height = 28
      Caption = 'Central de Relat'#243'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 60
    Width = 624
    Height = 320
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object rgSelecaoRelatorio: TRadioGroup
      AlignWithMargins = True
      Left = 20
      Top = 20
      Width = 584
      Height = 280
      Margins.Left = 20
      Margins.Top = 20
      Margins.Right = 20
      Margins.Bottom = 20
      Align = alClient
      Caption = ' Selecione o relat'#243'rio desejado: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Items.Strings = (
        'Fechamento de Caixa'
        'Ranking de Produtos mais Vendidos'
        'Hist'#243'rico de Vendas Canceladas')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 380
    Width = 624
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Color = 15790320
    ParentBackground = False
    TabOrder = 2
    object btnGerar: TButton
      AlignWithMargins = True
      Left = 454
      Top = 10
      Width = 150
      Height = 41
      Cursor = crHandPoint
      Margins.Top = 10
      Margins.Right = 20
      Margins.Bottom = 10
      Align = alRight
      Caption = 'GERAR RELAT'#211'RIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnGerarClick
    end
  end
end
