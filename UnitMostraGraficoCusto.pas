unit UnitMostraGraficoCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, DB, TeeData, ExtCtrls, TeeProcs, Chart, DBChart,
  TeeDBEdit, TeeDBCrossTab, ADODB, StdCtrls, Buttons, pngimage, Grids, DBGrids;

type
  TFormMostraGraficoCusto = class(TForm)
    DtRelgru: TDataSource;
    DBChart1: TDBChart;
    DBCrossTabSource1: TDBCrossTabSource;
    BitBtn1: TBitBtn;
    Series1: TPieSeries;
    Panel1: TPanel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMostraGraficoCusto: TFormMostraGraficoCusto;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormMostraGraficoCusto.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormMostraGraficoCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtRelgru.DataSet.Close;
action:=cafree;
end;

procedure TFormMostraGraficoCusto.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TFormMostraGraficoCusto.Timer1Timer(Sender: TObject);
begin
close;
end;

end.
