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
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 40
    Width = 193
    Height = 33
    Caption = 'Call Multiply'
    Color = clBtnFace
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
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 108
    Width = 193
    Height = 33
    Caption = 'Call ProcessString'
    Color = clBtnFace
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
    TabOrder = 3
  end
  object IWButton4: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 180
    Width = 193
    Height = 33
    Caption = 'Call SetCaption'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ajaxCall("SetCaption", "&newcaption=Set from JavaScript");')
        Event = 'onClick'
      end>
    TabOrder = 2
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 252
    Width = 193
    Height = 33
    Caption = 'Call OtherCallback'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'ajaxCall("OtherCallback", "", false,'
          '  function (response) {'
          '     var obj = JSON.parse(response);'
          '     alert("Id is: " + obj.id);'
          '     alert("Name is: " + obj.name);'
          '  }'
          '  );')
        Event = 'onClick'
      end>
    TabOrder = 1
  end
end
