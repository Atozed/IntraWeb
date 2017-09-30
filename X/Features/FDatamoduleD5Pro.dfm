object FeaturesDM: TFeaturesDM
  OldCreateOrder = False
  Left = 298
  Top = 185
  Height = 302
  Width = 349
  object dsetMaster: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    FieldDefs = <
      item
        Name = 'SYMBOL'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'CO_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EXCHANGE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'YRL_HIGH'
        DataType = ftFloat
      end
      item
        Name = 'YRL_LOW'
        DataType = ftFloat
      end
      item
        Name = 'P_E_RATIO'
        DataType = ftFloat
      end
      item
        Name = 'BETA'
        DataType = ftFloat
      end
      item
        Name = 'PROJ_GRTH'
        DataType = ftFloat
      end
      item
        Name = 'INDUSTRY'
        DataType = ftSmallint
      end
      item
        Name = 'PRICE_CHG'
        DataType = ftSmallint
      end
      item
        Name = 'SAFETY'
        DataType = ftSmallint
      end
      item
        Name = 'RATING'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'RANK'
        DataType = ftFloat
      end
      item
        Name = 'OUTLOOK'
        DataType = ftSmallint
      end
      item
        Name = 'RCMNDATION'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'RISK'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'SYMBOL'
        Fields = 'SYMBOL'
        Options = [ixUnique]
        Source = 'MASTER.MDX'
      end
      item
        Name = 'GROWTHASC'
        Fields = 'PROJ_GRTH'
        Source = 'MASTER.MDX'
      end
      item
        Name = 'GROWTHDESC'
        Fields = 'PROJ_GRTH'
        Options = [ixDescending]
        Source = 'MASTER.MDX'
      end>
    ReadOnly = True
    StoreDefs = True
    TableName = 'master.dbf'
    Left = 24
    Top = 72
  end
  object dsetOrder: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    FieldDefs = <
      item
        Name = 'OrderNo'
        DataType = ftFloat
      end
      item
        Name = 'CustNo'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SaleDate'
        DataType = ftDateTime
      end
      item
        Name = 'ShipDate'
        DataType = ftDateTime
      end
      item
        Name = 'EmpNo'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ShipToContact'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToAddr1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShipToAddr2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ShipToCity'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ShipToState'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToZip'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ShipToCountry'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ShipToPhone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'ShipVIA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'PO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Terms'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PaymentMethod'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ItemsTotal'
        DataType = ftCurrency
      end
      item
        Name = 'TaxRate'
        DataType = ftFloat
      end
      item
        Name = 'Freight'
        DataType = ftCurrency
      end
      item
        Name = 'AmountPaid'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Fields = 'OrderNo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CustNo'
        Fields = 'CustNo'
      end>
    ReadOnly = True
    StoreDefs = True
    TableName = 'orders.db'
    Left = 24
    Top = 136
  end
  object dsetParts: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    SessionName = 'Session1_1'
    FieldDefs = <
      item
        Name = 'PartNo'
        DataType = ftFloat
      end
      item
        Name = 'VendorNo'
        DataType = ftFloat
      end
      item
        Name = 'Description'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OnHand'
        DataType = ftFloat
      end
      item
        Name = 'OnOrder'
        DataType = ftFloat
      end
      item
        Name = 'Cost'
        DataType = ftCurrency
      end
      item
        Name = 'ListPrice'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Fields = 'PartNo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'ByDescription'
        Fields = 'Description'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'VendorNo'
        Fields = 'VendorNo'
      end>
    ReadOnly = True
    StoreDefs = True
    TableName = 'parts.db'
    Left = 24
    Top = 192
  end
  object dsrcMaster: TDataSource
    DataSet = dsetMaster
    Left = 112
    Top = 72
  end
  object dsrcOrder: TDataSource
    DataSet = dsetOrder
    Left = 112
    Top = 136
  end
  object dsrcParts: TDataSource
    DataSet = dsetParts
    Left = 112
    Top = 192
  end
  object Session1: TSession
    Active = True
    AutoSessionName = True
    Left = 24
    Top = 8
  end
end
