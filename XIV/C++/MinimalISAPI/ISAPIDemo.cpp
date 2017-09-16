//---------------------------------------------------------------------------
#include <IWRtlFix.hpp>
#include <ComObj.hpp>
#include <IWInitISAPI.hpp>
#include <Winapi.Isapi2.hpp>

#pragma hdrstop

USEFORM("Unit1.cpp", IWForm1); /* TIWAppForm: File Type */
USEFORM("ServerController.cpp", IWServerController); /* TIWServerControllerBase: File Type */
USEFORM("UserSessionUnit.cpp", IWUserSession); /* TIWUserSessionBase: File Type */
//---------------------------------------------------------------------------
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
  try {
    switch (reason) {
      case DLL_PROCESS_ATTACH: {
        CoInitFlags = COINIT_MULTITHREADED;
        IWRun();
        break;
      }
    }

  }
  catch (Exception &exception)
  {
  }
  return 1;
}
//---------------------------------------------------------------------------
extern "C"
{
  BOOL __declspec(dllexport) WINAPI GetExtensionVersion(Isapi2::THSE_VERSION_INFO &Ver)
  {
	return Iwinitisapi::GetExtensionVersion(Ver);
  }
  //---------------------------------------------------------------------------
  unsigned __declspec(dllexport) WINAPI HttpExtensionProc(Isapi2::TEXTENSION_CONTROL_BLOCK &ECB)
  {
	return Iwinitisapi::HttpExtensionProc(ECB);
  }
  //---------------------------------------------------------------------------
  BOOL __declspec(dllexport) WINAPI TerminateExtension(int dwFlags)
  {
	return Iwinitisapi::TerminateExtension(dwFlags);
  }
}

