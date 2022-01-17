unit FuncionarioController;

interface

uses UFuncionarioModel, Data.DB, System.Generics.Collections;

type
  TFuncionarioController = class

    private

    public
       function insert(NovoFuncionario : TFuncionario):boolean;
       function update(NovoFuncionario : TFuncionario):boolean;
       function delete(idFuncionario : Integer):boolean;

       function getbyidEmpresa(idEmpresa : Integer):TList<TFuncionario>;


       class function new():TFuncionarioController;
  end;

implementation

uses
  dmFuncionario;

{ TEmpresaController }

function TFuncionarioController.delete(idFuncionario: Integer): boolean;
begin
  try
    result := false;

    with UdmFuncionario.QryDelete do
    begin
      Params.Parambyname('IDFUNCIONARIO').AsInteger := idFuncionario;
      execsql;
    end;
    result := true;
  except
    raise;
  end;
end;

function TFuncionarioController.getbyidEmpresa(idEmpresa: Integer): TList<TFuncionario>;
var Funcionario : TFuncionario;
begin
  try

    with UdmFuncionario.QrySelect do
    begin
       Close;
       Params.Parambyname('IDEMPRESA').AsInteger := idEmpresa;
       Params.Parambyname('STATIVO').AsString    := 'S';
       Open;
    end;

    result := TList<TFuncionario>.Create;

    if not UdmFuncionario.QrySelect.isempty then
    begin

      UdmFuncionario.QrySelect.first;
      while not UdmFuncionario.QrySelect.eof do
      begin
        Funcionario  := TFuncionario.create;

        Funcionario.IDFUNCIONARIO         := UdmFuncionario.QrySelect.Fieldbyname('IDFUNCIONARIO').AsInteger;
        Funcionario.IDEMPRESA             := UdmFuncionario.QrySelect.Fieldbyname('IDEMPRESA').AsInteger;
        Funcionario.NMFUNCIONARIO         := UdmFuncionario.QrySelect.Fieldbyname('NMFUNCIONARIO').AsString;
        Funcionario.NUCPF                 := UdmFuncionario.QrySelect.Fieldbyname('NUCPF').AsString;
        Funcionario.NURG                  := UdmFuncionario.QrySelect.Fieldbyname('NURG').AsString;
        Funcionario.DTNASCIMENTO          := UdmFuncionario.QrySelect.Fieldbyname('DTNASCIMENTO').AsDateTime;
        Funcionario.TXEMAIL               := UdmFuncionario.QrySelect.Fieldbyname('TXEMAIL').AsString;
        Funcionario.NUCARTEIRATRAB        := UdmFuncionario.QrySelect.Fieldbyname('NUCARTEIRATRAB').AsString;
        Funcionario.NUTITULOELEITOR       := UdmFuncionario.QrySelect.Fieldbyname('NUTITULOELEITOR').AsString;
        Funcionario.NUCARTEIRAMOTORISTA   := UdmFuncionario.QrySelect.Fieldbyname('NUCARTEIRAMOTORISTA').AsString;
        Funcionario.TPCATERORIA           := UdmFuncionario.QrySelect.Fieldbyname('TPCATERORIA').AsString;
        Funcionario.DTVALIDADECARTEIRAMOT := UdmFuncionario.QrySelect.Fieldbyname('DTVALIDADECARTEIRAMOT').AsDateTime;
        Funcionario.TLRESIDENCIAL         := UdmFuncionario.QrySelect.Fieldbyname('TLRESIDENCIAL').AsString;
        Funcionario.TLCELULAR             := UdmFuncionario.QrySelect.Fieldbyname('TLCELULAR').AsString;
        Funcionario.TLCONTATO             := UdmFuncionario.QrySelect.Fieldbyname('TLCONTATO').AsString;
        Funcionario.NMCONTATO             := UdmFuncionario.QrySelect.Fieldbyname('NMCONTATO').AsString;
        Funcionario.DTCONTRATACAO         := UdmFuncionario.QrySelect.Fieldbyname('DTCONTRATACAO').AsDateTime;
        Funcionario.DTDEMISSAO            := UdmFuncionario.QrySelect.Fieldbyname('DTDEMISSAO').AsDateTime;
        Funcionario.DTCADASTRO            := UdmFuncionario.QrySelect.Fieldbyname('DTCADASTRO').AsDateTime;
        Funcionario.STATIVO               := UdmFuncionario.QrySelect.Fieldbyname('STATIVO').AsString;
        Funcionario.TXOBS                 := UdmFuncionario.QrySelect.Fieldbyname('TXOBS').AsString;
        Funcionario.NMENDERECO            := UdmFuncionario.QrySelect.Fieldbyname('NMENDERECO').AsString;
        Funcionario.NUENDERECO            := UdmFuncionario.QrySelect.Fieldbyname('NUENDERECO').AsString;
        Funcionario.NMBAIRRO              := UdmFuncionario.QrySelect.Fieldbyname('NMBAIRRO').AsString;
        Funcionario.IDCIDADE              := UdmFuncionario.QrySelect.Fieldbyname('IDCIDADE').AsInteger;
        Funcionario.IDUF                  := UdmFuncionario.QrySelect.Fieldbyname('IDUF').AsInteger;
        Funcionario.NUCEP                 := UdmFuncionario.QrySelect.Fieldbyname('NUCEP').AsString;


        result.add(Funcionario);

        UdmFuncionario.QrySelect.next;
      end;
    end;

  finally

  end;
