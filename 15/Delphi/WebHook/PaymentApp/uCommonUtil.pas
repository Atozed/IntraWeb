unit uCommonUtil;

interface

uses
  Classes, SysUtils, IW.HTTP.ClientBase, IWJsonDataObjects;

function CreateHttpClient: TIWHttpClientBase;

function GetResponseFieldAsString(aJson: TJsonObject; const aName: string): string;
function GetResponseFieldAsFloat(aJson: TJsonObject; const aName: string): Double;
function GetRequestFieldAsString(aJson: TJsonObject; const aName: string): string;
function GetRequestFieldAsFloat(aJson: TJsonObject; const aName: string): Double;

implementation

function CreateHttpClient: TIWHttpClientBase;
begin
  Result := TIWHttpClientBase.CreateClient(nil);
  Result.ConnectTimeout := 5000;
  Result.ReadTimeout := 5000;
end;

function GetFieldAsString(aJson: TJsonObject; const aName, aReqResp: string): string;
begin
  if not aJson.Contains(aName) then
    raise Exception.Create(aName + ' field not found in the ' + aReqResp);

  Result := Trim(aJson.S[aName]);
  if Result = '' then
    raise Exception.Create(aName + ' field cannot be empty');
end;

function GetFieldAsFloat(aJson: TJsonObject; const aName, aReqResp: string): Double;
begin
  if not aJson.Contains(aName) then
    raise Exception.Create(aName + ' field not found in the ' + aReqResp);

  Result := aJson.F[aName];
  if Result <= 0 then
    raise Exception.Create(aName + ' field is not valid');
end;

function GetResponseFieldAsString(aJson: TJsonObject; const aName: string): string;
begin
  Result := GetFieldAsString(aJson, aName, 'response');
end;

function GetResponseFieldAsFloat(aJson: TJsonObject; const aName: string): Double;
begin
  Result := GetFieldAsFloat(aJson, aName, 'response');
end;

function GetRequestFieldAsString(aJson: TJsonObject; const aName: string): string;
begin
  Result := GetFieldAsString(aJson, aName, 'request');
end;

function GetRequestFieldAsFloat(aJson: TJsonObject; const aName: string): Double;
begin
  Result := GetFieldAsFloat(aJson, aName, 'request');
end;

end.
