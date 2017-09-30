object frmDriver: TfrmDriver
  Left = 0
  Top = 0
  Width = 330
  Height = 115
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnDefaultAction = IWAppFormWAPDefaultAction
  DesignLeft = 352
  DesignTop = 209
  object IWLabelWAP2: TIWLabelWAP
    Left = 18
    Top = 16
    Width = 144
    Height = 13
    TabOrder = 2
    Caption = 'Choose your name from the list'
  end
  object lcbDriverName: TIWDBLookupComboBoxWAP
    Left = 185
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 3
    NoSelectionText = '-- No Selection --'
    RequireSelection = True
    Caption = 'lcbDriverName'
    ItemsHaveValues = False
    KeyField = 'DRIVER_ID'
    ListField = 'NAME'
    ListSource = TaxiDataModule.dsDriver
  end
  object IWLabelWAP3: TIWLabelWAP
    Left = 18
    Top = 50
    Width = 95
    Height = 13
    TabOrder = 4
    Caption = 'Input your password'
  end
  object edPassword: TIWEditWAP
    Left = 121
    Top = 48
    Width = 28
    Height = 21
    TabOrder = 5
    MaxLength = 0
    PasswordPrompt = True
    Required = False
  end
end
