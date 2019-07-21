object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 797
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 264
    Top = 184
    Width = 225
    Height = 41
    Caption = 'Send me an Unicode File'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'MyButton'
    TabOrder = 0
    OnClick = IWButton4Click
  end
  object IWButton2: TIWButton
    Left = 264
    Top = 296
    Width = 75
    Height = 25
    Css = 'class1'
    Caption = 'IWButton2'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    Left = 264
    Top = 344
    Width = 75
    Height = 25
    Css = 'class2'
    Caption = 'IWButton3'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWEdit1: TIWEdit
    Left = 448
    Top = 296
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 3
    Text = 'IWEdit1'
  end
  object IWComboBox1: TIWComboBox
    Left = 448
    Top = 336
    Width = 121
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 4
    ItemIndex = -1
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'MainTemplate.html'
    Left = 96
    Top = 48
  end
end
