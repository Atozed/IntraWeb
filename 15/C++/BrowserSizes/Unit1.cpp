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
void __fastcall TIWForm1::IWButton1AsyncClick(TObject *Sender, TStringList *EventParams)

{
	String js = "var s = IW.browser.toString(),"
                "jQW = $(window).width(),"
                "jQH = $(window).height();"
                "ajaxCall('GetIWBrowserInfo', 'iwbrowserinfo='+s+'&jQW='+jQW+'&jQH='+jQH);";
    WebApplication->ExecuteJS(js);
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWAppFormCreate(TObject *Sender)
{
	WebApplication->RegisterCallBack("GetIWBrowserInfo", GetIWBrowserInfo);

    IWMemo1->Lines->Clear();
    IWMemo1->Lines->Add("Application start up dimensions:");
    IWMemo1->Lines->Add("WebApplication.FormWidth = " + IntToStr(WebApplication->FormWidth));
    IWMemo1->Lines->Add("WebApplication.FormHeight = " + IntToStr(WebApplication->FormHeight));
    IWMemo1->Lines->Add("");
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWAppFormResize(TObject *Sender)
{
	IWMemo1->Lines->Add("OnResize event triggered:");
	IWMemo1->Lines->Add("WebApplication.FormWidth = " + IntToStr(WebApplication->FormWidth));
	IWMemo1->Lines->Add("WebApplication.FormHeight = " + IntToStr(WebApplication->FormHeight));
	IWMemo1->Lines->Add("Form.Width = " + IntToStr(Width));
	IWMemo1->Lines->Add("Form.Height = " + IntToStr(Height));
	IWMemo1->Lines->Add("");
}

void __fastcall TIWForm1::GetIWBrowserInfo(TStringList *EventParams)
{
    IWMemo1->Lines->Add("Retrieving IW.browser.toString():");
    IWMemo1->Lines->Add(EventParams->Values["iwbrowserinfo"]);
    IWMemo1->Lines->Add("");
    IWMemo1->Lines->Add("Retrieving jQuery reported sizes:");
    IWMemo1->Lines->Add("Width = " + EventParams->Values["jQW"]);
    IWMemo1->Lines->Add("Height = " + EventParams->Values["jQH"]);
}

//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWAppFormRender(TObject *Sender)
{
	IWMemo1->Lines->Add("OnRender event triggered:");
	IWMemo1->Lines->Add("WebApplication.FormWidth = " + IntToStr(WebApplication->FormWidth));
	IWMemo1->Lines->Add("WebApplication.FormHeight = " + IntToStr(WebApplication->FormHeight));
	IWMemo1->Lines->Add("Form.Width = " + IntToStr(Width));
	IWMemo1->Lines->Add("Form.Height = " + IntToStr(Height));
	IWMemo1->Lines->Add("");
}
//---------------------------------------------------------------------------

