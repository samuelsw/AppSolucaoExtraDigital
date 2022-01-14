unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,UEmpresaModel,
  Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,EmpresaController, System.Generics.Collections,
   Datasnap.DBClient, Vcl.AppEvnts, Vcl.Menus;

type TpNavegation=(tpPesquisaEmpresa,tpCadastraEmpresa,tpCadastroFuncionarios);

type
  TForm1 = class(TForm)
    dsEmpresa: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabEmpresas: TTabSheet;
    tabCadEmpresa: TTabSheet;
    DBGrid2: TDBGrid;
    datasetEmpresa: TClientDataSet;
    datasetEmpresaIDEMPRESA: TIntegerField;
    datasetEmpresaNMEMPRESA: TStringField;
    datasetEmpresaNUCNPJ: TStringField;
    datasetEmpresaNUINSCRICAO: TStringField;
    datasetEmpresaSTATIVO: TStringField;
    datasetEmpresaDTCADASTRO: TDateField;
    datasetEmpresaDTABERTURA: TDateField;
    datasetEmpresaTLCOMERCIAL: TStringField;
    datasetEmpresaTLCELULAR: TStringField;
    datasetEmpresaTXOBS: TIntegerField;
    datasetEmpresaTXEMAIL: TStringField;
    datasetEmpresaSTEXCLUIDO: TStringField;
    datasetEmpresaDTEXCLUIDO: TDateField;
    btnPesquisaEmpresa: TButton;
    GroupBox1: TGroupBox;
    edtFiltro: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    PnlTop: TPanel;
    btnCadastraEmpresa: TButton;
    btnCadastraFunc: TButton;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    lblRazao: TLabel;
    EdtNMEMPRESA: TEdit;
    Label4: TLabel;
    EdtNUINSCRICAO: TEdit;
    Label6: TLabel;
    edtTLCOMERCIAL: TEdit;
    edtTLCELULAR: TEdit;
    Label7: TLabel;
    Label5: TLabel;
    edtDTABERTURA: TEdit;
    lblData: TLabel;
    edtNUCNPJ: TEdit;
    Label3: TLabel;
    LBLTX: TLabel;
    edtTXOBS: TEdit;
    edtTXEMAIL: TEdit;
    Label8: TLabel;
    STATIVO: TComboBox;
    Button5: TButton;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastraEmpresaClick(Sender: TObject);
    procedure btnPesquisaEmpresaClick(Sender: TObject);
    procedure btnCadastraFuncClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
  private
    { Private declarations }
    DataEmpresa : TEmpresaController;
    procedure LoadDataset(listaEmpresas :TList<TEmpresa>;QryEmpresa :TClientDataSet );
    procedure PageControlNavegation(acao : TpNavegation);
    procedure CadastraEmpresa();
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.btnCadastraFuncClick(Sender: TObject);
begin
  PageControlNavegation(tpCadastroFuncionarios);
end;

procedure TForm1.btnPesquisaEmpresaClick(Sender: TObject);
begin
  PageControlNavegation(tpPesquisaEmpresa);
end;

procedure TForm1.Button1Click(Sender: TObject);
var listaEmpresas : TList<TEmpresa>;
    i : Integer;
begin
  if (edtFiltro.text = '') then
  begin
    listaEmpresas := DataEmpresa.getAll();

    try
       if listaEmpresas <> nil then
       LoadDataset(listaEmpresas,datasetEmpresa);
    finally
       listaEmpresas.free;
    end;

  end;


end;

procedure TForm1.Button5Click(Sender: TObject);

begin
  if Trim(EdtNMEMPRESA.Text).isempty then
  begin
    showmessage('Defina a razão social');
    exit;
  end;

  CadastraEmpresa();

end;

procedure TForm1.CadastraEmpresa;
var novaEmpresa : TEmpresa;
begin
  try
    try
      novaEmpresa := TEmpresa.Create;

      novaEmpresa.SetAtivo(STATIVO.text);
      novaEmpresa.SetCNPJ( edtNUCNPJ.text);
      novaEmpresa.SetNEmpresa( EdtNMEMPRESA.text);
      novaEmpresa.SetInscricao( EdtNUINSCRICAO.text);
      novaEmpresa.SetAtivo(STATIVO.text);
      novaEmpresa.SetDataCadastro( Date);
      novaEmpresa.SetTelComercial( edtTLCOMERCIAL.text);
      novaEmpresa.SetTelCelular(edtTLCELULAR.text);
      novaEmpresa.SetTxObs( Strtointdef(edtTXOBS.text,0));
      novaEmpresa.SetEmail( edtTXEMAIL.text);
      novaEmpresa.SetDataAbertura(Strtodatedef(edtDTABERTURA.text,date));


     if DataEmpresa.insert(novaEmpresa) then
      showmessage('Cadastrado com sucesso');
    except
      on e:exception do
       showmessage('Erro ao cadastrar nova empresa. '+e.message);
    end;
  finally
    novaEmpresa.free;
  end;
