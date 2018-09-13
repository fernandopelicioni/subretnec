object FormLancaIteRec: TFormLancaIteRec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Defeitos de ve'#237'culos'
  ClientHeight = 323
  ClientWidth = 440
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
    Width = 417
    Height = 121
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 18
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label2: TLabel
      Left = 24
      Top = 66
      Width = 110
      Height = 13
      Caption = 'Grupo de Manuten'#231#227'o:'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 32
      Width = 377
      Height = 24
      DataField = 'TID_DES'
      DataSource = DtIteRec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 79
      Width = 273
      Height = 24
      DataField = 'TID_GRUPO'
      DataSource = DtIteRec
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'GRM_ID'
      ListField = 'GRM_DES'
      ListSource = DtGrupo
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBLookupComboBox1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 166
    Width = 424
    Height = 149
    DataSource = DtIteRec
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TID_COD'
        Title.Caption = 'Codigo'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TID_DES'
        Title.Caption = 'Descri'#231#227'o'
        Width = 329
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 256
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 337
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Novo'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DtIteRec: TDataSource
    DataSet = pai.QrIteRec
    Left = 304
    Top = 32
  end
  object DtGrupo: TDataSource
    DataSet = pai.QrCbGru
    Left = 296
    Top = 80
  end
end
