unit UAppController;

interface

Uses Data.SqlExpr, Vcl.Forms,system.sysutils, System.IniFiles;

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

    conexao.VendorLib := 'fbclient.dll';
    conexao.Params.Add('User_Name=SYSDBA');
    conexao.Params.Add('Password=masterkey');
    conexao.Params.Add('Database=localhost:'+ExtractFilePath(Application.ExeName)+'\DADOS.FDB');

    conexao.connected := true;

    result := conexao.connected;

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
