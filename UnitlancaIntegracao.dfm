object FormParametros: TFormParametros
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Par'#226'metros da Integra'#231#227'o - CenterBus.Genoma := Totvs.Nucleus'
  ClientHeight = 386
  ClientWidth = 696
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
  object DBText5: TDBText
    Left = 294
    Top = 8
    Width = 394
    Height = 13
    Alignment = taRightJustify
    DataField = 'DES_COLIGADA'
    DataSource = DtColigada
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 175
    Top = 204
    Width = 109
    Height = 13
    Caption = 'Cod. Historico Contabil'
  end
  object PageControl1: TPageControl
    Left = 170
    Top = 28
    Width = 520
    Height = 353
    ActivePage = TabSheet3
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Eventos Cont'#225'beis'
      ImageIndex = 2
      OnExit = TabSheet1Exit
      OnShow = TabSheet1Show
      object SpeedButton4: TSpeedButton
        Left = 374
        Top = 291
        Width = 119
        Height = 31
        Caption = 'Efetivar Altera'#231#245'es'
        OnClick = SpeedButton4Click
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 16
        Width = 478
        Height = 257
        Caption = 'Integra'#231#245'es'
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 208
          Height = 13
          Caption = 'Codigo de Movimento de Baixa do Estoque:'
        end
        object DBText2: TDBText
          Left = 32
          Top = 86
          Width = 65
          Height = 17
          DataField = 'CODEVENTO'
          DataSource = DtEveCont
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 32
          Top = 70
          Width = 60
          Height = 13
          Caption = 'Cod. Evento'
        end
        object Label7: TLabel
          Left = 154
          Top = 70
          Width = 78
          Height = 13
          Caption = 'Numero Evento:'
        end
        object DBText3: TDBText
          Left = 153
          Top = 86
          Width = 65
          Height = 17
          DataField = 'NUMEVENTO'
          DataSource = DtEveCont
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 32
          Top = 109
          Width = 188
          Height = 13
          Caption = 'Desc. CFO Aux - Default CXXXXXXXXXX'
        end
        object DBText4: TDBText
          Left = 291
          Top = 86
          Width = 65
          Height = 17
          DataField = 'CODTMV'
          DataSource = DtEveCont
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 292
          Top = 70
          Width = 61
          Height = 13
          Caption = 'Identificador'
        end
        object Label9: TLabel
          Left = 32
          Top = 156
          Width = 190
          Height = 13
          Caption = 'Cod. Mov. N'#227'o Estoc'#225'vel (Sa'#237'da Direta)'
        end
        object Label10: TLabel
          Left = 255
          Top = 156
          Width = 84
          Height = 13
          Caption = 'Cod. Combust'#237'vel'
        end
        object Label11: TLabel
          Left = 29
          Top = 204
          Width = 66
          Height = 13
          Caption = 'Cod. Servi'#231'os'
        end
        object Label12: TLabel
          Left = 258
          Top = 108
          Width = 100
          Height = 13
          Caption = 'Cod. Mov.Estoc'#225'vel:'
        end
        object Label13: TLabel
          Left = 175
          Top = 204
          Width = 109
          Height = 13
          Caption = 'Cod. Historico Contabil'
        end
        object Label15: TLabel
          Left = 319
          Top = 204
          Width = 83
          Height = 13
          Caption = 'Cod. Conta Adm.'
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 32
          Top = 40
          Width = 369
          Height = 24
          DataField = 'TIT_EVECONT'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          KeyField = 'CODEVENTO'
          ListField = 'NOME'
          ListSource = DtEveCont
          ParentFont = False
          TabOrder = 0
          OnExit = DBLookupComboBox3Exit
        end
        object DBEdit3: TDBEdit
          Left = 29
          Top = 123
          Width = 121
          Height = 24
          DataField = 'TIT_CFOAUX'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 29
          Top = 171
          Width = 121
          Height = 24
          DataField = 'TIT_NAOEST'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 255
          Top = 171
          Width = 121
          Height = 24
          DataField = 'TIT_CODCOM'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 29
          Top = 219
          Width = 121
          Height = 24
          DataField = 'TIT_CODSER'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 255
          Top = 123
          Width = 121
          Height = 24
          DataField = 'TIT_CODEST'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 175
          Top = 219
          Width = 121
          Height = 24
          DataField = 'TIT_CODHIS'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 319
          Top = 219
          Width = 121
          Height = 24
          DataField = 'TIT_CODADM'
          DataSource = DtIntegracao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object BitBtn1: TBitBtn
        Left = 252
        Top = 291
        Width = 119
        Height = 31
        Caption = 'Alterar/Incluir'
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Classifica'#231#227'o Contabil'
      object SpeedButton1: TSpeedButton
        Left = 98
        Top = 127
        Width = 98
        Height = 26
        Caption = 'Salvar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF7FCFACDEBDEE3F4EDFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FBF99DD6BC31AD775A
          C295D6F1E6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF4FAF797D1B62AA56D19A4671CAC6E54C595D4F1E5FEFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF793CCB2279E67199E621AA5681A
          AC6E1DB37555CA9AD4F2E6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF9
          99CDB4279A6418995E199F631AA6691AAD6F1BB4751EBB7C58D1A1D8F5EAFEFF
          FFFFFFFFFFFFFFFFFFFFFAFDFC9DCEB629986318965B199C6127A76E3EB6821F
          B1731CB6761CBC7C1FC48359D8A7D6F6EAFEFFFFFFFFFFFFFFFFE9F4EE42A274
          1893591A995F3AAC79A0D8BFD1EEE162CA9F1FB97B1DBF7E1DC68420CD8A57DD
          AAD6F8EBFEFFFFFFFFFFFBFDFCA0D2BB2EA16C58B78CC8E8DAFAFDFCFEFFFFDD
          F4EB66D1A621C3821EC8861ECF8B21D69257E4AFD9F9EDFFFFFFFFFFFFF6FBF8
          C1E3D3E1F2EBFEFFFEFFFFFFFFFFFFFFFFFFDFF6EC63D6A921CC8A1FD18D1FD8
          9322DF995EECB8EDFDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFFFFDDF7ED62DDAE22D59120DA9520E19A49EBB0E6FDF5FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDEF8EF64E4B423DE
          9942E7ABC5F9E6FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFEFFFFE3FBF292F0CEC9F8E7FDFFFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
          FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 196
        Top = 127
        Width = 98
        Height = 26
        Caption = 'Novo'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 294
        Top = 127
        Width = 98
        Height = 26
        Caption = 'Cancelar'
        OnClick = SpeedButton3Click
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 3
        Width = 502
        Height = 118
        Caption = 'Concilia'#231#227'o Nucleus X CenterBus'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 15
          Top = 20
          Width = 41
          Height = 13
          Caption = 'Sistema:'
        end
        object Label3: TLabel
          Left = 15
          Top = 69
          Width = 103
          Height = 13
          Caption = 'Classifica'#231#227'o Contabil'
        end
        object Label4: TLabel
          Left = 289
          Top = 20
          Width = 168
          Height = 13
          Caption = 'Mascara ou Id Grupo / Clas. Cont.:'
        end
        object DBText1: TDBText
          Left = 247
          Top = 89
          Width = 41
          Height = 13
          AutoSize = True
          DataField = 'CODTB1FAT'
          DataSource = DtClassificacao
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 10
          Top = 34
          Width = 271
          Height = 24
          DataField = 'TCC_VSI'
          DataSource = DtCC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'VSI_COD'
          ListField = 'VSI_DES'
          ListSource = DtVeiSistema
          ParentFont = False
          TabOrder = 0
          OnClick = DBLookupComboBox1Click
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 10
          Top = 84
          Width = 223
          Height = 24
          DataField = 'TCC_CODCC'
          DataSource = DtCC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBackground
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'CODTB1FAT'
          ListField = 'DESCRICAO'
          ListSource = DtClassificacao
          ParentFont = False
          TabOrder = 2
        end
        object EditMasc: TMaskEdit
          Left = 287
          Top = 34
          Width = 170
          Height = 24
          EditMask = '000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clHotLight
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 1
          Text = '   '
          OnKeyPress = EditMascKeyPress
        end
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 159
        Width = 502
        Height = 155
        DataSource = DtCC
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TCC_COD'
            Title.Caption = 'Codigo Interno'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCC_VSI'
            Title.Caption = 'Cod. Sistema'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCC_MASGRUPO'
            Title.Caption = 'Masc. Grupo / Clas. Cont.'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCC_CODCC'
            Title.Caption = 'CC'
            Width = 123
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 392
        Top = 127
        Width = 99
        Height = 26
        Caption = 'Excluir'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B0040000130B0000130B00000000000000000000FFFFFFFBFBFB
          F5F5F5F0F0F0EDEDEDE9E9E9E8E8E8E4E4E4E2E2E2E2E2E2E2E2E2E2E2E2E3E3
          E3E7E7E7E9E9E9EDEDECF0F0F0F4F4F4FBFBFBFFFFFFFFFFFFF2F2F2D8D8D991
          91B16E6E9F9D9DB0C0C0C0BEBEBEBABABAB9B9B9B9B9B9BABABABEBEBEC0C0C0
          A6A6B47272A18686ACD3D3D6F1F1F0FFFFFFFFFFFFF7F7FAA7A7CE24248B0E0E
          813A3A94C6C6DCF3F3F4F3F3F3F2F2F2F2F2F2F2F2F2F4F4F4D5D5E44C4C9D10
          10821B1B869191C2F0F0F6FFFFFFFCFCFE9C9CCC22228D0A0A800B0B800A0A80
          393998BBBBDCFCFCFDFFFFFFFFFFFFFDFDFECECEE64B4BA20C0C810B0B800B0B
          801919888484BFF7F7FBEEEEF64E4EA30C0C800B0B800C0C810C0C820D0D8333
          3398C1C1E0FEFEFEFFFFFFD4D4EA4646A21010850C0C820C0C820B0B810B0B80
          373797E3E3F0F4F4FA6E6EB71313860B0B820C0C840C0C850D0D870E0E884343
          A3D3D3E9E1E1F05858AD1010890D0D870D0D860C0C850C0C831010845656ABEB
          EBF5FFFFFFDCDCEF6868B815158B0D0D880E0E890E0E8B0E0E8B10108D3E3EA4
          4A4AA912128E0F0F8C0E0E8B0E0E8A0E0E8811118A5656AFCCCCE8FEFEFEFFFF
          FFFEFEFEDDDDF05A5AB413138F0E0E8D0F0F8F0F0F8F10109011119112129210
          10910F0F900F0F8F0F0F8E11118E4949ACCECEE9FBFBFDFFFFFFFFFFFFFFFFFF
          FFFFFFD9D9EF5F5FB91717951010921111931111941111951111951111951111
          941111931414944D4DB1C9C9E8FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE0E0F26A6AC218189A121298121299131399131399131399121298151599
          5858BACFCFECFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEC2C2E62929A413139B13139C13139D13139D13139D13139B1D1DA0AAAADDFA
          FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED4D4ED5656B8
          16169F13139F1313A01313A11313A11313A11313A014149F4444B1C2C2E5FCFC
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFD0D0EC4C4CB515159F1313A113
          13A21414A51414A61414A61414A51414A31313A21414A03A3AAEBFBFE4FDFDFE
          FFFFFFFFFFFFFFFFFFFEFEFEDCDCF05353B71717A01313A11414A41414A61515
          A81717AA1818AB1515A91414A71414A51313A21414A04141B0CBCBE9FCFCFEFF
          FFFFFFFFFFD6D6ED5555B615159F1313A11414A41515A81515A91919AE5757C8
          6464CD1D1DB01616AB1515A91414A61414A31313A04141B0C3C3E5FEFEFEF6F6
          FB7272C219199E13139F1414A31414A61515AA1919AD5151C6D0D0F1DEDEF563
          63CD1C1CB01616AC1515A81414A51313A115159E5757B8EDEDF8EFEFF85B5BBB
          15159E1313A11414A51515A81A1AAE4E4EC5CACAEFFDFDFEFFFFFFDADAF45F5F
          CC1D1DB11515AA1414A71313A314149F4444B3E4E4F4FCFCFEAFAFE04040B515
          15A21414A61919AB5B5BC9CECEF0FDFDFEFFFFFFFFFFFFFFFFFFDDDDF56D6DD0
          1D1DAE1414A81414A43636B29D9DDAF9F9FCFFFFFFF4F4FAA9A9DF3A3AB72626
          B05252C4CCCCEFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFDBDBF46161CB29
          29B33333B69898D9F0F0F9FFFFFFFFFFFFFFFFFFF9F9FDB0B0E38585D5D3D3F0
          FDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFF48D8DD8A3A3
          DFF5F5FBFFFFFFFFFFFF}
        TabOrder = 2
        OnClick = BitBtn2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Outros'
      ImageIndex = 2
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 24
        Width = 201
        Height = 17
        Caption = 'Contabilizar por Centro de Custo'
        DataField = 'TIT_CCUSTO'
        DataSource = DtIntegracao
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 64
        Width = 385
        Height = 65
        Caption = 'Alterar Fechamento de Per'#237'odo'
        TabOrder = 1
        object Label17: TLabel
          Left = 16
          Top = 32
          Width = 161
          Height = 13
          Caption = 'Data de Fechamento de Estoque:'
        end
        object SpeedButton5: TSpeedButton
          Left = 309
          Top = 27
          Width = 62
          Height = 24
          Caption = 'Efetivar'
          OnClick = SpeedButton5Click
        end
        object DBEdit8: TDBEdit
          Left = 183
          Top = 27
          Width = 121
          Height = 24
          DataField = 'DataFechamentoEstoque'
          DataSource = DtPar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 3
      object Label16: TLabel
        Left = 3
        Top = 1
        Width = 243
        Height = 13
        Caption = '* Marque as op'#231#245'es que devem Compor Relat'#243'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 353
        Top = 299
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 434
        Top = 299
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object PageControl2: TPageControl
        Left = 3
        Top = 19
        Width = 506
        Height = 278
        ActivePage = TabSheet5
        TabOrder = 2
        object TabSheet5: TTabSheet
          Caption = 'Entradas'
          OnShow = TabSheet5Show
          object DBCtrlGrid1: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 498
            Height = 250
            Cursor = crHandPoint
            Align = alClient
            AllowDelete = False
            AllowInsert = False
            DataSource = DtItensMovEntradas
            PanelBorder = gbNone
            PanelHeight = 19
            PanelWidth = 481
            TabOrder = 0
            RowCount = 13
            ShowFocus = False
            object DBText6: TDBText
              Left = 117
              Top = 4
              Width = 336
              Height = 17
              DataField = 'nome'
              DataSource = DtItensMovEntradas
            end
            object DBText7: TDBText
              Left = 61
              Top = 4
              Width = 55
              Height = 17
              DataField = 'codtmv'
              DataSource = DtItensMovEntradas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBCheckBox2: TDBCheckBox
              Left = 9
              Top = 1
              Width = 48
              Height = 17
              Cursor = crHandPoint
              Caption = 'Usar'
              DataField = 'MarcaEntrada'
              DataSource = DtItensMovEntradas
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Sa'#237'das'
          ImageIndex = 1
          OnShow = TabSheet6Show
          object DBCtrlGrid2: TDBCtrlGrid
            Left = 0
            Top = 0
            Width = 498
            Height = 250
            Cursor = crHandPoint
            Align = alClient
            AllowDelete = False
            AllowInsert = False
            DataSource = DtItensMovSaidas
            PanelBorder = gbNone
            PanelHeight = 19
            PanelWidth = 481
            TabOrder = 0
            RowCount = 13
            ShowFocus = False
            object DBText8: TDBText
              Left = 117
              Top = 4
              Width = 336
              Height = 17
              DataField = 'nome'
              DataSource = DtItensMovSaidas
            end
            object DBText9: TDBText
              Left = 61
              Top = 4
              Width = 55
              Height = 17
              DataField = 'codtmv'
              DataSource = DtItensMovSaidas
            end
            object DBCheckBox3: TDBCheckBox
              Left = 9
              Top = 1
              Width = 48
              Height = 17
              Cursor = crHandPoint
              Caption = 'Usar'
              DataField = 'MarcaSaida'
              DataSource = DtItensMovSaidas
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  object TreeView1: TTreeView
    Left = 3
    Top = 28
    Width = 165
    Height = 352
    Indent = 19
    TabOrder = 1
    Items.NodeData = {
      030300000040000000000000000000000000000000FFFFFFFF00000000000000
      000100000001114500760065006E0074006F007300200043006F006E007400E1
      006200650069007300340000000000000000000000FFFFFFFFFFFFFFFF000000
      000000000005000000010B49006E0074006500670072006100E700F500650073
      00420000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      00011243006F0064002E0020004200610069007800610020004500730074006F
      00710075006500340000000000000000000000FFFFFFFFFFFFFFFF0000000000
      00000000000000010B43006F0064002E0020004500760065006E0074006F0038
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      0D4E0075006D00650072006F0020004500760065006E0074006F003800000000
      00000000000000FFFFFFFFFFFFFFFF000000000000000000000000010D490064
      0065006E0074006900660069006300610064006F007200360000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010C430046004F0020
      0041007500780069006C006900610072004A0000000000000000000000000000
      00FFFFFFFF000000000000000004000000011643006C00610073007300690066
      00690063006100E700E3006F00200043006F006E0074006100620069006C002C
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      07530069007300740065006D006100440000000000000000000000FFFFFFFFFF
      FFFFFF000000000000000000000000011343006F0064002E00200043006C0061
      0073002E00200043006F006E0074006100620069006C00420000000000000000
      000000FFFFFFFFFFFFFFFF00000000000000000000000001124D006100730063
      006100720061002000640065002000500072006F006400750074006F00440000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000000000000011343
      006F0064002E00200043006C00610073002E00200043006F006E007400610062
      0069006C002A0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001064F007500740072006F007300}
  end
  object DtIntegracao: TDataSource
    DataSet = pai.QrIntegra
    Left = 584
    Top = 200
  end
  object DtCC: TDataSource
    DataSet = pai.QrCC
    Left = 576
    Top = 96
  end
  object DtVeiSistema: TDataSource
    DataSet = pai.QrVeiSistema
    Left = 576
    Top = 144
  end
  object DtClassificacao: TDataSource
    DataSet = pai.QrClassificacao
    Left = 576
    Top = 248
  end
  object DtEveCont: TDataSource
    DataSet = pai.QrEveCont
    Left = 576
    Top = 56
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 65272
    Top = 8
  end
  object QrItensMovEntrada: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select codtmv, nome, MarcaEntrada from ttmv'
      'where codcoligada =:Coligada')
    Left = 232
    Top = 320
  end
  object DtItensMovEntradas: TDataSource
    DataSet = QrItensMovEntrada
    Left = 296
    Top = 320
  end
  object DtItensMovSaidas: TDataSource
    DataSet = QrItensMovSaida
    Left = 296
    Top = 256
  end
  object QrItensMovSaida: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select codtmv, nome, MarcaSaida from ttmv'
      'where codcoligada =:Coligada')
    Left = 232
    Top = 256
  end
  object QrPar: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select DataFechamentoEstoque from Tpar'
      'where codcoligada=:coligada')
    Left = 312
    Top = 208
  end
  object DtPar: TDataSource
    DataSet = QrPar
    Left = 136
    Top = 136
  end
end
