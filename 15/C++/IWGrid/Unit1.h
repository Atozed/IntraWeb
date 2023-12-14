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
#include <IWCompGrids.hpp>
#include <IWControl.hpp>
#include <IWVCLBaseControl.hpp>
#include <IWCompButton.hpp>

//---------------------------------------------------------------------------
class TIWForm1: public TIWAppForm
{
__published:	// IDE-managed Components
	TIWGrid *tablGrid;
	void __fastcall IWAppFormCreate(TObject *Sender);
	void __fastcall deleteBtnClick(TObject *Sender);
	void __fastcall tablGridRenderCell(TIWGridCell *ACell, const int ARow, const int AColumn);
    double __fastcall Total();
	double __fastcall FromCurrency(const UnicodeString& currencyStr);
	void __fastcall tablGridCellClick(TObject *ASender, const int ARow, const int AColumn);


private:	// User declarations
public:		// User declarations
        __fastcall TIWForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
#endif
