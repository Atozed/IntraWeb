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
  DesignLeft = 2
  DesignTop = 2
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
      
        'This demo shows how to run a background task in a separate threa' +
        'd, '
      
        'in an pre-determined time of the day, making use of IntraWeb'#39's T' +
        'IWTimedThread class.'
      ''
      'In this demo, the thread executes a backup of the work database.'
      ''
      
        'Each RDBMS server/engine has a different way to execute the back' +
        'up so it is not'
      
        'actually executed here, but all the plumbing code exists. You ju' +
        'st need to '
      'code the actual DB backup method.'
      ''
      
        'Please study the code in ServerController, uWorkerThread and uDB' +
        'Backup units.')
  end
end
