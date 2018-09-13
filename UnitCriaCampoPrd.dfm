object FormCriaCampoPrd: TFormCriaCampoPrd
  Left = 0
  Top = 0
  Caption = 'FormCriaCampoPrd'
  ClientHeight = 631
  ClientWidth = 848
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
    Width = 848
    Height = 209
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
    Left = 744
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 279
    Width = 848
    Height = 352
    Align = alBottom
    DataSource = DataSource2
    PanelHeight = 44
    PanelWidth = 831
    TabOrder = 2
    RowCount = 8
    object DBText1: TDBText
      Left = 280
      Top = 16
      Width = 409
      Height = 17
      DataField = 'descricao'
      DataSource = DataSource2
    end
    object DBText2: TDBText
      Left = 119
      Top = 16
      Width = 155
      Height = 17
      DataField = 'codigoprd'
      DataSource = DataSource2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Estocavel'
      DataField = 'ESTOCAVEL'
      DataSource = DataSource2
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 232
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object QrPrd: TADOQuery
    Connection = pai.ConectCorpore
    Parameters = <>
    SQL.Strings = (
      'select * from tprd where codcoligada =2 ')
    Left = 336
    Top = 72
  end
  object QrPrdFil: TADOQuery
    Connection = pai.ConectCorpore
    Parameters = <>
    SQL.Strings = (
      'select * from tprdfil where codcoligada =2 ')
    Left = 336
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = QrPrd
    Left = 400
    Top = 88
  end
  object qrprdfil2: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select b.codigoprd, descricao, a.estocavel from tprdfil a, tprd ' +
        'b '
      
        'where b.idprd = a.idprd and a.codcoligada = b.codcoligada and a.' +
        'codcoligada = 2'
      'and b.ultimonivel = 1'
      'order by b.codigoprd'
      ''
      ''
      ''
      '')
    Left = 336
    Top = 224
  end
  object DataSource2: TDataSource
    DataSet = qrprdfil2
    Left = 400
    Top = 248
  end
end
