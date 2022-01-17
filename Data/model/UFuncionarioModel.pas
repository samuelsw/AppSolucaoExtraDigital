unit UFuncionarioModel;

interface

type
  TFuncionario = class

    private
    FIDFUNCIONARIO         : INTEGER;
    FIDEMPRESA             : INTEGER;
    FNMFUNCIONARIO         : String;
    FNUCPF                 : String;
    FNURG                  : String;
    FDTNASCIMENTO          : TDateTime;
    FTXEMAIL               : String;
    FNUCARTEIRATRAB        : String;
    FNUTITULOELEITOR       : String;
    FNUCARTEIRAMOTORISTA   : String;
    FTPCATERORIA           : String;
    FDTVALIDADECARTEIRAMOT : TDateTime;
    FTLRESIDENCIAL         : String;
    FTLCELULAR             : String;
    FTLCONTATO             : String;
    FNMCONTATO             : String;
    FDTCONTRATACAO         : TDateTime;
    FDTDEMISSAO            : TDateTime;
    FDTCADASTRO            : TDateTime;
    FSTATIVO               : String;
    FTXOBS                 : String;
    FNMENDERECO            : String;
    FNUENDERECO            : String;
    FNMBAIRRO              : String;
    FIDCIDADE              : INTEGER;
    FIDUF                  : INTEGER;
    FNUCEP                 : String;
    FSTEXCLUIDO            : String;
    FDTEXCLUIDO            : TDateTime;

    {$REGION 'get/set'}
    function GetDtCadastro: TDateTime;
    function GetDtContratacao: TDateTime;
    function GetDtDemissao: TDateTime;
    function GetDtExclusao: TDateTime;
    function GetDtNascimento: TDateTime;
    function GetDtValidadeCrtMot: TDateTime;
    function GetEmail: String;
    function GetIdCidade: INTEGER;
    function GetIdEmpresa: INTEGER;
    function GetIdFuncionario: INTEGER;
    function GetIdUF: INTEGER;
    function GetNContato: String;
    function GetNFuncionario: String;
    function GetNmBairro: String;
    function GetNmEndereco: String;
    function GetNuCarteiraMotorista: String;
    function GetNuCarteiraTrab: String;
    function GetNuCEP: String;
    function GetNuCPF: String;
    function GetNuEndereco: String;
    function GetNuRG: String;
    function GetNuTituloEleitor: String;
    function GetSAtivo: String;
    function GetStExcluido: String;
    function GetTelCelular: String;
    function GetTelContato: String;
    function GetTelResidencial: String;
    function GetTpCategoria: String;
    function GetTXObs: String;

    procedure SetDtCadastro(const Value: TDateTime);
    procedure SetDtContratacao(const Value: TDateTime);
    procedure SetDtDemissao(const Value: TDateTime);
    procedure SetDtExclusao(const Value: TDateTime);
    procedure SetDtNascimento(const Value: TDateTime);
    procedure SetDtValidadeCrtMot(const Value: TDateTime);
    procedure SetEmail(const Value: String);
    procedure SetIdCidade(const Value: INTEGER);
    procedure SetIdEmpresa(const Value: INTEGER);
    procedure SetIdFuncionario(const Value: INTEGER);
    procedure SetIdUF(const Value: INTEGER);
    procedure SetNContato(const Value: String);
    procedure SetNFuncionario(const Value: String);
    procedure SetNmBairro(const Value: String);
    procedure SetNmEndereco(const Value: String);
    procedure SetNuCarteiraMotorista(const Value: String);
    procedure SetNuCarteiraTrab(const Value: String);
    procedure SetNuCEP(const Value: String);
    procedure SetNuCPF(const Value: String);
    procedure SetNuEndereco(const Value: String);
    procedure SetNuRG(const Value: String);
    procedure SetNuTituloEleitor(const Value: String);
    procedure SetSAtivo(const Value: String);
    procedure SetStExcluido(const Value: String);
    procedure SetTelCelular(const Value: String);
    procedure SetTelContato(const Value: String);
    procedure SetTelResidencial(const Value: String);
    procedure SetTpCategoria(const Value: String);
    procedure SetTXObs(const Value: String);
    {$ENDREGION}

    public

    property IDFUNCIONARIO         : INTEGER read GetIdFuncionario write SetIdFuncionario;
    property IDEMPRESA             : INTEGER read GetIdEmpresa write SetIdEmpresa;
    property NMFUNCIONARIO         : String read GetNFuncionario write SetNFuncionario;
    property NUCPF                 : String read GetNuCPF write SetNuCPF;
    property NURG                  : String read GetNuRG write SetNuRG;
    property DTNASCIMENTO          : TDateTime read GetDtNascimento write SetDtNascimento;
    property TXEMAIL               : String read GetEmail write SetEmail;
    property NUCARTEIRATRAB        : String read GetNuCarteiraTrab write SetNuCarteiraTrab;
    property NUTITULOELEITOR       : String read GetNuTituloEleitor write SetNuTituloEleitor;
    property NUCARTEIRAMOTORISTA   : String read GetNuCarteiraMotorista write SetNuCarteiraMotorista;
    property TPCATERORIA           : String read GetTpCategoria write SetTpCategoria;
    property DTVALIDADECARTEIRAMOT : TDateTime read GetDtValidadeCrtMot write SetDtValidadeCrtMot;
    property TLRESIDENCIAL         : String read GetTelResidencial write SetTelResidencial;
    property TLCELULAR             : String read GetTelCelular write SetTelCelular;
    property TLCONTATO             : String read GetTelContato write SetTelContato;
    property NMCONTATO             : String read GetNContato write SetNContato;
    property DTCONTRATACAO         : TDateTime read GetDtContratacao write SetDtContratacao;
    property DTDEMISSAO            : TDateTime read GetDtDemissao write SetDtDemissao;
    property DTCADASTRO            : TDateTime read GetDtCadastro write SetDtCadastro;
    property STATIVO               : String read GetSAtivo write SetSAtivo;
    property TXOBS                 : String read GetTXObs write SetTXObs;
    property NMENDERECO            : String read GetNmEndereco write SetNmEndereco;
    property NUENDERECO            : String read GetNuEndereco write SetNuEndereco;
    property NMBAIRRO              : String read GetNmBairro write SetNmBairro;
    property IDCIDADE              : INTEGER read GetIdCidade write SetIdCidade;
    property IDUF                  : INTEGER read GetIdUF write SetIdUF;
    property NUCEP                 : String read GetNuCEP write SetNuCEP;
    property STEXCLUIDO            : String read GetStExcluido write SetStExcluido;
    property DTEXCLUIDO            : TDateTime read GetDtExclusao write SetDtExclusao;



  end;

