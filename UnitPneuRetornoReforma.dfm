object FormPneusRetornoReforma: TFormPneusRetornoReforma
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formul'#225'rio de Retorno de Pneus da Reformadora'
  ClientHeight = 470
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 650
    Height = 201
    Align = alTop
    TabOrder = 0
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 648
      Height = 199
      Align = alClient
      Color = clBtnHighlight
      DataSource = DtMovRef
      PanelBorder = gbNone
      PanelHeight = 33
      PanelWidth = 631
      ParentColor = False
      TabOrder = 0
      RowCount = 6
      ShowFocus = False
      OnExit = DBCtrlGrid1Exit
      object DBText1: TDBText
        Left = 40
        Top = 6
        Width = 65
        Height = 17
        DataField = 'RMOV_FOG'
        DataSource = DtMovRef
        Font.Charset = ANSI_CHARSET
        Font.Color = 8388863
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 111
        Top = 2
        Width = 186
        Height = 17
        DataField = 'TPM_DES'
        DataSource = DtMovRef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 111
        Top = 13
        Width = 207
        Height = 17
        DataField = 'TPM_DES_1'
        DataSource = DtMovRef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 403
        Top = 15
        Width = 130
        Height = 17
        DataField = 'RMOV_DTENV'
        DataSource = DtMovRef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 324
        Top = 2
        Width = 130
        Height = 17
        DataField = 'TPV_DES'
        DataSource = DtMovRef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 326
        Top = 15
        Width = 72
        Height = 13
        Caption = 'Dt. Envio Ref.:'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 6
        Width = 17
        Height = 17
        DataField = 'RMOV_STATUS'
        DataSource = DtMovRef
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  object PageControl1: TPageControl
    Left = 1
    Top = 240
    Width = 641
    Height = 193
    ActivePage = TabSheet1
    Enabled = False
    MultiLine = True
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Reformado com Sucesso'
      object Label2: TLabel
        Left = 20
        Top = 19
        Width = 84
        Height = 13
        Caption = 'Data do Retorno:'
      end
      object Label3: TLabel
        Left = 20
        Top = 62
        Width = 77
        Height = 13
        Caption = 'Valor Individual:'
      end
      object Label4: TLabel
        Left = 143
        Top = 62
        Width = 56
        Height = 13
        Caption = 'Nota Fiscal:'
      end
      object Label5: TLabel
        Left = 150
        Top = 19
        Width = 90
        Height = 13
        Caption = 'Borracha Utilizada:'
      end
      object Label6: TLabel
        Left = 373
        Top = 19
        Width = 105
        Height = 13
        Caption = 'Desenho da Reforma:'
      end
      object SpeedButton1: TSpeedButton
        Left = 533
        Top = 113
        Width = 97
        Height = 34
        Caption = 'Confirmar'
        OnClick = SpeedButton1Click
      end
      object Label7: TLabel
        Left = 278
        Top = 62
        Width = 83
        Height = 13
        Caption = 'Tipo de Reforma:'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 16
        Top = 32
        Width = 121
        Height = 24
        Date = 40426.400061805560000000
        Time = 40426.400061805560000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateTimePicker1KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 144
        Top = 32
        Width = 217
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'TPTB_COD'
        ListField = 'TPTB_DES'
        ListSource = DtPnTipoBorracha
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBLookupComboBox1KeyPress
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 367
        Top = 32
        Width = 217
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'RDES_COD'
        ListField = 'RDES_DES'
        ListSource = DtPnDesenho
        ParentFont = False
        TabOrder = 2
        OnKeyPress = DBLookupComboBox2KeyPress
      end
      object Edit1: TEdit
        Left = 16
        Top = 75
        Width = 119
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object EditNf: TEdit
        Left = 144
        Top = 75
        Width = 119
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = EditNfKeyPress
      end
      object EditTipRef: TEdit
        Left = 278
        Top = 75
        Width = 306
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = EditTipRefKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'N'#227'o Reformou (Sucatear)'
      ImageIndex = 1
      object SpeedButton3: TSpeedButton
        Left = 533
        Top = 113
        Width = 97
        Height = 34
        Caption = 'Confirmar'
        OnClick = SpeedButton3Click
      end
      object Label9: TLabel
        Left = 16
        Top = 16
        Width = 86
        Height = 13
        Caption = 'Data do Sucateio:'
      end
      object Label10: TLabel
        Left = 160
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Hist'#243'rico para Registro:'
      end
      object Label16: TLabel
        Left = 8
        Top = 144
        Width = 226
        Height = 13
        Caption = '* Pneu teve reforma negada, vai ser reciclado!'
      end
      object DateTimePicker2: TDateTimePicker
        Left = 16
        Top = 32
        Width = 121
        Height = 24
        Date = 40426.400061805560000000
        Time = 40426.400061805560000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateTimePicker2KeyPress
      end
      object Memo1: TMemo
        Left = 152
        Top = 32
        Width = 465
        Height = 49
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'N'#227'o Reformou (Tentar Novamente)'
      ImageIndex = 2
      object SpeedButton4: TSpeedButton
        Left = 533
        Top = 113
        Width = 97
        Height = 34
        Caption = 'Confirmar'
        OnClick = SpeedButton4Click
      end
      object Label11: TLabel
        Left = 16
        Top = 16
        Width = 99
        Height = 13
        Caption = 'Data do Novo Envio:'
      end
      object Label12: TLabel
        Left = 160
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Hist'#243'rico para Registro:'
      end
      object Label15: TLabel
        Left = 8
        Top = 144
        Width = 257
        Height = 13
        Caption = '* '#201' poss'#237'vel enviar este Pneu para outra reformadora'
      end
      object DateTimePicker3: TDateTimePicker
        Left = 16
        Top = 32
        Width = 121
        Height = 24
        Date = 40426.400061805560000000
        Time = 40426.400061805560000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateTimePicker3KeyPress
      end
      object Memo2: TMemo
        Left = 152
        Top = 32
        Width = 465
        Height = 49
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'N'#227'o Reformou (Voltar p/ Estoque)'
      ImageIndex = 3
      object Label13: TLabel
        Left = 16
        Top = 16
        Width = 84
        Height = 13
        Caption = 'Data do Retorno:'
      end
      object Label14: TLabel
        Left = 160
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Hist'#243'rico para Registro:'
      end
      object SpeedButton5: TSpeedButton
        Left = 533
        Top = 113
        Width = 97
        Height = 34
        Caption = 'Confirmar'
        OnClick = SpeedButton5Click
      end
      object Label17: TLabel
        Left = 8
        Top = 144
        Width = 336
        Height = 13
        Caption = 
          '* Pneu volta ao estoque sem Reforma (apenas concerto por exemplo' +
          ')'
      end
      object DateTimePicker4: TDateTimePicker
        Left = 16
        Top = 32
        Width = 121
        Height = 24
        Date = 40426.400061805560000000
        Time = 40426.400061805560000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateTimePicker4KeyPress
      end
      object Memo3: TMemo
        Left = 152
        Top = 32
        Width = 465
        Height = 49
        TabOrder = 1
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Voltou do Conserto'
      ImageIndex = 4
      object Label18: TLabel
        Left = 16
        Top = 16
        Width = 84
        Height = 13
        Caption = 'Data do Retorno:'
      end
      object Label19: TLabel
        Left = 160
        Top = 16
        Width = 113
        Height = 13
        Caption = 'Hist'#243'rico para Registro:'
      end
      object SpeedButton6: TSpeedButton
        Left = 533
        Top = 113
        Width = 97
        Height = 34
        Caption = 'Confirmar'
        OnClick = SpeedButton6Click
      end
      object DateTimePicker5: TDateTimePicker
        Left = 16
        Top = 32
        Width = 121
        Height = 24
        Date = 40426.400061805560000000
        Time = 40426.400061805560000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateTimePicker4KeyPress
      end
      object Memo4: TMemo
        Left = 152
        Top = 32
        Width = 465
        Height = 49
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 33
    Align = alTop
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 9
      Width = 67
      Height = 13
      Caption = 'Reformadora:'
    end
    object SpeedButton2: TSpeedButton
      Left = 509
      Top = 3
      Width = 108
      Height = 27
      Caption = 'Localizar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFEFEEED
        C6C4C1B1A99ACDC8C1F6F6F5FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5E2DABCA35AA784287D6D4D9C978EB5B1ABD9
        D7D4E2E0DEE6E4E2ECEBEAF5F4F3FBFBFBFFFFFFFFFFFFFFFFFFFAFAF9C3B38E
        CDA025D29F1E9B7B36988F7F817A6F918B82A6A19ABBB7B2D0CDCAE3E2E0F3F2
        F2FDFDFDFFFFFFFFFFFFF9F8F7C3BAA9A78844CD9B1EB38519937940BFB9AFC6
        C2BECAC6C2D4D1CEE1E0DDEEEDECF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
        E3DCD1B9994ECA9A1FB38A1FBDAD86F8F7F6F9F7F2F4EEE3F3EFE8F9F8F6FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE5E0D2BC9F56B289208C6F2EBA
        AB8BBCA36CAC8E49A5894DB19E7BDAD4CAFBFBFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEEAE7DEA28F6A815F16AE8F26D8B731E5C337D7B730B08D228F72
        3BCAC1B4FDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F5B2A078C19D24F8
        CF2FFDD231FED333FFD637F9D231C39515907441E6E2DCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2DCD0A4873DF1C72BF9CC29F9CC29FACD2AFCCF2DFED22FF7C5
        14A97D17C6B99FFFFFFEFFFFFFFFFFFFFFFFFFFEFEFECDC2ADB2913EF7CB2BF8
        CD2EF9D03FF9D03BF9CD2CFCCE26FFCB0ECE9E10C6AE80FFFEFEFFFFFFFFFFFF
        FFFFFFFEFEFECABFA8A38336F0C52CF9D348FADC75FAD868F9CF38FAC815FEC6
        07DBAC10D8C18DFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFDED6C4896E33C7A328FA
        D953FBDF7DFAD867F9CA27F8C005FBBF04DAAB1CEBDDBBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F3ECA68F5E7C601BCEA71FF8CA2AF9C81EF9C105F8BC01EDB3
        06DABB59F9F7EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE7DEC89A804375
        58159C770BC39505CB9902C69509D2AE3FF1E9CDFFFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFDEFE7D4C4AE759E8037947221A88733D1B973F5EE
        D5FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FCF9F1E4C2E3CA89F1E5C2FEFDF9FFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton2Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 79
      Top = 3
      Width = 425
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'TPR_COD'
      ListField = 'TPR_DES'
      ListSource = DtReformadora
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 567
    Top = 437
    Width = 75
    Height = 25
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 394
    Width = 193
    Height = 17
    Caption = 'Reforma com Garantia'
    Color = clWhite
    ParentColor = False
    TabOrder = 4
  end
  object DtPnRef: TDataSource
    DataSet = pai.QrPneusCompletos
    Left = 320
    Top = 416
  end
  object DtReformadora: TDataSource
    DataSet = pai.QrReformadora
    Left = 16
    Top = 416
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 624
  end
  object DtMovRef: TDataSource
    DataSet = QrPnMovRef
    Left = 104
    Top = 416
  end
  object QrPnMovRef: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_Pn' +
        'Vida C, Tb_PnRefMov E'
      '                    Where B.TPM_Cod = A.TCP_marca'
      '                    and C.Tpv_Cod = A.TCP_Vida'
      '                    and D.TPM_Cod = A.Tcp_Medida'
      '                    And E.Rmov_Pneu = A.Tcp_Cod'
      '                    And E.Rmov_Sit = '#39'1'#39
      '                    And A.TCP_Local =  '#39'E'#39)
    Left = 216
    Top = 416
  end
  object DtPnTipoBorracha: TDataSource
    DataSet = pai.QrPnBorracha
    Left = 384
    Top = 416
  end
  object DtPnDesenho: TDataSource
    DataSet = pai.QrPnDesenhoReforma
    Left = 456
    Top = 416
  end
end
