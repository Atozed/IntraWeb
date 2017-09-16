object formCalendar: TformCalendar
  Left = 0
  Top = 0
  Width = 623
  Height = 650
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Calendar demonstration'
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object lbActivities: TIWListbox
    Left = 8
    Top = 520
    Width = 601
    Height = 89
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnChange = lbActivitiesChange
    TabOrder = 0
    NonEditableAsLabel = True
    MaxItems = 0
    FriendlyName = 'lbActivities'
    NoSelectionText = '-- No Selection --'
  end
  object edActivity: TIWEdit
    Left = 8
    Top = 616
    Width = 601
    Height = 21
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 1
  end
  object IWButton1: TIWButton
    Left = 8
    Top = 648
    Width = 81
    Height = 25
    Caption = 'Add'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 96
    Top = 648
    Width = 81
    Height = 25
    Caption = 'Modify'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 3
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    Left = 184
    Top = 648
    Width = 81
    Height = 25
    Caption = 'Delete'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    TabOrder = 4
    OnClick = IWButton3Click
  end
  object DateText: TIWLabel
    Left = 8
    Top = 488
    Width = 137
    Height = 19
    Alignment = taCenter
    Font.Color = clWebDARKBLUE
    Font.Size = 12
    Font.Style = [fsBold]
    HasTabOrder = False
    FriendlyName = 'DateText'
    Caption = 'No date selected'
  end
  object IWLabel1: TIWLabel
    Left = 12
    Top = 72
    Width = 246
    Height = 24
    Font.Color = clWebDARKBLUE
    Font.Size = 14
    Font.Style = [fsBold]
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'Calendar Demonstration'
  end
  object IWLabel2: TIWLabel
    Left = 12
    Top = 104
    Width = 491
    Height = 16
    Font.Color = clWebDARKBLUE
    Font.Size = 10
    Font.Style = [fsBold]
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'This page demonstrates the use of the TIWCalendar conmponent'
  end
  object DemoDiary: TIWCalendar
    Left = 8
    Top = 128
    Width = 601
    Height = 353
    Css = ''
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
    CurrentDayImage.Filename = 'D:\kudzu\Intraweb Projects\playground\Files\today.png'
    PreviousMonthImage.Filename = 'D:\kudzu\Intraweb Projects\playground\Files\bprev32.JPG'
    NextMonthImage.Filename = 'D:\kudzu\Intraweb Projects\playground\Files\bnext32.JPG'
    CalendarFont.Color = clNone
    CalendarFont.Size = 8
    CalendarFont.Style = []
    CalendarHeaderFont.Color = clNone
    CalendarHeaderFont.Size = 10
    CalendarHeaderFont.Style = [fsBold]
    CheckerBoard = True
    SelectedDate = 38687.000000000000000000
    FriendlyName = 'DemoDiary'
    StartDate = 38702.950946712960000000
    UseLongDayNames = True
    OnDateChange = DemoDiaryDateChange
    OnGetDateInformation = DemoDiaryGetDateInformation
    DisplayYear = True
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 623
    Height = 33
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 623
    ExplicitHeight = 33
    inherited IWFrameRegion: TIWRegion
      Width = 623
      TabOrder = 5
      ExplicitWidth = 623
      inherited IWMenu1: TIWMenu
        Width = 623
        ExplicitWidth = 623
      end
    end
  end
end
