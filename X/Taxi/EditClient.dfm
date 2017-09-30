object frmEditClient: TfrmEditClient
  Left = 0
  Top = 0
  Width = 227
  Height = 228
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnDestroy = IWAppFormWAPDestroy
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 409
  DesignTop = 250
  object IWLabelWAP1: TIWLabelWAP
    Left = 16
    Top = 24
    Width = 32
    Height = 13
    TabOrder = 0
    Caption = 'Name*'
  end
  object IWLabelWAP2: TIWLabelWAP
    Left = 16
    Top = 56
    Width = 38
    Height = 13
    TabOrder = 2
    Caption = 'Address'
  end
  object IWLabelWAP3: TIWLabelWAP
    Left = 16
    Top = 92
    Width = 31
    Height = 13
    TabOrder = 4
    Caption = 'Phone'
  end
  object IWLabelWAP4: TIWLabelWAP
    Left = 16
    Top = 122
    Width = 50
    Height = 13
    TabOrder = 6
    Caption = 'Password*'
  end
  object edName: TIWDBEditWAP
    Left = 109
    Top = 22
    Width = 100
    Height = 20
    TabOrder = 1
    DataField = 'NAME'
    DataSource = TaxiDataModule.dsClient
    PasswordPrompt = False
  end
  object edAddress: TIWDBEditWAP
    Left = 109
    Top = 54
    Width = 100
    Height = 20
    TabOrder = 3
    DataField = 'ADDRESS'
    DataSource = TaxiDataModule.dsClient
    PasswordPrompt = False
  end
  object edPhone: TIWDBEditWAP
    Left = 109
    Top = 86
    Width = 100
    Height = 20
    TabOrder = 5
    DataField = 'PHONE'
    DataSource = TaxiDataModule.dsClient
    PasswordPrompt = False
  end
  object IWLabelWAP5: TIWLabelWAP
    Left = 16
    Top = 155
    Width = 86
    Height = 13
    TabOrder = 8
    Caption = 'Retype password*'
  end
  object edPassword: TIWEditWAP
    Left = 109
    Top = 120
    Width = 100
    Height = 20
    TabOrder = 7
    MaxLength = 0
    PasswordPrompt = True
    Required = True
  end
  object edRetypePassword: TIWEditWAP
    Left = 109
    Top = 153
    Width = 100
    Height = 20
    TabOrder = 9
    MaxLength = 0
    PasswordPrompt = True
    Required = True
  end
  object IWLabelWAP6: TIWLabelWAP
    Left = 16
    Top = 200
    Width = 89
    Height = 13
    TabOrder = 10
    Caption = '(*) - Required fields'
  end
end
