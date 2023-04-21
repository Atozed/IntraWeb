object IWForm34: TIWForm34
  Left = 0
  Top = 0
  Width = 989
  Height = 827
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
  DesignLeft = 8
  DesignTop = 8
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 63
    Top = 416
    Width = 690
    Height = 313
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
  object IWComboBox1: TIWComboBox
    AlignWithMargins = False
    Left = 776
    Top = 80
    Width = 177
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Required = True
    OnAsyncChange = IWComboBox1AsyncChange
    ItemIndex = -1
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 776
    Top = 58
    Width = 97
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Set Active Page'
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 776
    Top = 120
    Width = 177
    Height = 185
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'Programmatically changing the Active page won'#39't trigger any serv' +
      'er side event. This is by design.'
  end
  object IWjQPageControl2: TIWjQPageControl
    Left = 63
    Top = 46
    Width = 690
    Height = 300
    RenderInvisibleControls = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Font.PxSize = 13
    TabHeight = 30
    TabTextHeight = 17
    TabMargin = 7
    TabPadding = 13
    TabBorderHeight = 0
    OnAsyncPageChanged = IWjQPageControl2AsyncPageChanged
    OnAsyncBeforePageChange = IWjQPageControl2AsyncBeforePageChange
    BlockingBeforePageChange = False
  end
end
