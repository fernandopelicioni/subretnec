object FormRelIndicadorRevisaoKm: TFormRelIndicadorRevisaoKm
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Genoma Software'
  ClientHeight = 317
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 16744448
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    Left = 40
    Top = 80
    Width = 87
    Height = 21
    Caption = 'Destacar KM:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 58
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   Indicador de Revis'#227'o de Ve'#237'culos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Image5: TImage
      Left = 494
      Top = 1
      Width = 50
      Height = 56
      Cursor = crHandPoint
      Align = alRight
      AutoSize = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
        003208060000001E3F88B1000002F24944415478DADD9A8F55DB3010C6CF13D4
        1B349DA074029C0948363013B49D8064829209E80685097027804E50B34198A0
        D5179FC0716CE54E3EDB90EFBD7B7E019FA59FF5E74E9213B2D7B9B3191B94F2
        75CBD792EDB765A189C13350E10B670B6799D2B77076EBEC8EE1260141A5AF22
        2ADF25006D186E14106B80A600B2D60269405206F836104053D70CB495DC2C05
        397376C3D731F5E8EC92AFBD41160C910AEE1D426891251DE96AC7407286780B
        42CBFC8C01414BFC9ABAF60DCDA9A365BA403016EE69BAEED4A52DC31C8C9936
        909421C61ED8523D32CCDE6CD6068269EFEBD4B53D2204CEBD30D004C9A86A8D
        F7A02F54EB624D907BD247EC27AA6613BCA10F4ADF67AA7A40EEECA3D2B7A0AA
        8B1D8064A46F8D3FEC87FE7AC60F97C23CB32FDE6ACABE9F95E5BFCC6275106D
        6BD421BCA4307508AF181864CD8B3AC8CCD95FC5039EB8D26D79D0319836883A
        0CFEAEE9669F9C951E04FDFB87C219C9DC2AF0FF2E981084179E7BA5A8CB7767
        D71E04859E2B9C3B0353004602111388B1D2CC3CC83F85630C0C0D04E19524D4
        2F764861684008680E909CFA65B81298902CF2BA254056A41B5C963056C9E9DA
        0A2406C632C3DE815826895218EB65C2C61A4432C57A9082F4B959106445365D
        4B0A31048CD918D14258C3AC2DA6DF58084B9865DF80284D3B48704F1F98799F
        1445933BED0A1B1026894D1A6312C0984453A2BDA4718834BE2D4E4860F0DCE8
        347E46BA855549D5E2BF6B61150A762118F83CD0EB2191447B0B2BA8205DF76A
        DB5F9246EC369898FDB483A52E94917EF6AAC368D38E3A4CECA660EBE60391BE
        55A0925EB783B4B91360FC76D04CE9BB1BE4FEC7C96ED04127B1650AC56E968D
        A5B6FDB4E0B10260ACD26C2B7506E2D0410F1CDEDA78511FF478E57402476F5E
        195587F9537533742704BD227493E6781A6F63EC0900033B27A3E3692FCC662B
        1A6F6ADE7079A61F0CD4957101DA0C402A446CC408D58AB3EF473528F0C20800
        0920827111E36CF599D3824DDB4A78FBB76C659F4A5880349591ECC3B3C2B2D0
        FF7EB4DE733B0A549E0000000049454E44AE426082}
      OnClick = Image5Click
      ExplicitLeft = 1094
      ExplicitHeight = 50
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 262
    Width = 545
    Height = 55
    Align = alBottom
    Alignment = taRightJustify
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 379
      Top = 4
      Width = 145
      Height = 47
      Cursor = crHandPoint
      Caption = 'Submeter'
      OnClick = SpeedButton1Click
    end
  end
  object EditKm: TEdit
    Left = 40
    Top = 104
    Width = 121
    Height = 29
    NumbersOnly = True
    TabOrder = 2
    Text = '7500'
  end
  object RadioGroup1: TRadioGroup
    Left = 32
    Top = 139
    Width = 457
    Height = 73
    Caption = 'Op'#231#245'es'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Acima da meta')
    TabOrder = 3
  end
end
