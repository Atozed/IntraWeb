unit myCustomURLResponder;

interface

uses
  SysUtils, IWApplication, IWAppForm, IWURLResponder, IWURLMap, myForm;

type
  TMyCustomURLResponder = class(TIWURLResponderAppFormBase)
  public
    function CreateFormInstance(aApplication: TIWApplication): TIWAppForm; override;
  end;

implementation

{ TMyCustomURLResponder }

var
  gMyCustomURLResponder: TMyCustomURLResponder;

function TMyCustomURLResponder.CreateFormInstance(aApplication: TIWApplication): TIWAppForm;
begin
  Result := TMyIWForm.Create(aApplication);
end;

initialization
   gMyCustomURLResponder := TMyCustomURLResponder.Create(nil);
   TIWURLMap.Add('/myform/', 'index.html', gMyCustomURLResponder);

finalization
   FreeAndNil(gMyCustomURLResponder);

end.
