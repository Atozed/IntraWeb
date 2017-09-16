object BlueForm: TBlueForm
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clWebBLUE
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
    Left = 48
    Top = 32
    Width = 335
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is the blue form. Please note the URL in Browser'
  end
  object IWButton1: TIWButton
    Left = 48
    Top = 80
    Width = 161
    Height = 25
    Caption = 'Back to Main Form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
end
