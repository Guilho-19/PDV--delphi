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
    Font.Name = 'Segoe UI'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 70
      BandType = btTitle
      BeforePrint = RLBand1BeforePrint
      object lblTituloFechamentoDeCaixa: TRLLabel
        Left = 230
        Top = 15
        Width = 258
        Height = 25
        Caption = 'FECHAMENTO DE CAIXA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4210752
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 280
        Top = 45
        Width = 158
        Height = 15
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = 'Data do Relat'#243'rio: '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 108
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Color = 15132390
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 20
        Top = 8
        Width = 150
        Height = 15
        Caption = 'FORMA DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 620
        Top = 8
        Width = 78
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3355443
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 140
      Width = 718
      Height = 28
      BeforePrint = RLBand3BeforePrint
      object RLDBText1: TRLDBText
        Left = 20
        Top = 6
        Width = 107
        Height = 15
        DataField = 'forma_pagamento'
        DataSource = dsRelatorio
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 669
        Top = 6
        Width = 29
        Height = 15
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = dsRelatorio
        DisplayMask = 'R$ #,##0.00'
        Text = ''
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 168
      Width = 718
      Height = 40
      BandType = btSummary
      object RLLabel3: TRLLabel
        Left = 470
        Top = 15
        Width = 100
        Height = 17
        Caption = 'TOTAL DO DIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 632
        Top = 15
        Width = 66
        Height = 17
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = dsRelatorio
        DisplayMask = 'R$ #,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDarkorange
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
  end
  object dsRelatorio: TDataSource
    Left = 752
    Top = 8
  end
end
