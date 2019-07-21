object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  Height = 460
  Width = 751
  object DBConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Northwind;Data Source=localhost\sqlexpr' +
      'ess'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 72
  end
end
