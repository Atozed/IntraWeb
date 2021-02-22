object formFlow: TformFlow
  Left = 0
  Top = 0
  Width = 359
  Height = 227
  HorzScrollBar.Range = 349
  VertScrollBar.Range = 201
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Flow Layout Demonstration'
  Background.Fixed = False
  LayoutMgr = IWLayoutMgrHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWLink1: TIWLink
    Left = 164
    Top = 184
    Width = 185
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 1
    RawText = False
    Caption = 'Return to main application.'
  end
  object IWListbox1: TIWListbox
    Left = 8
    Top = 32
    Width = 161
    Height = 145
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    UseSize = False
    TabOrder = 0
    NonEditableAsLabel = True
    FriendlyName = 'IWListbox1'
    ItemIndex = 0
    Items.Strings = (
      'You can add more items to this list.')
    NoSelectionText = '-- No Selection --'
  end
  object IWEdit1: TIWEdit
    Left = 8
    Top = 8
    Width = 161
    Height = 21
    StyleRenderOptions.RenderBorder = False
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 2
  end
  object IWButton1: TIWButton
    Left = 192
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Add'
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 3
    OnClick = IWButton1Click
  end
  object IWLayoutMgrHTML1: TIWLayoutMgrHTML
    HTML.Strings = (
      
        '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><H' +
        'TML>'
      '<HEAD>'
      
        '<META http-equiv=Content-Type content="text/html; charset=window' +
        's-1251"><META content="MSHTML 6.00.2800.1170" name=GENERATOR>'
      '</HEAD>'
      
        '<BODY><P>This page is designed&nbsp;using the HTML layout manage' +
        'r. The form is like '
      
        'any other IntraWeb form, but it has a HTML Layout Manager compon' +
        'ent on it. When '
      
        'you double click on the HTML Layout Manager a WYSIWYG editor is ' +
        'invoked. From '
      
        'the editor you can also import and&nbsp;export to Front Page, Dr' +
        'eamweaver and '
      'others. '
      
        '</P><P><STRONG>You can also access the property inspector, add c' +
        'omponents, '
      
        'access&nbsp;source code, and most importantly use the fullly fea' +
        'tured '
      
        '</STRONG><STRONG>WYSIWYG </STRONG><STRONG>HTML&nbsp; editor!&nbs' +
        'p;&nbsp; '
      '</STRONG>'
      '</P><P>Enter some text here {%IWEdit1%}, then '
      'click the button {%IWButton1%}&nbsp;and '
      
        'your text will be added in the listbox below. When you are finis' +
        'hed click here '
      'to {%IWLink1%}</P> '
      '{%IWListbox1%}</BODY>'
      '</HTML>')
    Left = 216
    Top = 64
  end
end
