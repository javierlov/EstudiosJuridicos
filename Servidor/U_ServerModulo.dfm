object DSServerModule1: TDSServerModule1
  OldCreateOrder = False
  Height = 307
  Width = 598
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'HostName=localhost'
      'Database=bd'
      'User_Name=root'
      'Password=1234')
    VendorLib = 'libmysql.dll'
    Left = 40
    Top = 16
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM CLIENTES ')
    SQLConnection = SQLConnection1
    Left = 128
    Top = 16
    object SQLQuery1codigo: TIntegerField
      Tag = 5
      FieldName = 'codigo'
    end
    object SQLQuery1nombre: TStringField
      FieldName = 'nombre'
      Required = True
      Size = 50
    end
    object SQLQuery1cedula: TStringField
      FieldName = 'cedula'
      Required = True
    end
    object SQLQuery1direccion: TStringField
      FieldName = 'direccion'
      Required = True
      Size = 50
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 72
    Top = 80
  end
end
