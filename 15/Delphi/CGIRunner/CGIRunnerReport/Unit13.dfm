object IWMainForm: TIWMainForm
  Left = 0
  Top = 0
  Width = 776
  Height = 579
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object iwbtn1: TIWButton
    Left = 48
    Top = 40
    Width = 233
    Height = 33
    Caption = 'Print Report'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'iwbtn1'
    TabOrder = 0
    OnClick = iwbtn1Click
  end
  object IWModalWindow1: TIWModalWindow
    Left = 376
    Top = 56
  end
end
