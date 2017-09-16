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
	TIWButton *IWButton2;
	TIWButton *IWButton3;
	TIWMemo *IWMemo1;
	void __fastcall IWButton3Click(TObject *Sender);
	void __fastcall IWButton2Click(TObject *Sender);
	void __fastcall IWButton1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
