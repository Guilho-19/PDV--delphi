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
  object rgSelecaoRelatorio: TRadioGroup
    Left = 40
    Top = 128
    Width = 265
    Height = 105
    Caption = 'Selecione o Relat'#243'rio Desejado:'
    Items.Strings = (
      'Fechamento de Caixa'
      'Ranking de Produtos mais Vendidos'
      'Hist'#243'rico de Vendas Canceladas')
    TabOrder = 0
  end
  object btnGerar: TButton
    Left = 440
    Top = 208
    Width = 99
    Height = 25
    Caption = 'Gerar Rekat'#243'rio'
    TabOrder = 1
    OnClick = btnGerarClick
  end
end
