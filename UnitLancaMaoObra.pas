unit UnitLancaMaoObra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons;

type
  TFormLancaMaoObra = class(TForm)
    GroupBox1: TGroupBox;
    DtCbPro: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DtColigada: TDataSource;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaMaoObra: TFormLancaMaoObra;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaMaoObra.FormActivate(Sender: TObject);
begin
//DtCbPro.DataSet.Open;
end;

procedure TFormLancaMaoObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtCbPro.DataSet.Close;
Action:=Cafree;
end;

procedure TFormLancaMaoObra.SpeedButton1Click(Sender: TObject);
begin
DtCbPro.DataSet.Post;
GroupBox1.Enabled:=false;
end;

procedure TFormLancaMaoObra.SpeedButton2Click(Sender: TObject);
begin
DtCbPro.DataSet.Cancel;
end;

procedure TFormLancaMaoObra.SpeedButton3Click(Sender: TObject);
begin
DtCbPro.DataSet.cancel;
Close;
end;

procedure TFormLancaMaoObra.SpeedButton4Click(Sender: TObject);
begin
DtCbPro.DataSet.Insert;
DtCbPro.DataSet.FieldByName('MEC_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
GroupBox1.Enabled:=true;
DBEdit1.SetFocus;
end;

end.
