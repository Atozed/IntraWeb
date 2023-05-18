object IWUserSession: TIWUserSession
  OldCreateOrder = False
  OnCreate = IWUserSessionBaseCreate
  Height = 464
  Width = 437
  object cdsUserAccess: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 64
    object cdsUserAccessTokenHash: TStringField
      FieldName = 'TokenHash'
      KeyFields = 'TokenHash'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 128
    end
    object cdsUserAccessUserName: TStringField
      FieldName = 'UserName'
      Size = 80
    end
    object cdsUserAccessUserEmail: TStringField
      FieldName = 'UserEmail'
      Size = 80
    end
    object cdsUserAccessUserId: TStringField
      FieldName = 'UserId'
      Size = 30
    end
    object cdsUserAccessApi: TStringField
      FieldName = 'Api'
    end
    object cdsUserAccessToken: TStringField
      DisplayWidth = 8192
      FieldName = 'Token'
      Size = 8192
    end
    object cdsUserAccessRefreshToken: TStringField
      DisplayWidth = 8192
      FieldName = 'RefreshToken'
      Size = 8192
    end
    object cdsUserAccessExpiresAt: TDateTimeField
      FieldName = 'ExpiresAt'
    end
    object cdsUserAccessDateTime: TDateTimeField
      FieldName = 'DateTime'
    end
  end
end
