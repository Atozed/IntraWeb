object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 152
  Width = 512
  object SQLConnection1: TSQLConnection
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=%.dbo'
      'DriverUnit=DBXMSSQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMsSqlMetaDataCommandFactory,DbxMSSQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMsSqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMSSQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMSSQL'
      'LibraryName=dbxmss.dll'
      'VendorLib=sqlncli10.dll'
      'HostName=.'
      'Database=Northwind'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OSAuthentication=False'
      'PrepareSQL=True'
      'User_Name=sa'
      'Password=ds9sisko'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Prepare SQL=False')
    Left = 56
    Top = 32
  end
  object sqlEmployees: TSQLDataSet
    SchemaName = 'dbo'
    CommandText = 
      'SELECT EmployeeID, FirstName, LastName, BirthDate,'#13#10'  Address, C' +
      'ity, Country FROM Employees'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 152
    Top = 64
  end
  object dspEmployees: TDataSetProvider
    DataSet = sqlEmployees
    Left = 240
    Top = 64
  end
end
