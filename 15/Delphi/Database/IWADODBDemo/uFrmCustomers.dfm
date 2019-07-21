object FrmCustomers: TFrmCustomers
  Left = 0
  Top = 0
  Width = 748
  Height = 543
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnShow = IWAppFormShow
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWListbox1: TIWListbox
    Left = 48
    Top = 56
    Width = 345
    Height = 425
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 0
    FriendlyName = 'IWListbox1'
    NoSelectionText = '-- No Selection --'
  end
end
