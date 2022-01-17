unit dmFuncionario;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TUdmFuncionario = class(TDataModule)
    QryInsert: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UdmFuncionario: TUdmFuncionario;

implementation

uses
  dmConexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
