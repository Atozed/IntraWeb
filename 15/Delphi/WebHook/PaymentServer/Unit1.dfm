object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Payment Server'
  ClientHeight = 435
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    616
    435)
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Transaction Log:'
  end
  object MemoLog: TMemo
    Left = 16
    Top = 32
    Width = 585
    Height = 385
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    Left = 368
    Top = 200
  end
end
