unit UnitLancaNovaRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, DBCtrls, Buttons, Mask;

type
  TFormLancaNovaRevisao = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    DBMemo1: TDBMemo;
    EditData: TMaskEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaNovaRevisao: TFormLancaNovaRevisao;

implementation

uses UnitCadastraAssociacao, UnitServerPai;

{$R *.dfm}

procedure TFormLancaNovaRevisao.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  DBMemo1.SetFocus;
end;

end;

procedure TFormLancaNovaRevisao.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  DBMemo1.SetFocus;
end;
end;

procedure TFormLancaNovaRevisao.FormActivate(Sender: TObject);
begin
editdata.Text:=DateTostr(Now);
end;

procedure TFormLancaNovaRevisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormLancaNovaRevisao.SpeedButton1Click(Sender: TObject);
begin
FormCadastraAssociacao.DtRevGer.DataSet.FieldByName('TRG_Coligada').AsString:=FormCadastraAssociacao.DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
FormCadastraAssociacao.DtRevGer.DataSet.FieldByName('TRG_Data').AsString:=EditData.Text;
FormCadastraAssociacao.AberturaOs:=EditData.Text;
            pai.VOS_DTVIGINI:=StrToDate(EditData.Text);
            pai.VOS_DTVIGFIM:=StrToDate(EditData.Text);

//FormCadastraAssociacao.DtRevGer.DataSet.Post;
Close;
end;

procedure TFormLancaNovaRevisao.SpeedButton2Click(Sender: TObject);
begin
FormCadastraAssociacao.DtRevGer.DataSet.Cancel;
Close;

end;

end.
