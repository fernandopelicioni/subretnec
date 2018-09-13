object FormRevisaoHistorico: TFormRevisaoHistorico
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Genoma Software'
  ClientHeight = 428
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 56
    Align = alTop
    Alignment = taLeftJustify
    Caption = '  Hist'#243'rico de Revis'#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 635
    object Image5: TImage
      Left = 542
      Top = 1
      Width = 50
      Height = 54
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 587
    Height = 370
    Margins.Top = 0
    ActivePage = tabLista
    Align = alTop
    Images = pai.ImageList1
    TabOrder = 1
    object tabLista: TTabSheet
      Caption = 'Configure'
      ExplicitTop = 24
      ExplicitWidth = 560
      ExplicitHeight = 342
      object Label1: TLabel
        Left = 72
        Top = 51
        Width = 35
        Height = 21
        Caption = 'Inicio'
      end
      object Label2: TLabel
        Left = 288
        Top = 51
        Width = 23
        Height = 21
        Caption = 'Fim'
      end
      object Button1: TButton
        Left = 254
        Top = 241
        Width = 141
        Height = 65
        Cursor = crHandPoint
        Caption = 'Selecionar'
        ImageIndex = 6
        Images = pai.ImageList1
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 401
        Top = 241
        Width = 141
        Height = 65
        Cursor = crHandPoint
        Caption = 'Cancelar'
        ImageIndex = 3
        Images = pai.ImageList1
        TabOrder = 1
      end
      object DateTimePicker1: TDateTimePicker
        Left = 64
        Top = 72
        Width = 186
        Height = 29
        Date = 42548.000000000000000000
        Time = 42548.000000000000000000
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 272
        Top = 72
        Width = 186
        Height = 29
        Date = 42548.999305555550000000
        Time = 42548.999305555550000000
        TabOrder = 3
      end
    end
  end
  object Q: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      ''
      'select '
      '1 as A,'
      'M.Tsoc_Vei as Veiculo,'
      'M.Tsoc_NovoVei as NovoVei,'
      'T.MSO_DES as Motivo,'
      'Convert(Varchar(10),M.Tsoc_Data,103) as data,'
      'convert(Varchar(100),M.Tsoc_his) as His,'
      'G.GRM_DES as Grupo,'
      'L.Slo_Des as Local'
      ' from TB_Soc_MOvimento M'
      ' join TB_SOCMTV T On T.MSO_ID = M.Tsoc_Mot_Real'
      ' Join TB_CBGRUMAN G on G.GRM_ID = T.MSO_GRUPO'
      
        ' Join tb_Soclocais L On L.Slo_Id = M.Tsoc_Local and L.Slo_Col = ' +
        'M.Tsoc_Col'
      
        'Where M.TSoc_DATA>=:DataI and M.Tsoc_DATA<=:DataF AND M.TSoc_COL' +
        '=:Coligada')
    Left = 466
    Top = 123
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftString
        ParamType = ptInput
        Value = '01/04/2017'
      end
      item
        Name = 'DATAF'
        DataType = ftString
        ParamType = ptInput
        Value = '30/06/2017'
      end
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object QrRevisoes: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'select '
      'a.TRG_COD as Rev,'
      'v.VEI_NUMERO veiculo,'
      'CONVERT(varchar(10), a.TRG_DATA,103) AS DATA,'
      'b.ABAST_KM as KM'
      ''
      ''
      ' from TB_REVGER A'
      'JOIN TB_VEICULOS V ON V.VEI_NUN = A.TRG_VEI'
      ''
      
        'LEFT JOIN TB_CBMOVABAST B ON B.ABAST_VEI = A.TRG_VEI AND B.ABAST' +
        '_DATA = (SELECT MAX(BB.ABAST_DATA) FROM TB_CBMOVABAST BB WHERE B' +
        'B.ABAST_VEI = A.TRG_VEI AND BB.ABAST_DATA <= A.TRG_DATA)'
      ''
      ''
      ''
      'WHERE A.TRG_DATA >=:DataI And A.TRG_DATA<=:DataF'
      'and A.TRG_COLIGADA =:Coligada'
      'AND TRG_TIPO='#39'Preventiva'#39
      ''
      ''
      'ORDER BY A.TRG_DATA, V.VEI_NUMERO')
    Left = 362
    Top = 131
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftString
        ParamType = ptInput
        Value = '01/10/2016'
      end
      item
        Name = 'DATAF'
        DataType = ftString
        ParamType = ptInput
        Value = '05/06/2017'
      end
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
end
