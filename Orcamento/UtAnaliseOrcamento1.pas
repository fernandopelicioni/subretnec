unit UtAnaliseOrcamento1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeFunci, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvFullColorSpaces,
  JvFullColorCtrls, JvExExtCtrls, JvExtComponent, JvCaptionPanel, Vcl.Buttons,
  JvDesignSurface, VCLTee.TeeDBCrossTab, System.ImageList, Vcl.ImgList,
  Vcl.ComCtrls, Vcl.ToolWin, Dateutils ;

type
  TFormAnaliseOrcamento1 = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    FlowPanel1: TFlowPanel;
    QrOrc1: TFDQuery;
    DtOrc1: TDataSource;
    DBCrossTabSource1: TDBCrossTabSource;
    PnDirecao: TJvCaptionPanel;
    LbDirecao: TLabel;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    PnFreios: TJvCaptionPanel;
    LbFreios: TLabel;
    Chart3: TChart;
    BarSeries2: TBarSeries;
    Label4: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Timer1: TTimer;
    PnEletrica: TJvCaptionPanel;
    LbEletrica: TLabel;
    Chart1: TChart;
    Series1: TBarSeries;
    Label6: TLabel;
    QrDirecao: TFDQuery;
    DtDirecao: TDataSource;
    QrFreios: TFDQuery;
    DtFerios: TDataSource;
    PnMotor: TJvCaptionPanel;
    LbMotor: TLabel;
    Chart4: TChart;
    BarSeries3: TBarSeries;
    PnLanternagem: TJvCaptionPanel;
    Lblanternagem: TLabel;
    Chart5: TChart;
    BarSeries4: TBarSeries;
    PnSuspensao: TJvCaptionPanel;
    LbSuspensao: TLabel;
    Chart6: TChart;
    BarSeries5: TBarSeries;
    QrMotor: TFDQuery;
    DtMotor: TDataSource;
    QrLanternagem: TFDQuery;
    Dtlanternagem: TDataSource;
    QrSuspensao: TFDQuery;
    DtSuspensao: TDataSource;
    PnTransmissao: TJvCaptionPanel;
    LbTransmissao: TLabel;
    Chart7: TChart;
    BarSeries6: TBarSeries;
    QrTransmissao: TFDQuery;
    DtTransmissao: TDataSource;
    PnLimpeza: TJvCaptionPanel;
    LbLimpeza: TLabel;
    Chart8: TChart;
    BarSeries7: TBarSeries;
    QrLimpeza: TFDQuery;
    DtLimpza: TDataSource;
    procedure CloseButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ToolButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Chart2Click(Sender: TObject);
    procedure Chart1Click(Sender: TObject);
    procedure Chart3Click(Sender: TObject);
    procedure Chart4Click(Sender: TObject);
    procedure Chart5Click(Sender: TObject);
    procedure Chart6Click(Sender: TObject);
    procedure Chart7Click(Sender: TObject);
    procedure Chart8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AppBarResize;
    procedure AppBarShow(mode: integer);
  public
    { Public declarations }
    Cor, Azul, verde,Laranja,Vermelho:Tcolor;

  end;

var
  FormAnaliseOrcamento1: TFormAnaliseOrcamento1;

implementation

{$R *.dfm}

uses UtOrcamentoContaDetalhada;

const
  AppBarHeight = 75;
  cAzul =  $00E8A601;
  cVerde = clTeal;
  cLaranja = $000156E4;
  cVermelho = $003C4CE7;



procedure TFormAnaliseOrcamento1.AppBarResize;
begin
  AppBar.SetBounds(0, AppBar.Parent.Height - AppBarHeight,
    AppBar.Parent.Width, AppBarHeight);
end;

procedure TFormAnaliseOrcamento1.AppBarShow(mode: integer);
begin
  if mode = -1 then // Toggle
    mode := integer(not AppBar.Visible );

  if mode = 0 then
    AppBar.Visible := False
  else
  begin
    AppBar.Visible := True;
    AppBar.BringToFront;
  end;
end;

procedure TFormAnaliseOrcamento1.Action1Execute(Sender: TObject);
begin
  AppBarShow(-1);
end;

procedure TFormAnaliseOrcamento1.Chart1Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('conta').AsString:='2.1.01.004';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart2Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.003';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;
end;

procedure TFormAnaliseOrcamento1.Chart3Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.005';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart4Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.007';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart5Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.006';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart6Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.008';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart7Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.009';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.Chart8Click(Sender: TObject);
begin
       With   FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
                 ParamByName('ano').AsString:= IntToStr(YearOf(Now));
                 ParamByName('conta').AsString:='2.1.01.025';
                 Open;
           end;
           FormOrcamentoContaDetalhada.ShowModal;

end;

procedure TFormAnaliseOrcamento1.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormAnaliseOrcamento1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      QrOrc1.Close;
      action:=cafree;
end;

procedure TFormAnaliseOrcamento1.FormCreate(Sender: TObject);
begin
     ToolButton1.Click;

end;

procedure TFormAnaliseOrcamento1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  AppBarShow(0);
end;

procedure TFormAnaliseOrcamento1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    AppBarShow(-1)
  else
    AppBarShow(0);
end;

procedure TFormAnaliseOrcamento1.FormResize(Sender: TObject);
begin
  AppBarResize;
end;

procedure TFormAnaliseOrcamento1.FormShow(Sender: TObject);
begin
     Application.CreateForm(TFormOrcamentoContaDetalhada,FormOrcamentoContaDetalhada);
     Screen.Cursor:=crDefault;
