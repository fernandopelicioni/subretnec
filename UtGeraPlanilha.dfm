object FormGeraPlanilha: TFormGeraPlanilha
  Left = 0
  Top = 0
  Caption = 'FormGeraPlanilha'
  ClientHeight = 524
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DbAbast: TDBGrid
    Left = 0
    Top = 0
    Width = 1031
    Height = 257
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object Query: TFDQuery
    Connection = pai.FDConectGenoma
    SQL.Strings = (
      'SELECT '
      'Lay.VLAY_DES as quebra1,'
      'A.Vei_Numero, '
      ' '
      'C.Mod_des quebra2 , '
      'c.MOD_MEDCOMBUSTIVEL,'
      'sum(B.abast_Rodagem) As Km, '
      'Sum(B.Abast_Combustivel) As Diesel,'
      'Sum(B.Abast_Om) As Om,SUM(B.Abast_Arla) as Arla,'
      '(SUM(B.Abast_Arla)*100/SUM(b.Abast_combustivel)) as MediaArla,'
      '(Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) as Media'
      
        '--count(*) qtd, (count(*) * (Sum(B.Abast_Rodagem)/ sum(B.Abast_C' +
        'ombustivel))) as mediapd'
      ''
      ''
      'from Tb_Veiculos A'
      'Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun'
      'Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha'
      'Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT'
      'Where Vei_Coligada = '#39'1'#39
      'and B.Abast_Coligada = A.Vei_Coligada'
      'And convert(varchar(5),B.Abast_Data,103) in ('#39'01/08'#39')'
      'And year(B.Abast_Data) in (2017) '
      ''
      
        '--and (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_M' +
        'EDCOMBUSTIVEL'
      ''
      'and vei_status='#39'1'#39
      ''
      
        'Group by lay.VLAY_DES, A.Vei_Numero, A.Vei_ModCha, C.Mod_Des,c.M' +
        'OD_MEDCOMBUSTIVEL'
      
        'having (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_' +
        'MEDCOMBUSTIVEL'
      ''
      'order by quebra1, vei_numero')
    Left = 152
    Top = 360
  end
  object ExpAbast1: TJvDBGridExcelExport
    Caption = 'CenterBus - Exporta'#231#227'o de dados para Microsoft Excel'
    AutoFit = False
    Left = 576
    Top = 392
  end
  object SaveDialog: TSaveDialog
    Left = 432
    Top = 360
  end
  object DataSource1: TDataSource
    DataSet = Query
    Left = 304
    Top = 352
  end
end
