unit FormMMStatusU;
//This unit is for demo purposes to show the currently used memory

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  RecyclerMM, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompListbox, Graphics, Windows, IWCompButton;

type
  TFormMMStatus = class(TIWAppForm)
    LVStats: TIWListbox;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;



implementation
{$R *.dfm}


function SizeToString(size: Int64; const unitStr: string): string;
begin
  if size < 1024 * 1024 then
    Result := Format('%.1f k', [size * (1 / 1024)])
  else if size < 1024 * 1024 * 1024 then
    Result := Format('%.1f M', [size * (1 / (1024 * 1024))])
  else Result := Format('%.1f G', [size * (1 / (1024 * 1024 * 1024))]);
  Result := Result + unitStr;
end;


procedure TFormMMStatus.IWAppFormRender(Sender: TObject);
  procedure AddSpacer(const name: string);
  begin
    LVStats.Items.Add(name);
  end;

  procedure AddSizeStat(const name: string; value: Int64);
  begin
    LVStats.Items.Add(name + ' : ' + SizeToString(value, 'B'))
  end;

  procedure AddCountStat(const name: string; value: Cardinal);
  begin
    LVStats.Items.Add(name + ' : ' + IntToStr(value));
  end;

  procedure AddBigCountStat(const name: string; value: Int64);
  begin
    LVStats.Items.Add(name + ' : ' + SizeToString(value, ''));
  end;

var
  i: Integer;
  smbStat: PRMMSMBStat;
  LSnapshot: TRMMUsageSnapShot;

begin
  LSnapshot := RMMUsageSnapShot;
  // Add summary stats
  LVStats.Items.Clear;
  AddSpacer('RecyclerMM Stats');
  AddSizeStat('Total Virtual Allocated', LSnapshot.TotalVirtualAllocated);
  AddSizeStat('User Allocated Size', LSnapshot.AllocatedUserSize);
  AddCountStat('Nb Allocated Blocks', LSnapshot.AllocatedBlocks);
  AddSpacer('VM Address Space');
  AddSizeStat('Total VM Space', LSnapshot.TotalVMSpace);
  AddSizeStat('System Allocated', LSnapshot.SystemAllocatedVM);
  AddSizeStat('System Reserved', LSnapshot.SystemReservedVM);
  AddSizeStat('Largest Contiguous Free', LSnapshot.LargestFreeVM);
  if LSnapshot.BenchRGetMem.NbCalls > 0 then begin
    AddSpacer('Usage');
    AddBigCountStat('RGetMem Calls', LSnapshot.BenchRGetMem.NbCalls);
    AddBigCountStat('RReallocMem Calls', LSnapshot.BenchRReallocMem.NbCalls);
    AddBigCountStat('RFreeMem Calls', LSnapshot.BenchRFreeMem.NbCalls);
    AddBigCountStat('RGetMem CPU Ticks', LSnapshot.BenchRGetMem.TotalTime);
    AddBigCountStat('RReallocMem CPU Ticks', LSnapshot.BenchRReallocMem.TotalTime);
    AddBigCountStat('RFreeMem CPU Ticks', LSnapshot.BenchRFreeMem.TotalTime);
  end;
  LVStats.ItemIndex:=0;
end;

procedure TFormMMStatus.IWButton1Click(Sender: TObject);
begin
  //
end;

procedure TFormMMStatus.IWButton2Click(Sender: TObject);
begin
  release
end;

end.

