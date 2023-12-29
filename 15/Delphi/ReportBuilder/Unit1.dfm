object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 1113
  Height = 653
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWDownloadButton
    AlignWithMargins = False
    Left = 64
    Top = 72
    Width = 249
    Height = 49
    Caption = 'Show report'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWModalWindow1: TIWModalWindow
    WindowWidth = 95
    WindowHeight = 95
    Autosize = False
    Left = 192
    Top = 257
  end
end
