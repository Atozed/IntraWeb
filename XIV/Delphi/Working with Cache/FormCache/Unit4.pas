unit Unit4;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompAudio,
  IWCompLabel, IWCompMemo;

type
  TIWForm4 = class(TIWAppForm)
    IWAudio1: TIWAudio;
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
    procedure IWAppFormCreate(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}
{$R AudioFiles.res} // add our audio files as resource

uses
  IWAppCache, IW.CacheStream, IWMimeTypes;

procedure TIWForm4.IWAppFormCreate(Sender: TObject);
begin
  // extract the mp3 sample and add as the primary audio file of our IWAudio control
  IWAudio1.AudioFile.URL := TIWAppCache.ResourceToCacheFile(Self, 'MP3_SAMPLE', TIWMimeTypes.GetAsString(mtMP3), ctForm);
  // extract the ogg sample and add as the alternate audio file of our IWAudio control
  IWAudio1.AlternateAudioFile.URL := TIWAppCache.ResourceToCacheFile(Self, 'OGG_SAMPLE', TIWMimeTypes.GetAsString(mtOGG), ctForm);
end;

initialization
  TIWForm4.SetAsMainForm;

end.
