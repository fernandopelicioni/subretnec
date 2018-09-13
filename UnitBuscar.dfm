object FormBuscar: TFormBuscar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Localizar'
  ClientHeight = 109
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 109
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 13
      Width = 71
      Height = 21
      Caption = 'Buscar Por'
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 40
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ComboBox1Click
      Items.Strings = (
        'Numero'
        'Chassi'
        'Placa'
        'Renavan')
    end
    object Edit1: TEdit
      Left = 144
      Top = 40
      Width = 265
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 136
      Top = 70
      Width = 76
      Height = 28
      Caption = 'Ok'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 217
      Top = 70
      Width = 76
      Height = 28
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
end
