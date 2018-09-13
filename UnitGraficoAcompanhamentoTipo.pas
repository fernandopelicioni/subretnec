unit UnitGraficoAcompanhamentoTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Buttons, StdCtrls, ExtCtrls, DBCtrls;

type
  TFormGraficoAcompanhamentoTipo = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QrCusto: TADOQuery;
    DtSaiGru: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    RadioGroup1: TRadioGroup;
    Dtgrupos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    RadioGroup2: TRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Label7: TLabel;
    RadioGroup3: TRadioGroup;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    QrPrd: TADOQuery;
    Dtprodutos: TDataSource;
    RadioGroup4: TRadioGroup;
    DBLookupComboBox4: TDBLookupComboBox;
    QrCCusto: TADOQuery;
    DtCCusto: TDataSource;
    CheckBox1: TCheckBox;
    DtIntegracao: TDataSource;
    procedure TabSheet1Show(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoAcompanhamentoTipo: TFormGraficoAcompanhamentoTipo;

implementation

uses UnitServerPai, UnitGraficoAcompanhamento;

{$R *.dfm}

procedure TFormGraficoAcompanhamentoTipo.FormActivate(Sender: TObject);
begin
Dtgrupos.DataSet.Open;
DtIntegracao.DataSet.Open;
with QrPRd do
     begin
             Close;
             Sql.Clear;
             Sql.Add('select CodigoPrd, IdPrd, NomeFantasia from tprd where ultimonivel = '+quotedStr('1'));
             Sql.Add('And CodColigada = ' + QuotedStr(Pai.QrColigadas.FieldByName('cod_coligada').AsString));
             Open;


     end;
end;

procedure TFormGraficoAcompanhamentoTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormGraficoAcompanhamentoTipo.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 1 then
      DBLookupComboBox1.Enabled:=true
      else
      DBLookupComboBox1.Enabled:=false;

end;

procedure TFormGraficoAcompanhamentoTipo.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 1 then
      DBLookupComboBox2.Enabled:=true
      else
      DBLookupComboBox2.Enabled:=false;

end;

procedure TFormGraficoAcompanhamentoTipo.RadioGroup3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 1 then
      DBLookupComboBox3.Enabled:=true
      else
      DBLookupComboBox3.Enabled:=false;

end;

procedure TFormGraficoAcompanhamentoTipo.RadioGroup4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 1 then
      DBLookupComboBox4.Enabled:=true
      else
      DBLookupComboBox4.Enabled:=false;

end;

procedure TFormGraficoAcompanhamentoTipo.SpeedButton1Click(Sender: TObject);
begin
        With QrCusto do
              begin
                     Close;
                      Sql.Clear;
                       Sql.Add('select (B.DataMovimento) as Mes, sum(A.valorliquido) From TitmMov A, Tmov B, ZGrupoMan E, Tprd F, TTMV G');
                        Sql.Add('Where b.idmov = A.IdMov and G.Codcoligada = A.CodColigada and B.Codcoligada = A.CodColigada and F.CodColigada = A.CodColigada');
                         Sql.Add('And G.CodTmv = B.CodTmv');
                          Sql.Add('And G.MarcaSaida = ' + QuotedStr('S'));
                           Sql.Add('And A.COdColigada = ' + QUotedStr(pai.QrColigadas.FieldByName('cod_Coligada').AsString));
//                            Sql.Add('And (B.Serie = ' + QuotedStr('BE') + ' or B.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_naoEst').AsString) + ' or B.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_CodSer').AsString) + ')');
                             Sql.Add('And F.IdPrd = A.IdPrd');
                              if RadioGroup1.ItemIndex = 1 then Sql.Add('And E.Zgrm_Id = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                               Sql.Add('And E.Zgrm_tipo = ' + QuotedStr('P'));
                                Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                                 Sql.Add('And Left(F.CodigoPRd,3) = E.ZGRM_ID');
                                  Sql.Add('Group by B.DataMovimento');
                                   Open;
                                  if not eof then
                                          Begin
                                                Application.CreateForm(TFormgraficoAcompanhamento,FormgraficoAcompanhamento);
                                                FormgraficoAcompanhamento.panel1.Caption:='Acompanhamento Visual de Despesas - Diário';
                                                FormgraficoAcompanhamento.showmodal;
                                          End
                                          else
                                          begin
                                                 ShowMessage('Não existem Dados para Criação do Acompanhamento');
                                          end;

              end;
end;

procedure TFormGraficoAcompanhamentoTipo.SpeedButton2Click(Sender: TObject);
begin
// Mensal
        With QrCusto do
              begin
                     Close;
                      Sql.Clear;
                       Sql.Add('select Month(B.DataMovimento) as Mes, sum(A.valorliquido) From TitmMov A, Tmov B, GCCusto C, ZGrupoMan E, Tprd F, TTMV G');
                        Sql.Add('Where b.idmov = A.IdMov and G.Codcoligada = A.CodColigada and B.Codcoligada = A.CodColigada and F.CodColigada = A.CodColigada');
                         Sql.Add('And G.CodTmv = B.CodTmv');
                          Sql.Add('And G.MarcaSaida = ' + QuotedStr('S'));
                           Sql.Add('And A.COdColigada = ' + QUotedStr(pai.QrColigadas.FieldByName('cod_Coligada').AsString));
//                            Sql.Add('And (B.Serie = ' + QuotedStr('BE') + ' or B.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_naoEst').AsString) + ' or B.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_CodSer').AsString) + ')');
                             Sql.Add('And F.IdPrd = A.IdPrd');
                              Sql.Add('And C.CodCCusto = B.CodCCusto');
                               if RadioGroup2.ItemIndex = 1 then Sql.Add('And E.Zgrm_Id = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                                Sql.Add('And E.Zgrm_tipo = ' + QuotedStr('P'));
                                 Sql.Add('and (B.DataMovimento) >= ' + QuotedStr(DateToStr(DateTimePicker3.Date)) + ' and (B.DataMovimento) <= ' + QuotedStr(DateToStr(DateTimePicker4.Date)));
                                  Sql.Add('And Left(F.CodigoPRd,3) like E.ZGRM_ID');
                                   Sql.Add('Group by Month(B.DataMovimento)');
                                  Open;
                                   if not eof then
                                          Begin
                                                Application.CreateForm(TFormgraficoAcompanhamento,FormgraficoAcompanhamento);
                                                 FormgraficoAcompanhamento.panel1.Caption:='Acompanhamento Visual de Despesas - MESES';
                                                  FormgraficoAcompanhamento.showmodal;
                                          End
                                          else
                                          begin
                                                 ShowMessage('Não existem Dados para Criação do Acompanhamento');
                                          end;

              end;
end;

procedure TFormGraficoAcompanhamentoTipo.SpeedButton3Click(Sender: TObject);
begin
               With QrCusto do
                      begin
                           Close;
                           Sql.Clear;
                           if RadioGroup4.ItemIndex = 1  then
                                    begin
                                          Sql.Add('select Month(B.DataMovimento) as Mes, sum(A.Quantidade) From TitmMov A, Tmov B, GCCusto C, ZGrupoMan E, Tprd F, TTMV G');
                                           Sql.Add('Where B.idmov = A.IdMov and G.CodColigada = A.CodColigada and B.Codcoligada = A.CodColigada and F.CodColigada = A.CodColigada');
                                            Sql.Add('And A.CodColigada = ' + QUotedStr(pai.QrColigadas.FieldByName('cod_Coligada').AsString));
                                             Sql.Add('And G.CodTmv = B.CodTmv');
                                              Sql.Add('And G.MarcaSaida = ' + QuotedStr('S'));
                                               Sql.Add('And F.IdPrd = A.IdPrd');
                                                Sql.Add('And C.CodCCusto = b.CodCCusto And C.CampoLivre = ' + quotedStr('V'));
                                                 Sql.Add('And B.CodCCusto = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                                                  Sql.Add('And E.Zgrm_tipo = ' + QuotedStr('P'));
                                                   if RadioGroup3.ItemIndex = 1 then Sql.Add('And A.IdPrd = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                                                    Sql.Add('and (B.DataMovimento) >= ' + QuotedStr(DateToStr(DateTimePicker5.Date)) + ' and (B.DataMovimento) <= ' + QuotedStr(DateToStr(DateTimePicker6.Date)));
                                                     Sql.Add('And Left(F.CodigoPRd,3) = E.ZGRM_ID');
                                                      Sql.Add('Group by Month(B.DataMovimento)');
                                      end;
                                             Open;
                                             if not eof then
                                                      Begin
                                                              Application.CreateForm(TFormgraficoAcompanhamento,FormgraficoAcompanhamento);
                                                               FormgraficoAcompanhamento.panel1.Caption:='Acompanhamento Visual de despesas - MESES';
                                                                FormgraficoAcompanhamento.showmodal;
                                                       End
                                                       else
                                                       begin
                                                              ShowMessage('Não existem Dados para Criação do Acompanhamento');
                                                       end;
                       end;


end;

procedure TFormGraficoAcompanhamentoTipo.TabSheet1Show(Sender: TObject);
begin
DateTimePicker1.Date:=Now-20;
DateTimePicker2.Date:=Now;
DateTimePicker3.Date:=Now-30;
DateTimePicker4.Date:=Now;
DateTimePicker5.Date:=Now-30;
DateTimePicker6.Date:=Now;


end;

procedure TFormGraficoAcompanhamentoTipo.TabSheet3Show(Sender: TObject);
begin
//Pai.QrIntegra.Parameters.ParamByName('CodColigada').Value := StrToInt(pai.qrColigadas.FieldByName('cod_Coligada').AsString);
//QrPrd.Open;
QrCCusto.Open;
end;

end.
