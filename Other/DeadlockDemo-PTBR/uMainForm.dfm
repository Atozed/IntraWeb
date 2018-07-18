object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Deadlock demo'
  ClientHeight = 574
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Button1: TButton
    Left = 48
    Top = 32
    Width = 177
    Height = 25
    Caption = 'Deadlock!!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object logMemo: TMemo
    Left = 48
    Top = 80
    Width = 753
    Height = 441
    Lines.Strings = (
      
        'Esta aplica'#231#227'o mostra como '#233' simples criar um deadlock numa apli' +
        'ca'#231#227'o multi-thread. Apesar de ser uma aplica'#231#227'o desktop '
      'VCL, ela utiliza-se de'
      
        'threads internamente e algumas caracter'#237'sticas do c'#243'digo podem c' +
        'ausar um deadlock. No exemplo aqui temos 2 threads e 2 '
      'locks (TCriticalSection).'
      ''
      'A Thread1 obt'#233'm o Lock1'
      'A Thread2 obt'#233'm o Lock2'
      ''
      'Ent'#227'o a Thread1 tenta obter o Lock2 que j'#225' est'#225' com a Thread2'
      
        'Por sua vez a Thread2 tenta obter o Lock, que j'#225' est'#225' tamb'#233'm com' +
        ' aThread1'
      ''
      
        'A Thread1 fica esperando a Thread2 liberar o Lock2 que s'#243' ir'#225' oc' +
        'orrer depois que ela obtiver o Lock1. Mas o Lock1 n'#227'o poder'#225' '
      'ser obtido'
      'pois a Thread1 s'#243' ir'#225' liber'#225'-lo ap'#243's obter o Lock2.'
      ''
      #201' uma situa'#231#227'o sem solu'#231#227'o -> Deadlock!'
      ''
      
        'Clique no bot'#227'o "Deadlock" para simular a situa'#231#227'o (voc'#234' ainda s' +
        'er'#225' capaz de terminar a aplica'#231#227'o no menu Run -> Reset)')
    TabOrder = 1
  end
end
