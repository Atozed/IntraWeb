object GridForm: TGridForm
  Left = 0
  Top = 0
  Width = 1118
  Height = 755
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWjQGrid1: TIWjQGrid
    Left = 80
    Top = 156
    Width = 601
    Height = 398
    Caption = ''
    VisibleRowCount = 15
    Options = [goViewRecords, goAutoColumnWidth, goHoverRows, goIgnoreCase, goSortable, goZebraStriped, goShowHideBtn, goShowPager, goRowSelect]
    DateFormat = 'd-m-Y'
    ShowBusyOnAsyncEvent = True
    Columns = <
      item
        Width = 200
        Name = 'Employee'
        Title = 'Employee'
        Editable = True
      end
      item
        Width = 90
        Name = 'Date'
        Alignment = taCenter
        DataType = dtDate
        Title = 'Date'
      end
      item
        Width = 120
        Name = 'Amount'
        Alignment = taRightJustify
        Title = 'Amount'
      end>
    RowCount = 20
    OnAsyncSelectRow = IWjQGrid1AsyncSelectRow
    OnGetCellText = IWjQGrid1GetCellText
    OnSaveCell = IWjQGrid1SaveCell
  end
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
  object IWLabel1: TIWLabel
    Left = 80
    Top = 104
    Width = 0
    Height = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
  end
  object IWText1: TIWText
    Left = 80
    Top = 64
    Width = 601
    Height = 86
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This is a TIWjQGrid control. This is not "Data Aware". It works ' +
        'in virtual mode i.e. it doesn'#39't "own" the data. All data is prov' +
        'ided through OnGetCellText event. It'#39's able to generate and rend' +
        'er 1 thousand records in a few milliseconds.'
      'Here, this grid is using Bootstrap UI')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton4: TIWButton
    Left = 704
    Top = 144
    Width = 120
    Height = 30
    Caption = 'Refresh Data'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 1
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWButton5: TIWButton
    Left = 704
    Top = 185
    Width = 120
    Height = 30
    Caption = 'Clear Grid'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 2
    OnAsyncClick = IWButton5AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 80
    Top = 560
    Width = 601
    Height = 145
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
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
end
