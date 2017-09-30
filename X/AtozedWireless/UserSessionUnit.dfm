object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Left = 281
  Top = 207
  Height = 224
  Width = 472
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=atozedwireless.mdb;' +
      'Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object qLogin: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'cellno'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pin'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Customers where Cell_No=:cellno and PIN=:pin')
    Left = 128
    Top = 32
    object qLoginID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qLoginNAME_FIRST: TWideStringField
      FieldName = 'NAME_FIRST'
      Size = 50
    end
    object qLoginNAME_LAST: TWideStringField
      FieldName = 'NAME_LAST'
      Size = 50
    end
    object qLoginCELL_NO: TWideStringField
      FieldName = 'CELL_NO'
      Size = 50
    end
    object qLoginPIN: TWideStringField
      FieldName = 'PIN'
      Size = 4
    end
    object qLoginBalance: TBCDField
      FieldName = 'Balance'
      Precision = 19
    end
  end
  object qAddCredit: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'credit'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cellno'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Update Customers set Balance = Balance + :credit where Cell_No=:' +
        'cellno')
    Left = 200
    Top = 32
  end
  object qCalls: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'cellno'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from Calls where Caller_Cell_No=:cellno')
    Left = 128
    Top = 80
    object qCallsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qCallsCALLER_CELL_NO: TWideStringField
      FieldName = 'CALLER_CELL_NO'
      Size = 50
    end
    object qCallsCALLED_NO: TWideStringField
      FieldName = 'CALLED_NO'
      Size = 50
    end
    object qCallsCALL_START: TDateTimeField
      FieldName = 'CALL_START'
    end
    object qCallsCALL_END: TDateTimeField
      FieldName = 'CALL_END'
    end
    object qCallsCHARGE: TBCDField
      FieldName = 'CHARGE'
      Precision = 18
      Size = 2
    end
  end
end
