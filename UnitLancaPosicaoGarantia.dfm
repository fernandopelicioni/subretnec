object FormLancaPosicaoGarantia: TFormLancaPosicaoGarantia
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Posi'#231#227'o de Instala'#231#227'o de Produtos'
  ClientHeight = 276
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 276
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 19
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object DBEdit1: TDBEdit
      Left = 21
      Top = 33
      Width = 388
      Height = 24
      DataField = 'ZPOS_DES'
      DataSource = DtPosicao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 119
      Width = 444
      Height = 156
      Align = alBottom
      DataSource = DtPosicao
      Options = [dgTitles, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ZPOS_COD'
          Title.Caption = 'Codigo'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ZPOS_DES'
          Title.Caption = 'Descri'#231#227'o'
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ZPOS_STATUS'
          Title.Caption = 'Status'
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 40
      Top = 63
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'ZPOS_STATUS'
      DataSource = DtPosicao
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object BitBtn1: TBitBtn
      Left = 248
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 334
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
  end
  object DtPosicao: TDataSource
    Left = 344
    Top = 24
  end
end
