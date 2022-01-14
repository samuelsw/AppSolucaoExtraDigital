unit UAppController;

interface

Uses Data.SqlExpr, Vcl.Forms,system.sysutils;

type
  TAppConnection = class
     conexao : TSQLConnection;

  private

  public
    class function new(appconexao :TSQLConnection): TAppConnection;
    function ConectDB():boolean;
    procedure OpenConfig();
  end;

implementation

uses
  UConfig;

{ TAppController }

function TAppConnection.ConectDB: boolean;
begin
  result := false;

  try
    with conexao do
    begin
      VendorLib := 'fbclient.dll';
      Params.Add('User_Name=SYSDBA');
      Params.Add('Password=masterkey');
      Params.Add('Database=localhost:'+ExtractFilePath(Application.ExeName)+'\DADOS.FDB');
      connected := true;

      result := connected;
    end;
  except

  end;
end;

class function TAppConnection.new(appconexao :TSQLConnection): TAppConnection;
begin
  result         := TAppConnection.Create();
  result.conexao := appconexao;
end;

procedure TAppConnection.OpenConfig;
begin
  Application.createform(TFrmConfig,FrmConfig);
  FrmConfig.showmodal;
end;

end.
