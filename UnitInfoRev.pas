unit UnitInfoRev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DB, Grids, DBGrids, ADODB;

type
  TFormInfoRev = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DtRevGer: TDataSource;
    DBGrid2: TDBGrid;
    DtMovRev: TDataSource;
    QrMovRevisao: TADOQuery;
    Timer1: TTimer;
    Image8: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoRev: TFormInfoRev;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormInfoRev.DBGrid1DblClick(Sender: TObject);
begin
With QrMovRevisao do
  begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerConCar C');
  Sql.Add('Where B.Sco_Cod = A.RPR_Sco and C.CSC_cod = A.RPR_CSC');
  Sql.Add('and RPR_TRG = ' + QuotedStr(DtRevGer.DataSet.FieldByName('Trg_Cod').AsString));
//  Sql.Add('And RPR_Exec = ' + QuotedStr('S'));
  sql.Add('Order by A.Rpr_Exec Desc, B.Sco_Des');
  Open;
  end;

end;

procedure TFormInfoRev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtRevGer.DataSet.Close;
DtMovRev.DataSet.Close;
action:=cafree;
end;

procedure TFormInfoRev.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoRev.Image8Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoRev.Timer1Timer(Sender: TObject);
begin
CLOSE;
end;

end.
