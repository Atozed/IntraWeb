object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 804
  Height = 599
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
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
    804
    599)
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 32
    Top = 32
    Width = 153
    Height = 25
    Caption = 'Open IWForm2'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWMemo1: TIWMemo
    Left = 32
    Top = 74
    Width = 746
    Height = 525
    Anchors = [akLeft, akTop, akRight, akBottom]
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This C++ Builder demo shows how to use ServerController'#39's OnRewr' +
        'iteURL to configure the application to use a Reverse Proxy serve' +
        'r (Apache, Abyss, etc.) dynamically. The same application also w' +
        'orks without proxy server, unchanged.'
      ''
      
        'In Apache, you must change your httpd.conf file and add a Virtua' +
        'lHost section, like this:'
      ''
      '<VirtualHost *:80>'
      '    ProxyPreserveHost On'
      ''
      '    # Servers to proxy the connection, or;'
      '    # List of application servers:'
      '    # Usage:'
      '    # ProxyPass / http://[IP Addr.]:[port]/'
      '    # ProxyPassReverse / http://[IP Addr.]:[port]/'
      '    # Example:'
      '    ProxyPass "/reverse" "http://127.0.0.1:8888/"'
      '    ProxyPassReverse "/reverse" "http://127.0.0.1:8888/"'
      '    #Header add X-ProxyBase "/reverse"'
      '    RequestHeader set X-ProxyBase "/reverse"'
      ' '
      '    ServerName localhost'
      '</VirtualHost>'
      ''
      'then the new URL will be:'
      ''
      'http://yourserver.com/reverse'
      ''
      
        'it will also work locally both directly and through reverse prox' +
        'y:'
      ''
      'http://127.0.0.1:8888  -> directly'
      'and'
      'http://127.0.0.1/reverse -> through reverse proxy')
  end
end
