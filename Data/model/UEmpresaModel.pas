unit UEmpresaModel;

interface

type
  TEmpresa =  class

  private


    {$REGION 'get/set'}

    FIdEmp        :Integer;
    FNEmpresa     : string;
    FCNPJ         : String;
    FInscricao    : string;
    FAtivo        : string;
    FDataCadastro : TDateTime;
    FTelComercial : string;
    FTelCelular   : string;
    FObs          : string ;
    FEmail        : string;
    FExluido      : string;
    FDataExclusao : TDateTime;

    function getIdEmp        :Integer;
    function getNEmpresa     :string;
    function getCNPJ         :string;
    function GetInscricao    :string;
    function GetAtivo        :string;
    function GetDataCadastro :TDateTime;
    function GetTelComercial :string;
    function GetTelCelular   :string;
    function GetObs          :string;
    function GetEmail        :string;
    function GetExluido      :string;
    function GetDataExclusao :TDateTime;


    procedure SetAtivo(const Value: string);
    procedure SetCNPJ(const Value: String);
    procedure SetDataCadastro(const Value: TDateTime);
    procedure SetDataExclusao(const Value: TDateTime);
    procedure SetEmail(const Value: string);
    procedure SetExluido(const Value: string);
    procedure setIdEmp(const Value: Integer);
    procedure SetInscricao(const Value: string);
    procedure setNEmpresa(const Value: string);
    procedure SetObs(const Value: string);
    procedure SetTelCelular(const Value: string);
    procedure SetTelComercial(const Value: string);
    {$ENDREGION}

  public
   { public declarations }
   property IdEmp        :Integer read getIdEmp write setIdEmp;
   property NEmpresa     : string read getNEmpresa write setNEmpresa;
   property CNPJ         : String read getCNPJ write SetCNPJ;
   property Inscricao    : string read GetInscricao write SetInscricao;
   property Ativo        : string read GetAtivo write SetAtivo;
   property DataCadastro : TDateTime read GetDataCadastro write SetDataCadastro;
   property TelComercial : string read GetTelComercial write SetTelComercial;
   property TelCelular   : string read GetTelCelular write SetTelCelular;
   property Obs          : string  read GetObs write SetObs;
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

function TEmpresa.getCNPJ: string;
begin
  Result := Self.FCNPJ;
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

function TEmpresa.getIdEmp: Integer;
begin
  result := Self.FIdEmp;
end;

function TEmpresa.GetInscricao: string;
begin
  Result := Self.FInscricao;
end;

function TEmpresa.getNEmpresa: string;
begin
  result := Self.FNEmpresa;
end;

function TEmpresa.GetObs: string;
begin
  Result := Self.FObs;
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

procedure TEmpresa.SetObs(const Value: string);
begin
  FObs := Value;
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
