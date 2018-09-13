unit UnitCadastraServCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask, ExtCtrls,
  pngimage;

type
  TFormCadastraServCont = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DtServCont: TDataSource;
    XPManifest1: TXPManifest;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Image3: TImage;
    Label7: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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
  FormCadastraServCont: TFormCadastraServCont;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormCadastraServCont.BitBtn1Click(Sender: TObject);
begin
GroupBox1.Enabled:=true;
DtServCont.DataSet.Insert;
DtServCont.DataSet.FieldByName('Sco_indice').AsString:='K';
BitBtn3.Enabled:=true;
DbEdit2.SetFocus;
end;

procedure TFormCadastraServCont.BitBtn2Click(Sender: TObject);
begin
DtServCont.DataSet.Cancel;
BitBtn3.Enabled:=false;
end;

procedure TFormCadastraServCont.BitBtn3Click(Sender: TObject);
begin
DtServCont.DataSet.Post;
GroupBox1.Enabled:=false;
BitBtn3.Enabled:=false;
end;

procedure TFormCadastraServCont.BitBtn4Click(Sender: TObject);
begin
if MessageDlg('Deseja apagar o Registro selecionado ?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      DtServCont.DataSet.Delete;
    end;
end;

procedure TFormCadastraServCont.BitBtn5Click(Sender: TObject);
begin
DtServCont.DataSet.Cancel;
close;
end;

procedure TFormCadastraServCont.DBGrid1DblClick(Sender: TObject);
begin
DtServCont.DataSet.Edit;
GroupBox1.Enabled:=true;
BitBtn3.Enabled:=true;
DbEdit2.SetFocus;

end;

procedure TFormCadastraServCont.FormActivate(Sender: TObject);
begin
DtServCont.DataSet.Open;
end;

procedure TFormCadastraServCont.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtServCont.DataSet.Close;
Action:=cafree;
end;

end.
