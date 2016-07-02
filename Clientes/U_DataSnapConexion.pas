// 
// Created by the DataSnap proxy generator.
// 

unit U_DataSnapConexion;

interface

uses DBXCommon, Classes, SysUtils, DB, SqlExpr, DBXDBReaders;

type
  TDSServerModule1Client = class
  private
    FDBXConnection: TDBXConnection;
    FInstanceOwner: Boolean;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
  end;

implementation


constructor TDSServerModule1Client.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
FInstanceOwner := True;
end;


constructor TDSServerModule1Client.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create;
  if ADBXConnection = nil then
    raise EInvalidOperation.Create('Connection cannot be nil.  Make sure the connection has been opened.');
  FDBXConnection := ADBXConnection;
FInstanceOwner := AInstanceOwner;
end;


destructor TDSServerModule1Client.Destroy;
begin
  inherited;
end;

end.
