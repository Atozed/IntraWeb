object FormStep1: TFormStep1
  Left = 0
  Top = 0
  Width = 349
  Height = 296
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brOpera, brNetscape6]
  AutoProcess = True
  PostToSelf = True
  DesignLeft = 337
  DesignTop = 199
  object IWButton321: TIWButton32
    Left = 88
    Top = 48
    Width = 75
    Height = 25
    TabOrder = 0
    ButtonType = btSubmit
    Caption = 'IWButton321'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    OnClick = IWButton321Click
  end
  object IWLabel321: TIWLabel32
    Left = 132
    Top = 120
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
  object IWURL321: TIWURL32
    Left = 112
    Top = 180
    Width = 65
    Height = 17
    TabOrder = 0
    Caption = 'click here'
    Font.Color = clNone
    Font.Enabled = True
    Font.Size = 10
    Font.Style = []
    TerminateApp = False
    URL = 'http://127.0.0.1/step2.iwp'
  end
end
