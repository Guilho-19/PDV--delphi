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
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 40
      BandType = btTitle
      object Label1: TLabel
        Left = 264
        Top = 3
        Width = 241
        Height = 16
        Caption = 'HIST'#211'RICO DE VENDAS CANCELADAS'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 78
      Width = 718
      Height = 48
      BandType = btColumnHeader
      object Label2: TLabel
        Left = 24
        Top = 19
        Width = 72
        Height = 16
        Caption = 'N'#176' da Venda'
      end
      object Label3: TLabel
        Left = 192
        Top = 18
        Width = 58
        Height = 16
        Caption = 'Data/Hora'
      end
      object Label4: TLabel
        Left = 384
        Top = 18
        Width = 57
        Height = 16
        Caption = 'Valor (R$)'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 126
      Width = 718
      Height = 59
      object RLDBText1: TRLDBText
        Left = 24
        Top = 24
        Width = 54
        Height = 16
        DataField = 'id_venda'
        DataSource = dsCanceladas
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 192
        Top = 29
        Width = 61
        Height = 16
        DataField = 'data_hora'
        DataSource = dsCanceladas
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 384
        Top = 29
        Width = 62
        Height = 16
        DataField = 'valor_total'
        DataSource = dsCanceladas
        DisplayMask = 'R$ #,##0.00'
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 56
      BandType = btSummary
      object Label5: TLabel
        Left = 384
        Top = 26
        Width = 182
        Height = 16
        Caption = 'Quantidade de Cancelamentos:'
      end
      object RLDBResult1: TRLDBResult
        Left = 616
        Top = 29
        Width = 46
        Height = 16
        DataField = 'id_venda'
        DataSource = dsCanceladas
        Info = riCount
        Text = ''
      end
    end
  end
  object dsCanceladas: TDataSource
    Left = 744
    Top = 32
  end
end
