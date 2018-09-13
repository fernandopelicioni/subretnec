unit UnitPneuMotivoRetirada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuMotivoRetirada = class(TForm)
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
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DtLocal: TDataSource;
    SpeedButton1: TSpeedButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuMotivoRetirada: TFormPneuMotivoRetirada;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuMotivoRetirada.BitBtn2Click(Sender: TObject);
begin
DtMotRet.DataSet.cancel;
DtMotRet.DataSet.insert;
DBEdit1.SetFocus;
end;

procedure TFormPneuMotivoRetirada.BTSALVAClick(Sender: TObject);
begin
DtMotRet.DataSet.post;
end;

procedure TFormPneuMotivoRetirada.FormActivate(Sender: TObject);
begin
DtMotRet.DataSet.Open;
DtLocal.DataSet.Open;
end;

procedure TFormPneuMotivoRetirada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMotRet.DataSet.close;
DtLocal.DataSet.close;
action:=cafree;
end;

procedure TFormPneuMotivoRetirada.SpeedButton1Click(Sender: TObject);
begin
   ShowMessage('Por questões de médias, Pneus Vendidos e Estourados, e em outras situações especificas não devem ser consideradas nos relatórios, Por isso, aconselho-lhe á marcar a opçao ao lado');
end;

end.
