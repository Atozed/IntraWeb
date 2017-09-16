object IWForm44: TIWForm44
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnGenerateForm = IWAppFormGenerateForm
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 44
    Top = 76
    Width = 133
    Height = 58
    Font.Color = clNone
    Font.Size = 36
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = '00:00'
  end
  object IWButton1: TIWButton
    Left = 44
    Top = 180
    Width = 133
    Height = 25
    Caption = 'Sync Event'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 44
    Top = 226
    Width = 133
    Height = 25
    Caption = 'Async Event'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWLabel2: TIWLabel
    Left = 44
    Top = 19
    Width = 399
    Height = 39
    Font.Color = clNone
    Font.Size = 24
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Your session will expire in'
  end
end
