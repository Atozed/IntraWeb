object IWForm45: TIWForm45
  Left = 0
  Top = 0
  Width = 734
  Height = 444
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
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
    Top = 40
    Width = 193
    Height = 33
    Caption = 'Call Multiply'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ajaxCall("Multiply", {x: 5, y: 10}, false, '
          '    function(response) {'
          '        alert("Result is: " + response);'
          '        return true;'
          '    }'
          ');')
        Event = 'onClick'
      end>
    TabOrder = 0
  end
  object IWButton3: TIWButton
    Left = 48
    Top = 108
    Width = 193
    Height = 33
    Caption = 'Call ProcessString'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            'ajaxCall("ProcessString", "&s=<html><body><h1>Test Header</h1></' +
            'body></html>", false, '
          '   function(response) {'
          '     alert("Result is: " + response);'
          '     return true;'
          '   }'
          ');')
        Event = 'onClick'
      end>
    TabOrder = 1
  end
end
