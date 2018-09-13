unit FormLancaSetorMan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, pngimage, ExtCtrls, DB, Grids,
  DBGrids;

type
  TForm2 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
if (dtSetman.DataSet.State = DsInsert) or (dtSetman.DataSet.State = DsInsert) then
   begin
     dtSetman.DataSet.post;
     DtSetman.DataSet.close;
     GroupBox1.Enabled:=False;
   end;

end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
DtSetMan.DataSet.Open;
GroupBox1.Enabled:=true;
DtSetMan.DataSet.Insert;
DBEdit1.SetFocus;

end;

end.
