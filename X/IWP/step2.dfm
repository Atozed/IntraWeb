object FormStep2: TFormStep2
  Left = 0
  Top = 0
  Width = 352
  Height = 296
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brOpera, brNetscape6]
  AutoProcess = True
  PostToSelf = True
  DesignLeft = 268
  DesignTop = 202
  object IWEdit321: TIWEdit32
    Left = 40
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    PasswordPrompt = False
    MaxLength = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
  end
  object IWButton321: TIWButton32
    Left = 40
    Top = 96
    Width = 75
    Height = 25
    TabOrder = 0
    ButtonType = btSubmit
    Caption = 'Click here'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    OnClick = IWButton321Click
  end
  object IWLabel321: TIWLabel32
    Left = 40
    Top = 144
    Width = 78
    Height = 16
    Visible = False
    TabOrder = 0
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    Caption = 'IWLabel321'
  end
end
