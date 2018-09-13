object FormImpVeiPn: TFormImpVeiPn
  Left = 0
  Top = 0
  Caption = 'FormImpVeiPn'
  ClientHeight = 413
  ClientWidth = 674
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
    Left = 0
    Top = 0
    Width = 674
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
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = QrMovPneus
    Left = 208
    Top = 88
  end
  object QrMovPneus: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_PNMOV'
      'WHERE PMOV_MOTRET IS NULL and Pmov_Coligada = 2'
      'ORDER BY PMOV_VEI')
    Left = 352
    Top = 352
  end
  object QrVeiPn: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_PnVeiPn')
    Left = 200
    Top = 352
  end
end
