object IWForm46: TIWForm46
  Left = 0
  Top = 0
  Width = 400
  Height = 775
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  ContentFiles.Strings = (
    
      'https://cdn.jsdelivr.net/npm/zebra-browser-print-wrapper-global@' +
      '0.1.3/lib/index.min.js')
  OnCreate = IWAppFormCreate
  OnAsyncResize = IWAppFormAsyncResize
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  JavaScript.Strings = (
    'zebra.wpf.client.Printer.initialize();')
  DesignSize = (
    400
    775)
  DesignLeft = 8
  DesignTop = 8
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 15
    Top = 25
    Width = 370
    Height = 616
    Anchors = [akLeft, akTop, akRight]
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 14
    Top = 660
    Width = 178
    Height = 30
    Caption = 'Get IW.browser info'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 15
    Top = 704
    Width = 177
    Height = 30
    Caption = 'Show Browser dimensions'
    Color = clBtnFace
    FriendlyName = 'IWButton2'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'var s = IW.browser.WindowSizeXY();'
          'var s2 = IW.browser.WindowScrollXY();'
          'var v = window.visualViewport.scale;'
          'var d = window.devicePixelRatio || 1;'
          
            'alert('#39' Width='#39' + s[0] + '#39'\u000A Height='#39' + s[1] + '#39'\u000A DPR='#39 +
            ' + d + '#39'\u000A ViewportScale='#39' + v + '#39'\u000A WindowScrollX='#39' + s' +
            '2[0] + '#39'\u000A WindowScrollY='#39' + s2[1]);')
        Event = 'onClick'
      end>
  end
end
