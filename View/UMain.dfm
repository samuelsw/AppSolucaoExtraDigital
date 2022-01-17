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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label26: TLabel
    Left = 165
    Top = 146
    Width = 41
    Height = 13
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 500
    Width = 792
    Height = 56
    Align = alBottom
    TabOrder = 0
    object btnPesquisaEmpresa: TButton
      Left = 15
      Top = 6
      Width = 125
      Height = 43
      Caption = 'Pesquisar Empresas'
      Enabled = False
      TabOrder = 0
      OnClick = btnPesquisaEmpresaClick
    end
    object btnCadastraEmpresa: TButton
      Left = 149
      Top = 6
      Width = 125
      Height = 43
      Caption = 'Cadastrar Empresas'
      TabOrder = 1
      OnClick = btnCadastraEmpresaClick
    end
    object btnCadastraFunc: TButton
      Left = 551
      Top = 6
      Width = 125
      Height = 43
      Caption = 'Cadastrar Funcion'#225'rios'
      Enabled = False
      TabOrder = 2
      OnClick = btnCadastraFuncClick
    end
    object BtnEditaEmpresa: TButton
      Left = 283
      Top = 6
      Width = 125
      Height = 43
      Caption = 'Editar Empresa'
      Enabled = False
      TabOrder = 3
      OnClick = BtnEditaEmpresaClick
    end
    object btnExcluiEmpresa: TButton
      Left = 417
      Top = 6
      Width = 125
      Height = 43
      Caption = 'Excluir Empresa'
      Enabled = False
      TabOrder = 4
      OnClick = btnExcluiEmpresaClick
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
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
          end
          object GroupBox1: TGroupBox
            Left = 3
            Top = 3
            Width = 774
            Height = 57
            TabOrder = 1
            object Label1: TLabel
              Left = 6
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
              Left = 6
              Top = 21
              Width = 407
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
            ReadOnly = True
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
              Left = 14
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
            Height = 265
            Caption = 'Endere'#231'os'
            TabOrder = 1
            object Label10: TLabel
              Left = 14
              Top = 23
              Width = 55
              Height = 13
              Caption = 'Logradouro'
            end
            object Label11: TLabel
              Left = 477
              Top = 23
              Width = 28
              Height = 13
              Caption = 'Bairro'
            end
            object Label12: TLabel
              Left = 689
              Top = 23
              Width = 37
              Height = 13
              Caption = 'Numero'
            end
            object Label13: TLabel
              Left = 14
              Top = 68
              Width = 19
              Height = 13
              Caption = 'CEP'
            end
            object Label14: TLabel
              Left = 135
              Top = 68
              Width = 13
              Height = 13
              Caption = 'UF'
            end
            object Label15: TLabel
              Left = 237
              Top = 68
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label16: TLabel
              Left = 405
              Top = 68
              Width = 25
              Height = 13
              Caption = 'Ativo'
            end
            object edtLogradouro: TEdit
              Left = 14
              Top = 39
              Width = 449
              Height = 21
              TabOrder = 0
            end
            object DBGrid4: TDBGrid
              Left = 2
              Top = 134
              Width = 770
              Height = 129
              Align = alBottom
              DataSource = dsEnderecos
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
            object EdtBairro: TEdit
              Left = 477
              Top = 39
              Width = 204
              Height = 21
              TabOrder = 2
            end
            object edtNum: TEdit
              Left = 689
              Top = 39
              Width = 70
              Height = 21
              TabOrder = 3
            end
            object edtCep: TEdit
              Left = 14
              Top = 84
              Width = 107
              Height = 21
              TabOrder = 4
            end
            object cbUF: TComboBox
              Left = 135
              Top = 83
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
            object cbCidade: TComboBox
              Left = 237
              Top = 83
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
            object cbEnderecoAtivo: TComboBox
              Left = 405
              Top = 83
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
              Top = 68
              Width = 123
              Height = 36
              Caption = 'Gravar Endere'#231'o'
              TabOrder = 8
              OnClick = Button2Click
            end
          end
        end
        object TabCadFuncionario: TTabSheet
          Caption = 'TabCadFuncionario'
          ImageIndex = 2
          object Label9: TLabel
            Left = 8
            Top = 48
            Width = 41
            Height = 13
            Caption = 'Nome(*)'
          end
          object Label18: TLabel
            Left = 8
            Top = 8
            Width = 85
            Height = 13
            Caption = 'Data Admiss'#227'o(*)'
          end
          object Label19: TLabel
            Left = 118
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Data Demiss'#227'o'
          end
          object Label20: TLabel
            Left = 227
            Top = 8
            Width = 19
            Height = 13
            Caption = 'CPF'
          end
          object Label21: TLabel
            Left = 407
            Top = 8
            Width = 14
            Height = 13
            Caption = 'RG'
          end
          object Label22: TLabel
            Left = 537
            Top = 8
            Width = 96
            Height = 13
            Caption = 'Data de Nascimento'
          end
          object Label23: TLabel
            Left = 8
            Top = 93
            Width = 24
            Height = 13
            Caption = 'Email'
          end
          object Label24: TLabel
            Left = 310
            Top = 93
            Width = 99
            Height = 13
            Caption = 'Carteira de Trabalho'
          end
          object lblTitulo: TLabel
            Left = 446
            Top = 48
            Width = 74
            Height = 13
            Caption = 'T'#237'tulo de eleitor'
          end
          object Label25: TLabel
            Left = 592
            Top = 48
            Width = 102
            Height = 13
            Caption = 'Carteira de motorista'
          end
          object lbltipo: TLabel
            Left = 8
            Top = 138
            Width = 85
            Height = 13
            Caption = 'Tipo de Categoria'
          end
          object lblVencimento: TLabel
            Left = 612
            Top = 93
            Width = 97
            Height = 13
            Caption = 'Vencimento Carteira'
          end
          object Label35: TLabel
            Left = 156
            Top = 136
            Width = 41
            Height = 13
            Caption = 'Celular'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object edtContatoFunc: TLabel
            Left = 394
            Top = 138
            Width = 65
            Height = 13
            Caption = 'Tel Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 275
            Top = 138
            Width = 84
            Height = 13
            Caption = 'Tel Residencial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 664
            Top = 7
            Width = 25
            Height = 13
            Caption = 'Ativo'
          end
          object Label30: TLabel
            Left = 513
            Top = 138
            Width = 20
            Height = 13
            Caption = 'OBS'
          end
          object EdtNome: TEdit
            Left = 8
            Top = 64
            Width = 432
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 0
          end
          object EdtCPF: TMaskEdit
            Left = 227
            Top = 24
            Width = 174
            Height = 21
            Color = clHighlightText
            EditMask = '999.999.999-99;1;_'
            MaxLength = 14
            TabOrder = 1
            Text = '   .   .   -  '
          end
          object edtRG: TEdit
            Left = 407
            Top = 24
            Width = 124
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 2
          end
          object EdtDateNasc: TDateTimePicker
            Left = 537
            Top = 24
            Width = 105
            Height = 21
            Date = 43341.000000000000000000
            Time = 0.397320844909700100
            TabOrder = 3
          end
          object edtEmail: TEdit
            Left = 8
            Top = 109
            Width = 291
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 4
          end
          object edtCarteiraTrab: TEdit
            Left = 310
            Top = 109
            Width = 291
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 5
          end
          object edtTituloEleitor: TEdit
            Left = 446
            Top = 64
            Width = 131
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 6
          end
          object edtCarteiraMotorista: TEdit
            Left = 592
            Top = 64
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 7
          end
          object edtTipoCategoria: TEdit
            Left = 8
            Top = 154
            Width = 142
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 8
          end
          object edtDataVencCarteira: TDateTimePicker
            Left = 612
            Top = 109
            Width = 141
            Height = 21
            Date = 43341.000000000000000000
            Time = 0.397320844909700100
            TabOrder = 9
          end
          object edtTelREsidencial: TEdit
            Left = 275
            Top = 154
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 14
            TabOrder = 10
          end
          object edtCelular: TEdit
            Left = 156
            Top = 154
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 14
            TabOrder = 11
          end
          object edtTElContato: TEdit
            Left = 394
            Top = 154
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 14
            TabOrder = 12
          end
          object EdtDataAdm: TMaskEdit
            Left = 8
            Top = 24
            Width = 103
            Height = 21
            EditMask = '99/99/9999;1;_'
            MaxLength = 10
            TabOrder = 13
            Text = '  /  /    '
          end
          object edtDataDemissao: TMaskEdit
            Left = 118
            Top = 24
            Width = 103
            Height = 21
            EditMask = '99/99/9999;1;_'
            MaxLength = 10
            TabOrder = 14
            Text = '  /  /    '
          end
          object cbFuncAtivo: TComboBox
            Left = 664
            Top = 24
            Width = 89
            Height = 21
            Style = csDropDownList
            CharCase = ecUpperCase
            ItemIndex = 0
            TabOrder = 15
            Text = 'S'
            Items.Strings = (
              'S'
              'N')
          end
          object edtTxOBSFunc: TEdit
            Left = 513
            Top = 154
            Width = 240
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            MaxLength = 60
            TabOrder = 16
          end
          object GroupBox4: TGroupBox
            Left = 8
            Top = 200
            Width = 745
            Height = 105
            TabOrder = 17
            object Label27: TLabel
              Left = 17
              Top = 12
              Width = 53
              Height = 13
              Caption = 'Endereco'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 317
              Top = 12
              Width = 69
              Height = 13
              Caption = 'N. Endere'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 395
              Top = 12
              Width = 35
              Height = 13
              Caption = 'Bairro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 17
              Top = 60
              Width = 13
              Height = 13
              Caption = 'UF'
            end
            object Label34: TLabel
              Left = 119
              Top = 60
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label36: TLabel
              Left = 525
              Top = 12
              Width = 19
              Height = 13
              Caption = 'CEP'
            end
            object EdtEndrecoFunc: TEdit
              Left = 17
              Top = 29
              Width = 291
              Height = 21
              CharCase = ecUpperCase
              Color = clHighlightText
              MaxLength = 60
              TabOrder = 0
            end
            object edtNumEnderecoFunc: TEdit
              Left = 317
              Top = 29
              Width = 69
              Height = 21
              CharCase = ecUpperCase
              Color = clHighlightText
              MaxLength = 60
              TabOrder = 1
            end
            object edtBairroFunc: TEdit
              Left = 395
              Top = 29
              Width = 124
              Height = 21
              CharCase = ecUpperCase
              Color = clHighlightText
              MaxLength = 60
              TabOrder = 2
            end
            object cbUFFunc: TComboBox
              Left = 17
              Top = 74
              Width = 90
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 3
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object cbCidadeFunc: TComboBox
              Left = 119
              Top = 74
              Width = 156
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              ItemIndex = 0
              TabOrder = 4
              Text = 'S'
              Items.Strings = (
                'S'
                'N')
            end
            object edtCepFunc: TEdit
              Left = 525
              Top = 29
              Width = 107
              Height = 21
              TabOrder = 5
            end
          end
          object btnGravaFunc: TButton
            Left = 624
            Top = 364
            Width = 129
            Height = 36
            Caption = 'Gravar Funcion'#225'rio'
            TabOrder = 18
            OnClick = btnGravaFuncClick
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
