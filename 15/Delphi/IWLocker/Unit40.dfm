object IWForm40: TIWForm40
  Left = 0
  Top = 0
  Width = 943
  Height = 713
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 96
    Top = 496
    Width = 201
    Height = 30
    Caption = 'Default Locker - Sync Event'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 96
    Top = 568
    Width = 201
    Height = 30
    LockOnAsyncEvents = [aeClick]
    Caption = 'Default Locker - Async Event'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton2AsyncClick
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 96
    Top = 640
    Width = 201
    Height = 30
    LockOnAsyncEvents = [aeClick]
    Caption = 'Locker from JS Ajax call'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            '// The 3rd paramter of ajaxCall() function from our std JavaScri' +
            'pt library allows you to pass a boolean (true/false) to '
          
            '// trigger the lock mechanism using the default behavior, or it ' +
            'also allows you to use a string to customize that specific'
          
            '// message (The default message will be restored for subsequent ' +
            'calls'
          ''
          
            'ajaxCall("myAjaxMethod", "param1=value1", {text: "Generating rep' +
            'ort. Please wait..."});')
        Event = 'onClick'
      end>
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 328
    Top = 640
    Width = 563
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'Text passed when calling ajaxCall() method. Check the button'#39's S' +
      'criptEvents.onClick code'
  end
  object IWText1: TIWText
    AlignWithMargins = False
    Left = 96
    Top = 24
    Width = 785
    Height = 433
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    Font.PxSize = 13
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This is a simple demo that shows the new TServerController.Locke' +
        'rOptions property.'
      ''
      'LockerOptions currently has 5 subproperties:'
      ''
      
        '- ShowLoadingAnimation: (used to be ServerController.ShowLoading' +
        'Animation) turns on/off the loading animation'
      
        '- CustomLockerAnimationFile: (used to be ServerController.Custom' +
        'LockerAnimationFile) allows user to specify a custom image to be' +
        ' used. It can be either a SVG (prefereable which gives better re' +
        'sults) or a animated GIF.'
      
        '- Style, allows to set a dark or light (default) color (predefin' +
        'ed sets). '
      
        '- BackgroundRGBA, allows the user to set both color and opacity ' +
        'of the background overlay using the standard CSS rgba() function' +
        ' as rgba(red, green, blue, alpha).'
      
        '- Caption, allows the user to set the text that will appear righ' +
        't below the animation image. If empty, not text is shown.'
      ''
      
        'These properties must be set only inside ServerController.OnConf' +
        'ig event and can'#39't be changed directly later.'
      ''
      
        'However, the caption can be changed during ajaxCall() method cal' +
        'ls from custom JavaScript code. In this case, the text must be p' +
        'assed as the 3rd parameter of the'
      'ajaxCall(), like this:'
      ''
      
        'ajaxCall("myAjaxMethod", "param1=value1", {text: "Generating rep' +
        'ort. Please wait..."});'
      ''
      
        'Please notice above that the new text is passed as a "text" prop' +
        'erty of a JS object.'
      ''
      
        'The text passed this way to an ajaxCall() will be used a single ' +
        'time and the original text set in the ServerController propertie' +
        's will be used afterwards.'
      ''
      'See the 3rd button of this demo for an example')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel2: TIWLabel
    AlignWithMargins = False
    Left = 328
    Top = 568
    Width = 416
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'LockOnAsync events triggers the locking, using the default setti' +
      'ngs'
  end
  object IWLabel3: TIWLabel
    AlignWithMargins = False
    Left = 328
    Top = 496
    Width = 426
    Height = 16
    ConvertSpaces = True
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'Form'#39's LockOnSubmit triggers the locking, using the default sett' +
      'ings'
  end
end
