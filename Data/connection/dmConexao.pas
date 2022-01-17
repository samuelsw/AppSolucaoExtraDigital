unit dmConexao;

interface

uses
  System.SysUtils, System.Classes,  Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd,UAppController, Data.DB, Vcl.Dialogs, Vcl.Forms;

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

  try
    if not AppController.ConectDB then
    begin
      showmessage('Banco de dados não encontrado na pasta da aplicação.');
      Application.terminate;
    end;

  finally
    AppController.free;
  end;

end;

end.
