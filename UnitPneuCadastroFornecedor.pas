unit UnitPneuCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuCadastroFornecedor = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DtReformadora: TDataSource;
    procedure FormClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuCadastroFornecedor: TFormPneuCadastroFornecedor;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastroFornecedor.BitBtn2Click(Sender: TObject);
begin
DtReformadora.DataSet.cancel;
DtReformadora.DataSet.insert;
DBEdit2.SetFocus;
end;

procedure TFormPneuCadastroFornecedor.BTSALVAClick(Sender: TObject);
begin
DtReformadora.DataSet.post;
end;

procedure TFormPneuCadastroFornecedor.FormActivate(Sender: TObject);
begin
DtReformadora.DataSet.Open;
end;

procedure TFormPneuCadastroFornecedor.FormClick(Sender: TObject);
begin
DtReformadora.DataSet.Open;
end;

procedure TFormPneuCadastroFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtReformadora.DataSet.close;
action:=cafree;
end;

end.
