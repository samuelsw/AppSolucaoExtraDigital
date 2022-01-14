unit dmConexao;

interface

uses
  System.SysUtils, System.Classes,  Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd,UAppController, Data.DB, Vcl.Dialogs;

type
  TUdmConexao = class(TDataModule)
    SqlConnection : TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

    var AppController : TAppConnection;

  public
    { Public declarations }
  end;

var
  UdmConexao: TUdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TUdmConexao.DataModuleCreate(Sender: TObject);
var sCaminhoBD : String;
begin
  AppController := TAppConnection.new(SqlConnection);

  if not AppController.ConectDB then
  begin
    showmessage('Não foi possível conectar ao banco de dados');
    AppController.OpenConfig();
  end;

end;

end.
