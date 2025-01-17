object FormOrcamentoContaDetalhada: TFormOrcamentoContaDetalhada
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Genoma Software'
  ClientHeight = 613
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 903
    Height = 55
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   Detalhamento de contas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 852
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
      ExplicitHeight = 63
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 61
    Width = 909
    Height = 552
    Align = alClient
    DataSource = DtContasOrcamentarias
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOPRD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeFantasia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 463
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Qtd'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataMovimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = []
        Width = 125
        Visible = True
      end>
  end
  object QrDetalamento: TFDQuery
    Connection = pai.FdCorpore
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric]
    SQL.Strings = (
      'select '
      'c.idmov,'
      'c.codcoligada,'
      'c.codccusto,'
      
        'case when ORC.DESCRICAO is null then '#39'**** Sem conta associada'#39' ' +
        'else Orc.descricao end as DesConta,'
      'B.DataMovimento,'
      ''
      
        'D.Zgrm_des,A.CODIGOPRD,   A.NomeFantasia, cast(c.ValorLiquido as' +
        ' money) As Valor, (C.Quantidade) As Qt from Tprd A'
      ''
      
        'JOIN  TitMmov C ON C.IDPRD = A.IDPRD AND C.CODCOLIGADA = A.CODCO' +
        'LIGADA'
      'JOIN ZGRUPOMAN D ON A.CodigoPrd like (D.ZGRm_Id + '#39'%'#39')'
      'JOIN TTMV F ON F.CODCOLIGADA = A.CODCOLIGADA'
      
        'JOIN Tmov B ON  B.CodTmv = f.CodTmv AND B.CODCOLIGADA = A.CODCOL' +
        'IGADA AND B.IDMOV = C.IDMOV'
      
        'left join TTBORCAMENTO ORC ON ORC.CODCOLIGADA = A.CODCOLIGADA AN' +
        'D ORC.CODTBORCAMENTO = C.CODTBORCAMENTO'
      ''
      'Where'
      'f.MarcaEntrada = '#39'S'#39
      'and A.CodigoPrd like (D.ZGRm_Id + '#39'%'#39')'
      
        'AND F.CODTMV NOT IN ('#39'1.2.10'#39','#39'1.2.11'#39','#39'1.2.18'#39','#39'1.2.19'#39','#39'1.2.21' +
        #39','#39'1.2.50'#39')'
      '--and B.DataMovimento >=:DataI and B.DataMovimento <=:DataF'
      'and MOnth(B.DataMovimento) =:mes'
      'and year(B.DataMovimento) =:ano'
      'And A.CodColigada =:Coligada'
      'and orc.CODTBORCAMENTO like (:conta)'
      ''
      '--Group by D.Zgrm_Des, A.NomeFantasia'
      ''
      'ORDER BY Valor Desc')
    Left = 304
    Top = 376
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Value = '8'
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Value = '2017'
      end
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'CONTA'
        DataType = ftString
        ParamType = ptInput
        Value = '2.1.01.005'
      end>
  end
  object DtContasOrcamentarias: TDataSource
    DataSet = QrDetalamento
    Left = 312
    Top = 424
  end
  object FDQuery1: TFDQuery
    Connection = pai.FdCorpore
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric]
    SQL.Strings = (
      'select '
      ''
      
        'case when ORC.DESCRICAO is null then '#39'**** Sem conta associada'#39' ' +
        'else Orc.descricao end as DesConta,'
      'B.DataMovimento,'
      ''
      
        'D.Zgrm_des,A.CODIGOPRD,   A.NomeFantasia, cast(c.ValorLiquido as' +
        ' money) As Valor, (C.Quantidade) As Qt from Tprd A'
      ''
      
        'JOIN  TitMmov C ON C.IDPRD = A.IDPRD AND C.CODCOLIGADA = A.CODCO' +
        'LIGADA'
      'JOIN ZGRUPOMAN D ON A.CodigoPrd like (D.ZGRm_Id + '#39'%'#39')'
      'JOIN TTMV F ON F.CODCOLIGADA = A.CODCOLIGADA'
      
        'JOIN Tmov B ON  B.CodTmv = f.CodTmv AND B.CODCOLIGADA = A.CODCOL' +
        'IGADA AND B.IDMOV = C.IDMOV'
      
        'left join TTBORCAMENTO ORC ON ORC.CODCOLIGADA = A.CODCOLIGADA AN' +
        'D ORC.CODTBORCAMENTO = C.CODTBORCAMENTO'
      ''
      'Where'
      'f.MarcaEntrada = '#39'S'#39
      'and A.CodigoPrd like (D.ZGRm_Id + '#39'%'#39')'
      '--and B.DataMovimento >=:DataI and B.DataMovimento <=:DataF'
      'and MOnth(B.DataMovimento) =:mes'
      'and year(B.DataMovimento) =:ano'
      'And A.CodColigada =:Coligada'
      'and orc.CODTBORCAMENTO like (:conta)'
      ''
      '--Group by D.Zgrm_Des, A.NomeFantasia'
      ''
      'ORDER BY Valor Desc')
    Left = 456
    Top = 368
    ParamData = <
      item
        Name = 'MES'
        DataType = ftString
        ParamType = ptInput
        Value = '8'
      end
      item
        Name = 'ANO'
        DataType = ftString
        ParamType = ptInput
        Value = '2017'
      end
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'CONTA'
        DataType = ftString
        ParamType = ptInput
        Value = '2%'
      end>
  end
end
