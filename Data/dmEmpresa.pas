unit dmEmpresa;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TUdmEmpresa = class(TDataModule)
    QryInsert: TSQLQuery;
    QrySelect: TSQLQuery;
    QryDelete: TSQLQuery;
    QryUpdate: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UdmEmpresa: TUdmEmpresa;

implementation

uses
  dmConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
