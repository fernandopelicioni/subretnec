object FormLancaInfoVeiculo: TFormLancaInfoVeiculo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Incluindo Informa'#231#245'es do Ve'#237'culo'
  ClientHeight = 446
  ClientWidth = 990
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
  object DBMemo1: TDBMemo
    Left = 0
    Top = 0
    Width = 990
    Height = 193
    Align = alTop
    DataField = 'TIV_HIS'
    DataSource = DtVeiInfo
    TabOrder = 0
    OnKeyPress = DBMemo1KeyPress
    ExplicitWidth = 1066
  end
  object TouchKeyboard1: TTouchKeyboard
    Left = 0
    Top = 199
    Width = 990
    Height = 247
    Align = alBottom
    GradientEnd = clSilver
    GradientStart = clGray
    Layout = 'Standard'
    ExplicitLeft = 8
    ExplicitTop = 191
    ExplicitWidth = 1049
    CustomCaptionOverrides = {
      010000000400000002000000064500730063000C56006F006C00740061007200
      02000000124200610063006B00730070006100630065000C4100700061006700
      61007200020000000A45006E007400650072002443006F006E00660069007200
      6D006100720020006500200056006F006C007400610072000200000006440065
      006C000E440065006C006500740061007200}
  end
  object DtVeiInfo: TDataSource
    DataSet = pai.QrVeiInfo
    Left = 464
    Top = 88
  end
end
