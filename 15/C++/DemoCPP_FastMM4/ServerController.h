//---------------------------------------------------------------------------

#ifndef ServerControllerH
#define ServerControllerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <IWServerControllerBase.hpp>
#include <IWDataModulePool.hpp>
#include <IWApplication.hpp>
#include <IWInit.hpp>
#include "UserSessionUnit.h"
#include "DatamoduleUnit.h"

//---------------------------------------------------------------------------
class TIWServerController  : public TIWServerControllerBase
{
__published:	// IDE-managed Components
        TIWDataModulePool *Pool;

        void __fastcall IWServerControllerBaseNewSession(
           TIWApplication *ASession);

        void __fastcall IWServerControllerBaseCreate(TObject *Sender);
        void __fastcall PoolCreateDataModule(TDataModule *&ADataModule);
        void __fastcall PoolFreeDataModule(TDataModule *&ADataModule);
private:	// User declarations
public:		// User declarations
        __fastcall TIWServerController(TComponent* Owner);
};

extern void UnlockDataModule(TDataModule1* ADataModule);
extern TDataModule1* LockDataModule();

//---------------------------------------------------------------------------
extern TIWServerController* IWServerController();
//---------------------------------------------------------------------------
#endif
