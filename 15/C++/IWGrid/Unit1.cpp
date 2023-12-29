//---------------------------------------------------------------------------

#include <vcl.h>
#include <math.h>
#include <IWColor.hpp>
#include <IW.Common.Strings.hpp>

#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TIWForm1::TIWForm1(TComponent* Owner)
        : TIWAppForm(Owner)
{

}
//---------------------------------------------------------------------------

void setAsMainForm() {
  TIWForm1::SetAsMainForm();
 }
#pragma startup setAsMainForm
void __fastcall TIWForm1::IWAppFormCreate(TObject *Sender)
{
    int i;
    Double LAmount;
    TStringList *LFirstNames = new TStringList();
    TStringList *LLastNames = new TStringList();
	TIWGridCell *CurrentCell;
	try
    {
        LLastNames->Add("Smith");
        LLastNames->Add("Green");
        LLastNames->Add("Jones");
        LLastNames->Add("Wagner");
        LLastNames->Add("Black");
        LLastNames->Add("Donner");
        LLastNames->Add("Bush");

        LFirstNames->Add("John");
        LFirstNames->Add("Mary");
        LFirstNames->Add("Elena");
        LFirstNames->Add("Nancy");
        LFirstNames->Add("James");
        LFirstNames->Add("George");
        LFirstNames->Add("Daryl");
        LFirstNames->Add("Deborah");
        LFirstNames->Add("Erik");
        LFirstNames->Add("Leon");
        LFirstNames->Add("Bill");
        LFirstNames->Add("Dan");

        for (i = 1; i <= tablGrid->RowCount - 2; ++i)
        {
            CurrentCell = tablGrid->Cell[i][0];
            CurrentCell->Clickable = true;
            CurrentCell->Text = "Info";

            CurrentCell = tablGrid->Cell[i][1];
            CurrentCell->Text = LFirstNames->Strings[Random(LFirstNames->Count)] + " " + LLastNames->Strings[Random(LLastNames->Count)];

            CurrentCell = tablGrid->Cell[i][2];
            CurrentCell->Text = IntToStr(Random(12) + 1) + "/" + IntToStr(Random(29) + 1) + "/" + IntToStr(Random(3) + 1999);

            CurrentCell = tablGrid->Cell[i][3];
            CurrentCell->Alignment = taRightJustify;
            LAmount = Random() * 200;
            if (Random(4) == 0)
            {
                LAmount = -LAmount;
			}
			CurrentCell->Text = Format((UnicodeString)"%m", ARRAYOFCONST((LAmount)));

			CurrentCell = tablGrid->Cell[i][4];
			CurrentCell->Control = new TIWButton(this);
            dynamic_cast<TIWButton*>(CurrentCell->Control)->Caption = "Delete";
            dynamic_cast<TIWButton*>(CurrentCell->Control)->Confirmation = "Delete this row?";
            dynamic_cast<TIWButton*>(CurrentCell->Control)->OnClick = deleteBtnClick;
        }

        CurrentCell = tablGrid->Cell[tablGrid->RowCount - 1][3];
        CurrentCell->Alignment = taRightJustify;
        CurrentCell->Text = "0";
        CurrentCell->Font->Style = TFontStyles() << fsBold;
    }
    __finally
    {
        delete LFirstNames;
        delete LLastNames;
    }
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::deleteBtnClick(TObject *Sender)
{
	tablGrid->DeleteRow(dynamic_cast<TComponent*>(Sender)->Tag);
}

double __fastcall TIWForm1::FromCurrency(const UnicodeString& currencyStr)
{
	UnicodeString curSymbol = FormatSettings.CurrencyString;
	UnicodeString s = currencyStr;
	try
	{
		s = IWTextReplace(s, curSymbol, "");
        return StrToFloat(s);
    }
    catch (Exception& e)
    {
		return 0;
    }
}

double __fastcall TIWForm1::Total()
{
    double result = 0;
    for (int i = 1; i <= tablGrid->RowCount - 2; ++i)
    {
		result += FromCurrency(tablGrid->Cell[i][3]->Text);
    }
    return result;
}

//---------------------------------------------------------------------------
void __fastcall TIWForm1::tablGridRenderCell(TIWGridCell *ACell, const int ARow, const int AColumn)
{
    double LTotal;

    ACell->Alignment = taLeftJustify; // Default alignment

    // Title Row
    if (ARow == 0)
    {
        ACell->Alignment = taCenter;
        ACell->BGColor = clBlue;
        ACell->Font->Style = TFontStyles() << fsBold;
    }
    // Total Row
    else if (ARow == tablGrid->RowCount - 1)
    {
        LTotal = Total();
        if (LTotal < 0)
        {
            ACell->Font->Color = clRed;
        }
        else
        {
            ACell->Font->Color = clBlue;
        }
        ACell->Text = Format((UnicodeString)"%m", ARRAYOFCONST((LTotal)));
    }
    else
    {
        // Alternate Row Colors
        if (ARow % 2 == 1)
        {
            ACell->BGColor = clLtGray;
        }
        else
        {
			ACell->BGColor = Iwcolor::clNone;
        }

        // Mark negative values as red
        if (AColumn == 3)
        {
            if (FromCurrency(ACell->Text) < 0)
            {
                ACell->Font->Color = clRed;
            }
        }

        // Set tags here for renumbering during deletion
        if (AColumn == 4)
        {
            dynamic_cast<TIWButton*>(ACell->Control)->Tag = ARow;
        }
    }
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::tablGridCellClick(TObject *ASender, const int ARow, const int AColumn)

{
  WebApplication->ShowMessage(tablGrid->Cell[ARow][1]->Text + " has a balance of " + tablGrid->Cell[ARow][3]->Text);
}
//---------------------------------------------------------------------------
