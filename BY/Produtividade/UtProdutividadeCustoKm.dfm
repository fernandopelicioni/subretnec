object FormProdutividadeCustoKm: TFormProdutividadeCustoKm
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 245
  BorderIcons = []
  ClientHeight = 627
  ClientWidth = 1049
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1049
    Height = 65
    Align = alTop
    Alignment = taLeftJustify
    Caption = '    PRODUTIVIDADE | Custo p/ Km Rodado de Pneus - Todas as Vidas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image5: TImage
      Left = 998
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
      ExplicitLeft = 999
      ExplicitTop = -4
      ExplicitHeight = 63
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 512
    Width = 1049
    Height = 115
    Align = alBottom
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 872
      Top = 67
      Width = 161
      Height = 43
      Caption = 'Ver como Impress'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object KmNovo: TLabel
      Left = 512
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Km1ref: TLabel
      Left = 608
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Km2Ref: TLabel
      Left = 696
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Km3Ref: TLabel
      Left = 784
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Km4Ref: TLabel
      Left = 880
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Km5Ref: TLabel
      Left = 968
      Top = 30
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object QtN: TLabel
      Left = 512
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Qt1: TLabel
      Left = 608
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Qt2: TLabel
      Left = 696
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Qt3: TLabel
      Left = 784
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Qt4: TLabel
      Left = 880
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Qt5: TLabel
      Left = 968
      Top = 7
      Width = 57
      Height = 21
      Alignment = taRightJustify
      Caption = 'KmNovo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
  end
  object StringGrid1: TStringGrid
    Tag = 33
    Left = 0
    Top = 65
    Width = 1049
    Height = 447
    Cursor = crHandPoint
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    ColCount = 33
    Ctl3D = True
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    GridLineWidth = 2
    Options = [goFixedVertLine, goColSizing, goRowMoving, goRowSelect]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnDblClick = StringGrid1DblClick
    ColWidths = (
      30
      64
      100
      100
      70
      70
      90
      75
      20
      64
      75
      90
      20
      64
      64
      64
      20
      64
      64
      64
      20
      64
      64
      64
      20
      70
      64
      90
      20
      100
      130
      70
      120)
    RowHeights = (
      24
      32)
  end
  object DtProdutividade: TDataSource
    DataSet = pai.QrPneuCustoKmTodasVidas
    Left = 424
    Top = 200
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'CK'
          Header = ' X '
          Width = 30
        end
        item
          MemberName = 'Fog'
          ReadOnly = True
          Header = 'Fogo'
        end
        item
          MemberName = 'Marca'
          ReadOnly = True
          Width = 100
        end
        item
          MemberName = 'Medida'
          Width = 100
        end
        item
          MemberName = 'Desenho'
          Width = 70
        end
        item
          MemberName = 'KM_VIDA_N'
          Header = 'Km Novo'
          Width = 70
        end
        item
          MemberName = 'VALOR_COMPRA_NOVO'
          Header = 'Valor'
          Width = 90
        end
        item
          MemberName = 'CUSTOKM_NOVO'
          Header = 'Custo KM'
          Width = 75
        end
        item
          Width = 20
        end
        item
          MemberName = 'KM_VIDA_1'
          Header = '1 Ref'
        end
        item
          MemberName = 'VALOR_REF1'
          Header = 'Valor'
          Width = 75
        end
        item
          MemberName = 'CUSTOKM_1REF'
          Header = 'Custo 1 Ref'
          Width = 90
        end
        item
          Width = 20
        end
        item
          MemberName = 'KM_VIDA_2'
          Header = 'KM 2 Ref'
        end
        item
          MemberName = 'VALOR_REF2'
          Header = 'Valor'
        end
        item
          MemberName = 'CUSTOKM_2REF'
          Header = 'Custo'
        end
        item
          Width = 20
        end
        item
          MemberName = 'KM_VIDA_3'
          Header = 'Km 3 Ref'
        end
        item
          MemberName = 'VALOR_REF3'
          Header = 'Valor'
        end
        item
          MemberName = 'CUSTOKM_3REF'
          Header = 'Custo '
        end
        item
          Width = 20
        end
        item
          MemberName = 'KM_VIDA_4'
          Header = 'Km 4 Ref'
        end
        item
          MemberName = 'VALOR_REF4'
          Header = 'Valor'
        end
        item
          MemberName = 'CUSTOKM_4REF'
          Header = 'Custo'
        end
        item
          Width = 20
        end
        item
          MemberName = 'KM_VIDA_5'
          Header = 'Km 5 Ref'
          Width = 70
        end
        item
          MemberName = 'VALOR_REF5'
          Header = 'Valor'
        end
        item
          MemberName = 'CUSTOKM_5REF'
          Header = 'Custo 5 Ref'
          Width = 90
        end
        item
          Width = 20
        end
        item
          MemberName = 'VALOR_TOTAL_REF'
          Header = 'Val. Tot Ref'
          Width = 100
        end
        item
          MemberName = 'VALOR_TOTAL'
          Header = 'Total Gasto Pneu'
          Width = 130
        end
        item
          MemberName = 'KMTOTAL'
          Header = 'Km Total'
          Width = 70
        end
        item
          MemberName = 'CUSTO_KM_TOTAL'
          Header = 'Total Custo KM'
          Width = 120
        end>
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = pai.QrPneuCustoKmTodasVidas
    ScopeMappings = <>
    Left = 520
    Top = 304
  end
end
