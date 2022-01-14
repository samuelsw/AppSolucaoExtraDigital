unit EmpresaController;

interface

  uses UEmpresaModel,System.Generics.Collections, Data.DB, System.SysUtils, Vcl.Dialogs;

 Type
  TEmpresaController = class

  private

  public
    function insert(novaEmpresa: TEmpresa): boolean;
    function update(AtualizacaoEmpresa: TEmpresa): boolean;
    function delete(idEmpresa : Integer): boolean;
    function selectById():TEmpresa;
    function getAll():TList<TEmpresa>;
    class function new():TEmpresaController;
 end;

implementation

uses
  dmEmpresa;


{ TEmpresaController }

function TEmpresaController.delete(idEmpresa : Integer): boolean;
begin
  try
    result := false;
    udmEmpresa.QryDelete.Params.Parambyname('IDEMPRESA').AsInteger := idEmpresa;
    udmEmpresa.QryDelete.execSql;

    result := true;
  except
    raise;
  end;
end;

function TEmpresaController.getAll: TList<TEmpresa>;
var iEmp : TEmpresa;
begin
  udmEmpresa.QrySelect.Open;

  if udmEmpresa.QrySelect.isempty then exit;


  result := TList<TEmpresa>.Create;

  udmEmpresa.QrySelect.first;
  while not udmEmpresa.QrySelect.eof do
  begin
    with udmEmpresa.QrySelect do
    begin
      iEmp              := TEmpresa.Create;
      iEmp.IdEmp        := Fieldbyname('IDEMPRESA').AsInteger;
      iEmp.CNPJ         := Fieldbyname('NUCNPJ').AsString;
      iEmp.NEmpresa     := Fieldbyname('NMEMPRESA').AsString;
      iEmp.Inscricao    := Fieldbyname('NUINSCRICAO').AsString;
      iEmp.Ativo        := Fieldbyname('STATIVO').AsString;
      iEmp.DataCadastro := Fieldbyname('DTCADASTRO').AsDateTime;
      iEmp.TelComercial := Fieldbyname('TLCOMERCIAL').AsString;
      iEmp.TelCelular   := Fieldbyname('TLCELULAR').AsString;
      iEmp.TxObs        := Fieldbyname('TXOBS').AsInteger;
      iEmp.Email        := Fieldbyname('TXEMAIL').AsString;
      iEmp.Exluido      := Fieldbyname('STEXCLUIDO').AsString;
      iEmp.DataExclusao := Fieldbyname('DTEXCLUIDO').AsDateTime;
      iEmp.DataAbertura := Fieldbyname('DTABERTURA').AsDateTime;

      result.add(iEmp);
    end;

    udmEmpresa.QrySelect.next;
  end;

end;

function TEmpresaController.insert(novaEmpresa: TEmpresa): boolean;
begin
  try
    result := false;

    try
      with udmEmpresa.QryInsert do
      begin
        Params.Parambyname('NMEMPRESA').AsString    := novaEmpresa.GetNEmpresa;
        Params.Parambyname('NUCNPJ').AsString       := novaEmpresa.GetCNPJ;
        Params.Parambyname('NUINSCRICAO').AsString  := novaEmpresa.GetInscricao;
        Params.Parambyname('STATIVO').AsString      := novaEmpresa.GetAtivo;
        Params.Parambyname('DTCADASTRO').AsDateTime := novaEmpresa.GetDataCadastro;
        Params.Parambyname('DTABERTURA').AsDatetime := novaEmpresa.GetDataAbertura;
        Params.Parambyname('TLCOMERCIAL').AsString  := novaEmpresa.GetTelComercial;
        Params.Parambyname('TLCELULAR').AsString    := novaEmpresa.GetTelCelular;
        Params.Parambyname('TXOBS').AsInteger       := novaEmpresa.GetTxObs;
        Params.Parambyname('TXEMAIL').AsString      := novaEmpresa.GetEmail;

        execsql;
      end;

      result := true;
    except
      raise;
    end;
  finally
  end;
end;

class function TEmpresaController.new: TEmpresaController;
begin
  result := TEmpresaController.Create();
end;

function TEmpresaController.selectById: TEmpresa;
begin
 //
end;

function TEmpresaController.update(AtualizacaoEmpresa: TEmpresa): boolean;
begin
  try
    result := false;

    with udmEmpresa.QryUpdate do
    begin
      Params.Parambyname('NMEMPRESA').AsString    := AtualizacaoEmpresa.NEmpresa;
      Params.Parambyname('IDEMPRESA').AsInteger   := AtualizacaoEmpresa.IdEmp;
      Params.Parambyname('NUCNPJ').AsString       := AtualizacaoEmpresa.CNPJ;
      Params.Parambyname('NUINSCRICAO').AsString  := AtualizacaoEmpresa.Inscricao;
      Params.Parambyname('STATIVO').AsString      := AtualizacaoEmpresa.Ativo;
      Params.Parambyname('DTABERTURA').AsDateTime := AtualizacaoEmpresa.DataAbertura;
      Params.Parambyname('TLCOMERCIAL').AsString  := AtualizacaoEmpresa.TelComercial;
      Params.Parambyname('TLCELULAR').AsString    := AtualizacaoEmpresa.TelCelular;
      Params.Parambyname('TXOBS').asInteger       := AtualizacaoEmpresa.TxObs;
      Params.Parambyname('TXEMAIL').AsString      := AtualizacaoEmpresa.Email;

      execsql;
    end;

    result := true;
  except
    raise;
  end;
end;

end.
