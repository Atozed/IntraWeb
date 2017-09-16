//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <IWAppForm.hpp>
#include <IWBaseControl.hpp>
#include <IWBaseHTMLControl.hpp>
#include <IWCompMemo.hpp>
#include <IWControl.hpp>
#include <IWVCLBaseControl.hpp>

//---------------------------------------------------------------------------
class TIWForm1: public TIWAppForm
{
__published:	// IDE-managed Components
	TIWMemo *IWMemo1;
	void __fastcall IWAppFormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
