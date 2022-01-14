unit EnderecoController;

interface

uses
  UEnderecoModel, System.Generics.Collections;

  Type
  TEnderecoController = class

  private

  public
    function selectByIdEmpresa(idEmpresa : Integer): TList<TEndereco>;
    class function new():TEnderecoController;
 end;

implementation

uses
  dmEndereco;


{ TEnderecoController }

class function TEnderecoController.new: TEnderecoController;
begin
  result := TEnderecoController.create;
end;

function TEnderecoController.selectByIdEmpresa(idEmpresa : Integer): TList<TEndereco>;
var EnderecoEmpresa : TEndereco;
begin
  UdmEndereco.QrySelect.Params.Parambyname('IDEMPRESA').AsInteger := idEmpresa;
  UdmEndereco.QrySelect.Open;
  result := TList<TEndereco>.Create;

  if not UdmEndereco.QrySelect.isempty then
  begin

    UdmEndereco.QrySelect.first;
    while not UdmEndereco.QrySelect.eof do
    begin
      EnderecoEmpresa            := TEndereco.create;

      EnderecoEmpresa.IDENDERECO := UdmEndereco.QrySelect.Fieldbyname('IDENDERECO').AsInteger;
      EnderecoEmpresa.IDEMPRESA  := UdmEndereco.QrySelect.Fieldbyname('IDEMPRESA').AsInteger;
      EnderecoEmpresa.IDCIDADE   := UdmEndereco.QrySelect.Fieldbyname('IDCIDADE').AsInteger;
      EnderecoEmpresa.IDTITULAR  := UdmEndereco.QrySelect.Fieldbyname('IDTITULAR').AsInteger;
      EnderecoEmpresa.NMBAIRRO   := UdmEndereco.QrySelect.Fieldbyname('NMBAIRRO').AsString;
      EnderecoEmpresa.NMENDERECO := UdmEndereco.QrySelect.Fieldbyname('NMENDERECO').AsString;
      EnderecoEmpresa.NUCEP      := UdmEndereco.QrySelect.Fieldbyname('NUCEP').AsString;
      EnderecoEmpresa.NUENDERECO := UdmEndereco.QrySelect.Fieldbyname('NUENDERECO').AsString;
      EnderecoEmpresa.STATIVO    := UdmEndereco.QrySelect.Fieldbyname('STATIVO').AsString;
      EnderecoEmpresa.STEXCLUIDO := UdmEndereco.QrySelect.Fieldbyname('STEXCLUIDO').AsString;
      EnderecoEmpresa.TPCADASTRO := UdmEndereco.QrySelect.Fieldbyname('TPCADASTRO').AsString;

      result.add(EnderecoEmpresa);

      UdmEndereco.QrySelect.next;
    end;
  end;

end;

end.
