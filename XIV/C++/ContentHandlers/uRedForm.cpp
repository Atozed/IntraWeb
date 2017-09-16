//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uRedForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TRedForm::TRedForm(TComponent* Owner)
        : TIWAppForm(Owner)
{

}
//---------------------------------------------------------------------------

void __fastcall TRedForm::IWButton1Click(TObject *Sender)
{
  ReleaseAndRedirect("");
}
//---------------------------------------------------------------------------
