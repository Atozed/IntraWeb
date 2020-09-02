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
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  JavaScript.Strings = (
    'function monitorCallback(value) {'
    '  alert(value);'
    '}')
  DesignLeft = 8
  DesignTop = 8
  object MemoRegion: TIWRegion
    Left = 36
    Top = 85
    Width = 490
    Height = 285
    RenderInvisibleControls = True
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    object memEventLog: TIWMemo
      Left = 18
      Top = 45
      Width = 454
      Height = 228
      BGColor = clNone
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      InvisibleBorder = False
      HorizScrollBar = False
      VertScrollBar = True
      Required = False
      TabOrder = 0
      SubmitOnAsyncEvent = True
      FriendlyName = 'memEventLog'
    end
    object lblEventLog: TIWLabel
      Left = 18
      Top = 23
      Width = 60
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'Event log'
      Caption = 'Event Log'
    end
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'MainTemplate.html'
    Left = 74
    Top = 25
  end
  object IWMonitor1: TIWMonitor
    Interval = 1000
    OnAsyncEvent = IWMonitor1AsyncEvent
    Left = 178
    Top = 26
  end
end
