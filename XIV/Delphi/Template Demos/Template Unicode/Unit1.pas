unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompLabel, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompGradButton,
  IWCompListbox, IWCompEdit;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWEdit1: TIWEdit;
    IWComboBox1: TIWComboBox;
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    function CreateTestFile: string;
  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, Graphics;

function TIWForm1.CreateTestFile: string;
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Add('this is a test file for IW');
    sl.Add('侯：真喝醉的人，怕别人说他醉了');
    sl.Add('der jämmerlich heulte. „Warum heulst du denn so, Pack an?“');
    sl.Add('áéíóúàèìòùãõ');
    Result := gSC.ContentPath + 'áéíóúàèìòùãõ.dat';
    sl.SaveToFile(Result, TEncoding.UTF8);
  finally
    sl.Free;
  end;
end;

procedure TIWForm1.IWButton4Click(Sender: TObject);
var
  FileName: string;
begin
  FileName := CreateTestFile;
  WebApplication.SendFile(FileName, False);
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWButton3.Visible := not IWButton3.Visible;
end;

procedure TIWForm1.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if IWButton2.Color = clBtnFace then begin
    IWButton2.Color := clWebAQUA;
  end else begin
    IWButton2.Color := clBtnFace;
  end;

end;

initialization
  TIWForm1.SetAsMainForm;

end.
