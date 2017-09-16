object frmServiceDebug: TfrmServiceDebug
  Left = 359
  Top = 148
  Caption = 'frmDebug'
  ClientHeight = 240
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgServices: TTabControl
    Left = 0
    Top = 0
    Width = 267
    Height = 240
    Align = alClient
    TabOrder = 0
    OnChange = pgServicesChange
    object btnStart: TButton
      Left = 32
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 112
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
end
