//---------------------------------------------------------------------------

#ifndef UserSessionUnitH
#define UserSessionUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <IWUserSessionBase.hpp>
#include <IWApplication.hpp>
#include <IWInit.hpp>
//---------------------------------------------------------------------------
class TIWUserSession : public TIWUserSessionBase
{
__published:	// IDE-managed Components
private:	// User declarations
public:		// User declarations
        __fastcall TIWUserSession(TComponent* Owner, TIWApplication* ASession);
};

extern TIWUserSession* UserSession();

#endif