object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Name = 'actnMain'
      PathInfo = '/main'
      Producer = prodMain
    end
    item
      Name = 'actnSecond'
      PathInfo = '/second'
      Producer = prodSecond
    end>
  Left = 820
  Top = 407
  Height = 233
  Width = 324
  object IWModuleController1: TIWModuleController
    Left = 76
    Top = 16
  end
  object prodMain: TIWPageProducer
    OnGetForm = prodMainGetForm
    Left = 156
    Top = 112
  end
  object prodSecond: TIWPageProducer
    OnGetForm = prodSecondGetForm
    Left = 48
    Top = 96
  end
end
