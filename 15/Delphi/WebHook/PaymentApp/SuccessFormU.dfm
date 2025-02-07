object SuccessForm: TSuccessForm
  Left = 0
  Top = 0
  Width = 585
  Height = 433
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnShow = IWAppFormShow
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWLinkBack: TIWLink
    AlignWithMargins = False
    Left = 184
    Top = 192
    Width = 201
    Height = 21
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    Font.PxSize = 13
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLinkBack'
    OnAsyncClick = IWLinkBackAsyncClick
    TabOrder = -1
    RawText = False
    Caption = 'Back to the Payment Form'
  end
  object IWLblMessage: TIWLabel
    AlignWithMargins = False
    Left = 184
    Top = 136
    Width = 95
    Height = 17
    HasTabOrder = False
    FriendlyName = 'IWLblMessage'
    Caption = 'IWLblMessage'
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'SuccessForm.html'
    Left = 128
    Top = 376
  end
end
