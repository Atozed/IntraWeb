object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 1386
  Height = 749
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
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 32
    Top = 32
    Width = 1120
    Height = 30
    Font.Color = clWebBLUE
    Font.Size = 15
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'HttpSysDemo2 - This application requires IntraWeb 15 (recommende' +
      'd IW 15.0.7 or newer)'
  end
  object IWMemo1: TIWMemo
    Left = 32
    Top = 136
    Width = 1097
    Height = 537
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
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
      'This is a stand along application using the new HTTP.SYS server.'
      ''
      
        'It executes on port 8888 by default, using the following address' +
        ':'
      ''
      'http://127.0.0.1:8888/HSysApp2/'
      ''
      
        'Please notice that UrlBase is set to /HSysApp2/ (check your Serv' +
        'erController.UrlBase property)'
      ''
      
        'Also, please notice that there is another separate application p' +
        'art of this project group which also runs in the same port, howe' +
        'ver using '
      
        'a different UrlBase (in that case, HSysApp1), which allows you t' +
        'o have a very interesting arrangement as:'
      ''
      ''
      
        'Requests addressed to http://127.0.0.1:8888/HSysApp1/  are forwa' +
        'rded to HttpSysDemo1 application'
      ''
      'and'
      ''
      
        'Requests addressed to http://127.0.0.1:8888/HSysApp2/  are forwa' +
        'rded to HttpSysDemo2 application'
      ''
      
        'Try it out! Run both applications at the same time (from outside' +
        ' Delphi IDE) and see that it works! Easily and transparently!')
  end
  object IWLabel2: TIWLabel
    Left = 80
    Top = 80
    Width = 1080
    Height = 30
    Font.Color = clWebGREEN
    Font.Size = 15
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'If you have "Access Denied" error when running/debugging it, run' +
      ' as local administrator'
  end
  object IWButton1: TIWButton
    Left = 32
    Top = 704
    Width = 129
    Height = 25
    Caption = 'Click me!'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnAsyncClick = IWButton1AsyncClick
  end
end
