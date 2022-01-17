unit EmpresaController;

interface

  uses UEmpresaModel,System.Generics.Collections, Data.DB, System.SysUtils, Vcl.Dialogs, System.Classes;

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
        Params.Parambyname('NMEMPRESA').AsString    := novaEmpresa.NEmpresa;
        Params.Parambyname('NUCNPJ').AsString       := novaEmpresa.CNPJ;
        Params.Parambyname('NUINSCRICAO').AsString  := novaEmpresa.Inscricao;
        Params.Parambyname('STATIVO').AsString      := novaEmpresa.Ativo;
        Params.Parambyname('DTCADASTRO').AsDateTime := novaEmpresa.DataCadastro;
        Params.Parambyname('DTABERTURA').AsDatetime := novaEmpresa.DataAbertura;
        Params.Parambyname('TLCOMERCIAL').AsString  := novaEmpresa.TelComercial;
        Params.Parambyname('TLCELULAR').AsString    := novaEmpresa.TelCelular;
        Params.Parambyname('TXOBS').AsInteger       := novaEmpresa.TxObs;
        Params.Parambyname('TXEMAIL').AsString      := novaEmpresa.Email;

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
var sqlUpdate : TStrings;
begin
  try
    try
      result    := false;
      sqlUpdate := TStringList.create;
      udmEmpresa.QryUpdate.sql.clear;
      udmEmpresa.QryUpdate.sql.Text := '';

      sqlUpdate.add('update CADEMPRESA set');

      with udmEmpresa.QryUpdate do
      begin
        if AtualizacaoEmpresa.NEmpresa <> '' then
        begin
          sqlUpdate.add(' NMEMPRESA =:NMEMPRESA, ');
          Params.CreateParam(ftstring, 'NMEMPRESA', ptInput);
          Params.Parambyname('NMEMPRESA').AsString    := AtualizacaoEmpresa.NEmpresa;
        end;

        if AtualizacaoEmpresa.CNPJ <> '' then
        begin
          sqlUpdate.add(' NUCNPJ =:NUCNPJ, ');
          Params.CreateParam(ftstring, 'NUCNPJ', ptInput);
          Params.Parambyname('NUCNPJ').AsString       := AtualizacaoEmpresa.CNPJ;
        end;

        if AtualizacaoEmpresa.Inscricao <> '' then
        begin
          sqlUpdate.add('NUINSCRICAO =:NUINSCRICAO, ');
          Params.CreateParam(ftstring, 'NUINSCRICAO', ptInput);
          Params.Parambyname('NUINSCRICAO').AsString  := AtualizacaoEmpresa.Inscricao;
        end;

        if AtualizacaoEmpresa.Ativo <> '' then
        begin
          sqlUpdate.add('STATIVO =:STATIVO, ');
          Params.CreateParam(ftstring, 'STATIVO', ptInput);
          Params.Parambyname('STATIVO').AsString      := AtualizacaoEmpresa.Ativo;
        end;

        if AtualizacaoEmpresa.DataAbertura > 0 then
        begin
          sqlUpdate.add('DTABERTURA =:DTABERTURA, ');
          Params.CreateParam(ftDateTime, 'DTABERTURA', ptInput);
          Params.Parambyname('DTABERTURA').AsDateTime := AtualizacaoEmpresa.DataAbertura;
        end;

        if AtualizacaoEmpresa.TelComercial <> '' then
        begin
          sqlUpdate.add('TLCOMERCIAL =:TLCOMERCIAL, ');
          Params.CreateParam(ftstring, 'TLCOMERCIAL', ptInput);
          Params.Parambyname('TLCOMERCIAL').AsString  := AtualizacaoEmpresa.TelComercial;
        end;

        if AtualizacaoEmpresa.TelCelular <> '' then
        begin
          sqlUpdate.add('TLCELULAR =:TLCELULAR, ');
          Params.CreateParam(ftstring, 'TLCELULAR', ptInput);
          Params.Parambyname('TLCELULAR').AsString    := AtualizacaoEmpresa.TelCelular;
        end;

        if AtualizacaoEmpresa.TxObs >= 0 then
        begin
          sqlUpdate.add('TXOBS =:TXOBS, ');
          Params.CreateParam(ftInteger, 'TXOBS', ptInput);
          Params.Parambyname('TXOBS').asInteger       := AtualizacaoEmpresa.TxObs;
        end;

        if AtualizacaoEmpresa.Email <> '' then
        begin
          sqlUpdate.add('TXEMAIL =:TXEMAIL, ');
          Params.CreateParam(ftstring, 'TXEMAIL', ptInput);
          Params.Parambyname('TXEMAIL').AsString      := AtualizacaoEmpresa.Email;
        end;

        if AtualizacaoEmpresa.Exluido <> '' then
        begin
          sqlUpdate.add('STEXCLUIDO =:STEXCLUIDO, ');
          Params.CreateParam(ftstring, 'STEXCLUIDO', ptInput);
          Params.Parambyname('STEXCLUIDO').AsString   := AtualizacaoEmpresa.Exluido;
        end;

        if AtualizacaoEmpresa.DataExclusao > 0 then
        begin
          sqlUpdate.add('DTEXCLUIDO =:DTEXCLUIDO, ');
          Params.CreateParam(ftDateTime, 'DTEXCLUIDO', ptInput);
          Params.Parambyname('DTEXCLUIDO').asDateTime := AtualizacaoEmpresa.DataExclusao;
        end;

        sql.add(copy(sqlUpdate.text,0,Length(sqlUpdate.text)-4));


        if AtualizacaoEmpresa.IdEmp > 0 then
        begin
          sql.add(' where IDEMPRESA =:IDEMPRESA ');
          Params.CreateParam(ftInteger, 'IDEMPRESA', ptInput);
          Params.Parambyname('IDEMPRESA').AsInteger := AtualizacaoEmpresa.IdEmp;
        end;

        execsql;
      end;


      result := true;
    except
      raise;
    end;
  finally
    sqlUpdate.free;
  end;
end;

end.
