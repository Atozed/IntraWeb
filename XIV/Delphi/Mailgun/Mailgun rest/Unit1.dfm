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
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://api.mailgun.net/v3'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 42
    Top = 21
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 91
    Top = 35
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 147
    Top = 49
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'api'
    Password = 'key-3ax6xnjp29jd6fds4gc373sgvjxteol0'
    Left = 210
    Top = 63
  end
end
