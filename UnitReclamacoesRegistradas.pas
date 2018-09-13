unit UnitReclamacoesRegistradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, ExtCtrls, Buttons, DBCtrls;

type
  TFormReclamacoesRegistradas = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DtIteRec: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReclamacoesRegistradas: TFormReclamacoesRegistradas;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormReclamacoesRegistradas.BitBtn1Click(Sender: TObject);
begin
                       Screen.Cursor:=CrHourGlass;
                       With Relatorio.QrIndRecl do
                              Begin
                                   Close;
                                   Sql.Clear;
                                   Sql.Add('select * from tb_Cbpmc A, Tb_CbIteRec B, TB_veiculos V ');
                                   Sql.Add('Where A.Pmc_Item = B.Tid_cod and v.vei_nun = a.pmc_vei');
                                   Sql.Add('and Pmc_Data >+ ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' And Pmc_Data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                                   Sql.Add('And Pmc_Coligada = ' + QuotedStr(pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                                   if DBLookupComboBox1.KeyValue <> Null then
                                         Sql.Add('And Pmc_Item = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                                   if RadioGroup1.ItemIndex = 0 then
                                         Sql.Add('And Pmc_Status = ' + QuotedStr('A'));
                                   if RadioGroup1.ItemIndex = 1 then
                                         Sql.Add('And Pmc_Status = ' + QuotedStr('F'));
                                   Sql.Add('Order By Pmc_vei, Pmc_Data');
                                   Open;
                                   if not eof then
                                        begin
                                             Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                              Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                              Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                              Relatorio.Projeto.ExecuteReport('RvDefeitosReclamados');
                                        end
                                        else
                                                 ShowMessage('Não há dados para geração de Relatórios');
                              End;
                       Screen.Cursor:=CrDefault;

end;

procedure TFormReclamacoesRegistradas.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormReclamacoesRegistradas.FormActivate(Sender: TObject);
begin
DtIteRec.DataSet.Open;
DateTimePicker1.Date:=now-60;
DateTimePicker2.Date:=now;

end;

procedure TFormReclamacoesRegistradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtIteRec.DataSet.Close;
Action:=cafree;
end;

end.
