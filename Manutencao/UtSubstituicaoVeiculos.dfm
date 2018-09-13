object FormSubstituicaoVeiculos: TFormSubstituicaoVeiculos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Genoma Software'
  ClientHeight = 662
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 779
    Height = 55
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   Ve'#237'culos substituidos: Socorro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Image1: TImage
      Left = 728
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
  object Panel2: TPanel
    Left = 0
    Top = 61
    Width = 785
    Height = 44
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 123
      Top = 9
      Width = 35
      Height = 21
      Caption = 'Inicio'
    end
    object Label6: TLabel
      Left = 307
      Top = 9
      Width = 23
      Height = 21
      Caption = 'Fim'
    end
    object DateTimePicker2: TDateTimePicker
      Left = 164
      Top = 4
      Width = 131
      Height = 29
      Date = 42548.000000000000000000
      Time = 42548.000000000000000000
      TabOrder = 0
    end
    object DateTimePicker3: TDateTimePicker
      Left = 350
      Top = 4
      Width = 152
      Height = 29
      Date = 42548.000000000000000000
      Time = 42548.000000000000000000
      TabOrder = 1
    end
    object Button5: TButton
      Left = 508
      Top = 4
      Width = 75
      Height = 30
      Caption = 'Busca'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 105
    Width = 779
    Height = 554
    Margins.Top = 0
    ActivePage = tabLista
    Align = alClient
    Images = pai.ImageList1
    TabOrder = 2
    object tabLista: TTabSheet
      Caption = 'Lista     '
      object Button2: TButton
        Left = 627
        Top = 422
        Width = 141
        Height = 65
        Cursor = crHandPoint
        Caption = 'Cancelar'
        ImageIndex = 3
        Images = pai.ImageList1
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 771
        Height = 401
        Align = alTop
        DataSource = DtMov
        Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI Light'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Veiculo'
            Title.Caption = 'Ve'#237'culo'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MotivoInformado'
            Title.Caption = 'Motivo Informado'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLO_DES'
            Title.Caption = 'Local'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'His'
            Title.Caption = 'Historico'
            Width = 419
            Visible = True
          end>
      end
      object Button3: TButton
        Left = 480
        Top = 422
        Width = 141
        Height = 65
        Cursor = crHandPoint
        Caption = 'Alterar'
        ImageIndex = 8
        Images = pai.ImageList1
        TabOrder = 2
        OnClick = Button3Click
      end
    end
    object TabEdicao: TTabSheet
      Caption = 'Altera'#231#227'o'
      ImageIndex = 6
      object Label1: TLabel
        Left = 20
        Top = 34
        Width = 127
        Height = 21
        Caption = 'Defeito constatado'
      end
      object Label2: TLabel
        Left = 20
        Top = 191
        Width = 82
        Height = 21
        Caption = 'Informa'#231#245'es'
      end
      object BtSalvar: TButton
        Left = 470
        Top = 423
        Width = 141
        Height = 65
        Caption = 'Salvar'
        ImageIndex = 6
        Images = pai.ImageList1
        TabOrder = 1
        OnClick = BtSalvarClick
      end
      object BtCancelar: TButton
        Left = 617
        Top = 423
        Width = 141
        Height = 65
        Caption = 'Cancelar'
        ImageIndex = 3
        Images = pai.ImageList1
        TabOrder = 2
        OnClick = BtCancelarClick
      end
      object DbMotivo: TDBLookupComboBox
        Left = 20
        Top = 54
        Width = 725
        Height = 51
        Ctl3D = False
        DataField = 'TSOC_MOT_REAL'
        DataSource = DtMov
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        KeyField = 'MSO_ID'
        ListField = 'MSO_DES'
        ListSource = DtMotivos
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 20
        Top = 111
        Width = 725
        Height = 70
        Caption = 'Sobre a veracidade do problema'
        Columns = 2
        DataField = 'TSOC_SITUACAO'
        DataSource = DtMov
        Items.Strings = (
          'Defeito constatado'
          'N'#227'o impede ve'#237'culo de operar')
        TabOrder = 3
        Values.Strings = (
          'N'
          'F')
      end
      object DBMemo1: TDBMemo
        Left = 20
        Top = 214
        Width = 725
        Height = 175
        Ctl3D = False
        DataField = 'TSOC_AVALIACAO'
        DataSource = DtMov
        ParentCtl3D = False
        TabOrder = 4
      end
    end
  end
  object QrMov: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'select '
      '*,'
      'Convert(varchar(10),A.Tsoc_Data,103) as data,'
      'B.MSO_DES as MotivoInformado,'
      'A.Tsoc_vei as Veiculo,'
      'A.Tsoc_NovoVei as NovoVeiculo,'
      'LC.SLO_DES,'
      'Convert(varchar(50),A.tsoc_his) as His'
      ''
      ' from tb_Soc_movimento A'
      'Join TB_SOCMTV B on B.MSO_ID = A.Tsoc_Mot_Real'
      'join TB_SOCLOCAIS lc on lc.SLO_ID = A.TSOC_LOCAL'
      ''
      'Where A.Tsoc_Col=:Coligada'
      'and A.tsoc_Data>=:dataI'
      'and A.tsoc_Data<=:dataF')
    Left = 624
    Top = 256
    ParamData = <
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'DATAI'
        DataType = ftString
        ParamType = ptInput
        Value = '01/01/2017'
      end
      item
        Name = 'DATAF'
        DataType = ftString
        ParamType = ptInput
        Value = '01/06/2017'
      end>
  end
  object QrMotivos: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'Select * from tb_SocMtv'
      'where Mso_status = '#39'1'#39
      'order by mso_des')
    Left = 704
    Top = 81
  end
  object QrLocal: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'Select * from tb_SocLocais'
      'where Slo_Status='#39'1'#39
      'and Slo_Col=:coligada')
    Left = 512
    Top = 287
    ParamData = <
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object DtLocal: TDataSource
    DataSet = QrLocal
    Left = 408
    Top = 288
  end
  object DtMotivos: TDataSource
    DataSet = QrMotivos
    Left = 456
    Top = 89
  end
  object DtMov: TDataSource
    DataSet = QrMov
    Left = 640
    Top = 312
  end
  object Q: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'select '
      'Convert(varchar(10),A.Tsoc_Data,103) as data,'
      'B.MSO_DES as MotivoInformado,'
      'A.Tsoc_vei as Veiculo,'
      'A.Tsoc_NovoVei as NovoVeiculo,'
      'Convert(varchar(50),A.tsoc_his) as His'
      ''
      ' from tb_Soc_movimento A'
      'Join TB_SOCMTV B on B.MSO_ID = A.Tsoc_Mot_Inf'
      ''
      'where A.Tsoc_Col=:Coligada'
      'and A.tsoc_Data>=:dataI'
      'and A.tsoc_Data<=:dataF')
    Left = 680
    Top = 264
    ParamData = <
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'DATAI'
        DataType = ftString
        ParamType = ptInput
        Value = '01/01/2017'
      end
      item
        Name = 'DATAF'
        DataType = ftString
        ParamType = ptInput
        Value = '01/06/2017'
      end>
  end
end
