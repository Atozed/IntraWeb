object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 851
  Height = 602
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignSize = (
    851
    602)
  DesignLeft = 2
  DesignTop = 2
  object IWMemo1: TIWMemo
    Left = 24
    Top = 64
    Width = 801
    Height = 489
    Anchors = [akLeft, akTop, akRight, akBottom]
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWLabel1: TIWLabel
    Left = 24
    Top = 32
    Width = 133
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is IWForm2'
  end
end
