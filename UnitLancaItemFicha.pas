unit UnitLancaItemFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, pngimage, ExtCtrls, Buttons, DBCtrls, Mask, Grids,
  DBGrids;

type
  TFormLancaItemFicha = class(TForm)
    GroupBox1: TGroupBox;
    DtItemFicha: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DtSetMan: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaItemFicha: TFormLancaItemFicha;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaItemFicha.DBGrid1DblClick(Sender: TObject);
begin
DtItemFicha.DataSet.Edit;
GroupBox1.Enabled:=True;
DbEdit1.SetFocus;
end;

procedure TFormLancaItemFicha.FormActivate(Sender: TObject);
begin
DtItemFicha.DataSet.Open;

DtSetMan.DataSet.Open;
end;

procedure TFormLancaItemFicha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSetMan.DataSet.Close;
DtItemFicha.DataSet.Close;
Action:=cafree;
end;

procedure TFormLancaItemFicha.SpeedButton1Click(Sender: TObject);
begin
if (dtItemFicha.DataSet.State = DsInsert) or (dtItemFicha.DataSet.State = DsInsert) then
   begin
     dtItemFicha.DataSet.post;
     DtItemFicha.DataSet.close;
     DtItemFicha.DataSet.Open;
     GroupBox1.Enabled:=False;
   end;

end;

Procedure TFormLancaItemFicha.SpeedButton4Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtItemFicha.DataSet.Insert;
DBEdit1.SetFocus;
end;

procedure TFormLancaItemFicha.SpeedButton5Click(Sender: TObject);
begin
DtItemFicha.DataSet.Delete;

end;

procedure TFormLancaItemFicha.SpeedButton3Click(Sender: TObject);
begin
     dtItemFicha.DataSet.cancel;
     close;
end;

end.
