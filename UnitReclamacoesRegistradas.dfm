object FormReclamacoesRegistradas: TFormReclamacoesRegistradas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reclama'#231#245'es Registradas'
  ClientHeight = 242
  ClientWidth = 412
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
    Top = 0
    Width = 412
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 14
      Width = 29
      Height = 13
      Caption = 'Inicio:'
    end
    object Label2: TLabel
      Left = 168
      Top = 14
      Width = 20
      Height = 13
      Caption = 'Fim:'
    end
    object Label3: TLabel
      Left = 28
      Top = 120
      Width = 86
      Height = 13
      Caption = 'Grupo de Defeito:'
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 63
      Width = 264
      Height = 49
      Caption = 'Status das Reclama'#231#245'es'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Abertos'
        'Fechados'
        'Todos')
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 29
      Width = 129
      Height = 24
      Date = 40426.619457986110000000
      Time = 40426.619457986110000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 159
      Top = 29
      Width = 129
      Height = 24
      Date = 40426.619457986110000000
      Time = 40426.619457986110000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 136
      Width = 383
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'TID_COD'
      ListField = 'TID_DES'
      ListSource = DtIteRec
      ParentFont = False
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 209
    Width = 75
    Height = 25
    Caption = 'Gerar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 313
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtIteRec: TDataSource
    DataSet = pai.QrIteRec
    Left = 360
    Top = 56
  end
end
