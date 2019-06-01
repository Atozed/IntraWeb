// CodeGear C++Builder
// Copyright (c) 1995, 2010 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FastMM4LockFreeStack.pas' rev: 22.00

#ifndef Fastmm4lockfreestackHPP
#define Fastmm4lockfreestackHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fastmm4lockfreestack
{
//-- type declarations -------------------------------------------------------
struct TReferencedPtr;
typedef TReferencedPtr *PReferencedPtr;

struct DECLSPEC_DRECORD TReferencedPtr
{
	
public:
	void *PData;
	int Reference;
};


struct TLinkedData;
typedef TLinkedData *PLinkedData;

#pragma pack(push,1)
struct DECLSPEC_DRECORD TLinkedData
{
	
private:
	struct DECLSPEC_DRECORD _TLinkedData__1
	{
		
	};
	
	
	
public:
	TLinkedData *Next;
	_TLinkedData__1 Data;
};
#pragma pack(pop)


struct DECLSPEC_DRECORD TLFStack
{
	
private:
	void *FDataBuffer;
	int FElementSize;
	int FNumElements;
	TReferencedPtr *FPublicChainP;
	TReferencedPtr *FRecycleChainP;
	static bool obsIsInitialized;
	static int obsTaskPopLoops;
	static int obsTaskPushLoops;
	static PLinkedData __fastcall PopLink(TReferencedPtr &chain);
	static void __fastcall PushLink(const PLinkedData link, TReferencedPtr &chain);
	void __fastcall MeasureExecutionTimes(void);
	
public:
	void __fastcall Empty(void);
	void __fastcall Initialize(int numElements, int elementSize);
	void __fastcall Finalize(void);
	bool __fastcall IsEmpty(void);
	bool __fastcall IsFull(void);
	bool __fastcall Pop(void *value);
	bool __fastcall Push(const void *value);
	__property int ElementSize = {read=FElementSize};
	__property int NumElements = {read=FNumElements};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fastmm4lockfreestack */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE)
using namespace Fastmm4lockfreestack;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fastmm4lockfreestackHPP
