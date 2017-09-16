object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  Height = 147
  Width = 512
  object cdsEmployees: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmployees'
    RemoteServer = DSProviderConnection1
    AfterPost = cdsEmployeesAfterPostOrDelete
    AfterDelete = cdsEmployeesAfterPostOrDelete
    OnReconcileError = cdsEmployeesReconcileError
    Left = 304
    Top = 32
  end
  object dsEmployees: TDataSource
    DataSet = cdsEmployees
    Left = 384
    Top = 56
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 208
    Top = 56
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 48
    Top = 56
  end
end
