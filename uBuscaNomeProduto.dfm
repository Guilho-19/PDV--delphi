object frmBuscaNomeProduto: TfrmBuscaNomeProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = ' Busca R'#225'pida de Produtos'
  ClientHeight = 468
  ClientWidth = 913
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlTopoBusca: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 80
    Align = alTop
    BevelOuter = bvNone
    Color = 3815994
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      913
      80)
    object lblDica: TLabel
      Left = 20
      Top = 15
      Width = 167
      Height = 17
      Caption = 'Digite o nome do produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtFiltroNome: TEdit
      Left = 20
      Top = 38
      Width = 873
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = edtFiltroNomeChange
    end
  end
  object dbgProdutos: TDBGrid
    Left = 0
    Top = 80
    Width = 913
    Height = 388
    Align = alClient
    DataSource = dsConsultaNomeProduto
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = dbgProdutosDblClick
    OnKeyPress = dbgProdutosKeyPress
  end
  object dsConsultaNomeProduto: TDataSource
    DataSet = dmConexao.qryConsultaNomeProduto
    Left = 832
    Top = 96
  end
end
