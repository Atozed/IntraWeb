unit EAppIntraWebSimple;

interface

uses
  SysUtils, Windows,
  IWServerControllerBase, IWApplication, IW.HTTP.Request;

(*

Simplified example of how to use the new exception callback infrastructure in IntraWeb.
This will be available from IntraWeb 14.1.0 and up.

NOTE: Atozed will not endorse runtime patching (hooking) of IntraWeb methods/functions, because this
technique always modifies IntraWeb application behaviour in an unpredictable way.

1) Create a method with same signature as TIWExceptionCallbackFunction
2) Call TIWServerControllerBase.RegisterExceptionCallback() passing this method as parameter
3) All exceptions generated in IntraWeb application will call your callback method, passing a
   TIWExceptionCallbackInfo record as a parameter

New/modified types declared in IWServerControllerBase.pas:

type
  TIWExceptionCallbackInfo = record
    Sender: TObject;
    SourceException: Exception;
    Request: THttpRequest;
  end;

  TIWExceptionCallbackProc = procedure(aExceptionInfo: TIWExceptionCallbackInfo; out Handled: Boolean) of object;

  TIWServerControllerBase = class(TIWDataModule)
  public
    class procedure RegisterExceptionCallback(aCallback: TIWExceptionCallbackProc);
    class procedure UnregisterExceptionCallback(aCallback: TIWExceptionCallbackProc);
  end;

*)

type
  TIWCallbackHandler = class
  public
    procedure ExceptionCallbackHandler(aExceptionInfo: TIWExceptionCallbackInfo; out Handled: Boolean);
  end;

implementation

var
  IWCallbackHandler: TIWCallbackHandler;

{ TIWCallbackHandler }

procedure TIWCallbackHandler.ExceptionCallbackHandler(aExceptionInfo: TIWExceptionCallbackInfo; out Handled: Boolean);
begin
  // aExceptionInfo.Sender -> TIWApplication instance or nil
  // aExceptionInfo.SourceException -> Exception object
  // aExceptionInfo.Request -> THttpRequest instance associated with the exception
  // Handled := can be set to True or False. Some exceptions will not be displayed to the user when Handled = True
  OutputDebugString(PChar('Exception message was: ' + aExceptionInfo.SourceException.Message));
end;

initialization
  IWCallbackHandler := TIWCallbackHandler.Create;
  // Register the callback method
  TIWServerControllerBase.RegisterExceptionCallback(IWCallbackHandler.ExceptionCallbackHandler);

finalization
  // it is not necessary to unregister it. IntraWeb will do the proper clean up as soon as ServerController.Destroy() is executed
  // However, the application/framework is allowed to unregister it, if desired
  TIWServerControllerBase.UnregisterExceptionCallback(IWCallbackHandler.ExceptionCallbackHandler);
  IWCallbackHandler.Free;

end.
