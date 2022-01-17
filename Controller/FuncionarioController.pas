unit FuncionarioController;

interface

uses UFuncionarioModel;

type
  TFuncionarioController = class

    private

    public
       function insert(NovoFuncionario : TFuncionario):boolean;
       class function new():TFuncionarioController;
  end;

implementation

uses
  dmFuncionario;

{ TEmpresaController }

function TFuncionarioController.insert(NovoFuncionario: TFuncionario): boolean;
begin
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
end;

class function TFuncionarioController.new: TFuncionarioController;
begin
  result := TFuncionarioController.create;
end;

end.
