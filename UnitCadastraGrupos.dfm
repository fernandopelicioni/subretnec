object FormCadastraGrupos: TFormCadastraGrupos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Grupos e SubGrupos'
  ClientHeight = 422
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 209
    Height = 406
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Indent = 19
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 223
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object Dtgrupos: TDataSource
    DataSet = pai.QrGrupos
    Left = 336
    Top = 64
  end
  object DtCbGru: TDataSource
    DataSet = pai.QrCbGru
    Left = 336
    Top = 128
  end
  object DtCbSbg: TDataSource
    DataSet = pai.QrCbSbg
    Left = 336
    Top = 184
  end
end
