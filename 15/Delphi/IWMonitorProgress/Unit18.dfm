object IWForm18: TIWForm18
  Left = 0
  Top = 0
  Width = 1001
  Height = 699
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
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 56
    Width = 273
    Height = 41
    Caption = 'Execute some long running task'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWProgressBar2: TIWProgressBar
    AlignWithMargins = False
    Left = 48
    Top = 216
    Width = 441
    Height = 33
    Visible = False
    FriendlyName = 'IWProgressBar2'
    Percent = 50
    ShowText = True
    BGColor = clWebSILVER
    Color = clWebBLUE
  end
  object btnCancel: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 128
    Width = 273
    Height = 41
    Visible = False
    Caption = 'Cancel'
    Color = clBtnFace
    FriendlyName = 'btnCancel'
    OnAsyncClick = btnCancelAsyncClick
  end
  object IWMonitor1: TIWMonitor
    Enabled = False
    Interval = 1000
    TargetComparison = tcEqualOrGreater
    jsCallbackName = 'IWPROGRESSBAR2AsyncUpdate'
    OnAsyncEvent = IWMonitor1AsyncEvent
    ProgressIndicator = IWProgressBar2
    Left = 194
    Top = 378
  end
  object IWModalWindow1: TIWModalWindow
    Draggable = False
    HasHeader = False
    HasFooter = False
    CloseButtonVisible = False
    CloseOnEscKey = False
    Left = 80
    Top = 376
  end
end
