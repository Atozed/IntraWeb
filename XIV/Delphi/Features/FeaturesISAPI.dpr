library FeaturesISAPI;

uses
  ISAPIApp,
  MidasLib,
  IWStart,
  IWInitISAPI,
  Threaded in 'Threaded.pas' {formThreaded: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  MessageDialogs in 'MessageDialogs.pas' {formMessageDialogs: TIWFormModuleBase},
  Combobox in 'Combobox.pas' {formComboboxes: TIWFormModuleBase},
  EditGridForm in 'EditGridForm.pas' {formEditGrid: TIWFormModuleBase},
  JavaApplet in 'JavaApplet.pas' {formJavaApplet: TIWFormModuleBase},
  GridForm in 'GridForm.pas' {formGrids: TIWFormModuleBase},
  Global in 'Global.pas',
  ContentWindow in 'ContentWindow.pas' {formContentWindow: TIWFormModuleBase},
  StyleSheetForm in 'StyleSheetForm.pas' {formStyleSheets: TIWFormModuleBase},
  TimerForm in 'TimerForm.pas' {formTimer: TIWAppForm},
  MapForm in 'MapForm.pas' {formMap: TIWAppForm},
  MenuFrame in 'MenuFrame.pas' {framMenu: TFrame},
  TemplateForm in 'TemplateForm.pas' {formTemplate: TIWAppForm},
  DownloadForm in 'DownloadForm.pas' {formDownload: TIWAppForm},
  FlowForm in 'FlowForm.pas' {formFlow: TIWAppForm},
  pdfDemoForm in 'pdfDemoForm.pas' {formPdfDemo: TIWAppForm},
  FileUploadForm in 'FileUploadForm.pas' {formFileUploadDemo: TIWAppForm},
  TreeViewForm in 'TreeViewForm.pas' {formTreeView: TIWAppForm},
  Flash in 'Flash.pas' {formFlash: TIWAppForm},
  AlignAnchorsForm in 'AlignAnchorsForm.pas' {formAlignAnchor: TIWAppForm},
  Simple in 'Simple.pas' {formSimple: TIWAppForm},
  CalendarForm in 'CalendarForm.pas' {formCalendar: TIWAppForm},
  RegionForm in 'RegionForm.pas' {formRegion: TIWAppForm},
  ResizeForm in 'ResizeForm.pas' {formResize: TIWAppForm},
  ActiveXForm in 'ActiveXForm.pas' {formActiveX: TIWAppForm},
  MPEGForm in 'MPEGForm.pas' {formMPEG: TIWAppForm},
  QuickTimeForm in 'QuickTimeForm.pas' {formQuickTime: TIWAppForm},
  SubTemplatesForm in 'SubTemplatesForm.pas' {formSubTemplates: TIWAppForm};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
