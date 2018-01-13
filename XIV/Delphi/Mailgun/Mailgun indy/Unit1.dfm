object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 679
  Height = 565
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
  object IWButton_Post: TIWButton
    Left = 63
    Top = 119
    Width = 75
    Height = 25
    Caption = 'IWButton_Post'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton_Post'
    TabOrder = 0
    OnClick = IWButton_PostClick
  end
  object IWButton_Get: TIWButton
    Left = 63
    Top = 175
    Width = 75
    Height = 25
    Caption = 'IWButton_Get'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton_Get'
    TabOrder = 1
    OnClick = IWButton_GetClick
  end
  object IWMemo_Response: TIWMemo
    Left = 63
    Top = 206
    Width = 498
    Height = 187
    ExtraTagParams.Strings = (
      'rows=10')
    Css = 'form-control'
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 2
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo_Response'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    RenderStyles = False
    Left = 406
    Top = 49
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = False
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,/;q=0.8'
    Request.BasicAuthentication = False
    Request.Password = 'key-deddf579708d44895299a208a37dbd15'
    Request.UserAgent = 'Mozilla/3.0 (compatible;Indy Library)'
    Request.Username = 'api'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 68
    Top = 12
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvSSLv2, sslvSSLv3, sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 110
    Top = 25
  end
end
