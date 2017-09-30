object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWTimer1: TIWTimer
    Enabled = True
    Interval = 100
    OnTimer = IWTimer1Timer
    Left = 264
    Top = 184
  end
end
