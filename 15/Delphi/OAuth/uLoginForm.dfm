object LoginForm: TLoginForm
  Left = 0
  Top = 0
  Width = 1286
  Height = 868
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignSize = (
    1286
    868)
  DesignLeft = 8
  DesignTop = 8
  object lbUserEmail: TIWLabel
    AlignWithMargins = False
    Left = 63
    Top = 96
    Width = 962
    Height = 40
    Visible = False
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserEmail'
    Caption = 'lbUserEmail'
  end
  object lbUserName: TIWLabel
    AlignWithMargins = False
    Left = 63
    Top = 50
    Width = 962
    Height = 40
    Visible = False
    Font.Color = clNone
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lbUserName'
    Caption = 'lbUserName'
  end
  object btnLoginGoogle: TIWImageButton
    AlignWithMargins = False
    Left = 63
    Top = 42
    Width = 274
    Height = 48
    BorderOptions.Width = 0
    UseSize = True
    OnClick = btnLoginGoogleClick
    Cacheable = True
    FriendlyName = 'btnLoginGoogle'
    ImageFile.Filename = 'google.png'
  end
  object btnLoginAzure: TIWImageButton
    AlignWithMargins = False
    Left = 63
    Top = 97
    Width = 274
    Height = 48
    BorderOptions.Width = 0
    UseSize = True
    OnClick = btnLoginAzureClick
    Cacheable = True
    FriendlyName = 'btnLoginAzure'
    ImageFile.Filename = 'microsoft.png'
  end
  object imgLoginOK: TIWImageFile
    AlignWithMargins = False
    Left = 1044
    Top = 16
    Width = 200
    Height = 200
    Visible = False
    Anchors = [akTop, akRight]
    BorderOptions.Width = 0
    UseSize = True
    Cacheable = True
    FriendlyName = 'imgLoginOK'
    ImageFile.Filename = 'loginok.png'
  end
  object btnLoginFacebook: TIWImageButton
    AlignWithMargins = False
    Left = 64
    Top = 152
    Width = 274
    Height = 48
    BorderOptions.Width = 0
    UseSize = True
    OnClick = btnLoginFacebookClick
    Cacheable = True
    FriendlyName = 'btnLoginFacebook'
    ImageFile.Filename = 'facebook.png'
  end
  object IWjQPageControl1: TIWjQPageControl
    Left = 63
    Top = 232
    Width = 1180
    Height = 636
    RenderInvisibleControls = False
    ActivePage = IWjQPageControl1_page1
    Anchors = [akLeft, akTop, akRight]
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
      1180
      636)
    object IWjQPageControl1_page3: TIWjQTabPage
      Left = 1
      Top = 38
      Width = 1178
      Height = 597
      RenderInvisibleControls = True
      Caption = 'Creating a new Facebook app'
      PageIndex = 2
      Anchors = [akLeft, akTop, akRight, akBottom]
      DesignSize = (
        1178
        597)
      object IWMemo3: TIWMemo
        AlignWithMargins = False
        Left = 15
        Top = 15
        Width = 1122
        Height = 538
        Anchors = [akLeft, akTop, akRight, akBottom]
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
          
            '1. Log in to the Facebook Developer Dashboard at https://develop' +
            'ers.facebook.com/.'
          ''
          
            '2. Click on the "My Apps" button in the top navigation bar and s' +
            'elect "Add a New App" from the dropdown menu.'
          ''
          
            '3. Choose the platform that your application will be running on.' +
            ' For example, if you are building a web application, choose "Web' +
            'site."'
          ''
          '4. Enter a name for your application and click "Create App ID."'
          ''
          
            '5. On the next page, you will see your application dashboard. He' +
            're you can configure various settings for your app, including it' +
            's OAuth 2.0 authentication settings.'
          ''
          
            '6. In the left-hand menu, click on "Settings" and then select th' +
            'e "Basic" tab.'
          ''
          '7. Under "Basic Settings," enter the following information:'
          ''
          
            '- App Domain: This should be the domain name of your application' +
            ', such as "example.com."'
          
            '- Privacy Policy URL: This should be a link to your application'#39 +
            's privacy policy.'
          
            '- Category: Choose a category that best describes your applicati' +
            'on.'
          ''
          
            '8. Click the "Add Platform" button and choose the platform on wh' +
            'ich your application will be running. For example, if you are bu' +
            'ilding a web application, choose "Website."'
          ''
          '9- Enter the following information for your chosen platform:'
          ''
          
            '- Site URL: This should be the URL of your application'#39's homepag' +
            'e or login page.'
          
            '- Mobile Site URL (optional): This should be the URL of your app' +
            'lication'#39's mobile-friendly login page, if applicable.'
          ''
          '10. Save your changes.'
          ''
          
            '11. In the left-hand menu, click on "Products" and then select "' +
            'Facebook Login."'
          ''
          '12. Under "Settings," configure the following options:'
          ''
          
            '- Valid OAuth Redirect URIs: Enter the URI that Facebook should ' +
            'redirect to after successful authentication. This should be the ' +
            'URL of the page on your application that handles the authenticat' +
            'ion response.'
          
            '- Client OAuth Settings: Ensure that "Client OAuth Login" and "W' +
            'eb OAuth Login" are both enabled.'
          ''
          '13. Save your changes.'
          ''
          
            'That'#39's it! You can now use the client ID and client secret with ' +
            'your application. Remember to keep these values secure. '
          ''
          
            'Now you should create and register a new TIWOAuthAppFacebook in ' +
            'your IntraWeb application (ServerController.OnConfig event is re' +
            'commended)')
      end
    end
    object IWjQPageControl1_page2: TIWjQTabPage
      Left = 1
      Top = 38
      Width = 1178
      Height = 597
      RenderInvisibleControls = True
      Caption = 'Creating a new Microsoft Azure app'
      PageIndex = 1
      Anchors = [akLeft, akTop, akRight, akBottom]
      DesignSize = (
        1178
        597)
      object IWMemo2: TIWMemo
        AlignWithMargins = False
        Left = 15
        Top = 15
        Width = 1122
        Height = 538
        Anchors = [akLeft, akTop, akRight, akBottom]
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
            'e. '
          ''
          
            'Now you should create and register a new TIWOAuthAppAzure in you' +
            'r IntraWeb application (ServerController.OnConfig event is recom' +
            'mended)')
      end
    end
    object IWjQPageControl1_page1: TIWjQTabPage
      Left = 1
      Top = 38
      Width = 1178
      Height = 597
      RenderInvisibleControls = True
      Caption = 'Creating a new Google app'
      PageIndex = 0
      Anchors = [akLeft, akTop, akRight, akBottom]
      DesignSize = (
        1178
        597)
      object IWMemo1: TIWMemo
        AlignWithMargins = False
        Left = 15
        Top = 15
        Width = 1122
        Height = 538
        Anchors = [akLeft, akTop, akRight, akBottom]
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
            'your application. Remember to keep these values secure. '
          ''
          
            'Now you should create and register a new TIWOAuthAppGoogle in yo' +
            'ur IntraWeb application (ServerController.OnConfig event is reco' +
            'mmended)')
      end
    end
  end
end
