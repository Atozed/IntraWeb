object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'IntraWeb - IPC demo'
  ClientHeight = 693
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 16
  object Image1: TImage
    Left = 48
    Top = 128
    Width = 297
    Height = 249
    AutoSize = True
  end
  object Label1: TLabel
    Left = 48
    Top = 80
    Width = 36
    Height = 16
    Caption = 'Label1'
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 528
    Top = 64
  end
end
