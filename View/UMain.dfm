object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'App'
  ClientHeight = 556
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 500
    Width = 792
    Height = 56
    Align = alBottom
    TabOrder = 0
    object Label9: TLabel
      Left = 563
      Top = 13
      Width = 164
      Height = 28
      Caption = 'Clique com bot'#227'o direito para excluir ou alterar empresas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object btnPesquisaEmpresa: TButton
      Left = 30
      Top = 6
      Width = 139
      Height = 43
      Caption = 'Pesquisar Empresas'
      Enabled = False
      TabOrder = 0
      OnClick = btnPesquisaEmpresaClick
    end
    object btnCadastraEmpresa: TButton
      Left = 190
      Top = 6
      Width = 139
      Height = 43
      Caption = 'Cadastrar Empresas'
      TabOrder = 1
      OnClick = btnCadastraEmpresaClick
    end
    object btnCadastraFunc: TButton
      Left = 352
      Top = 6
      Width = 139
      Height = 43
      Caption = 'Cadastrar Funcion'#225'rios'
      TabOrder = 2
      OnClick = btnCadastraFuncClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 792
    Height = 451
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 496
      Top = 297
      Width = 320
      Height = 120
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 790
      Height = 449
      Align = alClient
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 788
        Height = 447
        ActivePage = TabEmpresas
        Align = alClient
        TabOrder = 0
        object TabEmpresas: TTabSheet
          Caption = 'TabEmpresas'
          object Funcionarios: TLabel
            Left = 3
            Top = 296
            Width = 76
            Height = 14
            Caption = 'Funcion'#225'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBGrid2: TDBGrid
            Left = 3
            Top = 61
            Width = 774
            Height = 228
            DataSource = dsEmpresa
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object GroupBox1: TGroupBox
            Left = 3
            Top = 3
            Width = 774
            Height = 57
            TabOrder = 1
            object Label1: TLabel
              Left = 21
              Top = 7
              Width = 27
              Height = 13
              Caption = 'Filtro '
            end
            object Label2: TLabel
              Left = 424
              Top = 7
              Width = 67
              Height = 13
              Caption = 'Tipos de Filtro'
            end
            object edtFiltro: TEdit
              Left = 21
              Top = 21
              Width = 390
              Height = 21
              TabOrder = 0
            end
            object ComboBox1: TComboBox
              Left = 424
              Top = 21
              Width = 217
              Height = 21
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 1
              Text = 'POR ID '
              Items.Strings = (
                'POR ID '
                'POR NOME')
            end
            object Button1: TButton
              Left = 669
              Top = 7
              Width = 84
              Height = 35
              Caption = 'Pesquisar'
              TabOrder = 2
              OnClick = Button1Click
            end
          end
          object DBGrid3: TDBGrid
            Left = 3
            Top = 316
            Width = 774
            Height = 98
            PopupMenu = PopupMenu1
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object tabCadEmpresa: TTabSheet
          Caption = 'tabCadEmpresa'
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 3
            Top = 0
            Width = 774
            Height = 145
            TabOrder = 0
            object lblRazao: TLabel
              Left = 18
              Top = 19
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label4: TLabel
              Left = 14
              Top = 58
              Width = 43
              Height = 13
              Caption = 'Inscri'#231#227'o'
            end
            object Label6: TLabel
              Left = 14
              Top = 98
              Width = 91
              Height = 13
              Caption = 'Telefone Comercial'
            end
            object Label7: TLabel
              Left = 166
              Top = 98
              Width = 78
              Height = 13
              Caption = 'Telefone Celular'
            end
            object Label5: TLabel
              Left = 689
              Top = 19
              Width = 25
              Height = 13
              Caption = 'Ativo'
            end
            object lblData: TLabel
              Left = 287
              Top = 58
              Width = 84
              Height = 13
              Caption = 'Data de Abertura'
            end
            object Label3: TLabel
              Left = 477
              Top = 19
              Width = 25
              Height = 13
              Caption = 'CNPJ'
            end
            object LBLTX: TLabel
              Left = 317
              Top = 98
              Width = 20
              Height = 13
              Caption = 'OBS'
            end
            object Label8: TLabel
              Left = 477
              Top = 58
              Width = 24
              Height = 13
              Caption = 'Email'
            end
            object Label17: TLabel
              Left = 402
              Top = 98
              Width = 33
              Height = 13
              Caption = 'Codigo'
              Visible = False
            end
            object EdtNMEMPRESA: TEdit
              Left = 14
              Top = 34
              Width = 449
              Height = 21
              TabOrder = 0
            end
            object EdtNUINSCRICAO: TEdit
              Left = 14
              Top = 73
              Width = 262
              Height = 21
              TabOrder = 1
            end
            object edtTLCOMERCIAL: TEdit
              Left = 14
              Top = 113
              Width = 133
              Height = 21
              TabOrder = 2
            end
            object edtTLCELULAR: TEdit
              Left = 166
              Top = 113
              Width = 133
              Height = 21
              TabOrder = 3
            end
            object edtDTABERTURA: TEdit
              Left = 287
              Top = 73
              Width = 176
              Height = 21
              TabOrder = 4
            end
            object edtNUCNPJ: TEdit
              Left = 477
              Top = 34
              Width = 204
              Height = 21
              TabOrder = 5
            end
            object edtTXOBS: TEdit
              Left = 317
              Top = 113
              Width = 61
              Height = 21
              TabOrder = 6
            end
            object edtTXEMAIL: TEdit
              Left = 477
              Top = 73
              Width = 282
              Height = 21
              TabOrder = 7
            end
            object STATIVO: TComboBox
              Left = 689
              Top = 34
              Width = 70
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 8
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object Button5: TButton
              Left = 636
              Top = 98
              Width = 123
              Height = 36
              Caption = 'Gravar Empresa'
              TabOrder = 9
              OnClick = Button5Click
            end
            object edtCod: TEdit
              Left = 402
              Top = 113
              Width = 61
              Height = 21
              TabOrder = 10
              Visible = False
            end
          end
          object GroupBox3: TGroupBox
            Left = 3
            Top = 151
            Width = 774
            Height = 220
            TabOrder = 1
            object Label10: TLabel
              Left = 14
              Top = 5
              Width = 55
              Height = 13
              Caption = 'Logradouro'
            end
            object Label11: TLabel
              Left = 477
              Top = 5
              Width = 28
              Height = 13
              Caption = 'Bairro'
            end
            object Label12: TLabel
              Left = 689
              Top = 5
              Width = 37
              Height = 13
              Caption = 'Numero'
            end
            object Label13: TLabel
              Left = 14
              Top = 45
              Width = 19
              Height = 13
              Caption = 'CEP'
            end
            object Label14: TLabel
              Left = 135
              Top = 46
              Width = 13
              Height = 13
              Caption = 'UF'
            end
            object Label15: TLabel
              Left = 237
              Top = 46
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label16: TLabel
              Left = 405
              Top = 46
              Width = 25
              Height = 13
              Caption = 'Ativo'
            end
            object Edit1: TEdit
              Left = 14
              Top = 21
              Width = 449
              Height = 21
              TabOrder = 0
            end
            object DBGrid4: TDBGrid
              Left = 0
              Top = 88
              Width = 774
              Height = 129
              DataSource = dsEnderecos
              PopupMenu = PopupMenu1
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
            object Edit2: TEdit
              Left = 477
              Top = 21
              Width = 204
              Height = 21
              TabOrder = 2
            end
            object Edit3: TEdit
              Left = 689
              Top = 21
              Width = 70
              Height = 21
              TabOrder = 3
            end
            object Edit4: TEdit
              Left = 14
              Top = 61
              Width = 107
              Height = 21
              TabOrder = 4
            end
            object ComboBox2: TComboBox
              Left = 135
              Top = 61
              Width = 90
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 5
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object ComboBox3: TComboBox
              Left = 237
              Top = 61
              Width = 156
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 6
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object ComboBox4: TComboBox
              Left = 405
              Top = 61
              Width = 70
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 7
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object Button2: TButton
              Left = 636
              Top = 46
              Width = 123
              Height = 36
              Caption = 'Gravar Endere'#231'o'
              TabOrder = 8
            end
          end
        end
      end
    end
  end
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 49
    Align = alTop
    Caption = 'Pesquisa de Empresas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentFont = False
    TabOrder = 2
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = datasetEmpresa
    Left = 41
    Top = 309
  end
  object datasetEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 42
    Top = 268
    object datasetEmpresaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object datasetEmpresaNMEMPRESA: TStringField
      FieldName = 'NMEMPRESA'
      Size = 100
    end
    object datasetEmpresaNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      Size = 18
    end
    object datasetEmpresaNUINSCRICAO: TStringField
      FieldName = 'NUINSCRICAO'
      Size = 15
    end
    object datasetEmpresaSTATIVO: TStringField
      FieldName = 'STATIVO'
      Size = 1
    end
    object datasetEmpresaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object datasetEmpresaDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
    end
    object datasetEmpresaTLCOMERCIAL: TStringField
      FieldName = 'TLCOMERCIAL'
      Size = 15
    end
    object datasetEmpresaTLCELULAR: TStringField
      FieldName = 'TLCELULAR'
      Size = 15
    end
    object datasetEmpresaTXOBS: TIntegerField
      FieldName = 'TXOBS'
    end
    object datasetEmpresaTXEMAIL: TStringField
      FieldName = 'TXEMAIL'
      Size = 100
    end
    object datasetEmpresaSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Size = 1
    end
    object datasetEmpresaDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 711
    Top = 171
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      OnClick = Editar1Click
    end
  end
  object dsEnderecos: TDataSource
    DataSet = datasetEnderecos
    Left = 130
    Top = 309
  end
  object datasetEnderecos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 130
    Top = 268
    object datasetEnderecosIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
    end
    object datasetEnderecosIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
    end
    object datasetEnderecosIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object datasetEnderecosNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Size = 100
    end
    object datasetEnderecosNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Size = 50
    end
    object datasetEnderecosIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object datasetEnderecosIDUF: TIntegerField
      FieldName = 'IDUF'
    end
    object datasetEnderecosNUCEP: TStringField
      FieldName = 'NUCEP'
      Size = 10
    end
    object datasetEnderecosSTATIVO: TStringField
      FieldName = 'STATIVO'
      Size = 1
    end
    object datasetEnderecosTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Size = 1
    end
  end
end
