unit UnitPneuLocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuLocal = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DtMotRet: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuLocal: TFormPneuLocal;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuLocal.BitBtn2Click(Sender: TObject);
begin
DtMotRet.DataSet.cancel;
DtMotRet.DataSet.insert;
DBEdit1.SetFocus;
end;

procedure TFormPneuLocal.BTSALVAClick(Sender: TObject);
begin
DtMotRet.DataSet.post;
end;

procedure TFormPneuLocal.FormActivate(Sender: TObject);
begin
DtMotRet.DataSet.Open;
end;

procedure TFormPneuLocal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMotRet.DataSet.close;
action:=cafree;
end;

end.
