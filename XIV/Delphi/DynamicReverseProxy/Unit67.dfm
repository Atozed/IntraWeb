object IWForm67: TIWForm67
  Left = 0
  Top = 0
  Width = 563
  Height = 542
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    563
    542)
  DesignLeft = 8
  DesignTop = -27
  object IWMemo1: TIWMemo
    Left = 31
    Top = 27
    Width = 516
    Height = 357
    Anchors = [akLeft, akTop, akRight]
    BGColor = clNone
    Editable = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows how to setup your IW application to use dynamic ' +
        'resolution of URL Base using ServerController.OnRewriteURL event' +
        '.'
      ''
      
        'This can be useful if a single application should serve client c' +
        'onnections coming from different paths:'
      ''
      'Group A -> Connect directly to the IW server (IIS or SA)'
      'Group B -> Connect through a reverse proxy server'
      ''
      
        'In this case, you can configure your proxy server to add a custo' +
        'm field to all requests. Let'#39's say, a field like this:'
      'Name: "X-MyURLBase" '
      'Value: /SomePath'
      ''
      
        'ServerController.OnRewriteURL checks for X-MyURLBase header fiel' +
        'd. If found, it will set RewriteURL (URLBase)'
      
        'to /SomePath. This process is executed for each individual reque' +
        'st, allowing the same IW application to work'
      'in both scenarios simultaneously.'
      ''
      'This demo requires IntraWeb 14.1.0 or newer')
  end
  object IWButton1: TIWButton
    Left = 31
    Top = 406
    Width = 141
    Height = 25
    Caption = 'Test Sync Calls'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 31
    Top = 452
    Width = 141
    Height = 25
    Caption = 'Test Async Calls'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 2
    OnAsyncClick = IWButton2AsyncClick
  end
end
