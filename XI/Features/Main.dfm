object formMain: TformMain
  Left = 0
  Top = 0
  Width = 752
  Height = 623
  HorzScrollBar.Range = 737
  VertScrollBar.Range = 471
  RenderInvisibleControls = False
  OnRender = IWFormModuleBaseRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Features Demo'
  SupportedBrowsers = [brNetscape7, brIE, brNetscape6]
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
  object IWText1: TIWText
    Left = 16
    Top = 216
    Width = 521
    Height = 329
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo is a demo with the purpose of showing many of IntraWeb' +
        #39's amazing '
      
        'features. You can browse and test them at run time, then look at' +
        ' the source'
      'code to see how easy they were to implement.'
      ' '
      
        'Please also note that this demo is being expanded constantly and' +
        ' by no '
      
        'means demonstrates all of IntraWeb'#39's capabilities. This demos so' +
        'le purpose is'
      
        'to show features - not be anything functional. For examples of f' +
        'unctional '
      'demos please see the other demos included with IntraWeb.'
      ' '
      
        'The database functionality is provided using ClientDatasets (CDS' +
        #39's) and '
      
        'embedded data. This is because Paradox is not a reliable server ' +
        'database and '
      
        'we cannot assume what other databases you may have installed. Th' +
        'e CDS'#39's '
      
        'are only used to simulate a database. Nothiing in IntraWeb requi' +
        'res the use of '
      
        'CDS'#39's and they can be replaced with any standard TDataset allowi' +
        'ng you to'
      'use any database that you want with IntraWeb.'
      ' '
      
        'The menu to the left is implemented with a Delphi TFrame, allowi' +
        'ng it to be'
      
        'designed once and coded only once and reused in all the forms. T' +
        'his'
      
        'technique can be used to implement menus, headers, or anything o' +
        'f your'
      'choosing.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lablIPAddress: TIWLabel
    Left = 16
    Top = 560
    Width = 529
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lablIPAddress'
    Caption = 'IP Address'
    RawText = False
  end
  object IWURL1: TIWURL
    Left = 180
    Top = 188
    Width = 153
    Height = 17
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    TargetOptions.AddressBar = False
    TargetOptions.Height = 300
    TargetOptions.Left = 200
    TargetOptions.Menu = False
    TargetOptions.Resizable = True
    TargetOptions.Scrollbars = True
    TargetOptions.Toolbar = True
    TargetOptions.Top = 25
    TargetOptions.Width = 700
    TargetOptions.WindowName = 'IntraWeb'
    TerminateApp = False
    URL = 'http://www.atozedsoftware.com/'
    UseTarget = True
    FriendlyName = 'IWURL1'
    TabOrder = 0
    RawText = False
    Caption = 'Click here for IntraWeb!'
  end
  object IWImageFile1: TIWImageFile
    Left = 192
    Top = 28
    Width = 105
    Height = 141
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    Cacheable = True
    FriendlyName = 'IWImageFile1'
    ImageFile.Filename = 
      'C:\Atozed\IntrawebXI\CodePlexDemos\Features\wwwroot\Files\atozed' +
      'logo.gif'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 752
    Height = 25
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 752
    ExplicitHeight = 25
    inherited IWFrameRegion: TIWRegion
      Width = 752
      TabOrder = 1
      ExplicitWidth = 752
      inherited IWMenu1: TIWMenu
        Width = 752
        ExplicitWidth = 752
      end
    end
    inherited MainMenu1: TMainMenu
      inherited Layoutcontrols1: TMenuItem
        inherited FlowLayout1: TMenuItem
          OnClick = framMenu1FlowLayout1Click
        end
      end
    end
  end
end
