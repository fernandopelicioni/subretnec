unit UnitMontaRelGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBCtrls, DBCGrids, Buttons, ADODB,
  ComCtrls, Gauges, RpDefine, RpCon, RPTChart;

type
  TFormMontaRelGrupo = class(TForm)
    DtGru: TDataSource;
    Label1: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    DtSaigru: TDataSource;
    LimpaDb: TADOQuery;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DtFin: TDateTimePicker;
    DtIni: TDateTimePicker;
    DtRelGru: TDataSource;
    Gauge1: TGauge;
    BitBtn2: TBitBtn;
    Gauge2: TGauge;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DtVeiculos: TDataSource;
    DtColigada: TDataSource;
    Label6: TLabel;
    RvGrafico: TRvCustomConnection;
    DBText2: TDBText;
    QrKm: TADOQuery;
    DtIntegracao: TDataSource;
    BitBtn3: TBitBtn;
    DtPublica: TDataSource;
    DtCustoKm: TDataSource;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure RvGraficoGetCols(Connection: TRvCustomConnection);
    procedure RvGraficoGetRow(Connection: TRvCustomConnection);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMontaRelGrupo: TFormMontaRelGrupo;
      tiposaida: string;
implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema, UnitMostraGraficoCusto;

{$R *.dfm}

procedure TFormMontaRelGrupo.BitBtn1Click(Sender: TObject);
Var
valortotal : Double;
KmRodados,QtVei : string;
begin
// Saídas por Grupo e Subgrupo
Screen.Cursor:=cRhOURgLASS;

With LimpaDb do
begin
   Valortotal:=0;
  Sql.Add('delete from TB_TRELGRU where 1 > 0');
  ExecSQL;
end;

