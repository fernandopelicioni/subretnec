object FormCadastraVeiculo: TFormCadastraVeiculo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Ve'#237'culos (Centro de Custo CorporeRM)'
  ClientHeight = 715
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 593
    Height = 500
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 2
      Width = 72
      Height = 13
      Caption = 'Codigo Interno'
    end
    object Label16: TLabel
      Left = 103
      Top = 2
      Width = 92
      Height = 13
      Caption = 'Numero do Ve'#237'culo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 16
      Width = 81
      Height = 24
      DataField = 'VEI_NUN'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit1Exit
    end
    object GroupBox2: TGroupBox
      Left = 329
      Top = 46
      Width = 181
      Height = 36
      Caption = 'Integra'#231#227'o Marker (Ponto)'
      TabOrder = 2
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 16
        Width = 168
        Height = 17
        Caption = 'Opera apenas c/ Motoristas'
        DataField = 'VEI_OPERADOR'
        DataSource = DtCadastro
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 329
      Top = 7
      Width = 181
      Height = 36
      Caption = 'Integra Money'
      TabOrder = 3
      object DBCheckBox2: TDBCheckBox
        Left = 16
        Top = 16
        Width = 168
        Height = 17
        Caption = 'Permitir Lan'#231'amento'
        DataField = 'VEI_INTMON'
        DataSource = DtCadastro
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object EditNumero: TDBEdit
      Left = 103
      Top = 16
      Width = 184
      Height = 53
      DataField = 'VEI_NUMERO'
      DataSource = DtCadastro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit1Exit
    end
    object PageControl1: TPageControl
      Left = 16
      Top = 85
      Width = 563
      Height = 407
      ActivePage = TabSheet1
      TabOrder = 4
      object TabSheet1: TTabSheet
        Caption = 'Ficha'
        object Label2: TLabel
          Left = 17
          Top = 5
          Width = 29
          Height = 13
          Caption = 'Placa:'
        end
        object Label12: TLabel
          Left = 131
          Top = 5
          Width = 49
          Height = 13
          Caption = 'Renavam:'
        end
        object Label11: TLabel
          Left = 413
          Top = 5
          Width = 80
          Height = 13
          Caption = 'Odometro Atual:'
        end
        object DBText1: TDBText
          Left = 430
          Top = 239
          Width = 99
          Height = 13
          DataField = 'PAD_COR'
          DataSource = DtPadVei
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 206
          Top = 220
          Width = 89
          Height = 13
          Caption = 'Padr'#227'o do Ve'#237'culo:'
        end
        object Label19: TLabel
          Left = 24
          Top = 220
          Width = 90
          Height = 13
          Caption = 'LayOut do Ve'#237'culo:'
        end
        object Label15: TLabel
          Left = 21
          Top = 266
          Width = 41
          Height = 13
          Caption = 'Sistema:'
        end
        object Label14: TLabel
          Left = 273
          Top = 266
          Width = 75
          Height = 13
          Caption = 'Tipo de Vinculo:'
        end
        object Label7: TLabel
          Left = 21
          Top = 313
          Width = 307
          Height = 13
          Caption = 'Nome do Centro de Custo (Integra'#231#227'o Corpore GCUSTO.NOME)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 52
          Width = 513
          Height = 54
          Caption = '                      Carroceria                   '
          TabOrder = 3
          object Label8: TLabel
            Left = 5
            Top = 9
            Width = 38
            Height = 13
            Caption = 'Modelo:'
          end
          object Label5: TLabel
            Left = 312
            Top = 9
            Width = 23
            Height = 13
            Caption = 'Ano:'
          end
          object Label13: TLabel
            Left = 369
            Top = 9
            Width = 41
            Height = 13
            Caption = 'Numero:'
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 6
            Top = 24
            Width = 300
            Height = 24
            DataField = 'VEI_CARMOD'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'CAR_COD'
            ListField = 'CAR_DES'
            ListSource = DtmodCar
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 309
            Top = 24
            Width = 53
            Height = 24
            DataField = 'VEI_CARANO'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 365
            Top = 24
            Width = 135
            Height = 24
            DataField = 'VEI_CARNUM'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 16
          Top = 108
          Width = 513
          Height = 53
          Caption = '                         Chassi                     '
          TabOrder = 4
          object Label9: TLabel
            Left = 313
            Top = 6
            Width = 23
            Height = 13
            Caption = 'Ano:'
          end
          object Label4: TLabel
            Left = 11
            Top = 6
            Width = 38
            Height = 13
            Caption = 'Modelo:'
          end
          object Label10: TLabel
            Left = 370
            Top = 6
            Width = 41
            Height = 13
            Caption = 'Numero:'
          end
          object DBEdit4: TDBEdit
            Left = 310
            Top = 21
            Width = 53
            Height = 24
            DataField = 'VEI_CHASSIANO'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 7
            Top = 21
            Width = 300
            Height = 24
            DataField = 'VEI_MODCHA'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'MOD_COD'
            ListField = 'MOD_DES'
            ListSource = DtModCha
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 366
            Top = 21
            Width = 134
            Height = 24
            CharCase = ecUpperCase
            DataField = 'VEI_CHASSINUM'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox6: TGroupBox
          Left = 16
          Top = 165
          Width = 513
          Height = 53
          Caption = '                         Motor                     '
          TabOrder = 5
          object Label17: TLabel
            Left = 11
            Top = 6
            Width = 38
            Height = 13
            Caption = 'Modelo:'
          end
          object Label18: TLabel
            Left = 230
            Top = 6
            Width = 41
            Height = 13
            Caption = 'Numero:'
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 7
            Top = 21
            Width = 210
            Height = 24
            DataField = 'VEI_PMM'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'TMM_COD'
            ListField = 'TMM_DES'
            ListSource = DtModMotor
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit9: TDBEdit
            Left = 223
            Top = 21
            Width = 277
            Height = 24
            CharCase = ecUpperCase
            DataField = 'VEI_NUMMOTOR'
            DataSource = DtCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object Editplaca: TMaskEdit
          Left = 13
          Top = 19
          Width = 112
          Height = 24
          CharCase = ecUpperCase
          EditMask = '!LLL-9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 0
          Text = '   -    '
          OnExit = EditplacaExit
        end
        object DBEdit6: TDBEdit
          Left = 130
          Top = 19
          Width = 255
          Height = 24
          DataField = 'VEI_RENAVAM'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit1Exit
        end
        object EditKm: TMaskEdit
          Left = 411
          Top = 19
          Width = 118
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = ''
          OnExit = EditKmExit
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 200
          Top = 234
          Width = 228
          Height = 24
          DataField = 'VEI_PADRAO'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'PAD_COD'
          ListField = 'PAD_DES'
          ListSource = DtPadVei
          ParentFont = False
          TabOrder = 7
          OnExit = DBLookupComboBox1Exit
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 21
          Top = 234
          Width = 172
          Height = 24
          DataField = 'VEI_LAYOUT'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'VLAY_ID'
          ListField = 'VLAY_DES'
          ListSource = DtVeiLayOut
          ParentFont = False
          TabOrder = 6
          OnExit = DBLookupComboBox1Exit
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 18
          Top = 280
          Width = 249
          Height = 24
          DataField = 'VEI_VSI'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'VSI_COD'
          ListField = 'VSI_DES'
          ListSource = DtVeiSis
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 273
          Top = 280
          Width = 245
          Height = 24
          DataField = 'VEI_STATUS'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'TIV_COD'
          ListField = 'TIV_DES'
          ListSource = DtStavei
          ParentFont = False
          TabOrder = 9
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 18
          Top = 328
          Width = 500
          Height = 24
          DataField = 'VEI_CENTROCUSTO'
          DataSource = DtCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          KeyField = 'CODCCUSTO'
          ListField = 'NOME'
          ListSource = DtCcusto
          ParentFont = False
          TabOrder = 10
        end
        object DBCheckBox3: TDBCheckBox
          Left = 21
          Top = 358
          Width = 185
          Height = 17
          Caption = 'Utiliza Tecnologia Sustent'#225'vel'
          DataField = 'VEI_SUSTENTAVEL'
          DataSource = DtCadastro
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Outros'
        ImageIndex = 1
        object Label6: TLabel
          Left = 23
          Top = 28
          Width = 74
          Height = 13
          Caption = 'Data aquisi'#231#227'o:'
        end
        object Label20: TLabel
          Left = 167
          Top = 28
          Width = 90
          Height = 13
          Caption = 'Inicio de Opera'#231#227'o'
        end
        object Label21: TLabel
          Left = 311
          Top = 28
          Width = 51
          Height = 13
          Caption = 'Nf Compra'
        end
        object Label22: TLabel
          Left = 23
          Top = 84
          Width = 25
          Height = 13
          Caption = 'Linha'
        end
        object DBEdit8: TDBEdit
          Left = 24
          Top = 42
          Width = 120
          Height = 24
          DataField = 'VEI_AQUISICAO'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object DBEdit10: TDBEdit
          Left = 312
          Top = 42
          Width = 217
          Height = 24
          DataField = 'VEI_NFCOMPRA'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = DBEdit1Exit
        end
        object EditInicioOperacao: TDBEdit
          Left = 167
          Top = 42
          Width = 120
          Height = 24
          DataField = 'VEI_INIOPER'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit1Exit
        end
        object DBEdit11: TDBEdit
          Left = 24
          Top = 98
          Width = 151
          Height = 24
          DataField = 'VEI_LINHA'
          DataSource = DtCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = DBEdit1Exit
        end
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 67
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Salvar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC05859A57878CBBEBCF1EEEBE5E6
      E5A35756A53F3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4
      716DCD6464A468689D4544E5D9D8FFFFFFA95857A63B3AB55C5DFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFC3726ECB6061B57A7A9F5554B1A1A0F1ED
      EBAD5859A6393AB55C5DFF00FFFF00FFFF00FFFF00FFC05859A57878CBBEBCC1
      6F6BC5595AC87171CB807FC37272CA7878C76D6DC86565B25859FF00FFFF00FF
      FF00FFC4716DCD6464A468689D4544B6635ED09C9AEEDCDCEEDCDAEFDAD8EED8
      D7EFE3E1D38D8CAE4E4FFF00FFFF00FFFF00FFC3726ECB6061B57A7A9F5554B6
      635DE6CCCAF3F8F7EAE8E8EBEAE9EBEBEAF2F6F5D28F8EAD4C4DFF00FFFF00FF
      FF00FFC16F6BC5595AC87171CB807FB6635EE4C5C4E6E7E6DBD7D7DDD9D9DBD9
      D8E8E9E9D28E8EAD4C4DFF00FFC05859A57878B6635ED09C9AEEDCDCEEDCDAB7
      645EE6C7C7EFEFEEE4E1E0E6E2E1E5E2E1F0EFEED5918FAD4C4DC4716DCD6464
      A46868B6635DE6CCCAF3F8F7EAE8E8EBEAE9D2B6B5E6E7E7E2DCDCE2DDDDE2DD
      DEE5E5E4C28584FF00FFC3726ECB6061B57A7AB6635EE4C5C4E6E7E6DBD7D7DD
      D9D9DBD9D8E8E9E9D28E8EAD4C4DFF00FFFF00FFFF00FFFF00FFC16F6BC5595A
      C87171B7645EE6C7C7EFEFEEE4E1E0E6E2E1E5E2E1F0EFEED5918FAD4C4DFF00
      FFFF00FFFF00FFFF00FFB6635ED09C9AEEDCDCEEDCDAD2B6B5E6E7E7E2DCDCE2
      DDDDE2DDDEE5E5E4C28584FF00FFFF00FFFF00FFFF00FFFF00FFB6635DE6CCCA
      F3F8F7EAE8E8EBEAE9EBEBEAF2F6F5D28F8EAD4C4DFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFB6635EE4C5C4E6E7E6DBD7D7DDD9D9DBD9D8E8E9E9D2
      8E8EAD4C4DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB7645EE6C7C7
      EFEFEEE4E1E0E6E2E1E5E2E1F0EFEED5918FAD4C4DFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFD2B6B5E6E7E7E2DCDCE2DDDDE2DDDEE5E5E4C2
      8584FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object BitBtn1: TBitBtn
    Left = 148
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Novo'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03
      5D05035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF035D055BF791058C0D035D05FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
      F79105950E035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF035D055BF79105920D035D05FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
      F79106950F035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      035D05035D05035D05035D05035D055BF7910C9C18035D05035D05035D05035D
      05035D05FF00FFFF00FFFF00FF035D055BF7913BDA6930CF572AC64D21B83C17
      A62B119F210D9E1C0A9A1506920E05930D058B0D035D05FF00FFFF00FF035D05
      5BF7915BF7915BF7915BF7915BF7915BF79118A92F5BF7915BF7915BF7915BF7
      915BF791035D05FF00FFFF00FFFF00FF035D05035D05035D05035D05035D055B
      F79125BC42035D05035D05035D05035D05035D05FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF035D055BF79130CE57035D05FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
      F7913BD968035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF035D055BF79148EB7F035D05FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
      F7915BF791035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF035D05035D05FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn4: TBitBtn
    Left = 229
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Excluir'
    Enabled = False
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463EDA463EDA463EDA4
      63EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFEDA463FFE5BAFECCA3F4B781EEA665EDA462EEA767FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFF6CCFEE2B7FCCA9FF4B681EEA6
      66EDA463EDA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFED
      A463FFFBCCFEE2B7FCCBA0F4B782EEA666EDA462EDA463FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFF4CA90FFFFD4FFE7BCFED0A6F6BA86EEA6
      68EDA462EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FE
      F2C7FFFACFFAD3A1F6BB87F2B177EEA565EDA360EDA463EDA463FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFEDA767E7AB68D77F32DA8136E3954CEAAA66EEB6
      77EFB473EDA766EDA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD77D32B7
      4100C95F13DE8339E9A560F0C284F7DAA4F4D79FEEBA79EAA35FFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFDA833AC2550BCB6518E0873F004B00004B00FCEE
      BDFBE6B5F0BC7FEAA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFDE843C004B001E9A3639D767004B00EDA463FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF93625D9C695FFF00FFFF00FF004B000A721226AC4423BA410C86
      16004B00FF00FFFF00FFAD81799F6F6AC79D83C4987E9C695DB67844915C5AFF
      00FF004B00004B000F72170C8C18004B00004B00FF00FFFF00FFA17675DEB27D
      9F5B339C6B67C29379AC7658915D59FF00FFFF00FFFF00FF026305004B00FF00
      FFFF00FFFF00FFFF00FF8C5959905B55AF5E16D1A177A16E63A16A50FF00FFFF
      00FFFF00FFFF00FF026305004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      9E5E3AA17065C5A9AB976867FF00FFFF00FF004B00004B00004B00FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF8F5C59936566976868FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 310
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Cancelar'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777777777777777777777777777777777777777777777777777777
      7777777777777778477777444447777748777744447777777477774447777777
      7477774474777777747777477744777748777777777744448777777777777777
      7777777777777777777777777777777777777777777777777777}
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn5: TBitBtn
    Left = 470
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = '&Sair'
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 545
    Width = 593
    Height = 155
    CustomHint = pai.BalloonHint1
    Ctl3D = True
    DataSource = DtCadastro
    DrawingStyle = gdsGradient
    GradientEndColor = clWhite
    GradientStartColor = clSilver
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'VEI_NUMERO'
        Title.Caption = 'Numero:'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_PLACA'
        Title.Caption = 'Placa:'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_CHASSIANO'
        Title.Caption = 'Ano:'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_AQUISICAO'
        Title.Caption = 'Aquisi'#231#227'o'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEI_CENTROCUSTO'
        Title.Caption = 'C.Custo'
        Visible = True
      end>
  end
  object BitBtn6: TBitBtn
    Left = 391
    Top = 514
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Localizar'
    TabOrder = 7
    OnClick = BitBtn6Click
  end
  object XPManifest1: TXPManifest
    Left = 592
    Top = 232
  end
  object DtCadastro: TDataSource
    DataSet = pai.QrVeiculo
    Left = 556
    Top = 128
  end
  object DtPadVei: TDataSource
    DataSet = pai.QrPadVei
    Left = 428
    Top = 40
  end
  object DtModCha: TDataSource
    DataSet = pai.QrModCha
    Left = 548
    Top = 168
  end
  object DtmodCar: TDataSource
    DataSet = pai.QrModCar
    Left = 348
    Top = 80
  end
  object DtIndiceRevisao: TDataSource
    DataSet = pai.QrIndiceRevisao
    Left = 476
    Top = 280
  end
  object DtStavei: TDataSource
    DataSet = pai.QrStatusVei
    Left = 496
    Top = 40
  end
  object DtVeiSis: TDataSource
    DataSet = pai.QrVeiSistema
    Left = 196
    Top = 288
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 56
    Top = 336
  end
  object DtCcusto: TDataSource
    DataSet = pai.QrCCusto
    Left = 568
    Top = 24
  end
  object DtModMotor: TDataSource
    DataSet = pai.QrModMotor
    Left = 476
    Top = 248
  end
  object DtVeiLayOut: TDataSource
    DataSet = pai.QRVEILAYOUT
    Left = 236
    Top = 240
  end
end
