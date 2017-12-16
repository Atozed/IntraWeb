object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWComboBox1: TIWComboBox
    Left = 42
    Top = 63
    Width = 190
    Height = 21
    Css = 'form-control select2'
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 0
    ItemIndex = -1
    Items.Strings = (
      'Alabama'
      'Alaska'
      'Arizona'
      'Arkansas'
      'California'
      'Colorado'
      'Connecticut'
      'Delaware'
      'Florida'
      'Georgia'
      'Hawaii'
      'Idaho'
      'Illinois'
      'Indiana'
      'Iowa'
      'Kansas'
      'Kentucky'
      'Louisiana'
      'Maine'
      'Maryland'
      'Massachusetts'
      'Michigan'
      'Minnesota'
      'Mississippi'
      'Missouri'
      'Montana'
      'Nebraska'
      'Nevada'
      'New Hampshire'
      'New Jersey'
      'New Mexico'
      'New York'
      'North Carolina'
      'North Dakota'
      'Ohio'
      'Oklahoma'
      'Oregon'
      'Pennsylvania'
      'Rhode Island'
      'South Carolina'
      'South Dakota'
      'Tennessee'
      'Texas'
      'Utah'
      'Vermont'
      'Virginia'
      'Washington'
      'West Virginia'
      'Wisconsin'
      'Wyoming')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'Unit1.html'
    RenderStyles = False
    Left = 175
    Top = 119
  end
end
