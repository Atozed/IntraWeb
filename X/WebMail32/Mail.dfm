object frmMailList: TfrmMailList
  Left = 0
  Top = 0
  Width = 555
  Height = 517
  ConnectionMode = cmAny
  SupportedBrowsers = []
  OnCreate = IWAppForm32Create
  BrowserSecurityCheck = True
  LayoutMgr = mailLayoutMgr
  DesignLeft = 267
  DesignTop = 137
  object lblExplanation: TIWLabel32
    Left = 8
    Top = 8
    Width = 339
    Height = 16
    TabOrder = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Caption = 'Click on the messages below to display the message text'
  end
  object txtMessage: TIWText32
    Left = 8
    Top = 240
    Width = 537
    Height = 241
    TabOrder = 0
    ConvertSpaces = True
    Font.Color = clWebMIDNIGHTBLUE
    Font.Size = 10
    Font.Style = [fsItalic]
    Lines.Strings = (
      'No message selected')
    RawText = False
    WantReturns = True
  end
  object mailLayoutMgr: TIWLayoutMgrHTML32
    Left = 520
    Top = 8
  end
end
