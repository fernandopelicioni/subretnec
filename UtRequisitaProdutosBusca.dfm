object FormRequisitaProdutosBusca: TFormRequisitaProdutosBusca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar produtos'
  ClientHeight = 347
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 273
    Align = alTop
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
      Width = 369
      Height = 25
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
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
      Items.Strings = (
        'Codigo Produto'
        'Descri'#231#227'o'
        'Codigo Auxiliar')
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 67
      Width = 694
      Height = 205
      Align = alBottom
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 23
        Width = 690
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
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoPrd'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 16744448
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            Title.Caption = 'Codigo'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeFantasia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            Title.Caption = 'Descri'#231#227'o'
            Width = 449
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoAuxiliar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            Title.Caption = 'Codigo Auxiliar'
            Width = 112
            Visible = True
          end>
      end
    end
    object BitBtn1: TBitBtn
      Left = 587
      Top = 37
      Width = 38
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object Button1: TButton
    Left = 399
    Top = 277
    Width = 145
    Height = 65
    Caption = 'Confirmar'
    ImageIndex = 6
    Images = pai.ImageList1
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 550
    Top = 277
    Width = 139
    Height = 65
    Caption = 'Cancelar'
    ImageIndex = 3
    Images = pai.ImageList1
    TabOrder = 2
    OnClick = Button2Click
  end
  object DtBusca: TDataSource
    DataSet = QrPrd
    Left = 168
    Top = 280
  end
  object QrPrd: TFDQuery
    Connection = pai.FdCorpore
    SQL.Strings = (
      'Select CodigoPrd, NomeFantasia, IdPrd, CodigoAuxiliar from tprd'
      ' WHERE ultimonivel = '#39'1'#39
      'AND SUBSTRING(P.CODIGOPRD,1,3) <> '#39'016'#39
      '    ORDER by CodIGOPRD')
    Left = 104
    Top = 279
  end
end
