//---------------------------------------------------------------------------

#include <vcl.h>
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
void __fastcall TIWForm1::IWButton3Click(TObject *Sender)
{
  WebApplication->GoToURL("/blueform.html");
}
//---------------------------------------------------------------------------

void __fastcall TIWForm1::IWButton2Click(TObject *Sender)
{
  WebApplication->GoToURL("/redform.html");
}
//---------------------------------------------------------------------------

void __fastcall TIWForm1::IWButton1Click(TObject *Sender)
{
  WebApplication->GoToURL("/mydoc.html");
}
//---------------------------------------------------------------------------

