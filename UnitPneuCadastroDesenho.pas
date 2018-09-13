unit UnitPneuCadastroDesenho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuCaadstroDesenho = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DtDesenhos: TDataSource;
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
  FormPneuCaadstroDesenho: TFormPneuCaadstroDesenho;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCaadstroDesenho.BitBtn2Click(Sender: TObject);
begin
DtDesenhos.DataSet.Cancel;
DtDesenhos.DataSet.Insert;
DBEdit2.SetFocus;

end;

procedure TFormPneuCaadstroDesenho.BTSALVAClick(Sender: TObject);
begin
DtDesenhos.DataSet.post;

end;

procedure TFormPneuCaadstroDesenho.FormActivate(Sender: TObject);
begin
DtDesenhos.DataSet.Open;
end;

procedure TFormPneuCaadstroDesenho.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtDesenhos.DataSet.Close;
action:=cafree;
end;

end.
