unit LayoutTestsUnit;

//Description:
//  This demo shows how VCL for the Web 8.0 integrates with DUnit. DUnit is a
//  framework for software testing.
//  For information about using DUnit please see the DUnit pages:
//    http://dunit.sourceforge.net/README.html
//    http://sourceforge.net/projects/dunit/
//
//  This unit implements "layout" tests. It checks if the requirements for the
//  Guess demo application are met. The requirements are those which the fictive
//  project manager of the Guess demo application had defined.
//
//  Unit FunctionalTestsUnit.pas checks the "functional" requirements.
//
//  A real world test suite should share the sources of the tested application. To
//  avoid dependencies in the demo folder, we just copied the sources of the Guess
//  stand alone demo to this test suite. This is NOT recommended though, it's for
//  demonstration purposes only.
//
//  Internally we have "real" test suites for most of the VCL for the Web demos ;-) 


interface

uses
  Classes, SysUtils, TestFrameWork;

type
  TIWTestCase1 = class(TTestCase)
  published
//  The following test cases perform a few simple tests which are basically
//  GUI layout requirements of the Guess application.
    procedure TestEdits;
    procedure TestLabels;
  end;

implementation

uses
  IWTestFramework, IWGlobal, Forms, Main;

procedure TIWTestCase1.TestEdits;
begin
  with NewSession do try
   with MainForm as TformMain do begin
     Check(editGuess.text = '', 'editGuess has an unexpected value!');
   end;
 finally
   Free;
 end;
end;

procedure TIWTestCase1.TestLabels;
begin
  with NewSession do try
   with MainForm as TformMain do begin
     Check(lablResponse.Caption = '', 'lablResponse has an unexpected value!');
     //referencing the tested variable in the message is informative, but it is
     //also dangerous for objects that might be nil.
     Check(lablGuessNo.Caption = 'Guess #1', 'lablGuessNo has an unexpected value! (' + lablGuessNo.Caption + ')');
   end;
 finally
   Free;
 end;
end;

//  This is an advanced technique of registering a test suite's test cases.
//  See the DUnit documentation for details.
function Suite: ITestSuite;
begin
  Result := TTestSuite.Create('Control and Layout Tests');
  Result.addTest(TIWTestCase1.Create('TestEdits'));
  Result.addTest(TIWTestCase1.Create('TestLabels'));
end;

initialization
  RegisterTest('Guess Requirements', Suite);
end.