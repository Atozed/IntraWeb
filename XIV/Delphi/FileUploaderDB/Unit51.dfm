object IWForm51: TIWForm51
  Left = 0
  Top = 0
  Width = 768
  Height = 495
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
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWFileUploader1: TIWFileUploader
    Left = 26
    Top = 57
    Width = 400
    Height = 60
    TabOrder = 0
    TextStrings.DragText = 'Drop files here to upload'
    TextStrings.UploadButtonText = 'Upload a file'
    TextStrings.CancelButtonText = 'Cancel'
    TextStrings.UploadErrorText = 'Upload failed'
    TextStrings.MultipleFileDropNotAllowedText = 'You may only drop a single file'
    TextStrings.OfTotalText = 'of'
    TextStrings.RemoveButtonText = 'Remove'
    TextStrings.TypeErrorText = 
      '{file} has an invalid extension. Only {extensions} files are all' +
      'owed.'
    TextStrings.SizeErrorText = '{file} is too large, maximum file size is {sizeLimit}.'
    TextStrings.MinSizeErrorText = '{file} is too small, minimum file size is {minSizeLimit}.'
    TextStrings.EmptyErrorText = '{file} is empty, please select files again without it.'
    TextStrings.NoFilesErrorText = 'No files to upload.'
    TextStrings.OnLeaveWarningText = 
      'The files are being uploaded, if you leave now the upload will b' +
      'e cancelled.'
    Style.ButtonOptions.Alignment = taCenter
    Style.ButtonOptions.Font.Color = clWebWHITE
    Style.ButtonOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonOptions.Font.Size = 10
    Style.ButtonOptions.Font.Style = []
    Style.ButtonOptions.FromColor = clWebMAROON
    Style.ButtonOptions.ToColor = clWebMAROON
    Style.ButtonOptions.Height = 30
    Style.ButtonOptions.Width = 200
    Style.ButtonHoverOptions.Alignment = taCenter
    Style.ButtonHoverOptions.Font.Color = clWebWHITE
    Style.ButtonHoverOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHoverOptions.Font.Size = 10
    Style.ButtonHoverOptions.Font.Style = []
    Style.ButtonHoverOptions.FromColor = 214
    Style.ButtonHoverOptions.ToColor = 214
    Style.ListOptions.Alignment = taLeftJustify
    Style.ListOptions.Font.Color = clWebBLACK
    Style.ListOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListOptions.Font.Size = 10
    Style.ListOptions.Font.Style = []
    Style.ListOptions.FromColor = clWebGOLD
    Style.ListOptions.ToColor = clWebGOLD
    Style.ListOptions.Height = 30
    Style.ListOptions.Width = 0
    Style.ListSuccessOptions.Alignment = taLeftJustify
    Style.ListSuccessOptions.Font.Color = clWebWHITE
    Style.ListSuccessOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListSuccessOptions.Font.Size = 10
    Style.ListSuccessOptions.Font.Style = []
    Style.ListSuccessOptions.FromColor = clWebFORESTGREEN
    Style.ListSuccessOptions.ToColor = clWebFORESTGREEN
    Style.ListErrorOptions.Alignment = taLeftJustify
    Style.ListErrorOptions.Font.Color = clWebWHITE
    Style.ListErrorOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ListErrorOptions.Font.Size = 10
    Style.ListErrorOptions.Font.Style = []
    Style.ListErrorOptions.FromColor = clWebRED
    Style.ListErrorOptions.ToColor = clWebRED
    Style.DropAreaOptions.Alignment = taCenter
    Style.DropAreaOptions.Font.Color = clWebWHITE
    Style.DropAreaOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.DropAreaOptions.Font.Size = 10
    Style.DropAreaOptions.Font.Style = []
    Style.DropAreaOptions.FromColor = clWebDARKORANGE
    Style.DropAreaOptions.ToColor = clWebDARKORANGE
    Style.DropAreaOptions.Height = 60
    Style.DropAreaOptions.Width = 0
    Style.DropAreaActiveOptions.Alignment = taCenter
    Style.DropAreaActiveOptions.Font.Color = clWebWHITE
    Style.DropAreaActiveOptions.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.DropAreaActiveOptions.Font.Size = 10
    Style.DropAreaActiveOptions.Font.Style = []
    Style.DropAreaActiveOptions.FromColor = clWebLIMEGREEN
    Style.DropAreaActiveOptions.ToColor = clWebLIMEGREEN
    Style.DropAreaActiveOptions.Height = 60
    Style.DropAreaActiveOptions.Width = 0
    AcceptFiles = '*jpg,*png'
    CssClasses.Strings = (
      'button='
      'button-hover='
      'drop-area='
      'drop-area-active='
      'drop-area-disabled='
      'list='
      'upload-spinner='
      'progress-bar='
      'upload-file='
      'upload-size='
      'upload-listItem='
      'upload-cancel='
      'upload-success='
      'upload-fail='
      'success-icon='
      'fail-icon=')
    OnAsyncUploadCompleted = IWFileUploader1AsyncUploadCompleted
    OnAsyncUploadSuccess = IWFileUploader1AsyncUploadSuccess
    FriendlyName = 'IWFileUploader1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
  end
  object IWLabel1: TIWLabel
    Left = 27
    Top = 29
    Width = 187
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Select an image file to upload'
  end
  object IWDBImage1: TIWDBImage
    Left = 33
    Top = 212
    Width = 393
    Height = 256
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Width = 0
    TabOrder = -1
    UseSize = False
    FriendlyName = 'IWDBImage1'
    DataField = 'FileContent'
    DataSource = DataSource1
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 86
    Top = 151
    object ClientDataSet1FileName: TStringField
      FieldName = 'FileName'
      Size = 255
    end
    object ClientDataSet1FileSize: TIntegerField
      FieldName = 'FileSize'
    end
    object ClientDataSet1FileContent: TBlobField
      FieldName = 'FileContent'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 176
    Top = 153
  end
end
