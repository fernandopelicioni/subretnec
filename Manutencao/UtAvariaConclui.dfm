object FormAvariaConclui: TFormAvariaConclui
  Left = 0
  Top = 0
  ActiveControl = EditData
  BorderIcons = []
  Caption = 'Genoma Software'
  ClientHeight = 460
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 665
    Height = 55
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   Fechamento de Avarias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 614
      Top = 1
      Width = 50
      Height = 53
      Cursor = crHandPoint
      Hint = 'Sair'
      Align = alRight
      AutoSize = True
      ParentShowHint = False
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
      ShowHint = True
      OnClick = Image1Click
      ExplicitLeft = 748
      ExplicitTop = 2
    end
  end
  object cxButton1: TcxButton
    Left = 345
    Top = 394
    Width = 145
    Height = 58
    Caption = 'Salvar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'iMaginary'
    OptionsImage.ImageIndex = 4
    OptionsImage.Images = FormAvariaMov.cxImageList1
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 496
    Top = 394
    Width = 146
    Height = 58
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'iMaginary'
    OptionsImage.ImageIndex = 1
    OptionsImage.Images = FormAvariaMov.cxImageList1
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 665
    Height = 321
    Align = alTop
    TabOrder = 3
    object EditVeiculos: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 657
      Height = 45
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI Light'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 10
    end
    object Label2: TLabel
      Left = 16
      Top = 146
      Width = 56
      Height = 17
      Caption = 'Conclus'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 201
      Width = 128
      Height = 17
      Caption = 'Servi'#231'o(s) Executado(s):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 308
      Top = 146
      Width = 62
      Height = 17
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object EditData: TcxDateEdit
      Left = 16
      Top = 166
      Properties.Kind = ckDateTime
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'iMaginary'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'iMaginary'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'iMaginary'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'iMaginary'
      TabOrder = 0
      Width = 247
    end
    object EditHisFec: TMemo
      Left = 16
      Top = 224
      Width = 623
      Height = 89
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object EditValor: TJvValidateEdit
      Left = 308
      Top = 166
      Width = 121
      Height = 29
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfCurrency
      DecimalPlaces = 2
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 4
      Width = 654
      Height = 125
      Caption = 'Dados da Ocorr'#234'ncia'
      TabOrder = 3
      object DBText3: TDBText
        Left = 24
        Top = 55
        Width = 185
        Height = 59
        DataField = 'AVMOV_RESP_NOME'
        DataSource = FormAvariaMov.DtAvarias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DBText1: TDBText
        Left = 24
        Top = 23
        Width = 67
        Height = 25
        AutoSize = True
        DataField = 'AVMOV_DATA'
        DataSource = FormAvariaMov.DtAvarias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 240
        Top = 23
        Width = 67
        Height = 25
        AutoSize = True
        DataField = 'TAV_DESCRICAO'
        DataSource = FormAvariaMov.DtAvarias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 224
        Top = 55
        Width = 411
        Height = 57
        DataField = 'AVMOV_HIS'
        DataSource = FormAvariaMov.DtAvarias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 0
        Top = -17
        Width = 106
        Height = 17
        Caption = 'Data da ocorrencia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DtPro: TDataSource
    DataSet = QrPro
    Left = 539
    Top = 210
  end
  object QrPro: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'Select cha_pro chapa, Nom_pro Nome from tb_Profissionais'
      ''
      'where cha_pro=:chapa'
      'and cod_coligada=:coligada'
      '')
    Left = 479
    Top = 211
    ParamData = <
      item
        Name = 'CHAPA'
        DataType = ftString
        ParamType = ptInput
        Value = '6402'
      end
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
end
