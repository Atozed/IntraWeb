unit DebugForm;

interface

uses
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm1 = class(TForm)
  private
  public
  end;

var
  Form1: TForm1;

implementation
{$R *.DFM}

uses
  ComApp;

const
  CLASS_ComWebApp: TGUID = '{6B303B42-04C1-4CF9-B50D-711DEBA632C6}';

initialization
  TWebAppAutoObjectFactory.Create(Class_ComWebApp, 'Survey', 'Survey Object');
end.
