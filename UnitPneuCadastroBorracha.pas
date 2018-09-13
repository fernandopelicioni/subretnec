unit UnitPneuCadastroBorracha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuCadastroBorracha = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DtPnBorracha: TDataSource;
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
  FormPneuCadastroBorracha: TFormPneuCadastroBorracha;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastroBorracha.BitBtn2Click(Sender: TObject);
begin
DtPnBorracha.DataSet.Insert;
DBEdit2.SetFocus;
end;

procedure TFormPneuCadastroBorracha.BTSALVAClick(Sender: TObject);
begin
DtPnBorracha.DataSet.post;

end;

procedure TFormPneuCadastroBorracha.FormActivate(Sender: TObject);
begin
DtPnBorracha.DataSet.Open;
end;

procedure TFormPneuCadastroBorracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPnBorracha.DataSet.Close;
Action:=cafree;
end;

end.
