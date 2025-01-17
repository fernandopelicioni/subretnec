object FormAplicaBuscaPrd: TFormAplicaBuscaPrd
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 220
  BorderStyle = bsDialog
  Caption = 'Localizar Produtos no Estoque'
  ClientHeight = 396
  ClientWidth = 738
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
    Left = 8
    Top = 8
    Width = 722
    Height = 289
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 14
      Width = 60
      Height = 17
      Caption = 'Buscar Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 219
      Top = 14
      Width = 89
      Height = 17
      Caption = 'Dados da Busca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 212
      Top = 38
      Width = 313
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 38
      Width = 169
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 1
      Text = 'Descri'#231#227'o'
      OnClick = ComboBox1Click
      Items.Strings = (
        'Codigo Produto'
        'Descri'#231#227'o'
        'Codigo Auxiliar')
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 68
      Width = 697
      Height = 205
      Caption = 'Resultados'
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 23
        Width = 693
        Height = 180
        Align = alClient
        DataSource = DtBusca
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI Light'
        TitleFont.Style = []
        OnDblClick = SpeedButton1Click
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoPrd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Codigo'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = 'Descri'#231#227'o'
            Width = 449
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoAuxiliar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16711808
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Codigo Auxiliar'
            Width = 112
            Visible = True
          end>
      end
    end
    object BitBtn1: TBitBtn
      Left = 531
      Top = 38
      Width = 38
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Button1: TButton
    Left = 432
    Top = 303
    Width = 145
    Height = 65
    Caption = 'Confirmar'
    ImageIndex = 6
    Images = pai.ImageList1
    TabOrder = 1
    OnClick = SpeedButton1Click
  end
  object Button2: TButton
    Left = 583
    Top = 303
    Width = 139
    Height = 65
    Caption = 'Cancelar'
    ImageIndex = 3
    Images = pai.ImageList1
    TabOrder = 2
    OnClick = SpeedButton2Click
  end
  object DtBusca: TDataSource
    DataSet = QrBusca
    Left = 168
    Top = 296
  end
  object QrBusca: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select CodigoPrd, NomeFantasia, IdPrd, CodigoAuxiliar from tprd'
      ' WHERE ultimonivel = '#39'1'#39
      '    ORDER by CodIGOPRD')
    Left = 128
    Top = 296
  end
end
