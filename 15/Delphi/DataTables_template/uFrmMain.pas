unit uFrmMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids,
  IWCompLabel, IWCompListbox, IWHTMLControls, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompExtCtrls;

type
  TFrmMain = class(TIWAppForm)
    IWTemplateProcessorHTML: TIWTemplateProcessorHTML;
    IWLabel3: TIWLabel;
    IWLabelGrid: TIWLabel;
    IWImage1: TIWImage;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
  private
    function GetInitCode(const AName: string): string;
  end;

implementation

{$R *.dfm}

procedure TFrmMain.IWAppFormCreate(Sender: TObject);
begin
  IWLabelGrid.Caption :=
  '<table id="mytable" class="table table-hover table-striped table-condensed dt-responsive nowrap" width="100%" cellspacing="0">' +
	'	<thead>' +
  '          <tr>' +
  '              <th>Name</th>' +
  '              <th>Position</th>' +
  '              <th>Office</th>' +
  '              <th>Age</th>' +
  '             <th>Start date</th>' +
  '              <th>Salary</th>' +
  '          </tr>' +
  '      </thead>' +
  '      <tbody>' +
  '          <tr>' +
  '              <td>Tiger Nixon</td>' +
  '              <td>System Architect</td>' +
  '              <td>Edinburgh</td>' +
  '              <td>61</td>' +
  '              <td>2011/04/25</td>' +
  '              <td>$320,800</td>' +
  '          </tr>' +
  '          <tr>' +
  '              <td>Garrett Winters</td>' +
  '              <td>Accountant</td>' +
  '              <td>Tokyo</td>' +
  '              <td>63</td>' +
  '              <td>2011/07/25</td>' +
  '              <td>$170,750</td>' +
  '          </tr>' +
  '          <tr>' +
  '              <td>Ashton Cox</td>' +
  '              <td>Junior Technical Author</td>' +
  '              <td>San Francisco</td>' +
  '              <td>66</td>' +
  '              <td>2009/01/12</td>' +
  '              <td>$86,000</td>' +
  '          </tr>' +
  '      </tbody>' +
  '      <tfoot>' +
  '          <tr>' +
  '              <th>Name</th>' +
  '              <th>Position</th>' +
  '              <th>Office</th>' +
  '              <th>Age</th>' +
  '              <th>Start date</th>' +
  '              <th>Salary</th>' +
  '          </tr>' +
  '      </tfoot>' +
  '</table>';
end;

procedure TFrmMain.IWAppFormRender(Sender: TObject);
begin
  AddToInitProc(GetInitCode('mytable'));
end;

function TFrmMain.GetInitCode(const AName: string): string;
begin
  Result := '$(function() {' +
            '  $("#' + AName + '").DataTable();' +
            '});';
end;

initialization
  TFrmMain.SetAsMainForm;

end.
