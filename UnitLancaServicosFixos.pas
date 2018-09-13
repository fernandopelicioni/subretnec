unit UnitLancaServicosFixos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ToolWin, ComCtrls, XPMan, ActnMan, ActnColorMaps, StdCtrls,
  DB, Grids, DBGrids, DBCtrls, Mask, CustomizeDlg, ExtCtrls;

type
  TFormLancaServicosFixos = class(TForm)
    GroupBox1: TGroupBox;
    DtCadastro: TDataSource;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DtSetman: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaServicosFixos: TFormLancaServicosFixos;

implementation

uses UnitPai, UnitServerPai;


{$R *.dfm}

procedure TFormLancaServicosFixos.BitBtn1Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
DtCadastro.DataSet.Insert;
GroupBox1.Enabled:=true;
DtCadastro.DataSet.FieldByName('SFX_Coligada').AsString:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
DbEdit2.SetFocus;
end;

procedure TFormLancaServicosFixos.BitBtn2Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
end;

procedure TFormLancaServicosFixos.BitBtn3Click(Sender: TObject);
begin
if (DtCadastro.DataSet.State = DsInsert) or (DtCadastro.DataSet.State = DsEdit)then
   begin
   DTCadastro.Dataset.Post;
   GroupBox1.Enabled:=False;
   end;
end;

procedure TFormLancaServicosFixos.BitBtn4Click(Sender: TObject);
begin
if messageDlg('Deseja realmente apagar o registro selecionado ?                        ' ,mtConfirmation,[mbno, mbyes],0) = mryes then
   begin
   DTCadastro.Dataset.delete;
   end;

end;

procedure TFormLancaServicosFixos.BitBtn5Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
close;
end;

procedure TFormLancaServicosFixos.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
BEGIN
  KEY:=#0;
  DBLookupComboBox1.SetFocus;
END;

end;

procedure TFormLancaServicosFixos.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
BEGIN
  KEY:=#0;
  DBCOMBOBOX1.SetFocus;
END;
end;

procedure TFormLancaServicosFixos.DBGrid1DblClick(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtCadastro.DataSet.Edit;
DbEdit2.SetFocus;
end;

procedure TFormLancaServicosFixos.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
BEGIN
  KEY:=#0;
  DBMemo1.SetFocus;
END;

end;

procedure TFormLancaServicosFixos.FormActivate(Sender: TObject);
begin
//DTCadastro.Dataset.open;
with pai.QrSRVFIX do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from tb_serFixo where Sfx_Coligada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
    Open;
  end;
DtSetman.DataSet.Open;

end;

procedure TFormLancaServicosFixos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSetman.DataSet.Close;
DTCadastro.Dataset.Close;
Action:=Cafree;
end;

end.
