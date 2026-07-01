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
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 304
    ExplicitTop = 88
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 359
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 312
    ExplicitTop = 304
    ExplicitWidth = 185
    ExplicitHeight = 41
    object rgSelecaoRelatorio: TRadioGroup
      AlignWithMargins = True
      Left = 16
      Top = 16
      Width = 592
      Height = 327
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 15
      Align = alClient
      Caption = 'Selecione o Relat'#243'rio Desejado:'
      Items.Strings = (
        'Fechamento de Caixa'
        'Ranking de Produtos mais Vendidos'
        'Hist'#243'rico de Vendas Canceladas')
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitWidth = 622
      ExplicitHeight = 357
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitWidth = 622
    object btnGerar: TButton
      AlignWithMargins = True
      Left = 521
      Top = 4
      Width = 99
      Height = 33
      Align = alRight
      Caption = 'Gerar Relat'#243'rio'
      TabOrder = 0
      OnClick = btnGerarClick
      ExplicitLeft = 512
      ExplicitTop = 6
      ExplicitHeight = 25
    end
  end
end
