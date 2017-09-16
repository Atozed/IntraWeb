object IWForm56: TIWForm56
  Left = 0
  Top = 0
  Width = 818
  Height = 513
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
  object IWButton1: TIWButton
    Left = 17
    Top = 471
    Width = 186
    Height = 25
    Caption = 'Raise Exception'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWLabel1: TIWLabel
    Left = 17
    Top = 3
    Width = 599
    Height = 33
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 14.1.0 or newer'
  end
  object IWMemo1: TIWMemo
    Left = 17
    Top = 42
    Width = 784
    Height = 401
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
      
        'This demo shows how to add your own Exception handling mechanism' +
        ' (e.g. an exception logging)'
      
        'using new Exception callback in IntraWeb 14.1.0 and newer (check' +
        ' EAppIntraWebSimple.pas).'
      ''
      
        '1) Create a method with same signature as TIWExceptionCallbackFu' +
        'nction'
      
        '2) Call TIWServerControllerBase.RegisterExceptionCallback() pass' +
        'ing this method as parameter'
      
        '3) All exceptions generated in IntraWeb application will call yo' +
        'ur callback method, passing a'
      '   TIWExceptionCallbackInfo record as a parameter'
      ''
      'New/modified types declared in IWServerControllerBase.pas:'
      ''
      'type'
      '  TIWExceptionCallbackInfo = record'
      '    Sender: TObject;'
      '    SourceException: Exception;'
      '    Request: THttpRequest;'
      '  end;'
      ''
      
        '  TIWExceptionCallbackProc = procedure(aExceptionInfo: TIWExcept' +
        'ionCallbackInfo; out Handled: Boolean) of object;'
      ''
      '  TIWServerControllerBase = class(TIWDataModule)'
      '  public'
      
        '    class procedure RegisterExceptionCallback(aCallback: TIWExce' +
        'ptionCallbackProc);'
      
        '    class procedure UnregisterExceptionCallback(aCallback: TIWEx' +
        'ceptionCallbackProc);'
      '  end;')
  end
end
