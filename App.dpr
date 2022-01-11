program App;

uses
  Vcl.Forms,
  UMain in 'View\UMain.pas' {Form1},
  UEmpresaModel in 'Data\model\UEmpresaModel.pas',
  dmConexao in 'Data\connection\dmConexao.pas' {DataModule2: TDataModule},
  EmpresaController in 'Controller\EmpresaController.pas',
  dmEmpresa in 'Data\dmEmpresa.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
