object IWForm44: TIWForm44
  Left = 0
  Top = 0
  Width = 1138
  Height = 748
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  JavaScript.Strings = (
    'var xPos = 0;'
    'var yPos = 0;'
    ''
    'function getCursorXY(event) {'
    '    var e = event || window.Event;'
    '    xPos = gIWBrowser.PageOffsetXY()[0] + e.pageX || e.clientX;'
    '    yPos = gIWBrowser.PageOffsetXY()[1] + e.pageY || e.clientY;'
    '    // this is just a feedback on the screen. Optional'
    '    document.getElementById("EDTX").value = xPos;'
    '    document.getElementById("EDTY").value = yPos;'
    '}'
    ''
    'function submitCoordinates(){'
    '      var myData = "xPos=" + xPos + ",yPos=" + yPos;'
    
      '      executeAjaxEvent("&data="+myData, null,"MyAjaxCallback", f' +
      'alse, null, false);'
    '      return true;'
    '}')
  DesignLeft = 8
  DesignTop = 8
  object IWRectangle1: TIWRectangle
    Left = 560
    Top = 40
    Width = 497
    Height = 377
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'IWRectangle1'
    Color = clWebBLUE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWLabel1: TIWLabel
    Left = 48
    Top = 664
    Width = 60
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Cursor X:'
    RawText = False
  end
  object IWLabel2: TIWLabel
    Left = 49
    Top = 696
    Width = 59
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Cursor Y:'
    RawText = False
  end
  object edtX: TIWEdit
    Left = 128
    Top = 659
    Width = 81
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    Editable = True
    NonEditableAsLabel = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtX'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 0
    PasswordPrompt = False
  end
  object edtY: TIWEdit
    Left = 128
    Top = 696
    Width = 81
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    Editable = True
    NonEditableAsLabel = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtY'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = False
  end
  object IWButton1: TIWButton
    Left = 40
    Top = 408
    Width = 185
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Submit Coordinates'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'return submitCoordinates();')
        Event = 'onClick'
      end>
    TabOrder = 2
  end
  object IWMemo1: TIWMemo
    Left = 40
    Top = 448
    Width = 449
    Height = 145
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 3
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWMemo2: TIWMemo
    Left = 40
    Top = 40
    Width = 497
    Height = 329
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 4
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo2'
    Lines.Strings = (
      
        'This demo shows how to get and submit in an async event the mous' +
        'e coordinates on screen.'
      ''
      'To understand how it works, please check:'
      ''
      '1) the form'#39's JavaScript property'
      '2) the button'#39's ScriptEvents property'
      '3) Code in Unit44.pas')
  end
  object IWRegion1: TIWRegion
    Left = 560
    Top = 468
    Width = 497
    Height = 249
    Cursor = crAuto
    RenderInvisibleControls = False
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clWebYELLOW
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
  end
end
