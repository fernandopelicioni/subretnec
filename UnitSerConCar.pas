unit UnitSerConCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Buttons, StdCtrls, Mask, DBCtrls, pngimage,
  ExtCtrls;

type
  TFormLancaSerConCar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DtSerConCar: TDataSource;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaSerConCar: TFormLancaSerConCar;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaSerConCar.DBGrid1DblClick(Sender: TObject);
begin
DtSerConCar.DataSet.edit;
GroupBox1.Enabled:=true;
DBEdit1.SetFocus;

end;

procedure TFormLancaSerConCar.FormActivate(Sender: TObject);
begin
DtSerConCar.DataSet.Open;
end;

procedure TFormLancaSerConCar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSerConCar.DataSet.Close;
Action:=Cafree;
end;

procedure TFormLancaSerConCar.SpeedButton1Click(Sender: TObject);
begin
if (dtSerConCar.DataSet.State = DsInsert) or (dtSerConCar.DataSet.State = DsInsert) then
   begin
     dtSerConCar.DataSet.post;
   //  dtSerConCar.DataSet.close;
     GroupBox1.Enabled:=False;
   end;

end;

procedure TFormLancaSerConCar.SpeedButton2Click(Sender: TObject);
begin
DtSerConCar.DataSet.Cancel;
end;

procedure TFormLancaSerConCar.SpeedButton3Click(Sender: TObject);
begin
DtSerConCar.DataSet.Cancel;
close;
end;

procedure TFormLancaSerConCar.SpeedButton4Click(Sender: TObject);
begin
DtSerConCar.DataSet.Insert;
GroupBox1.Enabled:=true;
DBEdit1.SetFocus;
end;

end.
