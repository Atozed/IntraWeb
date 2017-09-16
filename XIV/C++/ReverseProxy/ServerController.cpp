//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ServerController.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

//---------------------------------------------------------------------------
__fastcall TIWServerController::TIWServerController(TComponent* Owner)
        : TIWServerControllerBase(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TIWServerController::IWServerControllerBaseNewSession(
      TIWApplication *ASession)
{
  ASession->Data = new TIWUserSession(NULL, ASession);
}
//---------------------------------------------------------------------------


void setServerController() {
  TIWServerController::SetServerControllerClass();
}

TIWServerController* IWServerController()
{
  return (TIWServerController*)gServerController;
}

#pragma startup setServerController
void __fastcall TIWServerController::IWServerControllerBaseRewriteURL(THttpRequest *ARequest,
		  UnicodeString &ARewriteURL)
{
  UnicodeString LBaseUrl = ARequest->GetRawHeaderValue("X-ProxyBase");
  if (!LBaseUrl.IsEmpty()) {
	ARewriteURL = LBaseUrl;
  }
}
//---------------------------------------------------------------------------

