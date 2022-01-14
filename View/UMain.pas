unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,UEmpresaModel,UEnderecoModel,
  Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,EmpresaController, System.Generics.Collections,
   Datasnap.DBClient, Vcl.AppEvnts, Vcl.Menus,EnderecoController;

type TpNavegation=(tpPesquisaEmpresa,tpCadastraEmpresa,tpCadastroFuncionarios);
type TpEdit = (tpInsert,tpEditing);

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
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Editar1: TMenuItem;
    Label9: TLabel;
    Funcionarios: TLabel;
    DBGrid3: TDBGrid;
    dsEnderecos: TDataSource;
    datasetEnderecos: TClientDataSet;
    datasetEnderecosIDENDERECO: TIntegerField;
    datasetEnderecosIDTITULAR: TIntegerField;
    datasetEnderecosIDEMPRESA: TIntegerField;
    datasetEnderecosNMENDERECO: TStringField;
    datasetEnderecosNMBAIRRO: TStringField;
    datasetEnderecosIDCIDADE: TIntegerField;
    datasetEnderecosIDUF: TIntegerField;
    datasetEnderecosNUCEP: TStringField;
    datasetEnderecosSTATIVO: TStringField;
    datasetEnderecosTPCADASTRO: TStringField;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Edit1: TEdit;
    DBGrid4: TDBGrid;
    Label11: TLabel;
    Edit2: TEdit;
    Label12: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    Edit4: TEdit;
    Label14: TLabel;
    ComboBox2: TComboBox;
    Label15: TLabel;
    ComboBox3: TComboBox;
    Label16: TLabel;
    ComboBox4: TComboBox;
    Button2: TButton;
    Button5: TButton;
    edtCod: TEdit;
    Label17: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastraEmpresaClick(Sender: TObject);
    procedure btnPesquisaEmpresaClick(Sender: TObject);
    procedure btnCadastraFuncClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
  private
    { Private declarations }
    DataEmpresa    : TEmpresaController;
    DataEndereco   : TEnderecoController;
    EditingEmpresa : Boolean;

    procedure LoadDatasetEmpresas(listaEmpresas :TList<TEmpresa>;QryEmpresa :TClientDataSet );
    procedure LoadDataSetEnderecos(listaEnderecos : TList<TEndereco>; QryEndereco :TClientDataSet );
    procedure PageControlNavegation(acao : TpNavegation);
    procedure CadastraEmpresa();
    procedure AtualizaEmpresa();
    procedure BuscaEmpresas();
    function EditToObjEmpresa():TEmpresa;

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

procedure TForm1.BuscaEmpresas;
var listaEmpresas : TList<TEmpresa>;
    i : Integer;
begin
  if (edtFiltro.text = '') then
  begin
    listaEmpresas := DataEmpresa.getAll();

    try
       if listaEmpresas <> nil then
       LoadDatasetEmpresas(listaEmpresas,datasetEmpresa);
    finally
       listaEmpresas.free;
    end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  BuscaEmpresas();
end;

procedure TForm1.Button5Click(Sender: TObject);

begin
  if Trim(EdtNMEMPRESA.Text).isempty then
  begin
    showmessage('Defina a razão social');
    exit;
  end;

  if not EditingEmpresa then
    CadastraEmpresa()
  else
    AtualizaEmpresa();

end;

function TForm1.EditToObjEmpresa():TEmpresa;
begin
  result              := TEmpresa.Create;
  result.IdEmp        := strtointdef(edtCod.Text,0);
  result.Ativo        := STATIVO.text;
  result.CNPJ         := edtNUCNPJ.text;
  result.NEmpresa     := EdtNMEMPRESA.text;
  result.Inscricao    := EdtNUINSCRICAO.text;
  result.Ativo        := STATIVO.text;
  result.DataCadastro := Date;
  result.TelComercial := edtTLCOMERCIAL.text;
  result.TelCelular   := edtTLCELULAR.text;
  result.TxObs        := Strtointdef(edtTXOBS.text,0);
  result.Email        := edtTXEMAIL.text;
  result.DataAbertura := Strtodatedef(edtDTABERTURA.text,date);
end;

procedure TForm1.CadastraEmpresa;
var novaEmpresa : TEmpresa;
begin
  try
    try
      novaEmpresa := EditToObjEmpresa();

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

procedure TForm1.Editar1Click(Sender: TObject);
var listaEnderecosEmp : TList<TEndereco>;
begin
  if datasetEmpresa.isempty then
  exit;

  try
    try
      EditingEmpresa := true;

      PageControlNavegation(tpCadastraEmpresa);
      EdtNMEMPRESA.Text   := datasetEmpresa.Fieldbyname('NMEMPRESA').AsString;
      EdtNUINSCRICAO.Text := datasetEmpresa.Fieldbyname('NUINSCRICAO').AsString;
      edtTLCOMERCIAL.Text := datasetEmpresa.Fieldbyname('TLCOMERCIAL').AsString;
      edtTLCELULAR.Text   := datasetEmpresa.Fieldbyname('TLCELULAR').AsString;
      edtDTABERTURA.Text  := datasetEmpresa.Fieldbyname('DTABERTURA').AsString;
      edtNUCNPJ.Text      := datasetEmpresa.Fieldbyname('NUCNPJ').AsString;
      edtTXOBS.Text       := datasetEmpresa.Fieldbyname('TXOBS').AsString;
      edtTXEMAIL.Text     := datasetEmpresa.Fieldbyname('TXEMAIL').AsString;
      edtCod.Text         := datasetEmpresa.Fieldbyname('IDEMPRESA').AsString;

      listaEnderecosEmp := DataEndereco.selectByIdEmpresa(datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger);

      if listaEnderecosEmp.count >0 then
      begin
        loadDataSetEnderecos(listaEnderecosEmp,datasetEnderecos);
      end;

    except
      on e:exception do
        showmessage('Erro ao editar empresa. '+E.message);
    end;
  finally
    listaEnderecosEmp.free;
  end;

