object IWForm32: TIWForm32
  Left = 0
  Top = 0
  Width = 799
  Height = 722
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
  object IWReCaptcha1: TIWReCaptcha
    AlignWithMargins = False
    Left = 96
    Top = 72
    Width = 377
    Height = 95
    OnValidationError = IWReCaptcha1ValidationError
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 32
    Top = 224
    Width = 745
    Height = 473
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 12
    Font.Style = []
    Font.PxSize = 16
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'To obtain the site key for your Google reCAPTCHA, you need to fo' +
        'llow these steps:'
      ''
      
        '1- Go to the Google reCAPTCHA admin page (https://www.google.com' +
        '/recaptcha/admin).'
      ''
      
        '2- Sign in with your Google account if you haven'#39't already done ' +
        'so.'
      ''
      
        '3- If you have not registered your site with reCAPTCHA, click on' +
        ' the "+ Add" button on the top right corner of the page, and ent' +
        'er the required information to register your site.'
      ''
      
        '4- Once you have registered your site, you will be directed to t' +
        'he "Settings" page for that site. Here you will find your site k' +
        'ey and secret key.'
      ''
      
        '5- If you have already registered your site, select your site fr' +
        'om the list of sites in the "Settings" section.'
      ''
      
        '6- You will find your site key under the "Keys" section. Copy th' +
        'e site key and use it in your website or application where you h' +
        'ave integrated reCAPTCHA.'
      ''
      
        'If you are still unable to find your site key, you can refer to ' +
        'the reCAPTCHA documentation (https://developers.google.com/recap' +
        'tcha/intro) for more information or reach out to the Google reCA' +
        'PTCHA support team for assistance.')
  end
end
