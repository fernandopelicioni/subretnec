unit UnitLancaInfoVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Keyboard, StdCtrls, DBCtrls;

type
  TFormLancaInfoVeiculo = class(TForm)
    DtVeiInfo: TDataSource;
    DBMemo1: TDBMemo;
    TouchKeyboard1: TTouchKeyboard;
    procedure FormActivate(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaInfoVeiculo: TFormLancaInfoVeiculo;

implementation

uses UnitServerPai, UnitTerminalConsulta;

{$R *.dfm}

procedure TFormLancaInfoVeiculo.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  Begin
    if MessageDlg('Deseja salvar as informações registradas ?',MtConfirmation,[mbyes,mbno],0)=mryes then
         begin
            DtVeiInfo.DataSet.FieldByName('TIv_vei').AsString:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
            DtVeiInfo.DataSet.Post;
           end;
            DtVeiInfo.DataSet.Cancel;
       Close;
  End;
end;

procedure TFormLancaInfoVeiculo.FormActivate(Sender: TObject);
begin
DtVeiInfo.DataSet.Open;
With Pai.QrVeiInfo do
     begin
            Close;
            Sql.Clear;
            Sql.Add('Select * from TB_VeiInfo');
            Sql.Add('Where Tiv_Vei = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('VEI_NUN').AsString));
            Open;
            if not eof then
                 begin
                       Edit;
                       DBMemo1.SetFocus;
                       DtVeiInfo.DataSet.FieldByName('Tiv_Data').AsString:=DateToStr(now);
                 end
                 else begin
                       Insert;
                       DBMemo1.SetFocus;
                       DtVeiInfo.DataSet.FieldByName('Tiv_Data').AsString:=DateToStr(now);
                 end;
     end;

end;

procedure TFormLancaInfoVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtVeiInfo.DataSet.Cancel;
DtVeiInfo.DataSet.Close;
Action:=cafree;
end;

end.
