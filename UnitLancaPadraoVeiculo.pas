unit UnitLancaPadraoVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, XPMan, StdCtrls, Buttons, DBCtrls, Mask;

type
  TFormCadastraPadVei = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBEdit2: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraPadVei: TFormCadastraPadVei;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraPadVei.BitBtn1Click(Sender: TObject);
begin
DtCadastro.DataSet.Insert;
GroupBox1.Enabled:=true;
DbEdit2.SetFocus;
end;

procedure TFormCadastraPadVei.BitBtn2Click(Sender: TObject);
begin
DtCadastro.DataSet.cancel;
GroupBox1.Enabled:=False;
end;

procedure TFormCadastraPadVei.BitBtn3Click(Sender: TObject);
begin
if (dtcadastro.DataSet.State = DsInsert) or (dtcadastro.DataSet.State = DsEdit)  then
Begin
 DtCadastro.DataSet.Post;

End;
end;

procedure TFormCadastraPadVei.BitBtn4Click(Sender: TObject);
begin
DtCadastro.DataSet.Delete;
end;

procedure TFormCadastraPadVei.BitBtn5Click(Sender: TObject);
begin
DtCadastro.DataSet.cancel;
Close;
end;

procedure TFormCadastraPadVei.DBGrid1DblClick(Sender: TObject);
begin
DtCadastro.DataSet.Edit;
GroupBox1.Enabled:=true;
DbEdit2.SetFocus;
end;

procedure TFormCadastraPadVei.FormActivate(Sender: TObject);
begin
DtCadastro.DataSet.Open;
end;

procedure TFormCadastraPadVei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtCadastro.DataSet.Close;
Close;
end;

end.
