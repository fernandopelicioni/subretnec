unit UnitPneuCadastroReformadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuCadastroReformadora = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DtReformadora: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuCadastroReformadora: TFormPneuCadastroReformadora;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastroReformadora.BitBtn2Click(Sender: TObject);
begin
DtReformadora.DataSet.cancel;
DtReformadora.DataSet.insert;
DBEdit2.SetFocus;


end;

procedure TFormPneuCadastroReformadora.BTSALVAClick(Sender: TObject);
begin
DtReformadora.DataSet.post;

end;

procedure TFormPneuCadastroReformadora.FormActivate(Sender: TObject);
begin
DtReformadora.DataSet.Open;
end;

procedure TFormPneuCadastroReformadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtReformadora.DataSet.Close;
action:=cafree;
end;

end.
