// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FastMM4Messages.pas' rev: 22.00

#ifndef Fastmm4messagesHPP
#define Fastmm4messagesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fastmm4messages
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
#define FullDebugModeLibraryName32Bit L"FastMM_FullDebugMode.dll"
#define FullDebugModeLibraryName64Bit L"FastMM_FullDebugMode64.dll"
#define LogFileExtension L"_MemoryManager_EventLog.txt\u0000"
#define CRLF L"\r\n"
#define EventSeparator L"--------------------------------"
#define UnknownClassNameMsg L"Unknown"
#define MemoryDumpMsg L"\r\n\r\nCurrent memory dump of 256 bytes starting at point"\
	L"er address "
#define BlockScanLogHeader L"Allocated block logged by LogAllocatedBlocksToFile. The si"\
	L"ze is: "
#define ErrorMsgHeader L"FastMM has detected an error during a "
#define GetMemMsg L"GetMem"
#define FreeMemMsg L"FreeMem"
#define ReallocMemMsg L"ReallocMem"
#define BlockCheckMsg L"free block scan"
#define OperationMsg L" operation. "
#define BlockHeaderCorruptedMsg L"The block header has been corrupted. "
#define BlockFooterCorruptedMsg L"The block footer has been corrupted. "
#define FreeModifiedErrorMsg L"FastMM detected that a block has been modified after being"\
	L" freed. "
#define FreeModifiedDetailMsg L"\r\n\r\nModified byte offsets (and lengths): "
#define DoubleFreeErrorMsg L"An attempt has been made to free/reallocate an unallocated"\
	L" block."
#define WrongMMFreeErrorMsg L"An attempt has been made to free/reallocate a block that w"\
	L"as allocated through a different FastMM instance. Check yo"\
	L"ur memory manager sharing settings."
#define PreviousBlockSizeMsg L"\r\n\r\nThe previous block size was: "
#define CurrentBlockSizeMsg L"\r\n\r\nThe block size is: "
#define PreviousObjectClassMsg L"\r\n\r\nThe block was previously used for an object of cla"\
	L"ss: "
#define CurrentObjectClassMsg L"\r\n\r\nThe block is currently used for an object of class"\
	L": "
#define PreviousAllocationGroupMsg L"\r\n\r\nThe allocation group was: "
#define PreviousAllocationNumberMsg L"\r\n\r\nThe allocation number was: "
#define CurrentAllocationGroupMsg L"\r\n\r\nThe allocation group is: "
#define CurrentAllocationNumberMsg L"\r\n\r\nThe allocation number is: "
#define BlockErrorMsgTitle L"Memory Error Detected"
#define VirtualMethodErrorHeader L"FastMM has detected an attempt to call a virtual method on"\
	L" a freed object. An access violation will now be raised in"\
	L" order to abort the current operation."
#define InterfaceErrorHeader L"FastMM has detected an attempt to use an interface of a fr"\
	L"eed object. An access violation will now be raised in orde"\
	L"r to abort the current operation."
#define BlockHeaderCorruptedNoHistoryMsg L" Unfortunately the block header has been corrupted so no h"\
	L"istory is available."
#define FreedObjectClassMsg L"\r\n\r\nFreed object class: "
#define VirtualMethodName L"\r\n\r\nVirtual method: "
#define VirtualMethodOffset L"Offset +"
#define VirtualMethodAddress L"\r\n\r\nVirtual method address: "
#define CurrentThreadIDMsg L"\r\n\r\nThe current thread ID is 0x"
#define CurrentStackTraceMsg L", and the stack trace (return addresses) leading to this e"\
	L"rror is:"
#define ThreadIDPrevAllocMsg L"\r\n\r\nThis block was previously allocated by thread 0x"
#define ThreadIDAtAllocMsg L"\r\n\r\nThis block was allocated by thread 0x"
#define ThreadIDAtFreeMsg L"\r\n\r\nThe block was previously freed by thread 0x"
#define ThreadIDAtObjectAllocMsg L"\r\n\r\nThe object was allocated by thread 0x"
#define ThreadIDAtObjectFreeMsg L"\r\n\r\nThe object was subsequently freed by thread 0x"
#define StackTraceMsg L", and the stack trace (return addresses) at the time was:"
#define AlreadyInstalledMsg L"FastMM4 is already installed."
#define AlreadyInstalledTitle L"Already installed."
#define OtherMMInstalledMsg L"FastMM4 cannot be installed since another third party memo"\
	L"ry manager has already installed itself.\r\nIf you want to"\
	L" use FastMM4, please make sure that FastMM4.pas is the ver"\
	L"y first unit in the \"uses\"\r\nsection of your project's "\
	L".dpr file."
#define OtherMMInstalledTitle L"Cannot install FastMM4 - Another memory manager is already"\
	L" installed"
#define MemoryAllocatedMsg L"FastMM4 cannot install since memory has already been alloc"\
	L"ated through the default memory manager.\r\nFastMM4.pas MU"\
	L"ST be the first unit in your project's .dpr file, otherwis"\
	L"e memory may be allocated\r\nthrough the default memory ma"\
	L"nager before FastMM4 gains control. \r\n\r\nIf you are usi"\
	L"ng an exception trapper like MadExcept (or any tool that m"\
	L"odifies the unit initialization order),\r\ngo into its con"\
	L"figuration page and ensure that the FastMM4.pas unit is in"\
	L"itialized before any other unit."
#define MemoryAllocatedTitle L"Cannot install FastMM4 - Memory has already been allocated"
#define LeakLogHeader L"A memory block has been leaked. The size is: "
#define LeakMessageHeader L"This application has leaked memory. "
#define SmallLeakDetail L"The small block leaks are (excluding expected leaks regist"\
	L"ered by pointer):\r\n"
#define LargeLeakDetail L"The sizes of leaked medium and large blocks are (excluding"\
	L" expected leaks registered by pointer): "
#define BytesMessage L" bytes: "
#define AnsiStringBlockMessage L"AnsiString"
#define UnicodeStringBlockMessage L"UnicodeString"
#define LeakMessageFooter L"\r\n\r\nNote: Memory leak detail is logged to a text file "\
	L"in the same folder as this application. To disable this me"\
	L"mory leak check, undefine \"EnableMemoryLeakReporting\".\r"\
	L"\n\u0000"
#define LeakMessageTitle L"Memory Leak Detected"
#define InvalidOperationTitle L"MM Operation after uninstall."
#define InvalidGetMemMsg L"FastMM has detected a GetMem call after FastMM was uninsta"\
	L"lled."
#define InvalidFreeMemMsg L"FastMM has detected a FreeMem call after FastMM was uninst"\
	L"alled."
#define InvalidReallocMemMsg L"FastMM has detected a ReallocMem call after FastMM was uni"\
	L"nstalled."
#define InvalidAllocMemMsg L"FastMM has detected an AllocMem call after FastMM was unin"\
	L"stalled."

}	/* namespace Fastmm4messages */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Fastmm4messages;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fastmm4messagesHPP
