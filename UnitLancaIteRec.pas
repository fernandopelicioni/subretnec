unit UnitLancaIteRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Mask;

type
  TFormLancaIteRec = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DtIteRec: TDataSource;
    DBEdit1: TDBEdit;
    DtGrupo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaIteRec: TFormLancaIteRec;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaIteRec.BitBtn1Click(Sender: TObject);
begin
if (DtIteRec.DataSet.State = DsEdit) or (DtIteRec.DataSet.State = DsInsert) then
     begin
           DtIteRec.DataSet.Post;
           GroupBox1.Enabled:=false;
     end;

end;

procedure TFormLancaIteRec.BitBtn2Click(Sender: TObject);
begin
DtIteRec.DataSet.Insert;
GroupBox1.Enabled:=true;
DBEdit1.SetFocus;
end;

procedure TFormLancaIteRec.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
         key:=#0;
         DBLookupComboBox1.SetFocus;
   end;
end;

procedure TFormLancaIteRec.DBGrid1DblClick(Sender: TObject);
begin
DtIteRec.DataSet.Edit;
GroupBox1.Enabled:=true;
DBEdit1.Setfocus;
end;

procedure TFormLancaIteRec.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
         key:=#0;
         BitBtn1.SetFocus;
   end;

end;

procedure TFormLancaIteRec.FormActivate(Sender: TObject);
begin
DtGrupo.DataSet.Open;
DtIteRec.DataSet.Open;
end;

procedure TFormLancaIteRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtIteRec.DataSet.Close;
DtGrupo.DataSet.Close;
Action:=cafree;
end;

end.
