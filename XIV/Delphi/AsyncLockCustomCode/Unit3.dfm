object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 728
  Height = 599
  RenderInvisibleControls = False
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
    Left = 48
    Top = 464
    Width = 121
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Click Here'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ActivateLock();'
          'return true;')
        Event = 'onClick'
      end>
    TabOrder = 0
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 48
    Top = 24
    Width = 641
    Height = 409
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows how to activate the IWLocker by code, during a l' +
        'ong Async request.'
      ''
      'Check IWButton'#39's ScriptEvents property:'
      ''
      'Inside its onClick event handler we add this code:'
      ''
      'ActivateLock();  // <-  Shows the IWLocker'
      'return true;       // <-  continue event processing'
      ''
      'Inside OnAsyncClick event handler we have this:'
      ''
      'procedure TIWForm3.IWButton1AsyncClick(Sender: TObject;'
      '  EventParams: TStringList);'
      'var'
      '  jsCode: string;'
      'begin'
      '  Sleep(5000);  // simulate something that requires a long time'
      
        '  jsCode := '#39'ReleaseLock();'#39';    // the code to deactivate the I' +
        'WLocker'
      
        '  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(' +
        'jsCode);  // add the code to the response'
      'end;'
      ''
      
        'In IntraWeb 14.0.30 or later you can use the control'#39's LockOnAsy' +
        'ncEvents() to accomplish the same thing, without any coding!')
  end
end
