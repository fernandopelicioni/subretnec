object FormGraficoAcompanhamento: TFormGraficoAcompanhamento
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsNone
  Caption = 'FormGraficoAcompanhamento'
  ClientHeight = 538
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 41
    Width = 949
    Height = 497
    Gradient.Direction = gdDiagonalUp
    Gradient.EndColor = clWhite
    Gradient.StartColor = 16754511
    Gradient.SubGradient.EndColor = clBlue
    Gradient.Visible = True
    LeftWall.Color = 15007690
    Title.Text.Strings = (
      'Analise')
    OnClickAxis = DBChart1ClickAxis
    OnClickLegend = DBChart1ClickLegend
    OnClickSeries = DBChart1ClickSeries
    Chart3DPercent = 10
    Legend.Visible = False
    View3DOptions.HorizOffset = -14
    Align = alClient
    Color = 16448483
    TabOrder = 0
    PrintMargins = (
      15
      26
      15
      26)
    object Series1: TLineSeries
      Gradient.Direction = gdFromTopLeft
      Gradient.EndColor = clWhite
      Gradient.MidColor = 8388672
      Gradient.StartColor = 16711808
      Gradient.Visible = True
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8618883
      Marks.Style = smsValue
      Marks.Transparent = True
      Marks.Visible = True
      DataSource = FormGraficoAcompanhamentoTipo.QrCusto
      SeriesColor = 16711808
      Shadow.Color = 4276545
      Shadow.SmoothBlur = -4
      XLabelsSource = 'Mes'
      InvertedStairs = True
      LinePen.Color = 13770496
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      TreatNulls = tnIgnore
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'Mes'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'COLUMN1'
      Transparency = 14
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 41
    Align = alTop
    Caption = 'Acompanhamento  de despesas Visual - Di'#225'rio'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -21
    Font.Name = 'Teen'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
