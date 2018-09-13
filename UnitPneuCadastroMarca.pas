unit UnitPneuCadastroMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, Grids, DBGrids,
  ExtCtrls;

type
  TFormPneuCadastroMarcas = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DtMarcas: TDataSource;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
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
  FormPneuCadastroMarcas: TFormPneuCadastroMarcas;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastroMarcas.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    Dbedit2.setfocus;
    END;
end;

procedure TFormPneuCadastroMarcas.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    BTSALVA.setfocus;
    END;

end;

procedure TFormPneuCadastroMarcas.FormActivate(Sender: TObject);
begin
DtMarcas.DataSet.open;
end;

procedure TFormPneuCadastroMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtMarcas.DataSet.close;
action:=cafree;
end;

procedure TFormPneuCadastroMarcas.BitBtn2Click(Sender: TObject);
var x: integer;
begin
DtMarcas.DataSet.Insert;
DBEDIT2.SETFOCUS;
end;

procedure TFormPneuCadastroMarcas.BTSALVAClick(Sender: TObject);
begin

IF (DtMarcas.DataSet.State = DSINSERT) OR (DtMarcas.DataSet.STATE = DSEDIT) THEN
           DtMarcas.DataSet.Post;
BITBTN2.SETFOCUS;
END;

end.
