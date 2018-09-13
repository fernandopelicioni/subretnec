object FormRelatorioComponentes: TFormRelatorioComponentes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informa'#231#245'es de Controle'
  ClientHeight = 152
  ClientWidth = 384
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
    Width = 384
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Ve'#237'culo:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 43
      Width = 345
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'VEI_NUN'
      ListField = 'VEI_NUMERO'
      ListSource = DtVeiculos
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Gerar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 305
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtVeiculos: TDataSource
    DataSet = pai.QrVeiculo
    Left = 248
    Top = 136
  end
end
