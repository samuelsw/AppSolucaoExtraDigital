unit EmpresaController;

interface

  uses UEmpresaModel,System.Generics.Collections;

 Type
  TEmpresaController = class

  private

  public
    function insert(novaEmpresa: TEmpresa): boolean;
    function update(obj : TEmpresa):boolean;
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
 //
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
      iEmp := TEmpresa.Create;
      iEmp.setIdEmp( Fieldbyname('IDEMPRESA').AsInteger);
      iEmp.SetCNPJ( Fieldbyname('NUCNPJ').AsString);
      iEmp.SetNEmpresa( Fieldbyname('NMEMPRESA').AsString);
      iEmp.SetInscricao( Fieldbyname('NUINSCRICAO').AsString);
      iEmp.SetAtivo( Fieldbyname('STATIVO').AsString);
      iEmp.SetDataCadastro( Fieldbyname('DTCADASTRO').AsDateTime);
      iEmp.SetTelComercial( Fieldbyname('TLCOMERCIAL').AsString);
      iEmp.SetTelCelular( Fieldbyname('TLCELULAR').AsString);
      iEmp.SetTxObs( Fieldbyname('TXOBS').AsInteger);
      iEmp.SetEmail( Fieldbyname('TXEMAIL').AsString);
      iEmp.SetExluido( Fieldbyname('STEXCLUIDO').AsString);
      iEmp.SetDataExclusao( Fieldbyname('DTEXCLUIDO').AsDateTime);
      iEmp.SetDataAbertura( Fieldbyname('DTABERTURA').AsDateTime);

      result.add(iEmp);
    end;

    udmEmpresa.QrySelect.next;
  end;

end;

function TEmpresaController.insert(novaEmpresa: TEmpresa): boolean;
begin
  try
    with udmEmpresa.QryInsert do
    begin
      Params.Parambyname('NUCNPJ').AsString       := novaEmpresa.GetCNPJ;
      Params.Parambyname('NMEMPRESA').AsString    := novaEmpresa.GetNEmpresa;
      Params.Parambyname('NUINSCRICAO').AsString  := novaEmpresa.GetInscricao;
      Params.Parambyname('STATIVO').AsString      := novaEmpresa.GetAtivo;
      Params.Parambyname('DTCADASTRO').AsDateTime := novaEmpresa.GetDataCadastro;
      Params.Parambyname('TLCOMERCIAL').AsString  := novaEmpresa.GetTelComercial;
      Params.Parambyname('TLCELULAR').AsString    := novaEmpresa.GetTelCelular;
      Params.Parambyname('TXOBS').AsInteger       := novaEmpresa.GetTxObs;
      Params.Parambyname('TXEMAIL').AsString      := novaEmpresa.GetEmail;
      Params.Parambyname('DTABERTURA').AsDatetime := novaEmpresa.GetDataAbertura;

      execsql;
    end;
  except
    raise;
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

function TEmpresaController.update(obj: TEmpresa): boolean;
begin
 //
end;

end.
