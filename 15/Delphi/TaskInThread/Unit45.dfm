object IWForm45: TIWForm45
  Left = 0
  Top = 0
  Width = 799
  Height = 628
  RenderInvisibleControls = True
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
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 40
    Top = 48
    Width = 713
    Height = 465
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows how to run one or more background tasks in a sep' +
        'arate thread,'
      'making use of IntraWeb'#39's TIWTimedThread class.'
      ''
      
        'In this demo, a thread is started and periodically will connect ' +
        'to a database,'
      
        'run a query and export the results to a XML file. This is a comm' +
        'on scenario'
      'when some sort of integration is needed.'
      ''
      
        'This demo uses the Northwind demo database (originally from SQL ' +
        'Server) but'
      
        'as an Access local database (file .mdb inside subfolder DB). We ' +
        'use ADO'
      'as the DB engine to connect to the Access DB.'
      ''
      
        'Plase study the code in ServerController, uWorkerThread and uDBE' +
        'xporter units.')
  end
end
