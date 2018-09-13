unit UnitLancaSetorMan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, pngimage, ExtCtrls, DB, Grids,
  DBGrids;

type
  TFormLancaSetorMan = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DtSetman: TDataSource;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaSetorMan: TFormLancaSetorMan;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaSetorMan.DBGrid1DblClick(Sender: TObject);
begin
DtSetMan.DataSet.edit;
GroupBox1.Enabled:=true;
DBEdit1.SetFocus;
end;

procedure TFormLancaSetorMan.FormActivate(Sender: TObject);
begin
DtSetMan.DataSet.Open;

end;

procedure TFormLancaSetorMan.SpeedButton1Click(Sender: TObject);
begin
if (dtSetman.DataSet.State = DsInsert) or (dtSetman.DataSet.State = DsInsert) then
   begin
     dtSetman.DataSet.post;
     DtSetman.DataSet.close;
     GroupBox1.Enabled:=False;
   end;

end;

procedure TFormLancaSetorMan.SpeedButton2Click(Sender: TObject);
begin
DtSetMan.DataSet.cancel;

end;

procedure TFormLancaSetorMan.SpeedButton3Click(Sender: TObject);
begin
DtSetMan.DataSet.cancel;
close;
end;

procedure TFormLancaSetorMan.SpeedButton4Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtSetMan.DataSet.Append;
DBEdit1.SetFocus;

end;

end.
