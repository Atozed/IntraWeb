object IWForm18: TIWForm18
  Left = 0
  Top = 0
  Width = 662
  Height = 428
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  JavaScript.Strings = (
    'function doProgress(value) {'
    '  el = IW.$("PROGRESSBAR");'
    '  if (el) {'
    '    el.style.width = 5 * value + "px";'
    '  }'
    '  el = IW.$("IWLABEL1");'
    '  if (el) {'
    '    el.innerHTML = value + "%";'
    '  }'
    '}')
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 56
    Top = 48
    Width = 329
    Height = 41
    Caption = 'Do Something / Notify other sessions when done'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 56
    Top = 160
    Width = 553
    Height = 225
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
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWMonitor1: TIWMonitor
    Active = False
    Interval = 1000
    TargetValue = 1
    jsCallbackName = 'doProgress'
    OnAsyncEvent = IWMonitor1AsyncEvent
    Left = 506
    Top = 50
  end
end