With (QrKm as TADOquery) do
begin
     If Active Then Close;
           Sql.Clear;
           Sql.Add('select cast(sum(Abast_Rodagem)As integer) as total, Count(Distinct(Abast_vei)) from Tb_CbMovAbast');
           Sql.Add('Where Abast_Data >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and Abast_Data <= ' + QuotedStr(DateToStr(DtFin.Date)));
           Sql.Add('And Abast_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           if DBLookupComboBox1.KeyValue <> null then
                Sql.Add('And Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
           Open;
           KmRodados := IntToStr(Fields[0].Value);
           QtVei     := IntToStr(Fields[1].Value);
                                         Close;
end;

    With Pai.QrCbGru do
        Begin
            Close;
            Sql.Clear;
            Sql.Add('Select * from tb_CbGruMan where GRM_Sel = ' + QuotedStr('1'));
             Open;
             First;
             Gauge1.MaxValue:=DtGru.DataSet.RecordCount;
             if not Eof then
                 begin
                    Repeat
                        Gauge1.Progress:=Gauge1.Progress+1;
                        With Relatorio.QrSaiGru do
                            begin
                                Close;
                                Sql.Clear;
                                 Sql.Add('Select A.IdPrd, A.CodigoPrd, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, C.Codtmv');
                                  Sql.Add('from Tprd A, TitmMov B, TMov C, TTmv F');
                                   Sql.Add('Where F.CodTmv = C.CodTmv');
                                    Sql.Add('And A.IdPrd = B.IdPrd');
                                     Sql.Add('And F.MarcaSaida = ' + QuotedStr('S'));
                                      Sql.Add('And A.CodigoPrd like ' + QuotedStr(DtGru.DataSet.FieldByName('GRM_ID').AsString + '%'));
                                       Sql.Add('And F.CodColigada = A.CodColigada and B.CodColigada = A.CodColigada and C.CodColigada = A.CodColigada');
                                        Sql.Add('And A.CodCOligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                         if DBLookupComboBox1.KeyValue <> null then Sql.Add('And C.CodCCusto = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                                          Sql.Add('and C.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and C.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                                           Sql.Add('Order by A.CodigoPrd');
                                memo1.Text:=sql.Text;
                                Open;
                                Gauge2.MaxValue:=DtSaiGru.DataSet.RecordCount;
                                Gauge2.Progress:=0;
                                if not Eof then
                                   begin
                                        Repeat
                                           ValorTotal:=ValorTotal + StrToFloat(DtSaigru.DataSet.FieldByName('ValorLiquido').AsString);
                                           Gauge2.Progress:=Gauge2.Progress+1;
                                           Next;
                                        Until eof ;
                                           DtRelGru.DataSet.Open;
                                           DtRelGru.DataSet.Insert;
                                           DtRelGru.DataSet.FieldByName('TTG_ID').AsString:=DtGru.DataSet.FieldByName('GRM_ID').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Des').AsString:=DtGru.DataSet.FieldByName('GRM_Des').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Valor').AsString:=FormatFloat('#####0.00',ValorTotal);
                                           DtRelGru.DataSet.FieldByName('TTG_KM').AsString:=KmRodados;
                                           DtRelGru.DataSet.FieldByName('TTG_QtVei').AsString:=QtVei;
                                           DtRelGru.DataSet.Post;
                                           DtRelGru.DataSet.Close;
                                           ValorTotal:=0;
                                   end;
                            end;
                        Next;
                     Until Eof ;
                     if tiposaida = '2' then
                         begin
                                 DtRelGru.DataSet.Open;
                                 Application.CreateForm(TFormMostraGraficoCusto,FormMostraGraficoCusto);
                                 Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                 Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                 Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                 Relatorio.Projeto.ExecuteReport('RvCustogrupo');
                                 Relatorio.Projeto.Close;
                                 FormMostraGraficoCusto.Close;
                         end
                         else begin
                              DtRelGru.DataSet.Open;
                              Application.CreateForm(TFormMostraGraficoCusto,FormMostraGraficoCusto);
                              FormMostraGraficoCusto.ShowModal;
                         end;

                  Gauge1.Progress:=0;
                  Gauge2.Progress:=0;
                 end
                 Else // Contrario de ter lancamento;
                 Begin
                   ShowMessage('Não há dados para geração do Relatório');
                 End;

        End;
Close;
Screen.Cursor:=CrDefault;
end;

procedure TFormMontaRelGrupo.BitBtn2Click(Sender: TObject);
begin
tiposaida:='2';
BitBtn1.Click;
end;

procedure TFormMontaRelGrupo.BitBtn3Click(Sender: TObject);
var
Kmrodados, qtvei: string;
begin
With (QrKm as TADOquery) do
     begin
         If Active Then Close;
               Sql.Clear;
               Sql.Add('select cast(sum(Abast_Rodagem)As integer) as total, Count(Distinct(Abast_vei)) from Tb_CbMovAbast');
               Sql.Add('Where Abast_Data >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and Abast_Data <= ' + QuotedStr(DateToStr(DtFin.Date)));
               Sql.Add('And Abast_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               if DBLookupComboBox1.KeyValue <> null then
                    Sql.Add('And Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
               Open;
               KmRodados := IntToStr(Fields[0].Value);
               QtVei     := IntToStr(Fields[1].Value);
                                         Close;
     end;
With Pai.QrGrupos do
     begin
          if not eof then
                begin
                    Repeat
                    with Pai.QrPublica do
                         begin
                              close;
                              sql.Clear;
                              Sql.Add('select D.COdCCusto, A.Zgrm_Des, sum(B.valorliquido) from ZGrupoMan A, TitmMov B, Tprd C, Tmov D');
                              Sql.Add('Where B.IdPrd = C.IdPrd and C.CodigoPrd like (' + '001'+'%) and A.ZGrm_ID = '+QuotedStr('001')+' and D.serie = '+QuotedStr('BE') + ' and D.IdMov = B.IdMov and');
                              Sql.Add('C.CodColigada = B.CodColigada And D.CodColigada = B.CodColigada');
                              Sql.Add('And D.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                              Sql.Add('group by D.CodCCusto, a.zgrm_des');
                              Sql.Add('order by D.CodCCusto');
                              Open;
                              if not eof then
                                    begin
                                        repeat
                                             with Relatorio.QrCustoKm do
                                                  begin
                                                       Close;
                                                       Sql.Clear;
//                                                       Sql.Add('Select * from tb_RCustoKm where TCK_Vei = ' + QuotedStr(

                                                  end;
                                        Next;
                                        until Eof;
                                    end;

                         end;
                    Next;
                    Until Eof;

                end;
     end;

end;

procedure TFormMontaRelGrupo.DBCtrlGrid1Exit(Sender: TObject);
begin
if DtGru.DataSet.State = DsEdit then
     DtGru.DataSet.Post;

end;

procedure TFormMontaRelGrupo.FormActivate(Sender: TObject);
begin
tiposaida:='1';
Dtini.Date:=now;
DtFin.Date:=now;
DtGru.DataSet.Open;
With Pai.QrCbGru do
      begin
              Close;
              Sql.Clear;
              Sql.Add('Select * from Tb_CbGruMan');
              Open;
      end;
Dtveiculos.DataSet.Open;
DtIntegracao.DataSet.Open;
Gauge1.Progress:=0;
Gauge2.Progress:=0;

end;

procedure TFormMontaRelGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
LimpaDb.Close;
DtIntegracao.DataSet.Close;
DtGru.Dataset.close;
Dtveiculos.DataSet.Close;
DtSaigru.DataSet.Close;
DtRelGru.DataSet.Close;
Action:=cafree;
end;

procedure TFormMontaRelGrupo.RvGraficoGetCols(Connection: TRvCustomConnection);
begin
with Connection do
begin
WriteField('CampoChart', dtGraphic, 0, '', '');
end;

end;

procedure TFormMontaRelGrupo.RvGraficoGetRow(Connection: TRvCustomConnection);
begin
WriteChartData(Connection, FormMostragraficoCusto.DbChart1);
end;

end.
