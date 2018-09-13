object FormPneuGraficoMarcas: TFormPneuGraficoMarcas
  Left = 0
  Top = 0
  Caption = 'Pneus por Marcas :'
  ClientHeight = 491
  ClientWidth = 684
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
  object Grafico: TDBChart
    Left = 0
    Top = 0
    Width = 684
    Height = 491
    Title.Text.Strings = (
      'TDBChart')
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = -0.500000000000000000
    DepthAxis.Minimum = -0.500000000000000000
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = -0.500000000000000000
    DepthTopAxis.Minimum = -0.500000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      14
      15
      14)
    ColorPaletteIndex = 9
    object Series1: TPieSeries
      Marks.Style = smsValue
      Marks.Tail.Margin = 2
      DataSource = Qrtemp
      XLabelsSource = 'Marca'
      XValues.Order = loAscending
      YValues.Name = 'Pie'
      YValues.Order = loNone
      YValues.ValueSource = 'Qt'
      Frame.InnerBrush.BackColor = clRed
      Frame.InnerBrush.Gradient.EndColor = clGray
      Frame.InnerBrush.Gradient.MidColor = clWhite
      Frame.InnerBrush.Gradient.StartColor = 4210752
      Frame.InnerBrush.Gradient.Visible = True
      Frame.MiddleBrush.BackColor = clYellow
      Frame.MiddleBrush.Gradient.EndColor = 8553090
      Frame.MiddleBrush.Gradient.MidColor = clWhite
      Frame.MiddleBrush.Gradient.StartColor = clGray
      Frame.MiddleBrush.Gradient.Visible = True
      Frame.OuterBrush.BackColor = clGreen
      Frame.OuterBrush.Gradient.EndColor = 4210752
      Frame.OuterBrush.Gradient.MidColor = clWhite
      Frame.OuterBrush.Gradient.StartColor = clSilver
      Frame.OuterBrush.Gradient.Visible = True
      Frame.Width = 4
      OtherSlice.Legend.Visible = False
    end
  end
  object Qrtemp: TADOQuery
    Connection = pai.ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select A.Tpm_des as Marca, count(*) as Qt from Tb_PnMarcas A, Tb' +
        '_PnPneus B'
      'where B.Tcp_Marca = A.Tpm_Cod'
      'group by A.Tpm_Des')
    Left = 336
    Top = 40
  end
  object DtColigada: TDataSource
    DataSet = pai.QrColigadas
    Left = 504
    Top = 224
  end
end
