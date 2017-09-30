object FormMain: TFormMain
  Left = 0
  Top = 0
  Width = 761
  Height = 457
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  JavaScript.Strings = (
    'function showAddress(address) {'
    '  geocoder.getLatLng('
    '    address,'
    '    function(point) {'
    '      if (!point) {'
    '        alert(address + " not found");'
    '      } else {'
    '        map.setCenter(point, 13);'
    '        var marker = new GMarker(point);'
    '        map.addOverlay(marker);'
    '        marker.openInfoWindowHtml(address);'
    '      }'
    '    }'
    '  );'
    '}')
  DesignSize = (
    761
    457)
  DesignLeft = 8
  DesignTop = -23
  object IWImageFile1: TIWImageFile
    Left = 655
    Top = 3
    Width = 87
    Height = 32
    Cursor = crAuto
    Anchors = [akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    Cacheable = True
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'C:\Projekte\Atozed\IntraWeb9.0\Demos\Win32\Delphi\GoogleMapsAPI\' +
      'files\GoogleMaps_logo.gif'
  end
  object IWLabel1: TIWLabel
    Left = 3
    Top = 19
    Width = 75
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Route from:'
    RawText = False
  end
  object EditOrigin: TIWEdit
    Left = 84
    Top = 14
    Width = 146
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'EditOrigin'
    MaxLength = 0
    ReadOnly = False
    Required = True
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 0
    PasswordPrompt = False
    Text = 'San Jose, USA'
  end
  object IWLabel2: TIWLabel
    Left = 268
    Top = 19
    Width = 17
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'to:'
    RawText = False
  end
  object EditTarget: TIWEdit
    Left = 291
    Top = 14
    Width = 156
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
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
    Required = True
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 1
    PasswordPrompt = False
    Text = 'Scotts Valley, USA'
  end
  object IWButton3: TIWButton
    Left = 484
    Top = 10
    Width = 54
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = 'Route!'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    ScriptEvents = <>
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWImageButton1: TIWImageButton
    Left = 236
    Top = 16
    Width = 16
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    OnAsyncClick = IWButton1AsyncClick
    Cacheable = True
    FriendlyName = 'IWImageButton1'
    ImageFile.Filename = 
      'P:\Atozed\IntraWeb9.0\Demos\Win32\Delphi\GoogleMapsAPI\files\sea' +
      'rch16.png'
  end
  object IWImageButton3: TIWImageButton
    Left = 453
    Top = 16
    Width = 16
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    OnAsyncClick = IWButton2AsyncClick
    Cacheable = True
    FriendlyName = 'IWImageButton1'
    ImageFile.Filename = 
      'P:\Atozed\IntraWeb9.0\Demos\Win32\Delphi\GoogleMapsAPI\files\sea' +
      'rch16.png'
  end
  object ContactMap: TIWRegion
    Left = 3
    Top = 41
    Width = 739
    Height = 239
    Cursor = crAuto
    RenderInvisibleControls = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
  end
  object Directions: TIWRegion
    Left = 3
    Top = 286
    Width = 739
    Height = 171
    Cursor = crAuto
    HorzScrollBar.Visible = False
    VertScrollBar.Style = ssFlat
    RenderInvisibleControls = False
    Anchors = [akLeft, akBottom]
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
  end
end
