unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,UEmpresaModel,UEnderecoModel,
  Data.FMTBcd, Data.SqlExpr, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,EmpresaController, System.Generics.Collections,
   Datasnap.DBClient, Vcl.AppEvnts, Vcl.Menus,EnderecoController, Vcl.Mask,UFuncionarioModel,FuncionarioController;

type TpNavegation=(tpPesquisaEmpresa,tpCadastraEmpresa,tpCadastroFuncionarios,tpEditarEmpresa);

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
    Button1: TButton;
    PnlTop: TPanel;
    btnCadastraEmpresa: TButton;
    btnCadastraFunc: TButton;
    Label1: TLabel;
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
    edtLogradouro: TEdit;
    DBGrid4: TDBGrid;
    Label11: TLabel;
    EdtBairro: TEdit;
    Label12: TLabel;
    edtNum: TEdit;
    Label13: TLabel;
    edtCep: TEdit;
    Label14: TLabel;
    cbUF: TComboBox;
    Label15: TLabel;
    cbCidade: TComboBox;
    Label16: TLabel;
    cbEnderecoAtivo: TComboBox;
    Button2: TButton;
    Button5: TButton;
    edtCod: TEdit;
    Label17: TLabel;
    TabCadFuncionario: TTabSheet;
    BtnEditaEmpresa: TButton;
    btnExcluiEmpresa: TButton;
    EdtNome: TEdit;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdtCPF: TMaskEdit;
    Label20: TLabel;
    edtRG: TEdit;
    Label21: TLabel;
    EdtDateNasc: TDateTimePicker;
    Label22: TLabel;
    edtEmail: TEdit;
    Label23: TLabel;
    edtCarteiraTrab: TEdit;
    Label24: TLabel;
    edtTituloEleitor: TEdit;
    lblTitulo: TLabel;
    Label25: TLabel;
    edtCarteiraMotorista: TEdit;
    lbltipo: TLabel;
    edtTipoCategoria: TEdit;
    lblVencimento: TLabel;
    edtDataVencCarteira: TDateTimePicker;
    Label35: TLabel;
    edtTelREsidencial: TEdit;
    Label26: TLabel;
    edtCelular: TEdit;
    edtContatoFunc: TLabel;
    edtTElContato: TEdit;
    Label28: TLabel;
    EdtDataAdm: TMaskEdit;
    edtDataDemissao: TMaskEdit;
    Label29: TLabel;
    cbFuncAtivo: TComboBox;
    Label30: TLabel;
    edtTxOBSFunc: TEdit;
    GroupBox4: TGroupBox;
    EdtEndrecoFunc: TEdit;
    Label27: TLabel;
    edtNumEnderecoFunc: TEdit;
    Label31: TLabel;
    edtBairroFunc: TEdit;
    Label32: TLabel;
    cbUFFunc: TComboBox;
    Label33: TLabel;
    Label34: TLabel;
    cbCidadeFunc: TComboBox;
    Label36: TLabel;
    edtCepFunc: TEdit;
    btnGravaFunc: TButton;
    datasetFuncionarios: TClientDataSet;
    dsFuncionarios: TDataSource;
    datasetFuncionariosIDFUNCIONARIO: TIntegerField;
    datasetFuncionariosIDEMPRESA: TIntegerField;
    datasetFuncionariosNMFUNCIONARIO: TStringField;
    datasetFuncionariosNUCPF: TStringField;
    datasetFuncionariosNURG: TStringField;
    datasetFuncionariosDTNASCIMENTO: TDateField;
    datasetFuncionariosTXEMAIL: TStringField;
    datasetFuncionariosNUCARTEIRATRAB: TStringField;
    datasetFuncionariosNUTITULOELEITOR: TStringField;
    datasetFuncionariosNUCARTEIRAMOTORISTA: TStringField;
    datasetFuncionariosTPCATERORIA: TStringField;
    datasetFuncionariosDTVALIDADECARTEIRAMOT: TDateField;
    datasetFuncionariosTLRESIDENCIAL: TStringField;
    datasetFuncionariosTLCELULAR: TStringField;
    datasetFuncionariosTLCONTATO: TStringField;
    datasetFuncionariosNMCONTATO: TStringField;
    datasetFuncionariosDTCONTRATACAO: TDateField;
    datasetFuncionariosDTDEMISSAO: TDateField;
    datasetFuncionariosDTCADASTRO: TDateField;
    datasetFuncionariosSTATIVO: TStringField;
    datasetFuncionariosTXOBS: TStringField;
    datasetFuncionariosNMENDERECO: TStringField;
    datasetFuncionariosNUENDERECO: TStringField;
    datasetFuncionariosNMBAIRRO: TStringField;
    datasetFuncionariosIDCIDADE: TIntegerField;
    datasetFuncionariosIDUF: TIntegerField;
    datasetFuncionariosNUCEP: TStringField;
    datasetFuncionariosSTEXCLUIDO: TStringField;
    datasetFuncionariosDTEXCLUIDO: TDateField;
    pmEndereco: TPopupMenu;
    ExcluirEndereco1: TMenuItem;
    pmFuncionario: TPopupMenu;
    ExcluirFuncionrio1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastraEmpresaClick(Sender: TObject);
    procedure btnPesquisaEmpresaClick(Sender: TObject);
    procedure btnCadastraFuncClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEditaEmpresaClick(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btnExcluiEmpresaClick(Sender: TObject);
    procedure btnGravaFuncClick(Sender: TObject);
    procedure ExcluirEndereco1Click(Sender: TObject);
    procedure ExcluirFuncionrio1Click(Sender: TObject);

  private
    { Private declarations }
    DataEmpresa     : TEmpresaController;
    DataEndereco    : TEnderecoController;
    DataFuncionario : TFuncionarioController;
    EditingEmpresa  : Boolean;

    procedure LoadDatasetEmpresas(listaEmpresas :TList<TEmpresa>;QryEmpresa :TClientDataSet );
    procedure LoadDataSetEnderecos(listaEnderecos : TList<TEndereco>; QryEndereco :TClientDataSet );
    procedure LoadDatasetFuncionario(listaFuncionarios : TList<TFuncionario>; qryFuncionario :TClientDataSet );
    procedure PageControlNavegation(acao : TpNavegation);
    procedure resetCadEmpresa();
    procedure resetCadFuncionario();
    procedure CadastraEmpresa();
    procedure CadastraEnderecoEmpresa();
    procedure AtualizaEmpresa();
    procedure BuscaEmpresas();
    procedure BuscaFuncionarios();
    procedure BuscaEnderecos();
    function EditToObjEmpresa():TEmpresa;
    function EditToObjEndereco():TEndereco;
    function EditToObjFuncionario():TFuncionario;


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
  resetCadFuncionario();
end;

procedure TForm1.BtnEditaEmpresaClick(Sender: TObject);
begin
  if datasetEmpresa.isempty then
  exit;

  try
    try
      EditingEmpresa := true;

      PageControlNavegation(tpEditarEmpresa);
      EdtNMEMPRESA.Text   := datasetEmpresa.Fieldbyname('NMEMPRESA').AsString;
      EdtNUINSCRICAO.Text := datasetEmpresa.Fieldbyname('NUINSCRICAO').AsString;
      edtTLCOMERCIAL.Text := datasetEmpresa.Fieldbyname('TLCOMERCIAL').AsString;
      edtTLCELULAR.Text   := datasetEmpresa.Fieldbyname('TLCELULAR').AsString;
      edtDTABERTURA.Text  := datasetEmpresa.Fieldbyname('DTABERTURA').AsString;
      edtNUCNPJ.Text      := datasetEmpresa.Fieldbyname('NUCNPJ').AsString;
      edtTXOBS.Text       := datasetEmpresa.Fieldbyname('TXOBS').AsString;
      edtTXEMAIL.Text     := datasetEmpresa.Fieldbyname('TXEMAIL').AsString;
      edtCod.Text         := datasetEmpresa.Fieldbyname('IDEMPRESA').AsString;

      BuscaEnderecos();

    except
      on e:exception do
        showmessage('Erro ao editar empresa. '+E.message);
    end;
  finally

  end;
end;

procedure TForm1.btnExcluiEmpresaClick(Sender: TObject);
var iEmpresa : TEmpresa;
begin
  if datasetEmpresa.isempty then
  exit;

  try
    try

  //    Caso queira realmente deletar o registro

  //    if DataEmpresa.delete(datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger) then
  //    begin
  //      showmessage('Empresa Excluida');
  //      BuscaEmpresas();
  //    end;

      iEmpresa              := TEmpresa.create;
      iEmpresa.IdEmp        := datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger;
      iEmpresa.Ativo        := 'N';
      iEmpresa.DataExclusao := date;

      if DataEmpresa.Update(iEmpresa) then
      begin
        showmessage('Empresa Excluida');
        BuscaEmpresas();
      end;

    except
      on e:exception do
         showmessage('Erro ao excluir empresa. '+e.message);
    end;
  finally
    iEmpresa.free;
  end;
end;

procedure TForm1.btnGravaFuncClick(Sender: TObject);
var novoFuncionario : TFuncionario;
begin
  try
    try
      novoFuncionario := EditToObjFuncionario();

     if DataFuncionario.insert(novoFuncionario) then
      showmessage('Cadastrado com sucesso');
    except
      on e:exception do
       showmessage('Erro ao cadastrar nova empresa. '+e.message);
    end;
  finally
    novoFuncionario.free;
  end;
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

procedure TForm1.BuscaEnderecos;
var listaEnderecosEmp : TList<TEndereco>;
begin
  try
    listaEnderecosEmp := DataEndereco.selectByIdEmpresa(datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger);

    if listaEnderecosEmp.count >0 then
    begin
      loadDataSetEnderecos(listaEnderecosEmp,datasetEnderecos);
    end;
  finally
    listaEnderecosEmp.free;
  end;
end;

procedure TForm1.BuscaFuncionarios;
var listaFuncionarios : TList<TFuncionario>;
    i : Integer;
begin
  listaFuncionarios := DataFuncionario.getbyidEmpresa(datasetEmpresa.Fieldbyname('IDEMPRESA').AsInteger);

  try
     if listaFuncionarios <> nil then
     begin
       if listaFuncionarios.count > 0 then
         LoadDatasetFuncionario(listaFuncionarios,datasetFuncionarios)
       else
         datasetFuncionarios.close;
     end
     else
      datasetFuncionarios.close;

  finally
     listaFuncionarios.free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  BuscaEmpresas();
  BuscaFuncionarios();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if trim(edtLogradouro.text).isempty then
  begin
    showmessage('Defina um logradouro');
    exit;
  end;

  CadastraEnderecoEmpresa();
  BuscaEnderecos();
end;

procedure TForm1.Button5Click(Sender: TObject);

begin
  if Trim(EdtNMEMPRESA.Text).isempty then
  begin
    showmessage('Defina a raz?o social');
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

function TForm1.EditToObjEndereco: TEndereco;
begin
  result            := TEndereco.Create;

  if EditingEmpresa then
  result.IDEMPRESA  := datasetEmpresa.FieldByName('IDEMPRESA').asInteger;

  result.NMENDERECO := edtLogradouro.Text;
  result.NMBAIRRO   := EdtBairro.text;
  result.NUENDERECO := edtNum.text;
  result.NUCEP      := edtCep.text;
  result.IDUF       := cbUF.ItemIndex;
  result.IDCIDADE   := cbCidade.itemindex;
  result.STATIVO    := Trim(cbEnderecoAtivo.Text);
end;

function TForm1.EditToObjFuncionario: TFuncionario;
begin
  result                       := TFuncionario.create;
  result.IDEMPRESA             := datasetEmpresa.FieldByName('IDEMPRESA').asInteger;
  result.NMFUNCIONARIO         := EdtNome.text;
  result.NUCPF                 := Trim(EdtCPF.Text);
  result.NURG                  := Trim(edtRG.text);
  result.DTNASCIMENTO          := EdtDateNasc.date;
  result.TXEMAIL               := Trim(edtEmail.text);
  result.NUCARTEIRATRAB        := Trim(edtCarteiraTrab.text);
  result.NUTITULOELEITOR       := edtTituloEleitor.text;
  result.NUCARTEIRAMOTORISTA   := edtCarteiraMotorista.text;
  result.TPCATERORIA           := edtTipoCategoria.text;
  result.DTVALIDADECARTEIRAMOT := edtDataVencCarteira.date;
  result.TLRESIDENCIAL         := edtTelREsidencial.text;
  result.TLCELULAR             := edtCelular.text;
  result.TLCONTATO             := edtTElContato.text;
  result.NMCONTATO             := '';
  result.DTCONTRATACAO         := Strtodatedef(EdtDataAdm.text,date);
  result.DTDEMISSAO            := Strtodatedef(edtDataDemissao.text,date);
  result.DTCADASTRO            := date;
  result.STATIVO               := trim(cbFuncAtivo.text);
  result.TXOBS                 := Trim(edtTxOBSFunc.text);
  result.NMENDERECO            := EdtEndrecoFunc.text;
  result.NUENDERECO            := edtNumEnderecoFunc.text;
  result.NMBAIRRO              := edtBairroFunc.text;
  result.IDCIDADE              := cbCidadeFunc.itemindex;
  result.IDUF                  := cbUFFunc.itemindex;
  result.NUCEP                 := edtCepFunc.text;

end;

procedure TForm1.ExcluirEndereco1Click(Sender: TObject);
begin
  try
    try
      if datasetEnderecos.isempty then exit;

      if DataEndereco.Delete(datasetEnderecos.fieldbyname('IDENDERECO').AsInteger) then
      showmessage('Endere?o excluido');

      BuscaEnderecos;

    except
      on e:exception do
       showmessage('Erro ao excluir endere?o. '+e.message);
    end;
  finally
  end;
end;

procedure TForm1.ExcluirFuncionrio1Click(Sender: TObject);
begin
  if datasetFuncionarios.isempty then exit;

  try
    if DataFuncionario.delete(datasetFuncionarios.fieldbyname('IDFUNCIONARIO').AsInteger) then
    showmessage('Funcionario Excluido');

    BuscaFuncionarios;
  finally

  end;
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

procedure TForm1.CadastraEnderecoEmpresa;
var novaEndereco : TEndereco;
begin
  try
    try

      novaEndereco := EditToObjEndereco();

      if DataEndereco.insert(novaEndereco) then
      begin
        showmessage('Cadastrado com sucesso');
        resetCadEmpresa;
      end;

    except
      on e:exception do
       showmessage('Erro ao cadastrar nova empresa. '+e.message);
    end;
  finally
    novaEndereco.free;
  end;
end;

procedure TForm1.DBGrid2CellClick(Column: TColumn);
begin
  if datasetEmpresa.isempty then
  exit;

  BtnEditaEmpresa.enabled  := true;
  btnCadastraFunc.Enabled  := true;
  btnExcluiEmpresa.Enabled := true;
  BuscaFuncionarios();

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
  resetCadEmpresa();
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataEmpresa.free;
  DataEndereco.free;
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

     listaEmpresas[i].free;
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
     QryEndereco.Post;

     listaEnderecos[i].free;
   end;

end;

procedure TForm1.LoadDatasetFuncionario(listaFuncionarios: TList<TFuncionario>; qryFuncionario: TClientDataSet);
var i : integer;
begin
  datasetFuncionarios.close;
  datasetFuncionarios.CreateDataSet;

  for i:=0 to listaFuncionarios.count -1 do
  begin
    qryFuncionario.insert;
    qryFuncionario.Fieldbyname('IDFUNCIONARIO').AsInteger          := listaFuncionarios[i].IDFUNCIONARIO ;
    qryFuncionario.Fieldbyname('IDEMPRESA').AsInteger              := listaFuncionarios[i].IDEMPRESA ;
    qryFuncionario.Fieldbyname('NMFUNCIONARIO').AsString           := listaFuncionarios[i].NMFUNCIONARIO ;
    qryFuncionario.Fieldbyname('NUCPF').AsString                   := listaFuncionarios[i].NUCPF ;
    qryFuncionario.Fieldbyname('NURG').AsString                    := listaFuncionarios[i].NURG ;
    qryFuncionario.Fieldbyname('DTNASCIMENTO').AsDateTime          := listaFuncionarios[i].DTNASCIMENTO ;
    qryFuncionario.Fieldbyname('TXEMAIL').AsString                 := listaFuncionarios[i].TXEMAIL ;
    qryFuncionario.Fieldbyname('NUCARTEIRATRAB').AsString          := listaFuncionarios[i].NUCARTEIRATRAB ;
    qryFuncionario.Fieldbyname('NUTITULOELEITOR').AsString         := listaFuncionarios[i].NUTITULOELEITOR ;
    qryFuncionario.Fieldbyname('NUCARTEIRAMOTORISTA').AsString     := listaFuncionarios[i].NUCARTEIRAMOTORISTA ;
    qryFuncionario.Fieldbyname('TPCATERORIA').AsString             := listaFuncionarios[i].TPCATERORIA ;
    qryFuncionario.Fieldbyname('DTVALIDADECARTEIRAMOT').AsDateTime := listaFuncionarios[i].DTVALIDADECARTEIRAMOT ;
    qryFuncionario.Fieldbyname('TLRESIDENCIAL').AsString           := listaFuncionarios[i].TLRESIDENCIAL ;
    qryFuncionario.Fieldbyname('TLCELULAR').AsString               := listaFuncionarios[i].TLCELULAR ;
    qryFuncionario.Fieldbyname('TLCONTATO').AsString               := listaFuncionarios[i].TLCONTATO ;
    qryFuncionario.Fieldbyname('NMCONTATO').AsString               := listaFuncionarios[i].NMCONTATO ;
    qryFuncionario.Fieldbyname('DTCONTRATACAO').AsDateTime         := listaFuncionarios[i].DTCONTRATACAO ;
    qryFuncionario.Fieldbyname('DTDEMISSAO').AsDateTime            := listaFuncionarios[i].DTDEMISSAO ;
    qryFuncionario.Fieldbyname('DTCADASTRO').AsDateTime            := listaFuncionarios[i].DTCADASTRO ;
    qryFuncionario.Fieldbyname('STATIVO').AsString                 := listaFuncionarios[i].STATIVO ;
    qryFuncionario.Fieldbyname('TXOBS').AsString                   := listaFuncionarios[i].TXOBS ;
    qryFuncionario.Fieldbyname('NMENDERECO').AsString              := listaFuncionarios[i].NMENDERECO ;
    qryFuncionario.Fieldbyname('NUENDERECO').AsString              := listaFuncionarios[i].NUENDERECO ;
    qryFuncionario.Fieldbyname('NMBAIRRO').AsString                := listaFuncionarios[i].NMBAIRRO ;
    qryFuncionario.Fieldbyname('IDCIDADE').AsInteger               := listaFuncionarios[i].IDCIDADE ;
    qryFuncionario.Fieldbyname('IDUF').AsInteger                   := listaFuncionarios[i].IDUF ;
    qryFuncionario.Fieldbyname('NUCEP').AsString                   := listaFuncionarios[i].NUCEP ;
    qryFuncionario.post;

    listaFuncionarios[i].free;
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
      btnCadastraFunc.Enabled    := false;
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
      PageControl1.ActivePage    := TabCadFuncionario;
      PnlTop.Caption             := 'Cadastro de funcion?rios';
      btnPesquisaEmpresa.Enabled := true;
      btnCadastraEmpresa.Enabled := true;
      btnCadastraFunc.Enabled    := false;
    end;

    tpEditarEmpresa:
    begin
      PageControl1.ActivePage    := tabCadEmpresa;
      PnlTop.Caption             := 'Editando Empresa';
      btnPesquisaEmpresa.Enabled := true;
      btnCadastraEmpresa.Enabled := false;
      btnCadastraFunc.Enabled    := false;
      BtnEditaEmpresa.Enabled    := false;
      btnExcluiEmpresa.Enabled   := false;
    end;
  end;
end;

procedure TForm1.resetCadEmpresa;
begin
  edtLogradouro.clear;
  EdtBairro.clear;
  edtNum.clear;
  edtCep.clear;
  EdtNMEMPRESA.clear;
  EdtNUINSCRICAO.clear;
  edtTLCOMERCIAL.clear;
  edtTLCELULAR.clear;
  edtDTABERTURA.clear;
  edtNUCNPJ.clear;
  edtTXOBS.clear;
  edtTXEMAIL.clear;
  edtCod.clear;
  datasetEnderecos.Close;
end;

procedure TForm1.resetCadFuncionario;
begin
  EdtNome.Clear;
  EdtCPF.Clear;
  edtRG.Clear;
  EdtDateNasc.date := date;
  edtEmail.Clear;
  edtCarteiraTrab.Clear;
  edtTituloEleitor.Clear;
  edtCarteiraMotorista.Clear;
  edtTipoCategoria.Clear;
  edtDataVencCarteira.date := date;
  edtTelREsidencial.Clear;
  edtCelular.Clear;
  edtTElContato.Clear;
  EdtDataAdm.Clear;
  edtDataDemissao.Clear;
  cbFuncAtivo.Clear;
  edtTxOBSFunc.Clear;
  EdtEndrecoFunc.Clear;
  edtNumEnderecoFunc.Clear;
  edtBairroFunc.Clear;
  cbUFFunc.Clear;
  cbCidadeFunc.Clear;
  edtCepFunc.Clear;
end;

end.
