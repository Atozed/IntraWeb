object IWForm50: TIWForm50
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
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
    Left = 24
    Top = 25
    Width = 210
    Height = 25
    Caption = 'Terminate And Redirect Sync'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWEdit1: TIWEdit
    AlignWithMargins = False
    Left = 133
    Top = 80
    Width = 369
    Height = 21
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    Text = 'http://www.atozed.com'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 24
    Top = 80
    Width = 80
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Redirect to:'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 23
    Top = 118
    Width = 102
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = 'Time (seconds):'
  end
  object IWEdit3: TIWEdit
    AlignWithMargins = False
    Left = 133
    Top = 116
    Width = 100
    Height = 21
    StyleRenderOptions.RenderBorder = False
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 2
    Text = '5'
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 292
    Top = 25
    Width = 210
    Height = 25
    Caption = 'Terminate And Redirect Async'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
end
