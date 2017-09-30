object IWForm11: TIWForm11
  Left = 0
  Top = 0
  Width = 944
  Height = 642
  VertScrollBar.Position = 152
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '<style>'
    
      'video { border: 1px solid #ccc; display: block; margin: 0; paddi' +
      'ng: 0; }'
    
      'canvas { border: 1px solid #ccc; display: block; margin: 0; padd' +
      'ing: 0; }'
    '</style>'
    ''
    '<script>'
    'var video = null;'
    'var canvas = null;'
    'var canvasContext = null;'
    'var webimage = null;'
    'var statusLabel = null;'
    ''
    'function initVideo() {'
    #9'video = document.getElementById("monitor");'
    #9'canvas = document.getElementById("canvas");'
    #9'canvasContext = canvas.getContext("2d");'
    #9'webimage = document.getElementById("IMGCAM");'
    #9'statusLabel = document.getElementById("LBLSTATUS");'
    
      #9'navigator.webkitGetUserMedia({video:true}, gotStream, noStream)' +
      ';'
    '}'
    ''
    'function setStatus(aStatus) {'
    #9'statusLabel.innerHTML = aStatus;'
    '}'
    ''
    'function gotStream(stream) {'
    #9'video.onerror = function () {'
    #9#9'stream.stop();'
    #9#9'streamError();'
    #9'};'
    #9'video.src = webkitURL.createObjectURL(stream);'
    '}'
    ''
    'function noStream() {'
    #9'setStatus('#39'No camera available.'#39');'
    '}'
    ' '
    'function streamError() {'
    #9'setStatus('#39'Camera error.'#39');'
    '}'
    ''
    'function copyVideo() {'
    #9'canvasContext.drawImage(video, 0, 0, 420, 340);'
    #9'webimage.src = canvas.toDataURL("image/jpeg", 0.5);'
    #9'setStatus('#39'Video is working'#39');'
    ' }'
    ' </script>')
  SupportedBrowsers = []
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 265
  DesignTop = 5
  object imgCam: TIWImage
    Left = 496
    Top = -76
    Width = 420
    Height = 340
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    StyleRenderOptions.RenderSize = False
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
    Picture.Data = {
      0A544A504547496D616765F3020000FFD8FFE000104A46494600010101006000
      600000FFE1005A4578696600004D4D002A000000080005030100050000000100
      00004A0303000100000001000000005110000100000001010000005111000400
      00000100000EC3511200040000000100000EC300000000000186A00000B18FFF
      DB00430002010102010102020202020202020305030303030306040403050706
      07070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E
      0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0CFFC00011080023002603012200021101031101FFC4001F
      0000010501010101010100000000000000000102030405060708090A0BFFC400
      B5100002010303020403050504040000017D0102030004110512213141061351
      6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
      2728292A3435363738393A434445464748494A535455565758595A6364656667
      68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
      A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
      E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
      010101010000000000000102030405060708090A0BFFC400B511000201020404
      0304070504040001027700010203110405213106124151076171132232810814
      4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
      3738393A434445464748494A535455565758595A636465666768696A73747576
      7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
      B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
      E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800
      A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803
      FFD9}
    FriendlyName = 'imgCam'
    TransparentColor = clNone
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    OutputType = ioJPEG
  end
  object monitor: TIWLabel
    Left = 24
    Top = -76
    Width = 420
    Height = 340
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
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = 
      '<video id="monitor" autoplay loop width="420" height="340"></vid' +
      'eo>'
    RawText = True
  end
  object IWLabel1: TIWLabel
    Left = 24
    Top = 302
    Width = 420
    Height = 340
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
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = '<canvas id="canvas" width="420" height="340"></canvas>'
    RawText = True
  end
  object IWLabel2: TIWLabel
    Left = 24
    Top = -98
    Width = 225
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <video> element:'
    RawText = False
  end
  object IWLabel3: TIWLabel
    Left = 24
    Top = 280
    Width = 236
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <canvas> element:'
    RawText = False
  end
  object IWLabel4: TIWLabel
    Left = 496
    Top = -98
    Width = 229
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a standard IWImage control:'
    RawText = False
  end
  object IWLabel5: TIWLabel
    Left = 24
    Top = -138
    Width = 800
    Height = 24
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
    Font.Color = clWebRED
    Font.Size = 14
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'This demo only works in a WebKit browser (Chrome) and requires a' +
      ' web cam:'
    RawText = False
  end
  object LblStatus: TIWLabel
    Left = 496
    Top = 401
    Width = 60
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
    FriendlyName = 'LblStatus'
    Caption = 'LblStatus'
    RawText = False
  end
  object IWMemo1: TIWMemo
    Left = 496
    Top = 304
    Width = 420
    Height = 73
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
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In IW XI and XII you need an initial (blank) image here, so the ' +
        'element will be rendered as <IMG> and not as a <SPAN> element'
      'We are using the file blank_image.jpg.')
  end
end
