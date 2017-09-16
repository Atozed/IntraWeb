//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UserSessionUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

//---------------------------------------------------------------------------
TIWUserSession* UserSession()
{
  return (TIWUserSession*)WebApplication->Data;
}

//---------------------------------------------------------------------------
__fastcall TIWUserSession ::TIWUserSession (TComponent* Owner, TIWApplication* ASession)
        : TIWUserSessionBase(Owner, ASession)
{
}
//---------------------------------------------------------------------------


