object IWForm20: TIWForm20
  Left = 0
  Top = 0
  Width = 679
  Height = 516
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 64
    Top = 48
    Width = 185
    Height = 25
    Caption = 'Terminate and redirect'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWEdit1: TIWEdit
    AlignWithMargins = False
    Left = 96
    Top = 160
    Width = 249
    Height = 21
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 2
    Text = 'http://www.atozed.com'
  end
  object rbSite: TIWRadioButton
    AlignWithMargins = False
    Left = 64
    Top = 133
    Width = 137
    Height = 21
    Cursor = crPointer
    Caption = 'To some other site:'
    RawText = False
    Group = 'no group'
    Value = 'rbSite'
    FriendlyName = 'rbSite'
    SubmitOnAsyncEvent = True
  end
  object rbStatic: TIWRadioButton
    AlignWithMargins = False
    Left = 64
    Top = 96
    Width = 169
    Height = 21
    Cursor = crPointer
    Caption = 'To a static HTML page'
    RawText = False
    Checked = True
    Group = 'no group'
    Value = 'rbStatic'
    FriendlyName = 'rbStatic'
    SubmitOnAsyncEvent = True
  end
end