end;

procedure TForm1.Excluir1Click(Sender: TObject);
begin
  if datasetEmpresa.isempty then
  exit;


  try
    if DataEmpresa.delete() then
    begin
      showmessage('Empresa Excluida');
    end;
  except
    on e:exception do
       showmessage('Erro ao excluir empresa. '+e.message);
  end;


end;

procedure TForm1.btnCadastraEmpresaClick(Sender: TObject);
begin
  PageControlNavegation(tpCadastraEmpresa);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DataEmpresa       := TEmpresaController.New();
end;

procedure TForm1.FormShow(Sender: TObject);
VAR I :INTEGER;
begin
  for  i:=0 TO PageControl1.PageCount-1 do
  PageControl1.Pages[i].TabVisible := false;

  PageControlNavegation(tpPesquisaEmpresa);

  edtFiltro.setfocus;
end;

procedure TForm1.LoadDataset(listaEmpresas :TList<TEmpresa>;QryEmpresa :TClientDataSet );
var i : integer;
begin
   QryEmpresa.Close;

   QryEmpresa.CreateDataSet;
   QryEmpresa.insert;
   for i:=0 to listaEmpresas.count -1 do
   begin
     QryEmpresa.Fieldbyname('IDEMPRESA').AsInteger   := listaEmpresas[i].getIdEmp;
     QryEmpresa.Fieldbyname('NMEMPRESA').AsString    := listaEmpresas[i].getNEmpresa;
     QryEmpresa.Fieldbyname('NUCNPJ').AsString       := listaEmpresas[i].getCNPJ;
     QryEmpresa.Fieldbyname('NUINSCRICAO').AsString  := listaEmpresas[i].GetInscricao;
     QryEmpresa.Fieldbyname('STATIVO').AsString      := listaEmpresas[i].GetAtivo;
     QryEmpresa.Fieldbyname('DTCADASTRO').asDatetime := listaEmpresas[i].DataCadastro;
     QryEmpresa.Fieldbyname('DTABERTURA').asDatetime := listaEmpresas[i].DataAbertura;
     QryEmpresa.Fieldbyname('TLCOMERCIAL').AsString  := listaEmpresas[i].TelComercial;
     QryEmpresa.Fieldbyname('TLCELULAR').AsString    := listaEmpresas[i].GetTelCelular;
     QryEmpresa.Fieldbyname('TXOBS').AsInteger       := listaEmpresas[i].GetTxObs;
     QryEmpresa.Fieldbyname('TXEMAIL').AsString      := listaEmpresas[i].GetEmail;
     QryEmpresa.Fieldbyname('STEXCLUIDO').AsString   := listaEmpresas[i].GetExluido;
     QryEmpresa.Fieldbyname('DTEXCLUIDO').asDatetime := listaEmpresas[i].GetDataExclusao;
     QryEmpresa.Post;
   end;

end;

procedure TForm1.PageControlNavegation(acao: TpNavegation);
begin
  case acao of
    tpPesquisaEmpresa :
    begin
      PageControl1.ActivePage    := TabEmpresas;
      PnlTop.Caption             := 'Pesquisa de Empresas';
      btnPesquisaEmpresa.Enabled := false;
      btnCadastraEmpresa.Enabled := true;
      btnCadastraFunc.Enabled    := true;
    end;

    tpCadastraEmpresa:
    begin
      PageControl1.ActivePage    := tabCadEmpresa;
      PnlTop.Caption             := 'Cadastro de Empresas';
      btnPesquisaEmpresa.Enabled := true;
      btnCadastraEmpresa.Enabled := false;
      btnCadastraFunc.Enabled    := true;
    end;

    tpCadastroFuncionarios:
    begin
      PnlTop.Caption             := 'Cadastro de funcionários';
      btnPesquisaEmpresa.Enabled := true;
      btnCadastraEmpresa.Enabled := true;
      btnCadastraFunc.Enabled    := false;
    end;
  end;
end;

end.
