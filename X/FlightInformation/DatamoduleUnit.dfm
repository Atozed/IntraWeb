object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 472
  Top = 220
  Height = 435
  Width = 400
  object Database1: TDatabase
    DatabaseName = 'DB'
    DriverName = 'STANDARD'
    Params.Strings = (
      'PATH=Data'
      'ENABLE BCD=TRUE'
      'DEFAULT DRIVER=PARADOX')
    SessionName = 'Session1_3'
    Left = 40
    Top = 40
  end
  object Session1: TSession
    Active = True
    AutoSessionName = True
    Left = 96
    Top = 16
  end
  object qryOriginList: TQuery
    DatabaseName = 'DB'
    SessionName = 'Session1_3'
    SQL.Strings = (
      'select distinct(OriginAirport) from flights')
    Left = 156
    Top = 104
  end
  object qryDestinationList: TQuery
    DatabaseName = 'DB'
    SessionName = 'Session1_3'
    SQL.Strings = (
      'select distinct(DestinationAirport) from flights')
    Left = 152
    Top = 180
  end
  object qryFlights: TQuery
    DatabaseName = 'DB'
    SessionName = 'Session1_3'
    SQL.Strings = (
      '')
    Left = 60
    Top = 192
  end
end
