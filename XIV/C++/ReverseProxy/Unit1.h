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
#include <IWCompLabel.hpp>
#include <IWControl.hpp>
#include <IWVCLBaseControl.hpp>
#include <IWCompMemo.hpp>

//---------------------------------------------------------------------------
class TIWForm1: public TIWAppForm
{
__published:	// IDE-managed Components
	TIWButton *IWButton1;
	TIWMemo *IWMemo1;
	void __fastcall IWAppFormRender(TObject *Sender);
	void __fastcall IWButton1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
