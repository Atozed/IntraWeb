object IWForm11: TIWForm11
  Left = 0
  Top = 0
  Width = 672
  Height = 554
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  HiddenFields.Strings = (
    'IW_BrowserDateTime=0')
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  JavaScript.Strings = (
    'function setHiddenInputValue(inputName, value) {'
    '    const el = IW.getElementByName(inputName, "hidden");'
    '    if (el) {'
    '        el.value = value;'
    '    }'
    '}'
    ''
    'function saveDateTime() {'
    '    const currentDateTime = new Date();'
    '    setHiddenInputValue("IW_BrowserDateTime", currentDateTime); '
    '}')
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 72
    Top = 208
    Width = 257
    Height = 30
    Caption = 'Get browser date and time'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'saveDateTime();')
        Event = 'onClick'
      end>
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 72
    Top = 32
    Width = 537
    Height = 137
    BGColor = clNone
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This example shows how to obtain some data from the browser (in ' +
        'this case the local date/time)'
      
        'and send it to the server, using some JavaScript + the IWForm'#39's ' +
        'hidden fields.'
      ''
      'Please see properties:'
      '- HiddenFields and JavaScript of this IWForm'
      '- ScriptEvents of the button below')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
end
