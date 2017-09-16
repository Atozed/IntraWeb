object DMDataMain: TDMDataMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 452
  Width = 650
  object cnnSystem: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\MyDevelopement\T' +
      'ests\Intraweb\IWADOTest\data\iwdemo.mdb;Persist Security Info=Fa' +
      'lse;'
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object sqlTableMaster: TADOQuery
    Connection = cnnSystem
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tableMaster;')
    Left = 41
    Top = 80
  end
end
