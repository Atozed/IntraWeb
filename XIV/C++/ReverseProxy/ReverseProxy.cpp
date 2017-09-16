//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USEFORM("Unit1.cpp", IWForm1); /* TIWAppForm: File Type */
USEFORM("UserSessionUnit.cpp", IWUserSession); /* TIWUserSessionBase: File Type */
USEFORM("ServerController.cpp", IWServerController); /* TIWServerControllerBase: File Type */
USEFORM("Unit2.cpp", IWForm2); /* TIWAppForm: File Type */
//---------------------------------------------------------------------------
#include <IWRtlFix.hpp>
#include <IWStart.hpp>
//---------------------------------------------------------------------------
#if _WIN64
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
#elif __WIN32__
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
#endif
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
