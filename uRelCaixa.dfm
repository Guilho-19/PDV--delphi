object frmRelCaixa: TfrmRelCaixa
  Left = 0
  Top = 0
  Caption = 'frmRelCaixa'
  ClientHeight = 743
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rlCaixa: TRLReport
    Left = -6
    Top = -8
    Width = 794
    Height = 1123
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 19
      BandType = btTitle
      object lblTituloFechamentoDeCaixa: TRLLabel
        Left = 232
        Top = 0
        Width = 256
        Height = 24
        Caption = 'FECHAMENTO DE CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 57
      Width = 718
      Height = 32
      BandType = btColumnHeader
      object RLLabel1: TRLLabel
        Left = 56
        Top = 13
        Width = 142
        Height = 16
        Caption = 'Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 263
        Top = 13
        Width = 66
        Height = 16
        Caption = 'Valor (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 567
        Top = -11
        Width = 68
        Height = 16
        DataField = 'total'
        DataSource = dsRelatorio
        Info = riSum
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 56
        Top = 13
        Width = 107
        Height = 16
        DataField = 'forma_pagamento'
        DataSource = dsRelatorio
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 265
        Top = 17
        Width = 29
        Height = 16
        DataField = 'total'
        DataSource = dsRelatorio
        DisplayMask = 'R$ #,##0.00'
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 32
      BandType = btSummary
      object RLLabel3: TRLLabel
        Left = 464
        Top = 13
        Width = 96
        Height = 16
        Caption = 'TOTAL DO DIA:'
      end
      object RLDBResult2: TRLDBResult
        Left = 607
        Top = 13
        Width = 68
        Height = 16
        DataField = 'total'
        DataSource = dsRelatorio
        DisplayMask = 'R$ #,##0.00'
        Info = riSum
        Text = ''
      end
    end
  end
  object dsRelatorio: TDataSource
    Left = 752
    Top = 8
  end
end
