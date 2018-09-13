unit UnitPneuCadastroMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormPneuCadastroMedida = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    BTSALVA: TBitBtn;
    BitBtn2: TBitBtn;
    DtMedidas: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BTSALVAClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuCadastroMedida: TFormPneuCadastroMedida;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastroMedida.BitBtn2Click(Sender: TObject);
begin
DtMedidas.DataSet.Cancel;
DtMedidas.DataSet.Insert;
DBEdit2.SetFocus;
end;

procedure TFormPneuCadastroMedida.BTSALVAClick(Sender: TObject);
begin
DtMedidas.DataSet.Post;
DBEdit2.SetFocus;

end;

procedure TFormPneuCadastroMedida.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
   BEGIN
     KEY:=#0;
     BTSALVA.SetFocus;
   END;
end;

procedure TFormPneuCadastroMedida.DBGrid1DblClick(Sender: TObject);
begin
DtMedidas.DataSet.Edit
end;

procedure TFormPneuCadastroMedida.FormActivate(Sender: TObject);
begin
DtMedidas.DataSet.Open;
end;

procedure TFormPneuCadastroMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtMedidas.DataSet.Close;
action:=cafree;
end;

end.
