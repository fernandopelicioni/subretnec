unit UnitInfoLancaAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Buttons, DB, ComCtrls, DBCtrls, Mask;

type
  TFormInfoLancaAgendamento = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DtveiDispo: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    EditMotivo: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBMemo1: TDBMemo;
    MaskEdit1: TMaskEdit;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure Image1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoLancaAgendamento: TFormInfoLancaAgendamento;

implementation

uses UnitServerPai, UnitTerminalConsulta;

{$R *.dfm}

procedure TFormInfoLancaAgendamento.FormActivate(Sender: TObject);
begin
with pai.QrVeiDispo do
        begin
               close;
                sql.Clear;
                 Sql.Add('Select * from tb_CbVeiDisposicao');
                  Sql.Add('Where Tvm_vei = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
                   Open;
                    if eof then
                             begin
                                    Insert;
                                    DtveiDispo.DataSet.FieldByName('Tvm_vei').AsString:=  FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
                                    post;
                             end;
                             Edit;

        end;

DtveiDispo.DataSet.Open;
DateTimePicker1.Date:=(now+1);
DateTimePicker2.Date:=(now+1) ;
end;

procedure TFormInfoLancaAgendamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtveiDispo.DataSet.Close;
action:=cafree;
end;

procedure TFormInfoLancaAgendamento.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoLancaAgendamento.Image3Click(Sender: TObject);
begin
EditMotivo.Caption:='Agendamento';
//DtveiDispo.DataSet.Insert;
end;

procedure TFormInfoLancaAgendamento.SpeedButton2Click(Sender: TObject);
begin
DtveiDispo.DataSet.FieldByName('tvm_Data').AsString:=DateToStr(DateTimePicker2.Date);
DtveiDispo.DataSet.FieldByName('tvm_status').AsString:='R';
DtveiDispo.DataSet.post;
close;

end;

procedure TFormInfoLancaAgendamento.SpeedButton3Click(Sender: TObject);
begin
DtveiDispo.DataSet.FieldByName('tvm_Data').AsString:=DateToStr(DateTimePicker1.Date);
DtveiDispo.DataSet.FieldByName('tvm_status').AsString:='A';
DtveiDispo.DataSet.FieldByName('tvm_hORA').AsString:=MaskEdit1.Text;
DtveiDispo.DataSet.post;
close;
end;

end.
