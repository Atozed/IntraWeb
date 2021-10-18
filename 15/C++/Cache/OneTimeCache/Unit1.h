//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <IWAppForm.hpp>
#include "IWCompGradButton.hpp"
#include <IWBaseControl.hpp>
#include <IWBaseHTMLControl.hpp>
#include <IWCompLabel.hpp>
#include <IWCompMemo.hpp>
#include <IWControl.hpp>
#include <IWHTMLControls.hpp>
#include <IWVCLBaseControl.hpp>

//---------------------------------------------------------------------------
class TIWForm1: public TIWAppForm
{
__published:	// IDE-managed Components
	TIWMemo *IWMemo1;
	TIWLabel *IWLabel1;
	TIWGradButton *IWGradButton1;
	TIWGradButton *IWGradButton2;
	TIWURLWindow *IWURLWindow1;
	TIWGradButton *IWGradButton3;
	TIWGradButton *IWGradButton4;
	TIWGradButton *IWGradButton5;
	void __fastcall IWGradButton1Click(TObject *Sender);
	void __fastcall IWGradButton2Click(TObject *Sender);
	void __fastcall IWGradButton3Click(TObject *Sender);
	void __fastcall IWGradButton4AsyncClick(TObject *Sender, TStringList *EventParams);
	void __fastcall IWGradButton5AsyncClick(TObject *Sender, TStringList *EventParams);
private:	// User declarations
	void __fastcall SendPdfFileToURLWindow();
	void __fastcall SendPdfStreamToURLWindow();
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
