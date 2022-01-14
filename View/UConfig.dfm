object FrmConfig: TFrmConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'FrmConfig'
  ClientHeight = 299
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 340
    Height = 293
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -115
    ExplicitWidth = 326
    ExplicitHeight = 414
    DesignSize = (
      340
      293)
    object Label1: TLabel
      Left = 19
      Top = 8
      Width = 161
      Height = 13
      Caption = 'Nome ou Endere'#231'o IP do Servidor'
      Transparent = True
    end
    object Label2: TLabel
      Left = 19
      Top = 178
      Width = 132
      Height = 13
      Caption = 'Banco de Dados do Sistema'
      Transparent = True
    end
    object Label6: TLabel
      Left = 19
      Top = 48
      Width = 121
      Height = 13
      Caption = 'Porta do Banco de Dados'
      Transparent = True
    end
    object Label7: TLabel
      Left = 19
      Top = 92
      Width = 135
      Height = 13
      Caption = 'Usu'#225'rio do Banco de Dados:'
      Transparent = True
    end
    object Label8: TLabel
      Left = 19
      Top = 136
      Width = 125
      Height = 13
      Caption = 'Senha do Banco de Dados'
      Transparent = True
    end
    object edtBaseDados: TcxButtonEdit
      Tag = 3
      Left = 19
      Top = 193
      Hint = 
        'Caminho para base de dados'#13#10'Mantenha o endere'#231'o especificado no ' +
        'campo.'
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      ParentFont = False
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Hint = 'Localizar banco de dados...'
          Kind = bkEllipsis
        end
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000001E1E1E7E0000
            0000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B2BB71A1A
            1A700707071D00000000000000000000000000000000000000003C3C3CFF1E1E
            1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF292929B00D0D0D39000000000000000000000000000000003C3C3CFF3C3C
            3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707071F181818662D2D
            2DBF3C3C3CFF292929B00707071D0000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF343434DF0C0C0C33000000000000000000000000000000000C0C
            0C332D2D2DBF3C3C3CFF1A1A1A700000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000001E1E1E7E3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000001E1E
            1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000001A1A
            1A703C3C3CFF2D2D2DBF0C0C0C33000000000000000000000000000000000C0C
            0C33343434DF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000707
            071D292929B03C3C3CFF2D2D2DBF181818660707071F0707071F181818662D2D
            2DBF3C3C3CFF333333D73C3C3CFF3C3C3CFF0000000000000000000000000000
            00000D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF292929B00D0D0D391E1E1E7E3C3C3CFF0000000000000000000000000000
            0000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B2BB71A1A
            1A700707071D00000000000000001E1E1E7E0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000}
          Hint = 'Testar conex'#227'o com a base de dados...'
          Kind = bkGlyph
        end>
      ShowHint = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'C:\iComercio\DataBase\icom.fdb'
      ExplicitWidth = 592
      Height = 21
      Width = 303
    end
    object edtPorta: TEdit
      Left = 19
      Top = 63
      Width = 303
      Height = 21
      Hint = 'Porta de conex'#227'o com Servidor.'
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecLowerCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = '3050'
      ExplicitWidth = 592
    end
    object edtUsuario: TEdit
      Left = 19
      Top = 107
      Width = 303
      Height = 21
      Hint = 'Usu'#225'rio do Banco de Dados.'
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Text = 'SYSDBA'
      ExplicitWidth = 592
    end
    object edtSenha: TEdit
      Left = 19
      Top = 151
      Width = 303
      Height = 21
      Hint = 'Senha do Banco de Dados'
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = False
      TabOrder = 4
      Text = 'masterkey'
      ExplicitWidth = 592
    end
    object edtServidor: TcxTextEdit
      Left = 19
      Top = 23
      Hint = 'Nome da m'#225'quina na qual a base de dados est'#225' instalada.'
      Anchors = [akLeft, akTop, akRight]
      Enabled = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = clGray
      TabOrder = 0
      Text = '127.0.0.1'
      ExplicitWidth = 592
      Width = 303
    end
    object Button1: TButton
      Left = 233
      Top = 240
      Width = 89
      Height = 41
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
end