end;

procedure TForm1.Excluir1Click(Sender: TObject);
begin
  if datasetEmpresa.isempty then
  exit;

  try
    // Existem os campos para inativar o cadastro porem como foi solicitado
    // o CRUD completo , fica implementado aqui a exclusão do registro

    if DataEmpresa.delete(datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger) then
    begin
      showmessage('Empresa Excluida');
      BuscaEmpresas();
    end;

  except
    on e:exception do
       showmessage('Erro ao excluir empresa. '+e.message);
  end;

end;

procedure TForm1.AtualizaEmpresa;
var alteracaoEmpresa : TEmpresa;
begin
  try
    try
      alteracaoEmpresa := EditToObjEmpresa();

     if DataEmpresa.update(alteracaoEmpresa) then
      showmessage('Cadastrado com sucesso');
    except
      on e:exception do
       showmessage('Erro ao cadastrar nova empresa. '+e.message);
    end;
  finally
    alteracaoEmpresa.free;
  end;
end;

procedure TForm1.btnCadastraEmpresaClick(Sender: TObject);
begin
  PageControlNavegation(tpCadastraEmpresa);
  EditingEmpresa := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DataEmpresa  := TEmpresaController.New();
  DataEndereco := TEnderecoController.New();
end;

procedure TForm1.FormShow(Sender: TObject);
VAR I :INTEGER;
begin
  for  i:=0 TO PageControl1.PageCount-1 do
  PageControl1.Pages[i].TabVisible := false;

  PageControlNavegation(tpPesquisaEmpresa);

  edtFiltro.setfocus;
end;

procedure TForm1.LoadDatasetEmpresas(listaEmpresas :TList<TEmpresa>;QryEmpresa :TClientDataSet );
var i : integer;
begin
   QryEmpresa.Close;

   QryEmpresa.CreateDataSet;

   for i:=0 to listaEmpresas.count -1 do
   begin
     QryEmpresa.insert;
     QryEmpresa.Fieldbyname('IDEMPRESA').AsInteger   := listaEmpresas[i].IdEmp;
     QryEmpresa.Fieldbyname('NMEMPRESA').AsString    := listaEmpresas[i].NEmpresa;
     QryEmpresa.Fieldbyname('NUCNPJ').AsString       := listaEmpresas[i].CNPJ;
     QryEmpresa.Fieldbyname('NUINSCRICAO').AsString  := listaEmpresas[i].Inscricao;
     QryEmpresa.Fieldbyname('STATIVO').AsString      := listaEmpresas[i].Ativo;
     QryEmpresa.Fieldbyname('DTCADASTRO').asDatetime := listaEmpresas[i].DataCadastro;
     QryEmpresa.Fieldbyname('DTABERTURA').asDatetime := listaEmpresas[i].DataAbertura;
     QryEmpresa.Fieldbyname('TLCOMERCIAL').AsString  := listaEmpresas[i].TelComercial;
     QryEmpresa.Fieldbyname('TLCELULAR').AsString    := listaEmpresas[i].TelCelular;
     QryEmpresa.Fieldbyname('TXOBS').AsInteger       := listaEmpresas[i].TxObs;
     QryEmpresa.Fieldbyname('TXEMAIL').AsString      := listaEmpresas[i].Email;
     QryEmpresa.Fieldbyname('STEXCLUIDO').AsString   := listaEmpresas[i].Exluido;
     QryEmpresa.Fieldbyname('DTEXCLUIDO').asDatetime := listaEmpresas[i].DataExclusao;
     QryEmpresa.Post;
   end;

end;

procedure TForm1.LoadDataSetEnderecos(listaEnderecos: TList<TEndereco>; QryEndereco: TClientDataSet);
var i : integer;
begin
  QryEndereco.Close;

  QryEndereco.CreateDataSet;

   for i:=0 to listaEnderecos.count -1 do
   begin
     QryEndereco.insert;
     QryEndereco.Fieldbyname('IDENDERECO').AsInteger := listaEnderecos[i].IDENDERECO;
     QryEndereco.Fieldbyname('IDTITULAR').AsInteger  := listaEnderecos[i].IDTITULAR;
     QryEndereco.Fieldbyname('IDEMPRESA').AsInteger  := listaEnderecos[i].IDEMPRESA;
     QryEndereco.Fieldbyname('NMENDERECO').AsString  := listaEnderecos[i].NMENDERECO;
     QryEndereco.Fieldbyname('NMBAIRRO').AsString    := listaEnderecos[i].NMBAIRRO;
     QryEndereco.Fieldbyname('IDCIDADE').AsInteger   := listaEnderecos[i].IDCIDADE;
     QryEndereco.Fieldbyname('IDUF').AsInteger       := listaEnderecos[i].IDUF;
     QryEndereco.Fieldbyname('NUCEP').AsString       := listaEnderecos[i].NUCEP;
     QryEndereco.Fieldbyname('STATIVO').AsString     := listaEnderecos[i].STATIVO;
     QryEndereco.Fieldbyname('TPCADASTRO').AsString  := listaEnderecos[i].TPCADASTRO;
     QryEndereco.Post;;
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
