unit Main;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompEdit, IWCompButton,
  IWCompLabel, IWCompText, IWBaseControl,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWVCLBaseControl, IWVCLComponent, IWBaseHTMLControl;

type
  TformMain = class(TIWAppForm)
    textPrompt: TIWText;
    IWLabel1: TIWLabel;
    butnNext: TIWButton;
    editName: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    editAddress1: TIWEdit;
    editAddress2: TIWEdit;
    editCity: TIWEdit;
    editState: TIWEdit;
    editZip: TIWEdit;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure butnNextClick(Sender: TObject);
  protected
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController,
  Question1,
  SysUtils;

procedure TformMain.butnNextClick(Sender: TObject);
begin
  with UserSession do begin
    Name := Trim(editName.Text);
    Address1 := Trim(editAddress1.Text);
    Address2 := Trim(editAddress2.Text);
    City := Trim(editCity.Text);
    State := Trim(editState.Text);
    Zip := Trim(editZip.Text);
  end;
  TformQuestion1.Create(WebApplication).Show;
  Release;
end;

initialization
  TformMain.SetAsMainForm;
  
end.
