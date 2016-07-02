unit U_ModuloCliente;

interface

uses
  SysUtils, Classes, DSServer, WideStrings, DbxDatasnap, DB, DBClient, SqlExpr,
  DSConnect;

type
  TModulo = class(TDSServerModule)
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    Clientes: TClientDataSet;
    DTClientes: TDataSource;
    Clientescodigo: TIntegerField;
    Clientesnombre: TStringField;
    Clientescedula: TStringField;
    Clientesdireccion: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo: TModulo;

implementation

{$R *.dfm}

end.