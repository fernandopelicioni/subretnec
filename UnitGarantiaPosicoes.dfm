object FormGarantiaPosicoes: TFormGarantiaPosicoes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Posi'#231#245'es de Instala'#231#227'o no Veiculo'
  ClientHeight = 332
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 441
    Height = 97
    TabOrder = 0
    object Label1: TLabel
      Left = 118
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Codigo:'
    end
    object DBText1: TDBText
      Left = 16
      Top = 27
      Width = 65
      Height = 17
      DataField = 'TPOS_COD'
      DataSource = DtPos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 118
      Top = 24
      Width = 305
      Height = 27
      DataField = 'TPOS_DES'
      DataSource = DtPos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 64
      Width = 177
      Height = 17
      Caption = 'Ativo'
      DataField = 'TPOS_STATUS'
      DataSource = DtPos
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 139
    Width = 441
    Height = 184
    CustomHint = pai.BalloonHint1
    DataSource = DtPos
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'TPOS_COD'
        Title.Caption = 'Codigo'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TPOS_DES'
        Title.Caption = 'Descri'#231#227'o'
        Width = 310
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 111
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 289
    Top = 111
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Incluir'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 370
    Top = 111
    Width = 75
    Height = 25
    CustomHint = pai.BalloonHint1
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object DtPos: TDataSource
    DataSet = QrPos
    Left = 312
    Top = 56
  end
  object QrPos: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from TPrd_Posicao'
      'where tpos_coligada=:coligada')
    Left = 384
    Top = 56
  end
end
