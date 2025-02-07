object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 682
  Height = 489
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWEditValue: TIWEdit
    AlignWithMargins = False
    Left = 144
    Top = 104
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taRightJustify
    FriendlyName = 'Value'
    SubmitOnAsyncEvent = True
    DataType = stNumber
    DataTypeOptions.Max = '1000000'
    DataTypeOptions.Min = '0'
    DataTypeOptions.NumberType = ntCurrency
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object btnPayNow: TIWButton
    AlignWithMargins = False
    Left = 176
    Top = 200
    Width = 120
    Height = 30
    Css = 'paybtn'
    LockOnAsyncEvents = [aeClick]
    Caption = 'Pay Now'
    Color = clBtnFace
    FriendlyName = 'Pay Now button'
    OnAsyncClick = btnPayNowAsyncClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'PaymentForm.html'
    Left = 128
    Top = 376
  end
  object IWMonitor1: TIWMonitor
    OnAsyncEvent = IWMonitor1AsyncEvent
    Left = 336
    Top = 384
  end
end
