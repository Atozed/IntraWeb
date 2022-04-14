object IWForm19: TIWForm19
  Left = 0
  Top = 0
  Width = 896
  Height = 715
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
  object IWLabel1: TIWLabel
    Left = 112
    Top = 120
    Width = 673
    Height = 457
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = '<span id=myspan>Placeholder</span>'
    RawText = True
  end
  object IWEdit1: TIWEdit
    Left = 120
    Top = 48
    Width = 337
    Height = 32
    Hint = 'Resource Name (tip: try test1.html, test2.html)'
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    Attributes = [iaAutocomplete, iaSpellcheck, iaPlaceholder]
  end
  object IWButton1: TIWButton
    Left = 472
    Top = 50
    Width = 120
    Height = 30
    Caption = 'Get Resource'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'var resName = $("#IWEDIT1").val();'
          '$.get("GetResource/?res="+resName, function(data) {'
          '  $("#myspan").html(data);'
          '});')
        Event = 'onClick'
      end>
  end
end
