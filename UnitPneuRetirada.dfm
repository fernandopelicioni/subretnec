object FormPneuRetirada: TFormPneuRetirada
  Left = 753
  Top = 212
  AlphaBlendValue = 240
  BorderIcons = []
  Caption = 'Genoma Software'
  ClientHeight = 528
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 56
    Width = 448
    Height = 385
    Align = alTop
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 38
      Top = 219
      Width = 28
      Height = 17
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 239
      Top = 219
      Width = 60
      Height = 17
      Caption = 'Odometro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 42
      Top = 196
      Width = 106
      Height = 17
      Caption = 'Motivo da Retirada:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 17
      Top = 283
      Width = 67
      Height = 17
      Caption = 'Informa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 154
      Top = 196
      Width = 255
      Height = 17
      DataField = 'TMRP_DES'
      DataSource = DtMotRet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object EditData: TMaskEdit
      Left = 31
      Top = 239
      Width = 169
      Height = 36
      BevelInner = bvNone
      BevelOuter = bvNone
      BevelKind = bkSoft
      Ctl3D = False
      EditMask = '!00/00/0000;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -21
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      MaxLength = 10
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnEnter = EditDataEnter
      OnKeyDown = EditDataKeyDown
      OnKeyPress = EditDataKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 10
      Width = 421
      Height = 108
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 23
        Top = 36
        Width = 30
        Height = 13
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 24
        Top = 47
        Width = 46
        Height = 17
        AutoSize = True
        DataField = 'TPM_DES'
        DataSource = DtPneu
        Font.Charset = ANSI_CHARSET
        Font.Color = 16711808
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 199
        Top = 36
        Width = 22
        Height = 13
        Caption = 'Vida:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 200
        Top = 47
        Width = 46
        Height = 17
        AutoSize = True
        DataField = 'TPV_DES'
        DataSource = DtPneu
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 23
        Top = 3
        Width = 379
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -29
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 1
        Top = 59
        Width = 419
        Height = 48
        Align = alBottom
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object DBText9: TDBText
          Left = 106
          Top = 22
          Width = 99
          Height = 19
          Alignment = taCenter
          DataField = 'PMOV_DTENT'
          DataSource = DtMov
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 224
          Top = 10
          Width = 40
          Height = 13
          Caption = 'Posi'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 119
          Top = 10
          Width = 75
          Height = 13
          AutoSize = False
          Caption = 'Data Instala'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 6
          Top = 22
          Width = 74
          Height = 19
          Alignment = taCenter
          DataField = 'PMOV_KMENT'
          DataSource = DtMov
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 71
          Height = 13
          Caption = 'Km Instala'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 300
          Top = 23
          Width = 101
          Height = 16
          Alignment = taCenter
          DataField = 'TPM_DES_1'
          DataSource = DtPneu
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 331
          Top = 10
          Width = 44
          Height = 13
          Caption = 'Medida:  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 197
          Top = 22
          Width = 95
          Height = 19
          Alignment = taCenter
          DataField = 'PMOV_POSICAO'
          DataSource = DtMov
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object EditKm: TMaskEdit
      Left = 230
      Top = 239
      Width = 161
      Height = 36
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8388672
      Font.Height = -21
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      MaxLength = 6
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnKeyDown = EditKmKeyDown
      OnKeyPress = EditKmKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 118
      Width = 421
      Height = 67
      Caption = '  Veiculo Atual  '
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      object DBText4: TDBText
        Left = 168
        Top = 15
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'MOD_DES'
        DataSource = DtVeiculos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 168
        Top = 38
        Width = 71
        Height = 19
        AutoSize = True
        DataField = 'CAR_DES'
        DataSource = DtVeiculos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 23
        Top = 20
        Width = 103
        Height = 29
        Alignment = taCenter
        AutoSize = True
        DataField = 'Vei_Numero'
        DataSource = DtVeiculos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object DBMemo1: TDBMemo
      Left = 15
      Top = 303
      Width = 414
      Height = 72
      DataField = 'PMOV_HIS'
      DataSource = DtMov
      TabOrder = 2
      OnKeyDown = DBMemo1KeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 56
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  Retirada de Pneus'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBackground
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Image5: TImage
      Left = 397
      Top = 1
      Width = 50
      Height = 50
      Cursor = crHandPoint
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B1000002F24944415478DADD9A8F55DB3010C6CF13D4
        1B349DA074029C0948363013B49D8064829209E80685097027804E50B34198A0
        D5179FC0716CE54E3EDB90EFBD7B7E019FA59FF5E74E9213B2D7B9B3191B94F2
        75CBD792EDB765A189C13350E10B670B6799D2B77076EBEC8EE1260141A5AF22
        2ADF25006D186E14106B80A600B2D60269405206F836104053D70CB495DC2C05
        397376C3D731F5E8EC92AFBD41160C910AEE1D426891251DE96AC7407286780B
        42CBFC8C01414BFC9ABAF60DCDA9A365BA403016EE69BAEED4A52DC31C8C9936
        909421C61ED8523D32CCDE6CD6068269EFEBD4B53D2204CEBD30D004C9A86A8D
        F7A02F54EB624D907BD247EC27AA6613BCA10F4ADF67AA7A40EEECA3D2B7A0AA
        8B1D8064A46F8D3FEC87FE7AC60F97C23CB32FDE6ACABE9F95E5BFCC6275106D
        6BD421BCA4307508AF181864CD8B3AC8CCD95FC5039EB8D26D79D0319836883A
        0CFEAEE9669F9C951E04FDFB87C219C9DC2AF0FF2E981084179E7BA5A8CB7767
        D71E04859E2B9C3B0353004602111388B1D2CC3CC83F85630C0C0D04E19524D4
        2F764861684008680E909CFA65B81298902CF2BA254056A41B5C963056C9E9DA
        0A2406C632C3DE815826895218EB65C2C61A4432C57A9082F4B959106445365D
        4B0A31048CD918D14258C3AC2DA6DF58084B9865DF80284D3B48704F1F98799F
        1445933BED0A1B1026894D1A6312C0984453A2BDA4718834BE2D4E4860F0DCE8
        347E46BA855549D5E2BF6B61150A762118F83CD0EB2191447B0B2BA8205DF76A
        DB5F9246EC369898FDB483A52E94917EF6AAC368D38E3A4CECA660EBE60391BE
        55A0925EB783B4B91360FC76D04CE9BB1BE4FEC7C96ED04127B1650AC56E968D
        A5B6FDB4E0B10260ACD26C2B7506E2D0410F1CDEDA78511FF478E57402476F5E
        195587F9537533742704BD227493E6781A6F63EC0900033B27A3E3692FCC662B
        1A6F6ADE7079A61F0CD4957101DA0C402A446CC408D58AB3EF473528F0C20800
        0920827111E36CF599D3824DDB4A78FBB76C659F4A5880349591ECC3B3C2B2D0
        FF7EB4DE733B0A549E0000000049454E44AE426082}
      OnClick = Image5Click
      ExplicitLeft = 1094
    end
  end
  object Btsalva: TButton
    Left = 146
    Top = 447
    Width = 143
    Height = 73
    Caption = 'Salvar'
    ImageIndex = 10
    Images = pai.ImageList1
    TabOrder = 2
    OnClick = BtsalvaClick
  end
  object Button2: TButton
    Left = 295
    Top = 447
    Width = 145
    Height = 73
    Caption = 'Cancelar'
    ImageIndex = 3
    Images = pai.ImageList1
    TabOrder = 3
    OnClick = Button2Click
  end
  object DtPneu: TDataSource
    DataSet = FormPneuMovimento.QrPneusCompletos
    Left = 360
    Top = 192
  end
  object DtMov: TDataSource
    DataSet = FormPneuMovimento.QrMovPneu
    Left = 152
    Top = 336
  end
  object DtVeiculos: TDataSource
    DataSet = FormPneuMovimento.QrVeiculos
    Left = 360
    Top = 152
  end
  object DtVeiPn: TDataSource
    DataSet = pai.QrVeiPn
    Left = 360
    Top = 107
  end
  object DtMotRet: TDataSource
    DataSet = FormPneuOpcaoRetirada.QrMotRet
    Left = 360
    Top = 248
  end
end
