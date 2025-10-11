object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 474
  Height = 601
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnAsyncResize = IWAppFormAsyncResize
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignSize = (
    474
    601)
  DesignLeft = 2
  DesignTop = 2
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 16
    Top = 16
    Width = 433
    Height = 569
    Anchors = [akLeft, akTop, akRight, akBottom]
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
end
