//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include <IWServerControllerBase.hpp>
#include <IWApplication.hpp>
#include "ServerController.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TIWForm1::TIWForm1(TComponent* Owner)
        : TIWAppForm(Owner)
{
}
//---------------------------------------------------------------------------

void setAsMainForm() {
  TIWForm1::SetAsMainForm();
 }
#pragma startup setAsMainForm
void __fastcall TIWForm1::IWAppFormRender(TObject *Sender)
{
    IWMemo1->Clear();
	if (IWServerController()->PostRedirectGet == prgDisabled) {
		IWMemo1->Lines->Add("PostRedirectGet is DISABLED");
	} else {
		IWMemo1->Lines->Add("PostRedirectGet is ENABLED");
	}

	UnicodeString LProxyBase = this->WebApplication->Request->GetRawHeaderValue("X-ProxyBase");
	IWMemo1->Lines->Add("X-ProxyBase: " + LProxyBase);
}
//---------------------------------------------------------------------------

void __fastcall TIWForm1::IWButton1Click(TObject *Sender)
{
	TIWForm2 *Frm = new TIWForm2(WebApplication);
	Frm->Show();
}
//---------------------------------------------------------------------------

