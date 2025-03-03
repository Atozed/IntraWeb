object DBGridForm: TDBGridForm
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
  object IWjQDBGrid1: TIWjQDBGrid
    AlignWithMargins = False
    Left = 80
    Top = 32
    Width = 689
    Height = 401
    Caption = 'Countries'
    VisibleRowCount = 14
    Options = [goViewRecords, goCellEdit, goGridView, goHoverRows, goSortable, goZebraStriped, goShowHideBtn, goShowToolbar, goShowPager, goRowSelect, goShowFilterToolbar]
    DateFormat = 'd-m-Y'
    UI = uiJQuery
    jQueryUIThemeName = 'ui-lightness'
    BootstrapVersion = '3.4.1'
    Columns = <
      item
        Width = 168
        Name = 'Name'
        Title = 'Name'
        Searchable = True
        Link = True
        EditType = etText
        FieldName = 'Name'
        DataField = 'Name'
      end
      item
        Width = 168
        Name = 'Continent'
        Title = 'Continent'
        Searchable = True
        Editable = True
        FieldName = 'Continent'
        DataField = 'Continent'
      end
      item
        Width = 168
        Name = 'Capital'
        Title = 'Capital'
        Searchable = True
        Editable = True
        FieldName = 'Capital'
        DataField = 'Capital'
      end
      item
        Width = 70
        Name = 'Area'
        Alignment = taRightJustify
        DataType = dtFloat
        Title = 'Area'
        Searchable = True
        Editable = True
        DecimalPlaces = 1
        ShowThousandSeparator = True
        FieldName = 'Area'
        DataField = 'Area'
      end
      item
        Width = 70
        Name = 'Population'
        Alignment = taRightJustify
        DataType = dtFloat
        Title = 'Population'
        Searchable = True
        Editable = True
        FieldName = 'Population'
        DataField = 'Population'
      end>
    OnAsyncLinkClick = IWjQDBGrid1AsyncLinkClick
    OnAsyncDblClickRow = IWjQDBGrid1AsyncDblClickRow
    OnAsyncRightClickRow = IWjQDBGrid1AsyncRightClickRow
    OnAsyncSelectRow = IWjQDBGrid1AsyncSelectRow
    OnAsyncSelectCell = IWjQDBGrid1AsyncSelectCell
    OnAsyncBeforeEditCell = IWjQDBGrid1AsyncBeforeEditCell
    OnRowClick = IWjQDBGrid1RowClick
    OnSaveCell = IWjQDBGrid1SaveCell
    OnAsyncColumnResize = IWjQDBGrid1AsyncColumnResize
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 80
    Top = 473
    Width = 689
    Height = 304
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 80
    Top = 450
    Width = 75
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Grid Events'
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
    Left = 784
    Top = 32
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
    Left = 880
    Top = 32
  end
end
