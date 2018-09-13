object FormBuscaProduto: TFormBuscaProduto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Localizar Produtos...'
  ClientHeight = 289
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 545
    Height = 257
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Buscar por:'
    end
    object Label2: TLabel
      Left = 169
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Dados da busca?'
    end
    object ComboBoxEx1: TComboBoxEx
      Left = 16
      Top = 24
      Width = 145
      Height = 25
      ItemsEx = <
        item
          Caption = 'Descri'#231#227'o'
        end
        item
          Caption = 'N'#250'mero Original'
        end
        item
          Caption = 'Codigo Reduzido'
        end>
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object MaskEdit1: TMaskEdit
      Left = 169
      Top = 24
      Width = 361
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'MaskEdit1'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 64
      Width = 514
      Height = 185
      DrawingStyle = gdsGradient
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
