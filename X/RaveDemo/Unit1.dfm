object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 554
  Height = 454
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Rave Demo'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 365
  DesignTop = 201
  object IWButton1: TIWButton
    Left = 264
    Top = 248
    Width = 83
    Height = 25
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
    Caption = 'print'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 3
    OnClick = IWButton1Click
  end
  object IWDBGrid1: TIWDBGrid
    Left = 16
    Top = 288
    Width = 329
    Height = 150
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
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = False
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'EmpNo'
        LinkField = 'EmpNo'
        OnClick = IWDBGrid1Columns0Click
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'EmpNo'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'LastName'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'LastName'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'FirstName'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'FirstName'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'PhoneExt'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'PhoneExt'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'HireDate'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'HireDate'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end
      item
        Alignment = taLeftJustify
        BGColor = clNone
        DoSubmitValidation = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Header = False
        Height = '0'
        ShowHint = True
        VAlign = vaMiddle
        Visible = True
        Width = '0'
        Wrap = False
        RawText = False
        BlobCharLimit = 0
        CompareHighlight = hcNone
        DataField = 'Salary'
        OnTitleClick = IWDBGrid1Columns0TitleClick
        Title.Alignment = taCenter
        Title.BGColor = clNone
        Title.DoSubmitValidation = True
        Title.Font.Color = clNone
        Title.Font.Size = 10
        Title.Font.Style = []
        Title.Header = False
        Title.Height = '0'
        Title.ShowHint = True
        Title.Text = 'Salary'
        Title.VAlign = vaMiddle
        Title.Visible = True
        Title.Width = '0'
        Title.Wrap = False
        Title.RawText = True
      end>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = False
    HighlightColor = clNone
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 10
    RollOver = True
    RowClick = True
    RollOverColor = clWebCORNSILK
    RowHeaderColor = clNone
    RowAlternateColor = clWebGAINSBORO
    RowCurrentColor = clWebYELLOW
    TabOrder = -1
  end
  object IWDBNavigator1: TIWDBNavigator
    Left = 16
    Top = 248
    Width = 189
    Height = 25
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
    Confirmations.Delete = 'Are you sure you want to delete this record?'
    Confirmations.Post = 'Are you sure you want to update this record?'
    Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
    DataSource = DataSource1
    FriendlyName = 'IWDBNavigator1'
    ImageHeight = 21
    ImageWidth = 21
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel, nbRefresh]
    Orientation = orHorizontal
  end
  object IWText1: TIWText
    Left = 16
    Top = 8
    Width = 529
    Height = 169
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
    Font.FontName = 'arial'
    Font.Size = 9
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo shows how to produce a PDF-report with IntraWeb and RA' +
        'VE.'
      ''
      
        'The data is wrapped into a ClientDataset which is shown in the I' +
        'WDBGrid below.'
      
        'If you click [print] the data will be used to produce a simple t' +
        'able report, which has'
      'been generated with RAVE'#39's report wizzard.'
      ''
      
        'The demo shows how to protect the produced PDF file from being h' +
        'ijacked by '
      
        'other users, other than the one who produced the report. This is' +
        ' important if you are '
      
        'are dealing with secret data. Don'#39't use a TimeStamp or similar t' +
        'o precede the PDF'
      'filename - use WebApplication.AppID instead, it'#39's non-guessable.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object EditFilter: TIWEdit
    Left = 16
    Top = 176
    Width = 217
    Height = 21
    Cursor = crAuto
    Hint = 'enter a valid filter expression here'
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    StatusText = 'enter a valid filter expression here'
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
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <
      item
        EventCode.Strings = (
          'if (this.value == "< enter filter here >") {'
          '  this.value=""};')
        Event = 'onFocus'
      end>
    SubmitOnAsyncEvent = True
    TabOrder = 2
    OnSubmit = EditFilterSubmit
    PasswordPrompt = False
    Text = '< enter filter here >'
  end
  object IWButton2: TIWButton
    Left = 264
    Top = 176
    Width = 83
    Height = 25
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
    Caption = 'apply filter'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton2Click
  end
  object IWLabel1: TIWLabel
    Left = 16
    Top = 200
    Width = 246
    Height = 13
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
    Font.Color = clWebCORNFLOWERBLUE
    Font.Size = 9
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Filter example: LastName>'#39'B'#39' and LastName<'#39'C'#39
    RawText = False
  end
  object IWButton3: TIWButton
    Left = 264
    Top = 208
    Width = 83
    Height = 25
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
    Caption = 'remove filter'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton3Click
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    ProjectFile = 'RaveDemo.rav'
    Left = 16
    Top = 296
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies, ssAllowCollate, ssAllowDuplex, ssAllowDestPreview, ssAllowDestPrinter, ssAllowDestFile, ssAllowPrinterSetup, ssAllowPreviewSetup]
    SystemOptions = []
    DefaultDest = rdFile
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 64
    Top = 296
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    UseCompression = True
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    Left = 144
    Top = 296
  end
  object cdsEmployee: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'LastName'
    Params = <>
    Left = 224
    Top = 296
    Data = {
      8B0700009619E0BD010000001800000006002A00000003000000DD0005456D70
      4E6F0400010010000000084C6173744E616D6501004900100001000557494454
      480200020014000946697273744E616D65010049001000010005574944544802
      0002000F000850686F6E65457874010049001000010005574944544802000200
      040008486972654461746508000800100000000653616C617279080004001000
      000003000D44454641554C545F4F524445520400820001000000010000000B50
      52494D4152595F4B4559040082000100000001000000044C4349440200010009
      0400000002000000064E656C736F6E07526F626572746F033235300000EA4F4F
      87CC42000000000088E3400000000400000005596F756E670542727563650332
      33330000EA4F4F87CC42000000008019EB4000000005000000074C616D626572
      74034B696D02323200001A4FB687CC4200000000006AD8400000000800000007
      4A6F686E736F6E064C65736C696503343130000086A74B88CC42000000008076
      D8400000000900000006466F72657374045068696C033232390000AE8D6A88CC
      42000000008076D8400000000B00000006576573746F6E054B2E204A2E023334
      000018A82E8BCC42000000009E41E0400000000C000000034C65650554657272
      69033235360000C8723A8CCC42000000008022E6400000000E0000000448616C
      6C0753746577617274033232370000E4FE918CCC420000000054D6E040000000
      0F00000005596F756E67094B6174686572696E65033233310000B0BEAB8CCC42
      0000000000D4D740000000140000000C50617061646F706F756C6F7305436872
      69730338383700003875058BCC42000000008076D84000000018000000064669
      736865720450657465033838380000DC7C938DCC42000000000080D640000000
      1C0000000642656E6E657403416E6E013500006020018FCC429A99999959D6E0
      400000001D00000008446520536F757A6105526F6765720332383800006EE62C
      8FCC420000000000E7D840000000220000000742616C6477696E054A616E6574
      0132000000B97C8FCC420000000000C1D6400000002400000006526565766573
      05526F676572013600004AD8D68FCC4200000000806AE0400000002500000009
      5374616E73627572790657696C6C6965013700004AD8D68FCC42000000000027
      E3400000002C0000000550686F6E67064C65736C69650332313600004C443B90
      CC4200000000C0B3E3400000002D0000000A52616D616E617468616E05417368
      6F6B033230390000E62FD390CC4248E17A149E41E0400000002E000000085374
      6561646D616E0657616C74657203323130000056C9E790CC4200000000C023D3
      4000000034000000094E6F72647374726F6D054361726F6C0334323000000AD5
      7291CC42000000000094B1400000003D000000054C65756E67044C756B650133
      000004BFD892CC420000000080D8E04000000041000000074F27427269656E08
      53756520416E6E65033837370000204B3093CC4200000000C08ADE4000000047
      0000000742757262616E6B0B4A656E6E69666572204D2E03323839000042846B
      93CC42000000008022E640004000480000000A5375746865726C616E6407436C
      6175646961000028647893CC4200000000606EE1400000005300000006426973
      686F700444616E61033239300000B489E493CC420000000000F9E54000000055
      000000094D6163446F6E616C64074D61727920532E033437370000B489E493CC
      4200000000606EE1400000005E0000000857696C6C69616D730552616E647903
      3839320000ECA19394CC42000000000039DC40000000690000000642656E6465
      72094F6C6976657220482E033235350000E2B33095CC4200000000E0F7E14000
      00006B00000004436F6F6B054B6576696E033839340000BA645B96CC42000000
      008055E1400000006D0000000542726F776E054B656C6C79033230320000441E
      6396CC4200000000005EDA400000006E000000064963686964610459756B6902
      32320000441E6396CC42000000004016D940000000710000000450616765044D
      6172790338343500004EA30F97CC42000000000070E740000000720000000650
      61726B65720442696C6C0332343700004A629097CC42000000000017E1400000
      00760000000859616D616D6F746F0754616B617368690232330000AEA1DD97CC
      420000000000BDDF4000000079000000074665727261726907526F626572746F
      01310000A8F4F997CC420000000080C6E3400000007F0000000859616E6F7773
      6B69074D69636861656C033439320000B00D4298CC4200000000007CE5400040
      008600000004476C6F6E074A6163717565730000341A6698CC4200000000C045
      D84000000088000000074A6F686E736F6E0553636F7474033236350000FA2C9C
      98CC42C3F5285C3FDFDD400000008A00000005477265656E04542E4A2E033231
      380000C8581A99CC42000000000094E1400040008D000000074F73626F726E65
      0650696572726500001A91BC99CC42000000000062E140000000900000000A4D
      6F6E74676F6D657279044A6F686E0338323000008E029A9ACC4200000000606E
      E140000000910000000C4775636B656E6865696D6572044D61726B0332323100
      007CFBEE9ACC42000000000040DF40}
  end
  object DataSource1: TDataSource
    DataSet = cdsEmployee
    Left = 264
    Top = 296
  end
end
