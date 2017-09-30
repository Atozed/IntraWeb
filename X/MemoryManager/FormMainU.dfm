object FormMain: TFormMain
  Left = 0
  Top = 0
  Width = 733
  Height = 406
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    733
    406)
  DesignLeft = 420
  DesignTop = 178
  object IWText1: TIWText
    Left = 24
    Top = 40
    Width = 633
    Height = 345
    Cursor = crAuto
    Anchors = [akLeft, akTop, akRight, akBottom]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      ''
      '<h1>MemoryManager Demo </h1>'
      
        '<p>This simple demo shows how to integrate an external MemoryMan' +
        'ager with IntraWeb applications.'
      
        '  In general we recommend to replace the default Borland Memory ' +
        'Manager with one of the available alternatives, as this will maj' +
        'orly improve the perfomance of any server type application. The ' +
        'reason is that the default BorlandMM is just not optimnized for ' +
        'applications, which run for a verylong time, with a lot of objec' +
        'ts being created and destroyed. The result is that the memory of' +
        ' the server machine will get heavily fragmented, wich will cause' +
        ' &quot;out of memory&quot; errors after some time. </p>'
      
        '<p><strong>Note: Delphi 2006 finally comes with a solid MemoryMa' +
        'nager, which performs very well. So this demo aplies to Delphi 2' +
        '005 and below. </strong></p>'
      '<p>This demo comes with a free MemoryManager replacement:</p>'
      '<blockquote>'
      '  <h2>RecyclerMM</h2>'
      '</blockquote>'
      '<p>Just add <em>RecyclerMM</em> to your DPR'#39's uses clause</p>'
      
        '<strong>You can re-use this unit in your own projects at no cost' +
        's. </strong>'
      
        '<p>Special thanks to Eric Grange, for granting us the right to r' +
        'edistribute his MemoryManager! For more information please have ' +
        'a look at <a href="http://glscene.sourceforge.net/RecyclerMM.htm' +
        '" target="_blank">Eric'#39's website</a>. </p>')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  object IWButton1: TIWButton
    Left = 26
    Top = 6
    Width = 219
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'See Memory usage ...'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
end
