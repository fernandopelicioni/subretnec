object FormImpMovPn: TFormImpMovPn
  Left = 0
  Top = 0
  Caption = 'FormImpMovPn'
  ClientHeight = 435
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 3
    Top = 8
    Width = 676
    Height = 329
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 560
    Top = 392
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 208
    Top = 88
  end
  object QrMovPneus: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_PnMov')
    Left = 448
    Top = 368
  end
  object QrPneu: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_PnMov')
    Left = 368
    Top = 368
  end
end