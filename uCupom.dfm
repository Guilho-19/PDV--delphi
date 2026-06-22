object frmCupom: TfrmCupom
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmCupom'
  ClientHeight = 561
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object memCupom: TMemo
    Left = 0
    Top = 0
    Width = 344
    Height = 536
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'memCupom')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 536
    Width = 344
    Height = 25
    Align = alBottom
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
