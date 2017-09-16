//---------------------------------------------------------------------------

#include <vcl.h>
#include <IW.Common.AppInfo.hpp>

#pragma hdrstop

#include "Unit1.h"
#include "ServerController.h"
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
void __fastcall TIWForm1::IWAppFormCreate(TObject *Sender)
{
  IWMemo1->Lines->Add(TIWAppInfo::GetAppPath());
  IWMemo1->Lines->Add(IWServerController()->ContentPath);
}
//---------------------------------------------------------------------------

