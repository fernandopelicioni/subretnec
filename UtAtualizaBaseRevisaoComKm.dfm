object FormAtualizaBaseRevisaoComKm: TFormAtualizaBaseRevisaoComKm
  Left = 0
  Top = 0
  Caption = 'FormAtualizaBaseRevisaoComKm'
  ClientHeight = 567
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 370
    Height = 489
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BRE_VEI'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BRE_ODO'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ABAST_KMANT'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 104
    Top = 504
    Width = 177
    Height = 55
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object QrBase: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      ''
      'select '
      ''
      '* '
      'from TB_BASEREVISAO A'
      ''
      
        'Left Join TB_cbmovabast ab on ab.ABAST_VEI = A.BRE_VEI and ab.AB' +
        'AST_DATA = (BRE_dat - 3)'
      ''
      ' Where BRE_SCO in (333) and A.BRE_ODO =3000'
      ' and ABAST_KM is not null')
    Left = 248
    Top = 387
  end
  object DataSource1: TDataSource
    DataSet = QrBase
    Left = 512
    Top = 352
  end
end
