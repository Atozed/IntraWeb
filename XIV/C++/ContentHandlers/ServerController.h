//---------------------------------------------------------------------------

#ifndef ServerControllerH
#define ServerControllerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <IWServerControllerBase.hpp>
#include <IWApplication.hpp>
#include <IWInit.hpp>
#include <UTF8ContentParser.hpp>

#include "UserSessionUnit.h"

//---------------------------------------------------------------------------
class TIWServerController  : public TIWServerControllerBase
{
__published:	// IDE-managed Components

        void __fastcall IWServerControllerBaseNewSession(
           TIWApplication *ASession);
	void __fastcall IWServerControllerBaseConfig(TObject *Sender);

private:	// User declarations
public:		// User declarations
        __fastcall TIWServerController(TComponent* Owner);
	void __fastcall BeforeExecuteHandlerProc(System::TObject* Sender, bool &Continue);
};

//---------------------------------------------------------------------------
extern TIWServerController* IWServerController();
//---------------------------------------------------------------------------
#endif
