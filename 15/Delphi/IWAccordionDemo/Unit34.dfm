object IWForm34: TIWForm34
  Left = 0
  Top = 0
  Width = 989
  Height = 740
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ContentFiles.Strings = (
    
      'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/a' +
      'll.min.css')
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
    Top = 400
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
    Left = 544
    Top = 72
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
    Left = 544
    Top = 50
    Width = 113
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Set Active Section'
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 544
    Top = 112
    Width = 177
    Height = 185
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'Programmatically changing the Active page won'#39't trigger any serv' +
      'er side event. This is by design.'
  end
  object btnAddSection: TIWButton
    AlignWithMargins = False
    Left = 760
    Top = 63
    Width = 161
    Height = 30
    Caption = 'Add another section'
    Color = clBtnFace
    FriendlyName = 'Add another section'
    RenderButtonTag = True
    Image.WebFontClass = 'fa fa-plus-circle'
    OnAsyncClick = btnAddSectionAsyncClick
  end
  object IWjQAccordion1: TIWjQAccordion
    Left = 63
    Top = 48
    Width = 450
    Height = 300
    RenderInvisibleControls = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Font.PxSize = 13
    TabHeight = 34
    TabTextHeight = 17
    TabBorderHeight = 2
    TabMargin = 2
    TabPadding = 13
    OnAsyncSectionChanged = IWjQAccordion1AsyncSectionChanged
    OnAsyncBeforeSectionChange = IWjQAccordion1AsyncBeforeSectionChange
    BlockingBeforeSectionChange = False
  end
end
