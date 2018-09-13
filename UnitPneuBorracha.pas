unit UnitPneuBorracha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids;

type
  TFormPneuBorracha = class(TForm)
    Panel1: TPanel;
    DtBorracha: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuBorracha: TFormPneuBorracha;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuBorracha.BitBtn2Click(Sender: TObject);
begin
DtBorracha.DataSet.Cancel;
DtBorracha.DataSet.insert;
DBEdit2.SetFocus;

end;

procedure TFormPneuBorracha.BTSALVAClick(Sender: TObject);
begin
DtBorracha.DataSet.post;;

end;

procedure TFormPneuBorracha.FormActivate(Sender: TObject);
begin
DtBorracha.DataSet.open;

end;

procedure TFormPneuBorracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtBorracha.DataSet.close;
action:=cafree;

end;

end.
