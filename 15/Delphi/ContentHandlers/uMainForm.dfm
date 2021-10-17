object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 798
  Height = 535
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 24
    Top = 376
    Width = 377
    Height = 25
    Caption = 'External HTML document (uses TContentRedirect)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 24
    Top = 288
    Width = 377
    Height = 25
    Caption = 'Call Red Form via Sync call  (uses TContentForm class)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    Left = 24
    Top = 328
    Width = 377
    Height = 25
    Caption = 'Call Blue Form via Async call (also uses TContentForm)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 24
    Top = 25
    Width = 753
    Height = 232
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
    TabOrder = 3
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      'This demo shows the basic usage of new TContent* classes.'
      ''
      'Please use IntraWeb 15.2.2 or later'
      ''
      
        'These classes allow you to redirect any incoming request for an ' +
        'arbitrary URL'
      'or path to some registered Content Handler.'
      ''
      'How to use TContent* classe:'
      ''
      
        '1) Create a TContentBase descendant instance (check ServerContro' +
        'ller.OnCreate)'
      
        '2) Add it to the registered handlers list, using THandlers.Add()' +
        ' method. (check ServerController.OnCreate)'
      
        '3) Create a link to your handler (check Button OnClick event han' +
        'dler code)')
  end
end
