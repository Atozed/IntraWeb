//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USEFORM("uBlueForm.cpp", BlueForm); /* TIWAppForm: File Type */
USEFORM("Unit1.cpp", IWForm1); /* TIWAppForm: File Type */
USEFORM("UserSessionUnit.cpp", IWUserSession); /* TIWUserSessionBase: File Type */
USEFORM("ServerController.cpp", IWServerController); /* TIWServerControllerBase: File Type */
USEFORM("uRedForm.cpp", RedForm); /* TIWAppForm: File Type */
//---------------------------------------------------------------------------
#include <IWRtlFix.hpp>
#include <IWStart.hpp>
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
           TIWStart* p = new TIWStart(true);
           p->Execute(true);
        }
        catch (Exception &exception)
        {

        }
        return 0;
}
//---------------------------------------------------------------------------
