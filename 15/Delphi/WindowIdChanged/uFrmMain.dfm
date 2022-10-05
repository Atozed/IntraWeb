object frmMain: TfrmMain
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 40
    Top = 48
    Width = 329
    Height = 25
    Font.Color = clNone
    Font.Size = 16
    Font.Style = []
    Font.PxSize = 21
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is the main form'
  end
  object IWButton1: TIWButton
    Left = 40
    Top = 112
    Width = 185
    Height = 30
    Caption = 'Go to another form'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
end
