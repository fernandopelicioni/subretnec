object FormLancaPrdCont: TFormLancaPrdCont
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Controle de Garantia - Pe'#231'as / Produtos '
  ClientHeight = 448
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 5
    Width = 687
    Height = 435
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label2: TLabel
        Left = 34
        Top = 8
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label3: TLabel
        Left = 96
        Top = 8
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label4: TLabel
        Left = 176
        Top = 8
        Width = 71
        Height = 13
        Caption = 'Nome Fantasia'
      end
      object Label6: TLabel
        Left = 511
        Top = 8
        Width = 99
        Height = 13
        Caption = 'Aplica'#231#227'o  no Ve'#237'culo'
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 3
        Top = 24
        Width = 673
        Height = 368
        Color = clWhite
        DataSource = DtPrd
        PanelHeight = 23
        PanelWidth = 656
        ParentColor = False
        TabOrder = 0
        RowCount = 16
        SelectedColor = 12058551
        object DBText4: TDBText
          Left = 14
          Top = 4
          Width = 35
          Height = 17
          Alignment = taRightJustify
          DataField = 'IDPRD'
          DataSource = DtPrd
        end
        object DBText5: TDBText
          Left = 71
          Top = 4
          Width = 82
          Height = 17
          Alignment = taRightJustify
          DataField = 'CodigoPrd'
          DataSource = DtPrd
        end
        object DBText6: TDBText
          Left = 167
          Top = 4
          Width = 314
          Height = 17
          DataField = 'Nomefantasia'
          DataSource = DtPrd
        end
        object DBCheckBox3: TDBCheckBox
          Left = 504
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Substitu'#237'vel'
          DataField = 'PrdsubTro'
          DataSource = DtPrd
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object QrPrd: TADOQuery
    Connection = pai.ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '      A.IDPRD, A.CodigoPrd, A.Nomefantasia, B.PrdsubTro   '
      'from  TPRD A '
      'Join '
      
        '      TPRDCOMPL B on B.IDPRD = A.IDPRD and A.CODCOLIGADA = B.COD' +
        'COLIGADA'
      'Where'
      '      A.TIPO = '#39'P'#39
      '      And A.ULTIMONIVEL = '#39'1'#39'   '
      ''
      '      And A.Codcoligada=:coligada')
    Left = 616
    Top = 82
    object QrPrdIDPRD: TIntegerField
      FieldName = 'IDPRD'
    end
    object QrPrdCodigoPrd: TStringField
      FieldName = 'CodigoPrd'
      Size = 30
    end
    object QrPrdNomefantasia: TStringField
      FieldName = 'Nomefantasia'
      Size = 100
    end
    object QrPrdPrdsubTro: TWideStringField
      FieldName = 'PrdsubTro'
      Size = 1
    end
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 576
    Top = 65528
  end
  object DtPrd: TDataSource
    DataSet = QrPrd
    Left = 576
    Top = 80
  end
end