end;

procedure TFormAnaliseOrcamento1.Timer1Timer(Sender: TObject);
begin
//--    Chart1.Series[0].XValue[0] :=5000;
//    Chart1.Series[1].XValue[1]:=6000;
end;

procedure TFormAnaliseOrcamento1.ToolButton1Click(Sender: TObject);
var percent: integer;
coratual:string;
begin
   With QrDirecao do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbDirecao.color:=$00E8A601;
                    PnDirecao.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbDirecao.color:=Clteal;
                    PnDirecao.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbDirecao.color:=$000156E4;
                    PnDirecao.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbDirecao.color:=$003C4CE7;
                    PnDirecao.CaptionColor:=$003C4CE7;
                 end;

            LbDirecao.caption:=IntToStr(percent)+'%';
            Chart2.Series[0].Clear;
            Chart2.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart2.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
           close;
       end;
    // Freios
   With QrFreios do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbFreios.color:=$00E8A601;
                    PnFreios.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbFreios.color:=Clteal;
                    PnFreios.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbFreios.color:=$000156E4;
                    PnFreios.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbFreios.color:=$003C4CE7;
                    PnFreios.CaptionColor:=$003C4CE7;
                 end;

            LbFreios.caption:=IntToStr(percent)+'%';
            Chart3.Series[0].Clear;
            Chart3.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart3.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
           close;
       end;
    // Eletrica

    With QrOrc1 do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbEletrica.color:=$00E8A601;
                    PnEletrica.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbEletrica.color:=Clteal;
                    PnEletrica.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbEletrica.color:=$000156E4;
                    PnEletrica.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbEletrica.color:=$003C4CE7;
                    PnEletrica.CaptionColor:=$003C4CE7;
                 end;

            LbEletrica.caption:=IntToStr(percent)+'%';
            Chart1.Series[0].Clear;
            Chart1.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart1.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;

    With QrMotor do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbMotor.color:=$00E8A601;
                    PnMotor.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbMotor.color:=Clteal;
                    PnMotor.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbMotor.color:=$000156E4;
                    PnMotor.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbMotor.color:=$003C4CE7;
                    PnMotor.CaptionColor:=$003C4CE7;
                 end;

            LbMotor.caption:=IntToStr(percent)+'%';
            Chart4.Series[0].Clear;
            Chart4.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart4.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;
 //lantenagem
    With QrLanternagem do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    Lblanternagem.color:=$00E8A601;
                    PnLanternagem.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    Lblanternagem.color:=Clteal;
                    PnLanternagem.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    Lblanternagem.color:=$000156E4;
                    PnLanternagem.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    Lblanternagem.color:=$003C4CE7;
                    PnLanternagem.CaptionColor:=$003C4CE7;
                 end;

            Lblanternagem.caption:=IntToStr(percent)+'%';
            Chart5.Series[0].Clear;
            Chart5.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart5.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;
//suspensao
   With QrSuspensao do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbSuspensao.color:=$00E8A601;
                    PnSuspensao.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbSuspensao.color:=Clteal;
                    PnSuspensao.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbSuspensao.color:=$000156E4;
                    PnSuspensao.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbSuspensao.color:=$003C4CE7;
                    PnSuspensao.CaptionColor:=$003C4CE7;
                 end;

            LbSuspensao.caption:=IntToStr(percent)+'%';
            Chart6.Series[0].Clear;
            Chart6.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart6.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;
// trnsamissao
   With QrTransmissao do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbTransmissao.color:=$00E8A601;
                    PnTransmissao.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbTransmissao.color:=Clteal;
                    PnTransmissao.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbTransmissao.color:=$000156E4;
                    PnTransmissao.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbTransmissao.color:=$003C4CE7;
                    PnTransmissao.CaptionColor:=$003C4CE7;
                 end;

            LbTransmissao.caption:=IntToStr(percent)+'%';
            Chart7.Series[0].Clear;
            Chart7.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart7.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;
   // limpeza
   With QrLimpeza do
       begin
             close;
             ParamByName('mes').AsString:= IntToStr(MonthOf(Now));
             ParamByName('ano').AsString:= IntToStr(YearOf(Now));
             open;
             percent:= (FieldByName('real').asfloat *100) / FieldByName('orcado').value;
             if percent < 50 then
                 begin
                    LbLimpeza.color:=$00E8A601;
                    PnLimpeza.CaptionColor:=$00E8A601;
                 end;
             if (percent > 50) and (percent < 85) then
                 begin
                    LbLimpeza.color:=Clteal;
                    PnLimpeza.CaptionColor:=Clteal;
                 end;
             if (percent > 84) and (percent <=95 ) then
                 begin
                    LbLimpeza.color:=$000156E4;
                    PnLimpeza.CaptionColor:=$000156E4;
                 end;
             if percent >99 then
                 begin
                    LbLimpeza.color:=$003C4CE7;
                    PnLimpeza.CaptionColor:=$003C4CE7;
                 end;

            LbLimpeza.caption:=IntToStr(percent)+'%';
            Chart8.Series[0].Clear;
            Chart8.Series[0].Add (FieldByName('orcado').asfloat,'Or�ado' ,$00E8A601);
            Chart8.Series[0].Add (FieldByName('real').asfloat, 'Realizado', $0060AE27);
            Close;
       end;


end;

procedure TFormAnaliseOrcamento1.ToolButton4Click(Sender: TObject);
begin
close;
end;

end.
// core
//$000014E5 vermelho
//$00E8A601 azul
// $00A9AA00 teaal / v erde

