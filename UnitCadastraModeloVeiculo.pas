unit UnitCadastraModeloVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, XPMan, Grids, DBGrids, Buttons;

type
  TFormCadastraModVei = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraModVei: TFormCadastraModVei;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraModVei.BitBtn1Click(Sender: TObject);
begin
DtCadastro.DataSet.Insert;
GroupBox1.Enabled:=true;
DbEdit1.SetFocus;

end;

procedure TFormCadastraModVei.BitBtn2Click(Sender: TObject);
begin
DtCadastro.DataSet.cancel;
GroupBox1.Enabled:=False;

end;

procedure TFormCadastraModVei.BitBtn3Click(Sender: TObject);
begin
if (dtcadastro.DataSet.State = DsInsert) or (dtcadastro.DataSet.State = DsEdit)  then
Begin
 DtCadastro.DataSet.Post;

End;

end;

procedure TFormCadastraModVei.BitBtn4Click(Sender: TObject);
begin
DtCadastro.DataSet.Delete;
end;

procedure TFormCadastraModVei.BitBtn5Click(Sender: TObject);
begin
DtCadastro.DataSet.cancel;
Close;

end;

procedure TFormCadastraModVei.DBGrid1DblClick(Sender: TObject);
begin
DtCadastro.DataSet.Edit;
GroupBox1.Enabled:=true;
DbEdit2.SetFocus;

end;

procedure TFormCadastraModVei.FormActivate(Sender: TObject);
begin
DtCadastro.DataSet.Open;
end;

procedure TFormCadastraModVei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtCadastro.DataSet.Close;
Action:=cafree;
end;

end.
