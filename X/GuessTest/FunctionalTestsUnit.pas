unit FunctionalTestsUnit;

//Description:
//  This unit implements "functional" tests. It's not required to put them into
//  an unit of its own, we placed them here just for demonstration purposes.
//  For further information, please see the description of unit LayoutTestsUnit.pas

interface

uses
  Classes, SysUtils, TestFrameWork;

type
  TIWTestCase2 = class(TTestCase)
  published
    procedure TestSuccess;
    procedure TestPossibleFailure;
    procedure TestLowHighHints;
  end;

implementation

uses
  IWTestFramework, Main, IWBaseForm, IWApplication, math;


//This test checks if the requirement is met that a number from 1..100 should be
//be successful. In theory this test should be run multiple times as we treat
//the "business logic" of Guess as black box. We can not predict what random number
//it will pickup. So we have to "hammer" on it to see if it fails somewhen.
procedure TIWTestCase2.TestSuccess;
var
  i: integer;
begin
  with NewSession do try
   with MainForm as TformMain do begin
     i:=0;
     repeat
       inc(i);
       editGuess.Text := IntToStr(i);
       Submit(butnGuess);
     until Terminated or (i = 100);
     Check(Terminated,'Guess did not succeed on any number from 1..100.');
   end;
 finally
   Free;
 end;
end;


//This test should fail with a probability of 80% as we only test numbers from
//1..20. This is NOT a (valid) requirements test, its just to demonstrate how a
//failed test will look like.
procedure TIWTestCase2.TestPossibleFailure;
var
  i: integer;
begin
  with NewSession do try
   with MainForm as TformMain do begin
     i:=0;
     repeat
       inc(i);
       editGuess.Text := IntToStr(i);
       Submit(butnGuess);
     until Terminated or (i = 20);
     Check(Terminated,'Guess did not succeed on any number from 1..20.');
   end;
 finally
   Free;
 end;
end;

//This test checks if the "Number too high/low" hints are always correct. It tries
//to find the correct number by following these hints.
procedure TIWTestCase2.TestLowHighHints;
var
  LCount: integer;
  LNumber:integer;
  LLowBound: integer;
  LHighBound: integer;
begin
  with NewSession do try
   with MainForm as TformMain do begin
     LCount := 0;
     LNumber := 50;
     LLowBound := 0;
     LHighBound := 100;
     repeat
       inc(LCount);
       if pos('too high', lablResponse.caption) >0  then
         begin
         LHighbound := min(LNumber, LHighbound);
         LNumber := (LNumber - LLowBound) div 2;
         end
       else if pos('too low', lablResponse.caption) >0  then
         begin
         LLowBound := max(LNumber, LLowBound);
         LNumber := LNumber + ((LHighBound - LNumber) div 2);
         end;
       editGuess.Text := IntToStr(LNumber);
       Submit(butnGuess);
     until Terminated or (LCount = 100);
     Check(Terminated and (LCount<=100),'Guess did not succeed by following the low/high hints.');
   end;
 finally
   Free;
 end;
end;


function Suite: ITestSuite;
begin
  Result := TTestSuite.Create('Functional Tests');
  Result.addTest(TIWTestCase2.Create('TestSuccess'));
  Result.addTest(TIWTestCase2.Create('TestLowHighHints'));
  Result.addTest(TIWTestCase2.Create('TestPossibleFailure'));
end;

initialization
  RegisterTest('Guess Requirements', Suite);
end.