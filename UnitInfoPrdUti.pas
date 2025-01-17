unit UnitInfoPrdUti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, ExtCtrls, pngimage;

type
  TFormInfoPrdUti = class(TForm)
    DtMovprd: TDataSource;
    DBGrid1: TDBGrid;
    QrMovPrd: TADOQuery;
    QrMovPrdIdPrd: TIntegerField;
    QrMovPrdNomeFantasia: TStringField;
    QrMovPrdCodigoPrd: TStringField;
    QrMovPrdCampoLivre3: TStringField;
    QrMovPrdIdPrd_1: TIntegerField;
    QrMovPrdQuantidade: TBCDField;
    QrMovPrdValorLiquido: TBCDField;
    QrMovPrdDataMovimento: TDateTimeField;
    QrMovPrdIdMov: TIntegerField;
    QrMovPrdIdMov_1: TIntegerField;
    QrMovPrdCodColigada: TSmallintField;
    QrMovPrdSerie: TStringField;
    QrMovPrdCodCCusto: TStringField;
    Timer1: TTimer;
    Panel2: TPanel;
    QrMovPrdCodven1: TStringField;
    Image8: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoPrdUti: TFormInfoPrdUti;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormInfoPrdUti.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMovprd.DataSet.Close;
Action:=cafree;
end;

procedure TFormInfoPrdUti.Image3Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoPrdUti.Image8Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoPrdUti.Timer1Timer(Sender: TObject);
begin
Close;
end;

end.
