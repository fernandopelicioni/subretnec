unit UnitGraficoAcompanhamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, DB, ADODB;

type
  TFormGraficoAcompanhamento = class(TForm)
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Panel1: TPanel;
    procedure DBChart1ClickLegend(Sender: TCustomChart; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBChart1ClickAxis(Sender: TCustomChart; Axis: TChartAxis;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBChart1ClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoAcompanhamento: TFormGraficoAcompanhamento;

implementation

uses UnitServerPai, UnitRelatorio, UnitGraficoAcompanhamentoTipo;

{$R *.dfm}

procedure TFormGraficoAcompanhamento.DBChart1ClickAxis(Sender: TCustomChart;
  Axis: TChartAxis; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
showmessage('linha');

end;

procedure TFormGraficoAcompanhamento.DBChart1ClickLegend(Sender: TCustomChart;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
showmessage('text');
end;

procedure TFormGraficoAcompanhamento.DBChart1ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
showmessage('series');

end;

procedure TFormGraficoAcompanhamento.FormActivate(Sender: TObject);
begin
Width := Screen.Width;
Height := Screen.Height;
with DBChart1 do
      begin
                 top:=10;
                 Width := Screen.Width-10;
                 Height := Screen.Height-10;
      end;
end;

procedure TFormGraficoAcompanhamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
