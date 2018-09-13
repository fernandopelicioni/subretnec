object FormRelatorioReclamaVeiculos: TFormRelatorioReclamaVeiculos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reclama'#231#245'es de Ve'#237'culos'
  ClientHeight = 209
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 5
    Width = 392
    Height = 159
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 58
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 16
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Grupo:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 9
      Top = 72
      Width = 186
      Height = 24
      Date = 40568.479119305560000000
      Time = 40568.479119305560000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object RadioGroup1: TRadioGroup
      Left = 9
      Top = 5
      Width = 368
      Height = 42
      Caption = 'Per'#237'odos'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todas Abertas'
        'Especificar data')
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 9
      Top = 120
      Width = 361
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ZGRM_ID'
      ListField = 'ZGRM_DES'
      ListSource = DtGrupos
      ParentFont = False
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Ok'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 313
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtGrupos: TDataSource
    DataSet = pai.QrGrupos
    Left = 328
    Top = 104
  end
end
