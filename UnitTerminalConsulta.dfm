object FormTerminalConsulta: TFormTerminalConsulta
  Left = 0
  Top = 0
  VertScrollBar.ButtonSize = 5
  VertScrollBar.Color = clBlack
  VertScrollBar.Increment = 52
  VertScrollBar.ParentColor = False
  VertScrollBar.Size = 4
  VertScrollBar.Style = ssFlat
  VertScrollBar.ThumbSize = 5
  VertScrollBar.Visible = False
  AlphaBlendValue = 240
  BorderStyle = bsNone
  Caption = 'FormTerminalConsulta'
  ClientHeight = 708
  ClientWidth = 1139
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 1139
    Height = 664
    Cursor = crHandPoint
    Align = alClient
    AllowDelete = False
    ColCount = 14
    Color = clSilver
    DataSource = DtVeiculos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold, fsItalic]
    PanelHeight = 41
    PanelWidth = 80
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    RowCount = 16
    SelectedColor = clGradientInactiveCaption
    OnClick = DBCtrlGrid1Click
    OnPaintPanel = DBCtrlGrid1PaintPanel
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 80
      Height = 41
      Cursor = crHandPoint
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      OnClick = DBCtrlGrid1Click
      object DBText1: TDBText
        Left = 1
        Top = 1
        Width = 78
        Height = 26
        Align = alTop
        Alignment = taCenter
        Color = clWhite
        DataField = 'VEI_NUMERO'
        DataSource = DtVeiculos
        Font.Charset = ANSI_CHARSET
        Font.Color = 8388672
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
        OnClick = DBCtrlGrid1Click
        ExplicitLeft = -8
        ExplicitTop = 7
      end
      object Label1: TLabel
        Left = 1
        Top = 27
        Width = 78
        Height = 13
        Align = alClient
        Alignment = taCenter
        Caption = 'OS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        OnClick = DBCtrlGrid1Click
        ExplicitWidth = 25
        ExplicitHeight = 18
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 664
    Width = 1139
    Height = 44
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 133
      Top = 2
      Width = 118
      Height = 38
      Caption = 'El'#233'trica'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 0
      Top = 2
      Width = 129
      Height = 38
      Caption = 'Todos'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 257
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Lanternagem'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 381
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Motor'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      OnClick = Panel6Click
    end
    object Panel7: TPanel
      Left = 505
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Suspens'#227'o'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      OnClick = Panel7Click
    end
    object Panel8: TPanel
      Left = 628
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Borracharia'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      OnClick = Panel8Click
    end
    object Panel9: TPanel
      Left = 751
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Transmiss'#227'o'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      OnClick = Panel9Click
    end
    object Panel10: TPanel
      Left = 874
      Top = 2
      Width = 118
      Height = 38
      Caption = 'Freios'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      OnClick = Panel10Click
    end
  end
  object DtVeiculos: TDataSource
    DataSet = QrVeiculos
    Left = 688
    Top = 40
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 664
    Top = 128
  end
  object QrVeiculos: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'setorI'
        DataType = ftWideString
        Size = 3
        Value = '001'
      end
      item
        Name = 'setorF'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'dtinicio'
        DataType = ftWideString
        Size = 10
        Value = '18/01/2018'
      end
      item
        Name = 'dtfim'
        DataType = ftWideString
        Size = 10
        Value = '18/01/2018'
      end
      item
        Name = 'COLIGADA'
        DataType = ftWideString
        Size = 1
        Value = '2'
      end>
    SQL.Strings = (
      'Select '
      ''
      'A.*,b.*,c.*,d.*,e.*,f.*,M.*,O.*,P.* from Tb_Veiculos A'
      
        '                 Join       Tb_VeiModCar as B on A.Vei_CarMod = ' +
        'B.Car_Cod'
      
        '                 Join       Tb_VeiModCha as C On A.Vei_ModCha = ' +
        'C.Mod_Cod'
      
        '                 Join       Tb_IndiceRevisao as D On A.Vei_Nun =' +
        ' D.Tin_Vei'
      
        '                 Join       TB_VeiSistema as E On E.Vsi_Cod = A.' +
        'Vei_Vsi'
      
        '                 Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei' +
        '_padrao'
      
        '                 left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_n' +
        'un and M.PMc_Status = '#39'A'#39' and M.Pmc_Cod = (select top 1 L.Pmc_co' +
        'd from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status =' +
        ' '#39'A'#39')'
      
        '                 Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pm' +
        'c_Item '
      ''
      
        '                 Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.' +
        'Grm_Id AND P.Grm_Id >=:setorI AND P.Grm_Id <=:setorF'
      
        '                 Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_n' +
        'un and (O.TOS_DTVIGINI <=:dtinicio and TOS_DTVIGFIM >=:dtfim) AN' +
        'D O.TOS_STATUS = '#39'A'#39
      '                 Where A.Vei_Status = 1'
      '                 and A.vei_coligada =:COLIGADA'
      #9' order by a.vei_numero'
      ''
      '')
    Left = 328
    Top = 224
  end
  object Timer1: TTimer
    Interval = 1000000
    OnTimer = Timer1Timer
    Left = 408
    Top = 80
  end
  object Timer2: TTimer
    Interval = 300000
    OnTimer = Timer2Timer
    Left = 240
    Top = 176
  end
  object Timer3: TTimer
    Interval = 300000
    OnTimer = Timer3Timer
    Left = 240
    Top = 256
  end
end
