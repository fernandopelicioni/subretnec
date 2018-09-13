object FormLancaAviso: TFormLancaAviso
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mensagem para Painel'
  ClientHeight = 258
  ClientWidth = 554
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 529
    Height = 209
    Caption = 'Mensagem'
    TabOrder = 0
    object DBMemo1: TDBMemo
      Left = 7
      Top = 21
      Width = 510
      Height = 176
      DataField = 'TUN_HIS'
      DataSource = DtAviso
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 352
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Salvar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 433
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DtAviso: TDataSource
    DataSet = pai.QrAviso
    Left = 384
    Top = 32
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 232
    Top = 112
  end
end
