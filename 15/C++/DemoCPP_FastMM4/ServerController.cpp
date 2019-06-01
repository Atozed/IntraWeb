//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ServerController.h"
#include "IWGlobal.hpp"
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


//---------------------------------------------------------------------------

void __fastcall TIWServerController::IWServerControllerBaseCreate(
      TObject *Sender)
{
   Pool->Active = true;
}
//---------------------------------------------------------------------------
void __fastcall TIWServerController::PoolCreateDataModule(
      TDataModule *&ADataModule)
{
  ADataModule = new TDataModule1(NULL);
}
//---------------------------------------------------------------------------
void __fastcall TIWServerController::PoolFreeDataModule(
      TDataModule *&ADataModule)
{
  ADataModule->Free();
}
//---------------------------------------------------------------------------

TDataModule1* LockDataModule()
{
  return (TDataModule1*)((TIWServerController*)gServerController)->Pool->Lock();
}

//---------------------------------------------------------------------------

void UnlockDataModule(TDataModule1* ADataModule)
{
  TDataModule* temp = ADataModule;
  ((TIWServerController*)gServerController)->Pool->Unlock(temp);
}
//---------------------------------------------------------------------------
void setServerController() {
  TIWServerController::SetServerControllerClass();
}
//---------------------------------------------------------------------------

TIWServerController* IWServerController()
{
  return (TIWServerController*)gServerController;
}

#pragma startup setServerController
