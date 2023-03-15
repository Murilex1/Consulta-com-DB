object DM: TDM
  OldCreateOrder = False
  Height = 353
  Width = 443
  object conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Documents and Settings\Aldo\Meus documentos\Projetos' +
        ' Delphi\Consulta com DB\TESTECONSULTA.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 40
    Top = 25
  end
  object sqlConsulta: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM CLIENTES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 40
    Top = 85
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqlConsulta
    Left = 40
    Top = 150
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 40
    Top = 210
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 40
    Top = 275
  end
end
