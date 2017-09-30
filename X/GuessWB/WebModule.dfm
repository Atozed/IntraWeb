object webmMain: TwebmMain
  OldCreateOrder = False
  OnCreate = WebModuleCreate
  Actions = <
    item
      Name = 'WebActionItem1'
      PathInfo = '/guess'
      Producer = prodMain
    end>
  BeforeDispatch = WebModuleBeforeDispatch
  Left = 241
  Top = 156
  Height = 348
  Width = 522
  object IWModuleController1: TIWModuleController
    Left = 64
    Top = 32
  end
  object prodMain: TIWPageProducer
    OnGetForm = prodMainGetForm
    Left = 64
    Top = 80
  end
end
