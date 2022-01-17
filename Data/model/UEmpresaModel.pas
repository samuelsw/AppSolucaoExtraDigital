unit UEmpresaModel;

interface

type
  TEmpresa =  class

  private
    FIdEmp        :Integer;
    FNEmpresa     : string;
    FCNPJ         : String;
    FInscricao    : string;
    FAtivo        : string;
    FDataCadastro : TDateTime;
    FDataAbertura : TDateTime;
    FTelComercial : string;
    FTelCelular   : string;
    FTxObs        : integer ;
    FEmail        : string;
    FExluido      : string;
    FDataExclusao : TDateTime;

    {$REGION 'get/set'}
    function GetIdEmp        :Integer;
    function GetNEmpresa     :string;
    function getCNPJ         :string;
    function GetInscricao    :string;
    function GetAtivo        :string;
    function GetDataCadastro :TDateTime;
    function GetTelComercial :string;
    function GetTelCelular   :string;
    function GetTxObs        :integer;
    function GetEmail        :string;
    function GetExluido      :string;
    function GetDataExclusao :TDateTime;
    function GetDataAbertura :TDateTime;


    procedure SetAtivo(const Value: string);
    procedure SetCNPJ(const Value: String);
    procedure SetDataCadastro(const Value: TDateTime);
    procedure SetDataExclusao(const Value: TDateTime);
    procedure SetEmail(const Value: string);
    procedure SetExluido(const Value: string);
    procedure setIdEmp(const Value: Integer);
    procedure SetInscricao(const Value: string);
    procedure setNEmpresa(const Value: string);
    procedure SetTxObs(const Value: integer);
    procedure SetTelCelular(const Value: string);
    procedure SetTelComercial(const Value: string);
    procedure SetDataAbertura(const Value: TDateTime);
    {$ENDREGION}

  public
     { public declarations }



    property IdEmp        :Integer read GetIdEmp write setIdEmp;
    property NEmpresa     : string read GetNEmpresa write setNEmpresa;
    property CNPJ         : String read GetCNPJ write SetCNPJ;
    property Inscricao    : string read GetInscricao write SetInscricao;
    property Ativo        : string read GetAtivo write SetAtivo;
    property DataCadastro : TDateTime read GetDataCadastro write SetDataCadastro;
    property DataAbertura: TDateTime read GetDataAbertura write SetDataAbertura;
    property TelComercial : string read GetTelComercial write SetTelComercial;
    property TelCelular   : string read GetTelCelular write SetTelCelular;
    property TxObs        : integer  read GetTxObs write SetTxObs;
    property Email        : string read GetEmail write SetEmail;
    property Exluido      : string read GetExluido write SetExluido;
    property DataExclusao : TDateTime read GetDataExclusao write SetDataExclusao;


    function new():TEmpresa;

  end;

implementation

{ TEmpresa }

function TEmpresa.GetAtivo: string;
begin
  Result := Self.FAtivo;
end;

function TEmpresa.GetCNPJ: string;
begin
  Result := Self.FCNPJ;
end;

function TEmpresa.GetDataAbertura: TDateTime;
begin
  Result := Self.FDataAbertura;
end;

function TEmpresa.GetDataCadastro: TDateTime;
begin
  Result := Self.FDataCadastro;
end;

function TEmpresa.GetDataExclusao: TDateTime;
begin
  Result := Self.FDataExclusao;
end;

function TEmpresa.GetEmail: string;
begin
  Result := Self.FEmail;
end;

function TEmpresa.GetExluido: string;
begin
  Result := Self.FExluido;
end;

function TEmpresa.GetIdEmp: Integer;
begin
  result := Self.FIdEmp;
end;

function TEmpresa.GetInscricao: string;
begin
  Result := Self.FInscricao;
end;

function TEmpresa.GetNEmpresa: string;
begin
  result := Self.FNEmpresa;
end;

function TEmpresa.GetTxObs: integer;
begin
  Result := Self.FTxObs;
end;

function TEmpresa.GetTelCelular: string;
begin
  Result := Self.FTelCelular;
end;

function TEmpresa.GetTelComercial: string;
begin
  Result := Self.FTelComercial;
end;

function TEmpresa.new: TEmpresa;
begin
  Result := TEmpresa.Create();
end;

procedure TEmpresa.SetAtivo(const Value: string);
begin
  FAtivo := Value;
end;

procedure TEmpresa.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TEmpresa.SetDataAbertura(const Value: TDateTime);
begin
  FDataAbertura := Value;
end;

procedure TEmpresa.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TEmpresa.SetDataExclusao(const Value: TDateTime);
begin
  FDataExclusao := Value;
end;

procedure TEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TEmpresa.SetExluido(const Value: string);
begin
  FExluido := Value;
end;

procedure TEmpresa.setIdEmp(const Value: Integer);
begin
  FIdEmp := Value;
end;

procedure TEmpresa.SetInscricao(const Value: string);
begin
  FInscricao := Value;
end;

procedure TEmpresa.setNEmpresa(const Value: string);
begin
  FNEmpresa := Value;
end;

procedure TEmpresa.SetTxObs(const Value: integer);
begin
  FTxObs := Value;
end;

procedure TEmpresa.SetTelCelular(const Value: string);
begin
  FTelCelular := Value;
end;

procedure TEmpresa.SetTelComercial(const Value: string);
begin
  FTelComercial := Value;
end;

end.
