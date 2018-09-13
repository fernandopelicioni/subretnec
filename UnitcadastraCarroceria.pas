unit UnitcadastraCarroceria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, XPMan, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls;

type
  TFormCadastraModCar = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraModCar: TFormCadastraModCar;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraModCar.BitBtn1Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtCadastro.DataSet.Insert;
DbEdit2.SetFocus;
end;

procedure TFormCadastraModCar.BitBtn2Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
end;

procedure TFormCadastraModCar.BitBtn3Click(Sender: TObject);
begin
GroupBox1.Enabled:=False;
DtCadastro.DataSet.Post;
end;

procedure TFormCadastraModCar.BitBtn4Click(Sender: TObject);
begin
DtCadastro.DataSet.Delete;
end;

procedure TFormCadastraModCar.BitBtn5Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
close;
end;

procedure TFormCadastraModCar.DBGrid1DblClick(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtCadastro.DataSet.Edit;
DbEdit2.SetFocus;

end;

procedure TFormCadastraModCar.FormActivate(Sender: TObject);
begin
DtCadastro.DataSet.Open;
end;

procedure TFormCadastraModCar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtCadastro.DataSet.Close;
Action:=Cafree;
end;

end.
