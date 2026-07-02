object frmRelVendasCanceladas: TfrmRelVendasCanceladas
  Left = 0
  Top = 0
  Caption = 'frmRelVendasCanceladas'
  ClientHeight = 657
  ClientWidth = 808
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rlCanceladas: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsCanceladas
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
      object Label1: TLabel
        Left = 165
        Top = 15
        Width = 388
        Height = 25
        Caption = 'HIST'#211'RICO DE VENDAS CANCELADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $00404040
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
        Info = itDate
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
      Color = $00E6E6E6
      ParentColor = False
      Transparent = False
      object Label2: TLabel
        Left = 20
        Top = 8
        Width = 73
        Height = 15
        Caption = 'N'#176' DA VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $00333333
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 200
        Top = 8
        Width = 69
        Height = 15
        Caption = 'DATA / HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $00333333
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 620
        Top = 8
        Width = 65
        Height = 15
        Alignment = taRightJustify
        Caption = 'VALOR (R$)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $00333333
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
        Width = 54
        Height = 15
        DataField = 'id_venda'
        DataSource = dsCanceladas
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 200
        Top = 6
        Width = 61
        Height = 15
        DataField = 'data_hora'
        DataSource = dsCanceladas
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 623
        Top = 6
        Width = 62
        Height = 15
        Alignment = taRightJustify
        DataField = 'valor_total'
        DataSource = dsCanceladas
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
      object Label5: TLabel
        Left = 380
        Top = 15
        Width = 200
        Height = 15
        Caption = 'QUANTIDADE DE CANCELAMENTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 639
        Top = 15
        Width = 46
        Height = 15
        Alignment = taRightJustify
        DataField = 'id_venda'
        DataSource = dsCanceladas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $000000C0
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Info = riCount
        ParentFont = False
        Text = ''
      end
    end
  end
  object dsCanceladas: TDataSource
    Left = 744
    Top = 32
  end
end
