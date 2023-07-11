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
#include <IWCompButton.hpp>
#include <IWCompMemo.hpp>
#include <IWControl.hpp>
#include <IWVCLBaseControl.hpp>

//---------------------------------------------------------------------------
class TIWForm1: public TIWAppForm
{
__published:	// IDE-managed Components
	TIWButton *IWButton1;
	TIWMemo *IWMemo1;
	void __fastcall IWButton1AsyncClick(TObject *Sender, TStringList *EventParams);
	void __fastcall IWAppFormCreate(TObject *Sender);
	void __fastcall IWAppFormResize(TObject *Sender);
	void __fastcall IWAppFormRender(TObject *Sender);

private:	// User declarations
        void __fastcall GetIWBrowserInfo(TStringList *EventParams);
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
