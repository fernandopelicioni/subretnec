object FormRelatorioPrateleira: TFormRelatorioPrateleira
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Emiss'#227'o de Etiquetas de Produtos'
  ClientHeight = 187
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 137
    Caption = 'Impress'#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 83
      Width = 78
      Height = 13
      Caption = 'Intervalo Inicial:'
    end
    object Label2: TLabel
      Left = 200
      Top = 83
      Width = 78
      Height = 13
      Caption = 'Intervalo Inicial:'
    end
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 19
      Width = 313
      Height = 41
      Caption = 'Ordem de Sa'#237'da'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Prateleira'
        'Codigo'
        'Nome')
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 24
      Top = 97
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object Edit2: TEdit
      Left = 192
      Top = 97
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'ZZ'
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Gerar Codigo de Barras'
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 151
    Width = 75
    Height = 25
    Caption = 'Ok'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 281
    Top = 151
    Width = 75
    Height = 25
    Caption = 'Fechar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 72
    Top = 128
  end
end
