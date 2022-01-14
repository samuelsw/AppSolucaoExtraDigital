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
    object btnPesquisaEmpresa: TButton
      Left = 167
      Top = 6
      Width = 139
      Height = 43
      Caption = 'Pesquisar Empresas'
      Enabled = False
      TabOrder = 0
      OnClick = btnPesquisaEmpresaClick
    end
    object btnCadastraEmpresa: TButton
      Left = 327
      Top = 6
      Width = 139
      Height = 43
      Caption = 'Cadastrar Empresas'
      TabOrder = 1
      OnClick = btnCadastraEmpresaClick
    end
    object btnCadastraFunc: TButton
      Left = 489
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
          object DBGrid2: TDBGrid
            Left = 0
            Top = 82
            Width = 780
            Height = 337
            Align = alBottom
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
            Height = 70
            TabOrder = 1
            object Label1: TLabel
              Left = 21
              Top = 8
              Width = 27
              Height = 13
              Caption = 'Filtro '
            end
            object Label2: TLabel
              Left = 424
              Top = 8
              Width = 67
              Height = 13
              Caption = 'Tipos de Filtro'
            end
            object edtFiltro: TEdit
              Left = 21
              Top = 26
              Width = 390
              Height = 21
              TabOrder = 0
            end
            object ComboBox1: TComboBox
              Left = 424
              Top = 26
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
              Left = 664
              Top = 18
              Width = 84
              Height = 37
              Caption = 'Pesquisar'
              TabOrder = 2
              OnClick = Button1Click
            end
          end
        end
        object tabCadEmpresa: TTabSheet
          Caption = 'tabCadEmpresa'
          ImageIndex = 1
          object GroupBox2: TGroupBox
            Left = 3
            Top = 3
            Width = 774
            Height = 174
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
              Top = 67
              Width = 43
              Height = 13
              Caption = 'Inscri'#231#227'o'
            end
            object Label6: TLabel
              Left = 14
              Top = 115
              Width = 91
              Height = 13
              Caption = 'Telefone Comercial'
            end
            object Label7: TLabel
              Left = 166
              Top = 115
              Width = 78
              Height = 13
              Caption = 'Telefone Celular'
            end
            object Label5: TLabel
              Left = 698
              Top = 19
              Width = 25
              Height = 13
              Caption = 'Ativo'
            end
            object lblData: TLabel
              Left = 287
              Top = 67
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
              Top = 115
              Width = 20
              Height = 13
              Caption = 'OBS'
            end
            object Label8: TLabel
              Left = 477
              Top = 67
              Width = 24
              Height = 13
              Caption = 'Email'
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
              Top = 82
              Width = 262
              Height = 21
              TabOrder = 1
            end
            object edtTLCOMERCIAL: TEdit
              Left = 14
              Top = 130
              Width = 133
              Height = 21
              TabOrder = 2
            end
            object edtTLCELULAR: TEdit
              Left = 166
              Top = 130
              Width = 133
              Height = 21
              TabOrder = 3
            end
            object edtDTABERTURA: TEdit
              Left = 287
              Top = 82
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
              Top = 130
              Width = 61
              Height = 21
              TabOrder = 6
            end
            object edtTXEMAIL: TEdit
              Left = 477
              Top = 82
              Width = 282
              Height = 21
              TabOrder = 7
            end
            object STATIVO: TComboBox
              Left = 698
              Top = 34
              Width = 61
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
              Top = 115
              Width = 123
              Height = 36
              Caption = 'Cadastrar Empresa'
              TabOrder = 9
              OnClick = Button5Click
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
    Left = 48
    Top = 176
  end
  object datasetEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 120
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
    Left = 47
    Top = 237
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
end
