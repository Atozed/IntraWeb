object IWForm11: TIWForm11
  Left = 0
  Top = 0
  Width = 944
  Height = 738
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
    '</style>')
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  JavaScript.Strings = (
    '    let video = null;'
    '    let canvas = null;'
    '    let canvasContext = null;'
    '    let webimage = null;'
    '    let statusLabel = null;'
    ''
    '    function initVideo() {'
    '      video = document.getElementById("monitor");'
    '      canvas = document.getElementById("canvas");'
    '      canvasContext = canvas.getContext("2d");'
    '      webimage = document.getElementById("IMGCAM");'
    '      statusLabel = document.getElementById("LBLSTATUS");'
    ''
    
      '      if (navigator.mediaDevices && navigator.mediaDevices.getUs' +
      'erMedia) {'
    '        navigator.mediaDevices.getUserMedia({ video: true })'
    '          .then(gotStream)'
    '          .catch(noStream);'
    '      } else {'
    
      '        setStatus('#39'getUserMedia not supported in this browser.'#39')' +
      ';'
    '      }'
    '    }'
    ''
    '    function setStatus(aStatus) {'
    '      statusLabel.textContent = "Status: " + aStatus;'
    '    }'
    ''
    '    function gotStream(stream) {'
    '      video.srcObject = stream;'
    '      video.onloadedmetadata = () => {'
    '        video.play();'
    '        setStatus("Camera started.");'
    '      };'
    '    }'
    ''
    '    function noStream(error) {'
    '      console.error("Camera error:", error);'
    '      setStatus('#39'No camera available or permission denied.'#39');'
    '    }'
    ''
    '    function copyVideo() {'
    
      '      canvasContext.drawImage(video, 0, 0, canvas.width, canvas.' +
      'height);'
    '      webimage.src = canvas.toDataURL("image/jpeg", 0.5);'
    '      setStatus('#39'Image captured.'#39');'
    '    }')
  DesignLeft = 2
  DesignTop = 2
  object imgCam: TIWImage
    AlignWithMargins = False
    Left = 496
    Top = 76
    Width = 420
    Height = 340
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Width = 0
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
    AlignWithMargins = False
    Left = 24
    Top = 76
    Width = 420
    Height = 340
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = 
      '<video id="monitor" autoplay loop width="420" height="340"></vid' +
      'eo>'
    RawText = True
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 24
    Top = 454
    Width = 420
    Height = 340
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'monitor'
    Caption = '<canvas id="canvas" width="420" height="340"></canvas>'
    RawText = True
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 24
    Top = 54
    Width = 222
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <video> element:'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 24
    Top = 432
    Width = 229
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'This is a HTML 5 <canvas> element:'
  end
  object IWLabel4: TIWLabel
    AlignWithMargins = False
    Left = 496
    Top = 54
    Width = 228
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'This is a standard IWImage control:'
  end
  object IWLabel5: TIWLabel
    AlignWithMargins = False
    Left = 24
    Top = 14
    Width = 766
    Height = 25
    Font.Color = clWebRED
    Font.Size = 14
    Font.Style = [fsBold]
    Font.PxSize = 18
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'This demo only works in a WebKit browser (Chrome) and requires a' +
      ' web cam:'
  end
  object LblStatus: TIWLabel
    AlignWithMargins = False
    Left = 496
    Top = 432
    Width = 63
    Height = 17
    HasTabOrder = False
    FriendlyName = 'LblStatus'
    Caption = 'LblStatus'
  end
end
