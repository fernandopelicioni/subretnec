object FormBuscaPrd: TFormBuscaPrd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Localizar um produto'
  ClientHeight = 240
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 240
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 72
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 30
      Top = 13
      Width = 68
      Height = 13
      Caption = 'Cod. Produto:'
    end
    object SpeedButton1: TSpeedButton
      Left = 235
      Top = 28
      Width = 46
      Height = 37
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7FCFACDEBDEE3F4EDFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FBF99DD6BC31AD775A
        C295D6F1E6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4FAF797D1B62AA56D19A4671CAC6E54C595D4F1E5FEFFFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF793CCB2279E67199E621AA5681A
        AC6E1DB37555CA9AD4F2E6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FBF9
        99CDB4279A6418995E199F631AA6691AAD6F1BB4751EBB7C58D1A1D8F5EAFEFF
        FFFFFFFFFFFFFFFFFFFFFAFDFC9DCEB629986318965B199C6127A76E3EB6821F
        B1731CB6761CBC7C1FC48359D8A7D6F6EAFEFFFFFFFFFFFFFFFFE9F4EE42A274
        1893591A995F3AAC79A0D8BFD1EEE162CA9F1FB97B1DBF7E1DC68420CD8A57DD
        AAD6F8EBFEFFFFFFFFFFFBFDFCA0D2BB2EA16C58B78CC8E8DAFAFDFCFEFFFFDD
        F4EB66D1A621C3821EC8861ECF8B21D69257E4AFD9F9EDFFFFFFFFFFFFF6FBF8
        C1E3D3E1F2EBFEFFFEFFFFFFFFFFFFFFFFFFDFF6EC63D6A921CC8A1FD18D1FD8
        9322DF995EECB8EDFDF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFFFFDDF7ED62DDAE22D59120DA9520E19A49EBB0E6FDF5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDEF8EF64E4B423DE
        9942E7ABC5F9E6FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFFFFE3FBF292F0CEC9F8E7FDFFFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object EDitPrd: TMaskEdit
      Left = 28
      Top = 28
      Width = 206
      Height = 37
      AutoSize = False
      EditMask = '000\.000\.0000;_'
      Font.Charset = ANSI_CHARSET
      Font.Color = 16744448
      Font.Height = -24
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 0
      Text = '   .   .    '
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 88
      Width = 319
      Height = 151
      Align = alBottom
      DataSource = FormLancaPrdCont.Dtgarantia
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CodigoPRd'
          Title.Caption = 'Codigo'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeFantasia'
          Title.Caption = 'Nome'
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Prateleira'
          Visible = True
        end>
    end
  end
end
