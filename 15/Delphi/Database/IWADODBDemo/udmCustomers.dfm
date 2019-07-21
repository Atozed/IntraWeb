object dmCustomers: TdmCustomers
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 527
  Width = 786
  object qryCustomers: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'select CompanyName from Customers '
      'order by CompanyName ASC')
    Left = 120
    Top = 64
  end
end
