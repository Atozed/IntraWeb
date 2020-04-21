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
    Top = 120
    Width = 209
    Height = 41
    Caption = 'Start long process'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWLabel1: TIWLabel
    Left = 56
    Top = 200
    Width = 209
    Height = 21
    Font.Color = clNone
    Font.FontFamily = 'Helvetica, Sans-Serif, Verdana'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object progressBar: TIWRegion
    Left = 56
    Top = 232
    Width = 500
    Height = 33
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = clWebTOMATO
  end
  object IWMonitor1: TIWMonitor
    Active = False
    Interval = 100
    jsCallbackName = 'doProgress'
    OnAsyncEvent = IWMonitor1AsyncEvent
    Left = 82
    Top = 26
  end
end
