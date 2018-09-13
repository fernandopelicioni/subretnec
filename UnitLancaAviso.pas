unit UnitLancaAviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBCtrls;

type
  TFormLancaAviso = class(TForm)
    DtAviso: TDataSource;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtColigada: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaAviso: TFormLancaAviso;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaAviso.BitBtn1Click(Sender: TObject);
begin
DtAviso.DataSet.Post;
close;
end;

procedure TFormLancaAviso.BitBtn2Click(Sender: TObject);
begin
DtAviso.DataSet.Cancel;
close;

end;

procedure TFormLancaAviso.FormActivate(Sender: TObject);
begin
With pai.QrAviso do
    begin
      Close;
      Sql.Clear;
      Sql.Add('Select * from tb_CbAviso where TUN_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
      Open;
      Edit;
    end;
end;

procedure TFormLancaAviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtAviso.DataSet.Close;
action:=cafree;
end;

end.
