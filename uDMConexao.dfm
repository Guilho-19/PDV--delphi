object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object conexaoBanco: TADOConnection
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=PDV;Data Source="";Initial' +
      ' File Name="";Server SPN="";Authentication="";Access Token=""'
    Provider = 'MSOLEDBSQL.1'
    Left = 48
    Top = 24
  end
  object qryOperadores: TADOQuery
    Connection = conexaoBanco
    Parameters = <>
    Left = 32
    Top = 88
  end
end
