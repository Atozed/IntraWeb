//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "IWAppCache.hpp"
#include "IW.CacheStream.hpp"
#include "IW.Common.Systools.hpp"
#include "IW.Common.AppInfo.hpp"
#include "IWMimeTypes.hpp"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "IWCompGradButton"
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
void __fastcall TIWForm1::IWGradButton1Click(TObject *Sender)
{
  // get a new temp file name. This method only returns a file name, the file  is not created
  System::UnicodeString xFileName = TIWAppCache::NewTempFileName();
  UnicodeString xSource = TIWAppInfo::GetAppPath() + "sample.pdf";
  // copy a sample pdf file to our new cache file. We are just simulating a pdf file creation
  FileCopy(xSource, xFileName, true);
  // add the pdf file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  UnicodeString xURL = TIWAppCache::AddFileToCache(this, xFileName, TIWMimeTypes::GetAsString(mtPDF), ctOneTime);
  // open a new window with our PDF file
  WebApplication->NewWindow(xURL);
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWGradButton2Click(TObject *Sender)
{
  // get a new temp file name. This method only returns a file name, the file  is not created
  System::UnicodeString xFileName = TIWAppCache::NewTempFileName();
  // copy a sample image file to our new cache file. We are just simulating a dynamic image file creation
  UnicodeString xSource = TIWAppInfo::GetAppPath() + "web1.jpg";
  FileCopy(xSource, xFileName, true);
  // add the pdf file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  UnicodeString xURL = TIWAppCache::AddFileToCache(this, xFileName, TIWMimeTypes::GetAsString(mtJPG), ctOneTime);
  // open a new window with our PDF file
  WebApplication->NewWindow(xURL);
}

void __fastcall TIWForm1::SendPdfFileToURLWindow()
{
  // get a new temp file name. This method only returns a file name, the file  is not created
  System::UnicodeString xFileName = TIWAppCache::NewTempFileName();
  UnicodeString xSource = TIWAppInfo::GetAppPath() + "sample.pdf";
  // copy a sample pdf file to our new cache file. We are just simulating a pdf file creation
  FileCopy(xSource, xFileName, true);
  // add the pdf file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  UnicodeString xURL = TIWAppCache::AddFileToCache(this, xFileName, TIWMimeTypes::GetAsString(mtPDF), ctOneTime);
  // show the file in our URLWindow control
  IWURLWindow1->URI = xURL;
}
void __fastcall TIWForm1::SendPdfStreamToURLWindow()
{
  TFileStream *xFileStream = new TFileStream(TIWAppInfo::GetAppPath() + "sample.pdf", fmOpenRead);
  // add the pdf stream to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  UnicodeString xURL = TIWAppCache::StreamToCacheFile(this, xFileStream, TIWMimeTypes::GetAsString(mtPDF), ctOneTime);
  // open a new window with our PDF file
  IWURLWindow1->URI = xURL;
}

//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWGradButton3Click(TObject *Sender)
{
  SendPdfFileToURLWindow();
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWGradButton4AsyncClick(TObject *Sender, TStringList *EventParams)
{
  SendPdfFileToURLWindow();
}
//---------------------------------------------------------------------------
void __fastcall TIWForm1::IWGradButton5AsyncClick(TObject *Sender, TStringList *EventParams)
{
  SendPdfStreamToURLWindow();
}
//---------------------------------------------------------------------------
