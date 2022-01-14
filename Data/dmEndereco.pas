unit dmEndereco;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,dmConexao;

type
  TUdmEndereco = class(TDataModule)
    QrySelect: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UdmEndereco: TUdmEndereco;

implementation


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