end;

function TFuncionarioController.insert(NovoFuncionario: TFuncionario): boolean;
begin
  try
    result := false;

    with UdmFuncionario.QryInsert do
    begin
      Params.Parambyname('IDEMPRESA').AsInteger              := NovoFuncionario.IDEMPRESA;
      Params.Parambyname('NMFUNCIONARIO').AsString           := NovoFuncionario.NMFUNCIONARIO;
      Params.Parambyname('NUCPF').AsString                   := NovoFuncionario.NUCPF;
      Params.Parambyname('NURG').AsString                    := NovoFuncionario.NURG;
      Params.Parambyname('DTNASCIMENTO').asDateTime          := NovoFuncionario.DTNASCIMENTO;
      Params.Parambyname('TXEMAIL').AsString                 := NovoFuncionario.TXEMAIL;
      Params.Parambyname('NUCARTEIRATRAB').AsString          := NovoFuncionario.NUCARTEIRATRAB;
      Params.Parambyname('NUTITULOELEITOR').AsString         := NovoFuncionario.NUTITULOELEITOR;
      Params.Parambyname('NUCARTEIRAMOTORISTA').AsString     := NovoFuncionario.NUCARTEIRAMOTORISTA;
      Params.Parambyname('TPCATERORIA').AsString             := NovoFuncionario.TPCATERORIA;
      Params.Parambyname('DTVALIDADECARTEIRAMOT').asDateTime := NovoFuncionario.DTVALIDADECARTEIRAMOT;
      Params.Parambyname('TLRESIDENCIAL').AsString           := NovoFuncionario.TLRESIDENCIAL;
      Params.Parambyname('TLCELULAR').AsString               := NovoFuncionario.TLCELULAR;
      Params.Parambyname('TLCONTATO').AsString               := NovoFuncionario.TLCONTATO;
      Params.Parambyname('NMCONTATO').AsString               := NovoFuncionario.NMCONTATO;
      Params.Parambyname('DTCONTRATACAO').asDateTime         := NovoFuncionario.DTCONTRATACAO;
      Params.Parambyname('DTDEMISSAO').asDateTime            := NovoFuncionario.DTDEMISSAO;
      Params.Parambyname('DTCADASTRO').asDateTime            := NovoFuncionario.DTCADASTRO;
      Params.Parambyname('STATIVO').AsString                 := NovoFuncionario.STATIVO;
      Params.Parambyname('TXOBS').AsString                   := NovoFuncionario.TXOBS;
      Params.Parambyname('NMENDERECO').AsString              := NovoFuncionario.NMENDERECO;
      Params.Parambyname('NUENDERECO').AsString              := NovoFuncionario.NUENDERECO;
      Params.Parambyname('NMBAIRRO').AsString                := NovoFuncionario.NMBAIRRO;
      Params.Parambyname('IDCIDADE').AsInteger               := NovoFuncionario.IDCIDADE;
      Params.Parambyname('IDUF').AsInteger                   := NovoFuncionario.IDUF;
      Params.Parambyname('NUCEP').AsString                   := NovoFuncionario.NUCEP;
      ExecSql;
    end;

    result := true;
  except
    raise;
  end;
end;

class function TFuncionarioController.new: TFuncionarioController;
begin
  result := TFuncionarioController.create;
end;

function TFuncionarioController.update(NovoFuncionario: TFuncionario): boolean;
begin
  //
end;

end.
