//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "uBlueForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TBlueForm::TBlueForm(TComponent* Owner)
        : TIWAppForm(Owner)
{

}
//---------------------------------------------------------------------------

void __fastcall TBlueForm::IWButton1Click(TObject *Sender)
{
  ReleaseAndRedirect("");
}
//---------------------------------------------------------------------------

