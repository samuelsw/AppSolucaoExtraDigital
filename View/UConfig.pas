unit UConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.StdCtrls,
  cxMaskEdit, cxButtonEdit, Vcl.ExtCtrls, System.IniFiles;

type
  TFrmConfig = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtBaseDados: TcxButtonEdit;
    edtPorta: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtServidor: TcxTextEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure writeconfig();
    procedure readconfi();
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}

procedure TFrmConfig.Button1Click(Sender: TObject);
begin
  writeconfig;
  Close;
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
begin
  readconfi;
end;

procedure TFrmConfig.readconfi;
begin
  with TIniFile.Create(ExtractFilePath(Application.ExeName)+'con.ini') do
  try

    if not FileExists(ExtractFilePath(Application.ExeName)+'con.ini') then
    begin
      WriteString('BD','EndServidor',(trim(edtServidor.Text)));
      WriteString('BD','PortaServidor',(trim(edtPorta.Text)));
      WriteString('BD','BaseDados',(trim(edtBaseDados.Text)));
      WriteString('BD','usuario',(edtUsuario.Text));
      WriteString('BD','senha',(edtSenha.Text));
    end else
    begin
      edtServidor.Text  := (ReadString('BD','EndServidor','127.0.0.1'));
      edtPorta.Text     := (ReadString('BD','PortaServidor',('3050')));
      edtUsuario.Text   := (ReadString('BD','usuario',('SYSDBA')));
      edtSenha.Text     := (ReadString('BD','senha','masterkey'));
      edtBaseDados.Text := (ReadString('BD','BaseDados',(trim(ExtractFilePath(Application.ExeName)+'\DADOS.fdb'))));
    end;

  finally
    free;
  end;
end;

procedure TFrmConfig.writeconfig;
begin
  with TIniFile.Create(ExtractFilePath(Application.ExeName)+'con.ini') do
  try
    WriteString('BD','EndServidor',(trim(edtServidor.Text)));
    WriteString('BD','PortaServidor',(trim(edtPorta.Text)));
    WriteString('BD','BaseDados',(trim(edtBaseDados.Text)));
    WriteString('BD','usuario',(edtUsuario.Text));
    WriteString('BD','senha',(edtSenha.Text));
  finally
    free;
  end;
end;

end.
