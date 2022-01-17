unit UEnderecoModel;

interface

type
  TEndereco = class


    private
    FIDENDERECO : Integer;
    FIDTITULAR  : Integer;
    FIDEMPRESA  : Integer;
    FNMENDERECO : String;
    FNUENDERECO : String;
    FNMBAIRRO   : String;
    FIDCIDADE   : Integer;
    FIDUF       : Integer;
    FNUCEP      : String;
    FSTATIVO    : String;
    FSTEXCLUIDO : String;
    FDTEXCLUIDO : TDateTime;
    FTPCADASTRO : String;

    {$REGION 'GET/SET'}
      function GetDtExcluido: TDateTime;
      function GetIdEndereco: Integer;
      function GetIdCidade: Integer;
      function GetIdEmpresa: Integer;
      function GetIdTitulad: Integer;
      function GetNmBairro: String;
      function GetNmEndereco: String;
      function GetNuCEP: String;
      function GetNuEndereco: String;
      function GetSTAtivo: String;
      function GetSTExcluido: String;
      function GetTpCadastro: String;
      function getIdUf: Integer;

      procedure SetDtExcluido(const Value: TDateTime);
      procedure SetIdEndereco(const Value: Integer);
      procedure SetIdCidade(const Value: Integer);
      procedure SetIdEmpresa(const Value: Integer);
      procedure SetIdTitulad(const Value: Integer);
      procedure SetNmBairro(const Value: String);
      procedure SetNmEndereco(const Value: String);
      procedure SetNuCEP(const Value: String);
      procedure SetNuEndereco(const Value: String);
      procedure SetSTAtivo(const Value: String);
      procedure SetSTExcluido(const Value: String);
      procedure SetTpCadastro(const Value: String);
      procedure SetIdUf(const Value: Integer);
    {$ENDREGION}

    public

    property IDENDERECO : Integer read GetIdEndereco write SetIdEndereco;
    property IDTITULAR  : Integer read GetIdTitulad write SetIdTitulad;
    property IDEMPRESA  : Integer read GetIdEmpresa write SetIdEmpresa;
    property NMENDERECO : String read GetNmEndereco write SetNmEndereco;
    property NUENDERECO : String read GetNuEndereco write SetNuEndereco;
    property NMBAIRRO   : String read GetNmBairro write SetNmBairro;
    property IDCIDADE   : Integer read GetIdCidade write SetIdCidade;
    property NUCEP      : String read GetNuCEP write SetNuCEP;
    property STATIVO    : String read GetSTAtivo write SetSTAtivo;
    property STEXCLUIDO : String read GetSTExcluido write SetSTExcluido;
    property DTEXCLUIDO : TDateTime read GetDtExcluido write SetDtExcluido;
    property TPCADASTRO : String read GetTpCadastro write SetTpCadastro;
    property IDUF       : Integer read getIdUf write SetIdUf;


  end;

implementation

{ TEndereco }


{ TEndereco }

function TEndereco.GetDtExcluido: TDateTime;
begin
  REsult := self.FDTEXCLUIDO;
end;

function TEndereco.GetIdEndereco: Integer;
begin
  REsult := self.FIDENDERECO;
end;

function TEndereco.GetIdCidade: Integer;
begin
  REsult := self.FIDCIDADE;
end;

function TEndereco.GetIdEmpresa: Integer;
begin
  REsult := self.FIDEMPRESA;
end;

function TEndereco.GetIdTitulad: Integer;
begin
  REsult := self.FIDTITULAR;
end;

function TEndereco.getIdUf: Integer;
begin
  result := Self.FIDUF;
end;

function TEndereco.GetNmBairro: String;
begin
  REsult := self.FNMBAIRRO;
end;

function TEndereco.GetNmEndereco: String;
begin
  REsult := self.FNMENDERECO;
end;

function TEndereco.GetNuCEP: String;
begin
  REsult := self.FNUCEP;
end;

function TEndereco.GetNuEndereco: String;
begin
  REsult := self.FNUENDERECO;
end;

function TEndereco.GetSTAtivo: String;
begin
  REsult := self.FSTATIVO;
end;

function TEndereco.GetSTExcluido: String;
begin
  REsult := self.FSTEXCLUIDO;
end;

function TEndereco.GetTpCadastro: String;
begin
  REsult := self.FTPCADASTRO;
end;

procedure TEndereco.SetDtExcluido(const Value: TDateTime);
begin
  FDTEXCLUIDO := Value;
end;

procedure TEndereco.SetIdEndereco(const Value: Integer);
begin
  FIDENDERECO := Value;
end;

procedure TEndereco.SetIdCidade(const Value: Integer);
begin
  FIDCIDADE := Value;
end;

procedure TEndereco.SetIdEmpresa(const Value: Integer);
begin
  FIDEMPRESA := Value;
end;

procedure TEndereco.SetIdTitulad(const Value: Integer);
begin
  FIDTITULAR := Value;
end;

procedure TEndereco.SetIdUf(const Value: Integer);
begin
  FIDUF := Value;
end;

procedure TEndereco.SetNmBairro(const Value: String);
begin
  FNMBAIRRO := Value;
end;

procedure TEndereco.SetNmEndereco(const Value: String);
begin
  FNMENDERECO := Value;
end;

procedure TEndereco.SetNuCEP(const Value: String);
begin
  FNUCEP := Value;
end;

procedure TEndereco.SetNuEndereco(const Value: String);
begin
  FNUENDERECO := Value;
end;

procedure TEndereco.SetSTAtivo(const Value: String);
begin
  FSTATIVO := Value;
end;

procedure TEndereco.SetSTExcluido(const Value: String);
begin
  FSTEXCLUIDO := Value;
end;

procedure TEndereco.SetTpCadastro(const Value: String);
begin
  FTPCADASTRO := Value;
end;

end.
