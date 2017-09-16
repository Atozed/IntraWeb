object IWForm11: TIWForm11
  Left = 0
  Top = 0
  Width = 944
  Height = 848
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
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object imgCam: TIWImage
    Left = 496
    Top = 76
    Width = 420
    Height = 340
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    FriendlyName = 'imgCam'
    TransparentColor = clNone
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    RenderEmptyAsSpan = False
  end
  object monitor: TIWLabel
    Left = 24
    Top = 76
    Width = 420
    Height = 340
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
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = 
      '<video id="monitor" autoplay loop width="420" height="340"></vid' +
      'eo>'
    RawText = True
  end
  object IWLabel1: TIWLabel
    Left = 24
    Top = 454
    Width = 420
    Height = 340
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
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = '<canvas id="canvas" width="420" height="340"></canvas>'
    RawText = True
  end
  object IWLabel2: TIWLabel
    Left = 24
    Top = 54
    Width = 222
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <video> element:'
    RawText = False
  end
  object IWLabel3: TIWLabel
    Left = 24
    Top = 432
    Width = 232
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <canvas> element:'
    RawText = False
  end
  object IWLabel4: TIWLabel
    Left = 496
    Top = 54
    Width = 226
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
    FriendlyName = 'IWLabel2'
    Caption = 'This is a standard IWImage control:'
    RawText = False
  end
  object IWLabel5: TIWLabel
    Left = 24
    Top = 14
    Width = 823
    Height = 23
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
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
    Top = 432
    Width = 57
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
    FriendlyName = 'LblStatus'
    Caption = 'LblStatus'
    RawText = False
  end
end
