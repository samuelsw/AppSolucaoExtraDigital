program App;

uses
  Vcl.Forms,
  UMain in 'View\UMain.pas' {Form1},
  UEmpresaModel in 'Data\model\UEmpresaModel.pas',
  dmConexao in 'Data\connection\dmConexao.pas' {UdmConexao: TDataModule},
  EmpresaController in 'Controller\EmpresaController.pas',
  dmEmpresa in 'Data\dmEmpresa.pas' {UdmEmpresa: TDataModule},
  UAppController in 'Controller\UAppController.pas',
  UConfig in 'View\UConfig.pas' {FrmConfig},
  dmEndereco in 'Data\dmEndereco.pas' {UdmEndereco: TDataModule},
  EnderecoController in 'Controller\EnderecoController.pas',
  UEnderecoModel in 'Data\model\UEnderecoModel.pas',
  UFuncionarioModel in 'Data\model\UFuncionarioModel.pas',
  FuncionarioController in 'Controller\FuncionarioController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUdmConexao, UdmConexao);
  Application.CreateForm(TUdmEmpresa, UdmEmpresa);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmConfig, FrmConfig);
  Application.CreateForm(TUdmEndereco, UdmEndereco);
  Application.Run;
end.
