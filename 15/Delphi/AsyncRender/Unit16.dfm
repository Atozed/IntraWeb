object IWForm16: TIWForm16
  Left = 0
  Top = 0
  Width = 1227
  Height = 776
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
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 80
    Top = 56
    Width = 225
    Height = 37
    Caption = 'Create control in Async'
    Color = clBtnFace
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.FontVariant = 'Arial'
    Font.Size = 10
    Font.Style = []
    Font.PxSize = 13
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWComboBox1: TIWComboBox
    AlignWithMargins = False
    Left = 328
    Top = 56
    Width = 233
    Height = 37
    StyleRenderOptions.RenderBorder = False
    Required = True
    TabOrder = 1
    ItemIndex = -1
    Items.Strings = (
      'Button'
      'Label'
      'Edit'
      'Region'
      'TreeView'
      'ModalWindow'
      'Grid'
      'Tab Control'
      'ComboBox'
      'jQAccordion'
      'jqPageControl')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = ''
  end
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 640
    Top = 56
    Width = 521
    Height = 329
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 14
    Font.Style = []
    Font.PxSize = 18
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows a new IW 15.2 feature: Full Ajax rendering suppo' +
        'rt'
      ''
      
        'Controls can be created/destroyed on the fly during async (AJAX)' +
        ' events and the DOM will reflect that transparently!'
      ''
      
        'Controls can be nested, i.e. a containter control like a IWRegio' +
        'n can be parent of other controls (see ModalWindow and TabContro' +
        'l examples)')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWURL1: TIWURL
    AlignWithMargins = False
    Left = 640
    Top = 415
    Width = 265
    Height = 25
    Hint = 
      'https://github.com/Atozed/IntraWeb/tree/master/15/Delphi/AsyncRe' +
      'nder'
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 14
    Font.Style = [fsUnderline]
    Font.PxSize = 18
    HasTabOrder = True
    TargetOptions.AddressBar = True
    TargetOptions.Menu = True
    TargetOptions.Toolbar = True
    TerminateApp = False
    URL = 
      'https://github.com/Atozed/IntraWeb/tree/master/15/Delphi/AsyncRe' +
      'nder'
    UseTarget = False
    FriendlyName = 'IWURL1'
    TabOrder = 2
    RawText = False
    Caption = 'Source Code on github'
  end
end
