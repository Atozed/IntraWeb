object DBGridEventsForm: TDBGridForm
  Left = 0
  Top = 0
  Width = 1008
  Height = 809
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
  DesignLeft = 2
  DesignTop = 2
  object IWButton1: TIWButton
    Left = 80
    Top = 16
    Width = 161
    Height = 30
    Caption = 'Back to main form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWButton2: TIWButton
    Left = 792
    Top = 232
    Width = 120
    Height = 30
    Caption = 'Hide Continent'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWjQDBGrid1: TIWjQDBGrid
    Left = 80
    Top = 152
    Width = 689
    Height = 361
    Caption = 'Countries'
    VisibleRowCount = 14
    Options = [goViewRecords, goGridView, goHoverRows, goSortable, goZebraStriped, goShowHideBtn, goShowPager, goRowSelect]
    DateFormat = 'd-m-Y'
    UI = uiJQuery
    Columns = <
      item
        Width = 168
        Name = 'Name'
        Title = 'Name'
        Searchable = True
        Link = True
        EditType = etText
        FieldName = 'Name'
      end
      item
        Width = 168
        Name = 'Continent'
        Title = 'Continent'
        Editable = True
        FieldName = 'Continent'
      end
      item
        Width = 168
        Name = 'Capital'
        Title = 'Capital'
        Editable = True
        FieldName = 'Capital'
      end
      item
        Width = 70
        Name = 'Area'
        Alignment = taRightJustify
        DataType = dtFloat
        Title = 'Area'
        Editable = True
        DecimalPlaces = 1
        ShowThousandSeparator = True
        FieldName = 'Area'
      end
      item
        Width = 70
        Name = 'Population'
        Alignment = taRightJustify
        DataType = dtFloat
        Title = 'Population'
        Editable = True
        FieldName = 'Population'
      end>
    OnAsyncLinkClick = IWjQDBGrid1AsyncLinkClick
    OnAsyncDblClickRow = IWjQDBGrid1AsyncDblClickRow
    OnAsyncSelectRow = IWjQDBGrid1AsyncSelectRow
  end
  object IWButton3: TIWButton
    Left = 792
    Top = 276
    Width = 120
    Height = 30
    Caption = 'Show Continent'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 80
    Top = 560
    Width = 689
    Height = 217
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 3
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWLabel1: TIWLabel
    Left = 80
    Top = 538
    Width = 93
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Grid Events'
  end
  object IWButton4: TIWButton
    Left = 792
    Top = 152
    Width = 120
    Height = 30
    Caption = 'Refresh Data'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 4
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWButton5: TIWButton
    Left = 792
    Top = 193
    Width = 120
    Height = 30
    Caption = 'Clear Grid'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 5
    OnAsyncClick = IWButton5AsyncClick
  end
  object IWText1: TIWText
    Left = 80
    Top = 64
    Width = 633
    Height = 65
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This is a TIWjQDBGrid control. This is "Data Aware" and it displ' +
        'ays data from a DataSet in the usual DataSource -> DataSet confi' +
        'guration.'
      ''
      
        'This grid is using jQueryUI theme. It'#39's able to use any existing' +
        ' jQuery UI theme (or you can even create your own).')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton6: TIWButton
    Left = 792
    Top = 324
    Width = 120
    Height = 30
    Caption = 'Edit'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 6
    OnAsyncClick = IWButton6AsyncClick
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      5F0400009619E0BD010000001800000005001200000003000000CA00044E616D
      650100490010000100055749445448020002001800074361706974616C010049
      001000010005574944544802000200180009436F6E74696E656E740100490010
      000100055749445448020002001800044172656108000400100000000A506F70
      756C6174696F6E080004001000000003000D44454641554C545F4F5244455204
      00820001000000010000000B5052494D4152595F4B4559040082000100000001
      000000044C43494402000100090800000009417267656E74696E610C4275656E
      6F732041697265730D536F75746820416D6572696361000000806B3145410000
      0030BECD7E4100000007426F6C69766961064C612050617A0D536F7574682041
      6D6572696361000000004FC3304100000000E8D85B41000000064272617A696C
      0842726173696C69610D536F75746820416D657269636100000080DB3B604100
      000000D8EDA1410000000643616E616461064F74746177610D4E6F7274682041
      6D6572696361000000602A07634100000000BA457941000000054368696C6508
      53616E746961676F0D536F75746820416D6572696361000000009E1927410000
      0000502D694100000008436F6C6F6D626961064261676F74610D536F75746820
      416D657269636100000000DB60314100000000A4787F41000000044375626106
      486176616E610D4E6F72746820416D657269636100000000C0F5FB4000000000
      C83764410000000745637561646F7205517569746F0D536F75746820416D6572
      6963610000000038CD1B4100000000C83764410000000B456C2053616C766164
      6F720C53616E2053616C7661646F720D4E6F72746820416D6572696361000000
      004060D44000000000C837544100000006477579616E610A47656F726765746F
      776E0D536F75746820416D657269636100000000C83D0A4100000000006A2841
      000000074A616D61696361084B696E6773746F6E0D4E6F72746820416D657269
      6361000000000050C64000000000D0124341000000064D657869636F0B4D6578
      69636F20436974790D4E6F72746820416D6572696361000000004C043E410000
      0000B71F9541000000094E6963617261677561074D616E616775610D4E6F7274
      6820416D657269636100000000C0F700410000000030C14D4100000008506172
      6167756179084173756E63696F6E0D536F75746820416D657269636100000000
      C0D0184100000000C8C651410000000450657275044C696D610D536F75746820
      416D6572696361000000005F9C3341000000007099744100000018556E697465
      6420537461746573206F6620416D65726963610A57617368696E67746F6E0D4E
      6F72746820416D657269636100000040D7DB614100000000FBB4AD4100000007
      557275677561790A4D6F6E7465766964656F0D536F75746820416D6572696361
      00000000608005410000000048E746410000000956656E657A75656C61074361
      72616361730D536F75746820416D6572696361000000005ED52B410000000092
      C97241}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 40
    object ClientDataSet1Name: TStringField
      FieldName = 'Name'
      Size = 24
    end
    object ClientDataSet1Capital: TStringField
      FieldName = 'Capital'
      Size = 24
    end
    object ClientDataSet1Continent: TStringField
      FieldName = 'Continent'
      Size = 24
    end
    object ClientDataSet1Area: TFloatField
      FieldName = 'Area'
    end
    object ClientDataSet1Population: TFloatField
      FieldName = 'Population'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 568
    Top = 40
  end
end
