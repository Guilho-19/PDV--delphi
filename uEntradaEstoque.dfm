object frmEntradaEstoque: TfrmEntradaEstoque
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmEntradaEstoque'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblNomeProduto: TLabel
    Left = 80
    Top = 168
    Width = 43
    Height = 15
    Caption = 'Produto'
  end
  object lblEstoqueAtual: TLabel
    Left = 80
    Top = 232
    Width = 73
    Height = 15
    Caption = 'Estoque Atual'
  end
  object edtCodigoBarras: TEdit
    Left = 80
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 0
    OnKeyPress = edtCodigoBarrasKeyPress
  end
  object edtQuantidadeEntrada: TEdit
    Left = 80
    Top = 296
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object btnConfirmar: TButton
    Left = 80
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
end