implementation

{ TFuncionario }

function TFuncionario.GetDtCadastro: TDateTime;
begin
  result := Self.FDTCADASTRO;
end;

function TFuncionario.GetDtContratacao: TDateTime;
begin
  result := Self.FDTCONTRATACAO;
end;

function TFuncionario.GetDtDemissao: TDateTime;
begin
  result := Self.FDTDEMISSAO;
end;

function TFuncionario.GetDtExclusao: TDateTime;
begin
  result := Self.FDTEXCLUIDO;
end;

function TFuncionario.GetDtNascimento: TDateTime;
begin
  result := Self.FDTNASCIMENTO;
end;

function TFuncionario.GetDtValidadeCrtMot: TDateTime;
begin
  result := Self.FDTVALIDADECARTEIRAMOT;
end;

function TFuncionario.GetEmail: String;
begin
  result := Self.FTXEMAIL;
end;

function TFuncionario.GetIdCidade: INTEGER;
begin
  result := Self.FIDCIDADE;
end;

function TFuncionario.GetIdEmpresa: INTEGER;
begin
  result := Self.FIDEMPRESA;
end;

function TFuncionario.GetIdFuncionario: INTEGER;
begin
  result := Self.FIDFUNCIONARIO;
end;

function TFuncionario.GetIdUF: INTEGER;
begin
  result := Self.FIDUF;
end;

function TFuncionario.GetNContato: String;
begin
  result := Self.FTLCONTATO;
end;

function TFuncionario.GetNFuncionario: String;
begin
  result := Self.FNMFUNCIONARIO;
end;

function TFuncionario.GetNmBairro: String;
begin
  result := Self.FNMBAIRRO;
end;

function TFuncionario.GetNmEndereco: String;
begin
  result := Self.FNMENDERECO;
end;

function TFuncionario.GetNuCarteiraMotorista: String;
begin
  result := Self.FNUCARTEIRAMOTORISTA;
end;

function TFuncionario.GetNuCarteiraTrab: String;
begin
  result := Self.FNUCARTEIRATRAB;
end;

function TFuncionario.GetNuCEP: String;
begin
  result := Self.FNUCEP;
end;

function TFuncionario.GetNuCPF: String;
begin
  result := Self.FNUCPF;
end;

function TFuncionario.GetNuEndereco: String;
begin
  result := Self.FNUENDERECO;
end;

function TFuncionario.GetNuRG: String;
begin
  result := Self.FNURG;
