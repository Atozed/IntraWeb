object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Height = 612
  Width = 751
  object MSConnection1: TMSConnection
    Database = 'Northwind'
    Options.Provider = prSQL
    Server = '.\SQLExpress'
    Left = 191
    Top = 118
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'select * from region')
    Left = 335
    Top = 118
  end
end
