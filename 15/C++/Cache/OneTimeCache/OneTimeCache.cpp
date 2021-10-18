//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
USEFORM("Unit1.cpp", IWForm1); /* TIWAppForm: File Type */
USEFORM("ServerController.cpp", IWServerController); /* TIWServerControllerBase: File Type */
USEFORM("UserSessionUnit.cpp", IWUserSession); /* TIWUserSessionBase: File Type */
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
           TIWStart::Execute(true);
        }
        catch (Exception &exception)
        {

        }
        return 0;
}
//---------------------------------------------------------------------------