end;

function TFuncionario.GetNuTituloEleitor: String;
begin
  result := Self.FNUTITULOELEITOR;
end;

function TFuncionario.GetSAtivo: String;
begin
  result := Self.FSTATIVO;
end;

function TFuncionario.GetStExcluido: String;
begin
  result := Self.FSTEXCLUIDO;
end;

function TFuncionario.GetTelCelular: String;
begin
  result := Self.FTLCELULAR;
end;

function TFuncionario.GetTelContato: String;
begin
  result := Self.FTLCONTATO;
end;

function TFuncionario.GetTelResidencial: String;
begin
  result := Self.FTLRESIDENCIAL;
end;

function TFuncionario.GetTpCategoria: String;
begin
  result := Self.FTPCATERORIA;
end;

function TFuncionario.GetTXObs: String;
begin
  result := Self.FTXOBS;
end;

procedure TFuncionario.SetDtCadastro(const Value: TDateTime);
begin
  self.FDTCADASTRO := Value;
end;

procedure TFuncionario.SetDtContratacao(const Value: TDateTime);
begin
  self.FDTCONTRATACAO := Value;
end;

procedure TFuncionario.SetDtDemissao(const Value: TDateTime);
begin
  self.FDTDEMISSAO := Value;
end;

procedure TFuncionario.SetDtExclusao(const Value: TDateTime);
begin
  self.FDTEXCLUIDO := Value;
end;

procedure TFuncionario.SetDtNascimento(const Value: TDateTime);
begin
  self.FDTNASCIMENTO := Value;
end;

procedure TFuncionario.SetDtValidadeCrtMot(const Value: TDateTime);
begin
  self.FDTVALIDADECARTEIRAMOT := Value;
end;

procedure TFuncionario.SetEmail(const Value: String);
begin
  self.FTXEMAIL := Value;
end;

procedure TFuncionario.SetIdCidade(const Value: INTEGER);
begin
  self.FIDCIDADE := Value;
end;

procedure TFuncionario.SetIdEmpresa(const Value: INTEGER);
begin
  self.FIDEMPRESA := Value;
end;

procedure TFuncionario.SetIdFuncionario(const Value: INTEGER);
begin
  self.FIDFUNCIONARIO := Value;
end;

procedure TFuncionario.SetIdUF(const Value: INTEGER);
begin
  self.FIDUF := Value;
end;

procedure TFuncionario.SetNContato(const Value: String);
begin
  self.FNMCONTATO := Value;
end;

procedure TFuncionario.SetNFuncionario(const Value: String);
begin
  self.FNMFUNCIONARIO := Value;
end;

procedure TFuncionario.SetNmBairro(const Value: String);
begin
  self.FNMBAIRRO := Value;
end;

procedure TFuncionario.SetNmEndereco(const Value: String);
begin
  self.FNMENDERECO := Value;
end;

procedure TFuncionario.SetNuCarteiraMotorista(const Value: String);
begin
  self.FNUCARTEIRAMOTORISTA := Value;
end;

procedure TFuncionario.SetNuCarteiraTrab(const Value: String);
begin
  self.FNUCARTEIRATRAB := Value;
end;

procedure TFuncionario.SetNuCEP(const Value: String);
begin
  self.FNUCEP := Value;
end;

procedure TFuncionario.SetNuCPF(const Value: String);
begin
  self.FNUCPF := Value;
end;

procedure TFuncionario.SetNuEndereco(const Value: String);
begin
  self.FNUENDERECO := Value;
end;

procedure TFuncionario.SetNuRG(const Value: String);
begin
  self.FNURG := Value;
end;

procedure TFuncionario.SetNuTituloEleitor(const Value: String);
begin
  self.FNUTITULOELEITOR := Value;
end;

procedure TFuncionario.SetSAtivo(const Value: String);
begin
  self.FSTATIVO := Value;
end;

procedure TFuncionario.SetStExcluido(const Value: String);
begin
  self.FSTEXCLUIDO := Value;
end;

procedure TFuncionario.SetTelCelular(const Value: String);
begin
  self.FTLCELULAR := Value;
end;

procedure TFuncionario.SetTelContato(const Value: String);
begin
  self.FTLCONTATO := Value;
end;

procedure TFuncionario.SetTelResidencial(const Value: String);
begin
  self.FTLRESIDENCIAL := Value;
end;

procedure TFuncionario.SetTpCategoria(const Value: String);
begin
  self.FTPCATERORIA := Value;
end;

procedure TFuncionario.SetTXObs(const Value: String);
begin
  self.FTXOBS := Value;
end;

end.
