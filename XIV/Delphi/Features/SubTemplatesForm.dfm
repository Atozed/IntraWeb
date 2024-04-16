object formSubTemplates: TformSubTemplates
  Left = 0
  Top = 0
  Width = 1047
  Height = 484
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = mainTemplate
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 344
    Top = 144
    Width = 209
    Height = 25
    Caption = 'First template for region'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 4
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 344
    Top = 176
    Width = 209
    Height = 25
    Caption = 'Second template for region'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 6
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 344
    Top = 280
    Width = 209
    Height = 25
    Caption = 'First template for page'
    Color = clBtnFace
    FriendlyName = 'IWButton3'
    TabOrder = 7
    OnClick = IWButton3Click
  end
  object IWButton4: TIWButton
    AlignWithMargins = False
    Left = 344
    Top = 312
    Width = 209
    Height = 25
    Caption = 'Second template for page'
    Color = clBtnFace
    FriendlyName = 'IWButton4'
    OnClick = IWButton4Click
  end
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 344
    Top = 104
    Width = 209
    Height = 33
    BGColor = clNone
    ConvertSpaces = True
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Press the buttons below to select'
      'a template for the region in the left')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWText2: TIWText
    AlignWithMargins = False
    Left = 344
    Top = 240
    Width = 209
    Height = 33
    BGColor = clNone
    ConvertSpaces = True
    FriendlyName = 'IWText2'
    Lines.Strings = (
      'Press the buttons below to select'
      'a template for the page')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWText3: TIWText
    AlignWithMargins = False
    Left = 16
    Top = 40
    Width = 529
    Height = 57
    BGColor = clNone
    ConvertSpaces = True
    FriendlyName = 'IWText3'
    Lines.Strings = (
      
        'This page demonstrates the use of templates for embedded regions' +
        '.'
      
        'Use the buttons to select different templates for the main page ' +
        'and '
      'for the region separately.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton6: TIWButton
    AlignWithMargins = False
    Left = 559
    Top = 144
    Width = 266
    Height = 25
    Caption = 'First template for region (Async)'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 3
    OnAsyncClick = IWButton6AsyncClick
  end
  object IWButton7: TIWButton
    AlignWithMargins = False
    Left = 559
    Top = 175
    Width = 266
    Height = 25
    Caption = 'Second template for region (Async)'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    TabOrder = 5
    OnAsyncClick = IWButton7AsyncClick
  end
  object IWRegion1: TIWRegion
    Left = 16
    Top = 104
    Width = 313
    Height = 233
    RenderInvisibleControls = False
    LayoutMgr = regionTemplate
    ZIndex = -1
    object IWButton5: TIWButton
      AlignWithMargins = False
      Left = 88
      Top = 200
      Width = 97
      Height = 25
      Caption = 'This is a button'
      Color = clBtnFace
      FriendlyName = 'IWButton5'
      TabOrder = 1
      OnClick = IWButton5Click
    end
    object IWText4: TIWText
      AlignWithMargins = False
      Left = 8
      Top = 8
      Width = 297
      Height = 49
      BGColor = clNone
      ConvertSpaces = False
      FriendlyName = 'IWText4'
      Lines.Strings = (
        'This is the first text area in the region.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object IWText5: TIWText
      AlignWithMargins = False
      Left = 8
      Top = 80
      Width = 297
      Height = 57
      BGColor = clNone
      ConvertSpaces = False
      FriendlyName = 'IWText5'
      Lines.Strings = (
        'This is the second text area in the region.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object IWEdit1: TIWEdit
      AlignWithMargins = False
      Left = 136
      Top = 160
      Width = 169
      Height = 21
      StyleRenderOptions.RenderBorder = False
      NonEditableAsLabel = True
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 2
      Text = 'This is an edit box'
    end
    object IWLabel1: TIWLabel
      AlignWithMargins = False
      Left = 8
      Top = 160
      Width = 91
      Height = 16
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'IWLabel1'
      Caption = 'This is a label'
    end
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 1047
    Height = 26
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 1
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 1047
      TabOrder = 8
      inherited IWMenu1: TIWMenu
        Width = 1047
      end
    end
  end
  object mainTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'formSubTemplates1.html'
    Left = 520
    Top = 40
  end
  object regionTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'regionSubTemplates1.html'
    Left = 272
    Top = 120
  end
end
