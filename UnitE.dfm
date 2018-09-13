object FormIntegraprateleira: TFormIntegraprateleira
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderStyle = bsDialog
  Caption = 'Integra'#231#227'o Genoma.CenterBus := Totvs.Nucleus'
  ClientHeight = 292
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 505
    Height = 257
    Caption = 'Nucleus'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 24
      Width = 422
      Height = 120
      DataSource = DtPrateleira
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBGrid2: TDBGrid
      Left = 3
      Top = 150
      Width = 417
      Height = 120
      DataSource = DtPrd
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DtPrd: TDataSource
    DataSet = Pai.QrPrd
    Left = 424
    Top = 8
  end
  object DtPrateleira: TDataSource
    DataSet = TbTprdCompl
    Left = 424
    Top = 56
  end
  object TbTprdCompl: TADOTable
    Connection = Pai.ConectCorpore
    CursorType = ctStatic
    IndexFieldNames = 'IDPRD'
    MasterFields = 'IDPRD'
    MasterSource = DtPrd
    TableName = 'TPRDCOMPL'
    Left = 424
    Top = 96
  end
end
