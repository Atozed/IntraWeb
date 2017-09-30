object ISFAddReview: TISFAddReview
  Left = 0
  Top = 0
  Width = 825
  Height = 705
  ConnectionMode = cmAny
  Title = 'Die Fly Die'
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Filename = 
    'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\grid_ba' +
    'ckground.gif'
  Background.Fixed = False
  HandleTabs = False
  LockUntilLoaded = True
  LockOnSubmit = True
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  DesignSize = (
    825
    705)
  DesignLeft = 39
  DesignTop = 127
  object rectMain: TIWRectangle
    Left = 225
    Top = 69
    Width = 600
    Height = 636
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Font.Color = clWebBLACK
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectLeft: TIWRectangle
    Left = 142
    Top = 69
    Width = 83
    Height = 636
    Cursor = crAuto
    Align = alLeft
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectLeft'
    Color = clWebLAVENDER
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object rectTitle: TIWRectangle
    Left = 152
    Top = 112
    Width = 633
    Height = 36
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2
    RenderSize = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectTitle'
    Color = clWebKHAKI
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblProductName: TIWLabel
    Left = 228
    Top = 118
    Width = 236
    Height = 29
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebGRAY
    Font.FontName = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblProductName'
    Caption = 'lblProductName'
    RawText = False
  end
  object edName: TIWEdit
    Left = 240
    Top = 184
    Width = 121
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    PasswordPrompt = False
  end
  object edEmail: TIWEdit
    Left = 240
    Top = 232
    Width = 121
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit2'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 9
    PasswordPrompt = False
  end
  object lblName: TIWLabel
    Left = 240
    Top = 168
    Width = 40
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblName'
    Caption = 'Name'
    RawText = False
  end
  object lblEmail: TIWLabel
    Left = 240
    Top = 216
    Width = 39
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblEmail'
    Caption = 'Email'
    RawText = False
  end
  object lblRating: TIWLabel
    Left = 240
    Top = 288
    Width = 45
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblRating'
    Caption = 'Rating'
    RawText = False
  end
  object lblComments: TIWLabel
    Left = 240
    Top = 448
    Width = 74
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = [fsBold]
    NoWrap = False
    FriendlyName = 'lblComments'
    Caption = 'Comments'
    RawText = False
  end
  object mmComments: TIWMemo
    Left = 240
    Top = 472
    Width = 553
    Height = 153
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = True
    BGColor = clWebWHITE
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 14
    FriendlyName = 'IWMemo1'
  end
  object lnkSubmit: TIWLink
    Left = 240
    Top = 672
    Width = 49
    Height = 17
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 3
    RenderSize = False
    Alignment = taLeftJustify
    Caption = 'Submit'
    Color = clNone
    Font.Color = clWebRED
    Font.FontName = 'Verdana'
    Font.Size = 10
    Font.Style = [fsUnderline]
    ScriptEvents = <>
    DoSubmitValidation = False
    FriendlyName = 'lnkSubmit'
    OnClick = lnkSubmitClick
    TabOrder = 4
    RawText = False
  end
  object imgSearchText: TIWImageFile
    Left = 596
    Top = 48
    Width = 79
    Height = 20
    Cursor = crAuto
    Anchors = [akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 10
    RenderSize = True
    AutoSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 17
    UseSize = True
    FriendlyName = 'imgSearchText'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\search.' +
      'gif'
  end
  object imgRating5: TIWImageFile
    Left = 272
    Top = 314
    Width = 75
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 18
    UseSize = False
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\reviewr' +
      'ating5.gif'
  end
  object imgRating4: TIWImageFile
    Left = 272
    Top = 338
    Width = 75
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 19
    UseSize = False
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\reviewr' +
      'ating4.gif'
  end
  object imgRating2: TIWImageFile
    Left = 272
    Top = 386
    Width = 75
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 20
    UseSize = False
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\reviewr' +
      'ating2.gif'
  end
  object imgRating3: TIWImageFile
    Left = 272
    Top = 362
    Width = 75
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 21
    UseSize = False
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\reviewr' +
      'ating3.gif'
  end
  object imgRating1: TIWImageFile
    Left = 272
    Top = 410
    Width = 75
    Height = 13
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = 22
    UseSize = False
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\reviewr' +
      'ating1.gif'
  end
  object rbRating5: TIWRadioButton
    Tag = 5
    Left = 240
    Top = 314
    Width = 33
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = rbRatingClick
    Checked = False
    Group = 'G'
    Value = '5'
    FriendlyName = 'IWRadioButton1'
  end
  object rbRating4: TIWRadioButton
    Tag = 4
    Left = 240
    Top = 338
    Width = 33
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = rbRatingClick
    Checked = True
    Group = 'G'
    Value = '4'
    FriendlyName = 'IWRadioButton1'
  end
  object rbRating3: TIWRadioButton
    Tag = 3
    Left = 240
    Top = 362
    Width = 33
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = rbRatingClick
    Checked = False
    Group = 'G'
    Value = '3'
    FriendlyName = 'IWRadioButton1'
  end
  object rbRating2: TIWRadioButton
    Tag = 2
    Left = 240
    Top = 386
    Width = 33
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = rbRatingClick
    Checked = False
    Group = 'G'
    Value = '2'
    FriendlyName = 'IWRadioButton1'
  end
  object rbRating1: TIWRadioButton
    Tag = 1
    Left = 240
    Top = 410
    Width = 33
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    OnClick = rbRatingClick
    Checked = False
    Group = 'G'
    Value = '1'
    FriendlyName = 'IWRadioButton1'
  end
  object lblNameError: TIWLabel
    Left = 392
    Top = 192
    Width = 88
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 10
    Font.Style = [fsItalic]
    NoWrap = False
    FriendlyName = 'lblNameError'
    Caption = 'lblNameError'
    RawText = False
  end
  object lblEMailError: TIWLabel
    Left = 392
    Top = 240
    Width = 84
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 10
    Font.Style = [fsItalic]
    NoWrap = False
    FriendlyName = 'lblEMailError'
    Caption = 'lblEMailError'
    RawText = False
  end
  object lblCommentsError: TIWLabel
    Left = 240
    Top = 640
    Width = 117
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 10
    Font.Style = [fsItalic]
    NoWrap = False
    FriendlyName = 'lblPassError'
    Caption = 'lblCommentsError'
    RawText = False
  end
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 825
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    Constraints.MaxHeight = 69
    Constraints.MinHeight = 69
    Constraints.MinWidth = 600
    Color = clNone
    ParentColor = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 825
      inherited imgSloganTop: TIWImageFile
        TabOrder = -1
      end
      inherited rectRedTop: TIWRectangle
        Width = 692
      end
      inherited edSearch: TIWEdit
        Left = 679
        TabOrder = -1
      end
      inherited imgSearchText: TIWImageFile
        Left = 596
        TabOrder = -1
      end
      inherited imgSearchButton: TIWImageFile
        Left = 804
        TabOrder = -1
      end
      inherited imgSignIn: TIWImageFile
        Left = 581
        TabOrder = -1
      end
      inherited imgAccount: TIWImageFile
        Left = 635
        TabOrder = -1
      end
      inherited imgCart: TIWImageFile
        Left = 709
        TabOrder = -1
      end
      inherited lnkSignIn: TIWLink
        Left = 586
        TabOrder = -1
      end
      inherited lnkAccount: TIWLink
        Left = 645
        TabOrder = -1
      end
      inherited lnkCart: TIWLink
        Left = 721
        TabOrder = -1
      end
      inherited imgServices: TIWImageFile
        Left = 755
        TabOrder = -1
      end
      inherited lnkServices: TIWLink
        Left = 762
        TabOrder = -1
      end
      inherited imgSloganBottom: TIWImageFile
        TabOrder = -1
      end
    end
  end
  inline LeftTree: TISFProductTree
    Left = 0
    Top = 69
    Width = 142
    Height = 636
    Align = alLeft
    Constraints.MaxWidth = 142
    Constraints.MinWidth = 142
    Color = clBlack
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Height = 636
      inherited imgLogo: TIWImageFile
        TabOrder = -1
      end
      inherited lnkSource: TIWLink
        Top = 617
        TabOrder = -1
      end
      inherited rectRight: TIWRectangle
        Height = 636
      end
    end
  end
end
