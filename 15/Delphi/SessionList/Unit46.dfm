object IWForm46: TIWForm46
  Left = 0
  Top = 0
  Width = 803
  Height = 696
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
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 48
    Top = 88
    Width = 681
    Height = 553
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 40
    Width = 185
    Height = 25
    Caption = 'Get Session List'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnAsyncClick = IWButton1AsyncClick
  end
end
