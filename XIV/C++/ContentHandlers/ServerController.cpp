//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ServerController.h"
#include "IWGlobal.hpp"
#include "IW.Content.Handlers.hpp"
#include "IW.Content.Base.hpp"
#include "IW.Content.Redirect.hpp"
#include "IW.Content.Form.hpp"
#include "uBlueForm.h"
#include "uRedForm.h"

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

void __fastcall TIWServerController::BeforeExecuteHandlerProc(System::TObject* Sender, bool &Continue)
{
// this is called before executing the content handler if required
}

void setServerController() {
  TIWServerController::SetServerControllerClass();
}

TIWServerController* IWServerController()
{
  return (TIWServerController*)gServerController;
}

#pragma startup setServerController
void __fastcall TIWServerController::IWServerControllerBaseConfig(TObject *Sender)

{
  THandlers::Add("", "mydoc.html", new TContentRedirect("/AtozedDoc.html"));
  THandlers::Add("", "blueform.html", new TContentForm(__classid(TBlueForm), (TBeforeExecuteHandlerProc)NULL));
  THandlers::Add("", "redform.html", new TContentForm(__classid(TRedForm), (TBeforeExecuteHandlerProc)NULL));
}
//---------------------------------------------------------------------------
