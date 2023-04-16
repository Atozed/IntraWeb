object IWForm30: TIWForm30
  Left = 0
  Top = 0
  Width = 1264
  Height = 868
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignSize = (
    1264
    868)
  DesignLeft = 8
  DesignTop = 1
  object btnLoginGoogle: TIWImageButton
    AlignWithMargins = False
    Left = 64
    Top = 72
    Width = 343
    Height = 60
    BorderOptions.Width = 0
    UseSize = True
    OnClick = IWButton2Click
    Cacheable = True
    FriendlyName = 'btnLoginGoogle'
    ImageFile.Filename = 'google.png'
  end
  object btnLoginAzure: TIWImageButton
    AlignWithMargins = False
    Left = 64
    Top = 152
    Width = 343
    Height = 60
    BorderOptions.Width = 0
    UseSize = True
    OnClick = IWButton1Click
    Cacheable = True
    FriendlyName = 'btnLoginAzure'
    ImageFile.Filename = 'microsoft.png'
  end
  object imgLoginOK: TIWImageFile
    AlignWithMargins = False
    Left = 532
    Top = 20
    Width = 200
    Height = 200
    Visible = False
    Anchors = [akTop]
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Width = 0
    UseSize = False
    Cacheable = True
    FriendlyName = 'imgLoginOK'
    ImageFile.Filename = 'loginok.png'
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 65
    Top = 16
    Width = 149
    Height = 40
    Visible = False
    Font.Color = clNone
    Font.Size = 25
    Font.Style = []
    Font.PxSize = 33
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
  end
  object IWjQPageControl1: TIWjQPageControl
    Left = 64
    Top = 237
    Width = 1153
    Height = 612
    RenderInvisibleControls = False
    ActivePage = IWjQPageControl1_page1
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    Font.PxSize = 13
    TabHeight = 30
    TabTextHeight = 17
    TabMargin = 7
    TabPadding = 13
    TabBorderHeight = 0
    DesignSize = (
      1153
      612)
    object IWjQPageControl1_page2: TIWjQTabPage
      Left = 1
      Top = 38
      Width = 1151
      Height = 573
      RenderInvisibleControls = True
      Caption = 'Creating a new Microsoft Azure app'
      PageIndex = 1
      Anchors = [akLeft, akTop, akRight, akBottom]
      object IWMemo2: TIWMemo
        AlignWithMargins = False
        Left = 15
        Top = 15
        Width = 1122
        Height = 538
        StyleRenderOptions.RenderBorder = False
        BGColor = clNone
        Editable = True
        InvisibleBorder = False
        HorizScrollBar = False
        VertScrollBar = True
        Required = False
        SubmitOnAsyncEvent = True
        ResizeDirection = rdNone
        FriendlyName = 'IWMemo1'
        Lines.Strings = (
          '1. Go to the Azure portal at https://portal.azure.com/'
          ''
          
            '2. If you don'#39't have an Azure account, sign up for a free trial ' +
            'by clicking on "Create a resource" on the left-hand side of the ' +
            'screen and selecting "See all".'
          ''
          
            '3. Search for "Azure Active Directory" and select it from the re' +
            'sults.'
          ''
          
            '4. Go to the "App registrations" tab on the left-hand side of th' +
            'e screen and click on "+ New registration".'
          ''
          
            '5. Give your application a name and select the appropriate accou' +
            'nt type (single tenant or multi-tenant).'
          ''
          
            '6. In the "Redirect URI" section, select the type of redirect UR' +
            'I you want to use (e.g. Web or Public client/native) and enter t' +
            'he appropriate URI for your application (for IntraWeb applicatio' +
            'ns it should be http://localhost:8888/$/oauth/v2, when testing l' +
            'ocally).'
          ''
          
            '7. Under "Certificates & secrets", click on "+ New client secret' +
            '" to create a new secret for your application.'
          ''
          
            '8. Enter a description for your secret and select the expiration' +
            ' date.'
          ''
          
            '9. Once your secret is created, copy the value and store it in a' +
            ' secure location.'
          ''
          
            '10. Under "API permissions", click on "+ Add a permission" to ad' +
            'd the API permissions your application needs (e.g. Microsoft Gra' +
            'ph API).'
          ''
          
            '11. Follow the prompts to select the appropriate permission type' +
            ' and grant admin consent if necessary.'
          ''
          
            '12. Once your permissions are added, go to the "Overview" tab an' +
            'd copy the "Application (client) ID" value. This is your client ' +
            'ID.'
          ''
          
            '13. You should also copy the "Directory (tenant) ID" value if yo' +
            'u need to use multi-tenant authentication.'
          ''
          
            'That'#39's it! You can now use the client ID, tenant ID and client s' +
            'ecret with your application. Remember to keep these values secur' +
            'e. ')
      end
    end
    object IWjQPageControl1_page1: TIWjQTabPage
      Left = 1
      Top = 38
      Width = 1151
      Height = 573
      RenderInvisibleControls = True
      Caption = 'Creating a new Google app'
      PageIndex = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      object IWMemo1: TIWMemo
        AlignWithMargins = False
        Left = 15
        Top = 15
        Width = 1122
        Height = 538
        StyleRenderOptions.RenderBorder = False
        BGColor = clNone
        Editable = True
        InvisibleBorder = False
        HorizScrollBar = False
        VertScrollBar = True
        Required = False
        SubmitOnAsyncEvent = True
        ResizeDirection = rdNone
        FriendlyName = 'IWMemo1'
        Lines.Strings = (
          
            '1. Go to the Google Cloud Console at https://console.cloud.googl' +
            'e.com/'
          ''
          
            '2. Create a new project by clicking on the project dropdown menu' +
            ' on the top left of the screen and selecting "New Project".'
          ''
          '3. Give your project a name and click "Create".'
          ''
          
            '4. Once your project is created, select it from the project drop' +
            'down menu on the top left of the screen.'
          ''
          
            '5. Go to the "APIs & Services" dashboard by clicking on the hamb' +
            'urger menu on the top left of the screen and selecting "APIs & S' +
            'ervices" > "Dashboard".'
          ''
          
            '6. Click on the "+ ENABLE APIS AND SERVICES" button on the top o' +
            'f the screen and search for the API you want to use (e.g. Google' +
            ' Drive API).'
          ''
          
            '7. Enable the API by clicking on the API name and following the ' +
            'prompts.'
          ''
          
            '8. Once the API is enabled, go to the "Credentials" tab on the l' +
            'eft-hand side of the screen.'
          ''
          '9. Click on "Create credentials" and select "OAuth client ID".'
          ''
          
            '10. Select "Web application" as the application type and give yo' +
            'ur application a name.'
          ''
          
            '11. In the "Authorized JavaScript origins" field, enter the URL ' +
            'of the website where your application will be hosted (e.g. http:' +
            '//localhost:8888 if you'#39're testing your application locally).'
          ''
          
            '12. In the "Authorized redirect URIs" field, enter the URL where' +
            ' Google should redirect users after they'#39've authenticated with y' +
            'our application (for IntraWeb applications it should be http://l' +
            'ocalhost:8888/$/oauth/v2, when testing locally).'
          ''
          
            '13. Click "Create" and you'#39'll be given a client ID and client se' +
            'cret to use with your application.'
          ''
          
            'That'#39's it! You can now use the client ID and client secret with ' +
            'your application. Remember to keep these values secure. ')
      end
    end
  end
end
