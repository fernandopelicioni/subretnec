object FormImpRef: TFormImpRef
  Left = 0
  Top = 0
  Caption = 'FormImpRef'
  ClientHeight = 453
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 742
    Height = 329
    Align = alTop
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
    Top = 348
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 208
    Top = 88
  end
  object QrMovRef: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_pnrefmov')
    Left = 352
    Top = 352
  end
  object QrPneu: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_PnMov')
    Left = 408
    Top = 352
  end
end