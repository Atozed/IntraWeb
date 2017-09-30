object TaxiDataModule: TTaxiDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 329
  Top = 210
  Height = 345
  Width = 485
  object DB: TDBISAMDatabase
    EngineVersion = '3.24'
    Connected = True
    DatabaseName = 'TaxiDB'
    Directory = '.\Database'
    SessionName = 'DBISAMSession_9'
    Left = 48
    Top = 24
  end
  object tblDriver: TDBISAMTable
    AutoDisplayLabels = False
    CopyOnAppend = False
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    TableName = 'DRIVER'
    Left = 48
    Top = 80
  end
  object dsDriver: TDataSource
    DataSet = tblDriver
    Left = 48
    Top = 128
  end
  object dsClient: TDataSource
    DataSet = tblClient
    Left = 112
    Top = 128
  end
  object tblClient: TDBISAMTable
    AutoDisplayLabels = False
    CopyOnAppend = False
    BeforePost = tblClientBeforePost
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    TableName = 'client'
    Left = 112
    Top = 80
  end
  object DBISAMSession: TDBISAMSession
    EngineVersion = '3.24'
    Active = True
    AutoSessionName = True
    LockRetryCount = 15
    LockWaitTime = 100
    LockProtocol = lpPessimistic
    ProgressSteps = 20
    SessionType = stLocal
    RemoteType = rtLAN
    RemoteAddress = '127.0.0.1'
    RemotePort = 12005
    RemoteTrace = False
    Left = 184
    Top = 24
  end
  object qryOrdersByClient: TDBISAMQuery
    AutoDisplayLabels = False
    CopyOnAppend = False
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    MaxRowCount = -1
    SQL.Strings = (
      'SELECT CAST(ORDER_DATE AS CHAR(20)) + '#39' '#39
      '           + CAST(ORDER_TIME AS CHAR(20)) + '#39' '#39
      '           + ADDRESS AS ORDER_INFO, '
      '            TAXI_ORDER_ID'
      'FROM TAXI_ORDER '
      'WHERE CLIENT_ID= :CLIENT_ID AND'
      '               COMPLETED<>'#39'T'#39'  AND '
      '               REFUSED<>'#39'T'#39'  '
      'ORDER BY ORDER_INFO')
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptUnknown
      end>
    Left = 293
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENT_ID'
        ParamType = ptUnknown
      end>
  end
  object dsOrdersByClient: TDataSource
    DataSet = qryOrdersByClient
    Left = 293
    Top = 128
  end
  object tblTaxiOrder: TDBISAMTable
    AutoDisplayLabels = False
    CopyOnAppend = False
    BeforePost = tblClientBeforePost
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    IndexFieldNames = 'TAXI_ORDER_ID'
    TableName = 'taxi_order'
    Left = 179
    Top = 80
    object tblTaxiOrderTAXI_ORDER_ID: TAutoIncField
      FieldName = 'TAXI_ORDER_ID'
      Origin = 'taxi_order.TAXI_ORDER_ID'
      Required = True
    end
    object tblTaxiOrderDRIVER_ID: TIntegerField
      FieldName = 'DRIVER_ID'
      Origin = 'taxi_order.DRIVER_ID'
    end
    object tblTaxiOrderCLIENT_ID: TIntegerField
      FieldName = 'CLIENT_ID'
      Origin = 'taxi_order.CLIENT_ID'
      Required = True
    end
    object tblTaxiOrderADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'taxi_order.ADDRESS'
      Required = True
    end
    object tblTaxiOrderPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'taxi_order.PRICE'
    end
    object tblTaxiOrderORDER_DATE: TDateField
      FieldName = 'ORDER_DATE'
    end
    object tblTaxiOrderORDER_TIME: TTimeField
      FieldName = 'ORDER_TIME'
      DisplayFormat = 'HH:MM'
      EditMask = 'HH:MM'
    end
    object tblTaxiOrderREFUSED: TStringField
      FieldName = 'REFUSED'
      Size = 3
    end
    object tblTaxiOrderCOMPLETED: TStringField
      FieldName = 'COMPLETED'
      Size = 3
    end
  end
  object dsTaxiOrder: TDataSource
    DataSet = tblTaxiOrder
    Left = 179
    Top = 128
  end
  object qryOrdersByDriver: TDBISAMQuery
    AutoDisplayLabels = False
    CopyOnAppend = False
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    MaxRowCount = -1
    SQL.Strings = (
      'SELECT CAST(TO.ORDER_DATE AS CHAR(20)) + '#39' '#39
      '           + CAST(TO.ORDER_TIME AS CHAR(20)) + '#39' '#39
      '           + TO.ADDRESS + '#39' '#39
      '           + CL.NAME AS ORDER_INFO, '
      '            TAXI_ORDER_ID'
      'FROM TAXI_ORDER TO, CLIENT CL'
      'WHERE TO.DRIVER_ID= :DRIVER_ID AND '
      '               TO.COMPLETED<>'#39'T'#39'  AND '
      '               TO.REFUSED<>'#39'T'#39'    AND '
      '               CL.CLIENT_ID= TO.CLIENT_ID'
      'ORDER BY ORDER_INFO')
    Params = <
      item
        DataType = ftInteger
        Name = 'DRIVER_ID'
        ParamType = ptInput
      end>
    Left = 381
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DRIVER_ID'
        ParamType = ptInput
      end>
  end
  object dsOrdersByDriver: TDataSource
    DataSet = qryOrdersByDriver
    Left = 381
    Top = 128
  end
  object qryGetDriverByTurn: TDBISAMQuery
    AutoDisplayLabels = False
    CopyOnAppend = False
    DatabaseName = 'TaxiDB'
    SessionName = 'DBISAMSession_9'
    EngineVersion = '3.24'
    MaxRowCount = -1
    SQL.Strings = (
      
        'select oo.driver_id as driver_id,max(oo.order_time) from taxi_or' +
        'der oo, driver d'
      
        '  where d.driver_id = oo.driver_id and d.available='#39'T'#39' and oo.or' +
        'der_date= :date'
      'group by 1'
      'order by 2 ')
    Params = <
      item
        DataType = ftDate
        Name = 'date'
        ParamType = ptUnknown
      end>
    Left = 293
    Top = 184
    ParamData = <
      item
        DataType = ftDate
        Name = 'date'
        ParamType = ptUnknown
      end>
  end
end
