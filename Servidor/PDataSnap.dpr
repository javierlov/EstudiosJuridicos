program PDataSnap;

uses
  Forms,
  U_ServerDataSnap in 'U_ServerDataSnap.pas' {F_DataSnapServer},
  U_ServerModulo in 'U_ServerModulo.pas' {DSServerModule1: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_DataSnapServer, F_DataSnapServer);
  Application.CreateForm(TDSServerModule1, DSServerModule1);
  Application.Run;
end.
