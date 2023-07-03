object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 941
  Height = 647
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  OnResize = IWAppFormResize
  DesignSize = (
    941
    647)
  DesignLeft = 3
  DesignTop = 3
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 24
    Top = 560
    Width = 225
    Height = 41
    Anchors = [akLeft, akBottom]
    Caption = 'Get IW.browser info'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 24
    Top = 24
    Width = 897
    Height = 521
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
