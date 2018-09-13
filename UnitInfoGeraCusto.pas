unit UnitInfoGeraCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, pngimage, RpDefine, RpCon, DB, ADODB;

type
  TFormInfoGeraCusto = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Timer1: TTimer;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    DtIntegracao: TDataSource;
    DtVeiculos: TDataSource;
    QrKm: TADOQuery;
    LimpaDb: TADOQuery;
    DtRelGru: TDataSource;
    DtGru: TDataSource;
    DtSaigru: TDataSource;
    RvGrafico: TRvCustomConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoGeraCusto: TFormInfoGeraCusto;

implementation

uses UnitTerminalConsulta, UnitRelatorio, UnitServerPai, UnitMostraGraficoCusto;

{$R *.dfm}

procedure TFormInfoGeraCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
QrKm.Close;
LimpaDb.Close;
DtRelGru.DataSet.Close;
DtGru.DataSet.Close;
DtSaigru.DataSet.Close;
DtIntegracao.DataSet.Close;
action:=cafree;
end;

procedure TFormInfoGeraCusto.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoGeraCusto.Image2Click(Sender: TObject);
Var
valortotal : Double;
litros: real;
KmRodados,QtVei : string;
begin
Screen.Cursor:=cRhOURgLASS;
Dtintegracao.DataSet.Open;
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

           Sql.Add('select cast(sum(Abast_Rodagem)As integer) as total, Count(Distinct(Abast_vei)), Cast(Sum(Abast_Combustivel)As Real) as Diesel from Tb_CbMovAbast');
           Sql.Add('Where Abast_Data >= ' + QuotedStr(DateToStr(Now-30)) + ' and Abast_Data <= ' + QuotedStr(DateToStr(Now)));
           Sql.Add('And Abast_Coligada = ' + QuotedStr(FormterminalConsulta.DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('And Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
           Open;
           KmRodados := IntToStr(Fields[0].Value);
           QtVei     := IntToStr(Fields[1].Value);
           lITROS    := (Fields[2].Value);
           Close;
end;

    With Pai.QrCbGru do
        Begin
            Close;
            Sql.Clear;
            Sql.Add('Select * from tb_CbGruMan');
             Open;
             First;
             if not Eof then
                 begin
                    Repeat
                        With Relatorio.QrSaiGru do
                            begin
                                Close;
                                Sql.Clear;
                                Sql.Add('Select A.IdPrd, A.CodigoPrd, A.CodColigada, B.CodColigada, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, C.Codtmv');
                                Sql.Add('from Tprd A, TitmMov B, TMov C');
                                Sql.Add('where (C.Serie = ' + QuotedStr('BE') + ' or C.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_naoEst').AsString) + ')' + ' and B.IdPrd = A.IdPrd and C.idMov = B.IdMov');
                                Sql.Add('And A.CodigoPrd like ' + QuotedStr(DtGru.DataSet.FieldByName('GRM_ID').AsString + '%'));
                                Sql.Add('And B.CodColigada = A.CodColigada and C.CodColigada = B.CodColigada');
                                Sql.Add('And C.CodCCusto = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_CentroCusto').AsString));
                                Sql.Add('and C.DataMovimento >= ' + QuotedStr(DateToStr(Now-30)) + ' and C.DataMovimento <= ' + QuotedStr(DateToStr(Now)));
                                Sql.Add('Order by A.CodigoPrd');
//                                memo1.Text:=sql.Text;
                                Open;
                                if not Eof then
                                   begin
                                        Repeat
                                           ValorTotal:=ValorTotal + StrToFloat(DtSaigru.DataSet.FieldByName('ValorLiquido').AsString);
                                           Next;
                                        Until eof ;
                                           DtRelGru.DataSet.Open;
                                           DtRelGru.DataSet.Insert;
                                           DtRelGru.DataSet.FieldByName('TTG_ID').AsString:=DtGru.DataSet.FieldByName('GRM_ID').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Des').AsString:=DtGru.DataSet.FieldByName('GRM_Des').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Valor').AsString:=FormatFloat('#####0.00',ValorTotal);
                                           DtRelGru.DataSet.FieldByName('TTG_KM').AsString:=KmRodados;
                                           DtRelGru.DataSet.FieldByName('TTG_mdKM').AsString:=FormatFloat('#####0.00000',(valortotal/StrToInt(KmRodados)));
                                           DtRelGru.DataSet.FieldByName('TTG_QtVei').AsString:=QtVei;
                                           DtRelGru.DataSet.Post;
                                           DtRelGru.DataSet.Close;
                                           ValorTotal:=0;
                                   end;
                            end;
                        Next;
                     Until Eof ;
                         // Grava Média e Consumo de Combustivel
                                                                    DtRelGru.DataSet.Open;
                                           DtRelGru.DataSet.Insert;
                                           DtRelGru.DataSet.FieldByName('TTG_ID').AsString:='012' ; // é obrigatorio que o diesel seja 012
                                           DtRelGru.DataSet.FieldByName('TTG_Des').AsString:='Oleo Diesel (Litros)'; //  Manual;
                                           DtRelGru.DataSet.FieldByName('TTG_Valor').AsString:=FormatFloat('#####0.00',Litros);
                                           DtRelGru.DataSet.FieldByName('TTG_KM').AsString:=KmRodados;
                                           DtRelGru.DataSet.FieldByName('TTG_mdKM').AsString:=FormatFloat('#####0.00000',(StrToInt(KmRodados)/litros));
                                           DtRelGru.DataSet.FieldByName('TTG_QtVei').AsString:=QtVei;
                                           DtRelGru.DataSet.Post;
                                           DtRelGru.DataSet.Close;
                                           ValorTotal:=0;
                         // Termina a gravação



                              DtRelGru.DataSet.Open;
                              Application.CreateForm(TFormMostraGraficoCusto,FormMostraGraficoCusto);
                              FormMostraGraficoCusto.Panel1.Visible:=true;
                              FormMostraGraficoCusto.dbgrid1.Align:=alClient;
                              FormMostraGraficoCusto.BorderStyle:=bsNone;
                              FormMostraGraficoCusto.Dbgrid1.Visible:=true;
                              FormMostraGraficoCusto.DBChart1.Visible:=false;
                              FormMostraGraficoCusto.ShowModal;
                 end
                 Else // Contrario de ter lancamento;
                 Begin
                   ShowMessage('Não há dados para geração do Relatório');
                 End;
        End;
Screen.Cursor:=CrDefault;
Close;
end;


procedure TFormInfoGeraCusto.Image3Click(Sender: TObject);
Var
valortotal : Double;
KmRodados,QtVei : string;

begin
Screen.Cursor:=cRhOURgLASS;
Dtintegracao.DataSet.Open;
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
           Sql.Add('Where Abast_Data >= ' + QuotedStr(DateToStr(Now-30)) + ' and Abast_Data <= ' + QuotedStr(DateToStr(Now)));
           Sql.Add('And Abast_Coligada = ' + QuotedStr(FormterminalConsulta.DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('And Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
           Open;
           KmRodados := IntToStr(Fields[0].Value);
           QtVei     := IntToStr(Fields[1].Value);
           Close;
end;

    With Pai.QrCbGru do
        Begin
            Close;
            Sql.Clear;
            Sql.Add('Select * from tb_CbGruMan');
             Open;
             First;
             if not Eof then
                 begin
                    Repeat
                        With Relatorio.QrSaiGru do
                            begin
                                Close;
                                Sql.Clear;
                                Sql.Add('Select A.IdPrd, A.CodigoPrd, A.CodColigada, B.CodColigada, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, C.Codtmv');
                                Sql.Add('from Tprd A, TitmMov B, TMov C');
                                Sql.Add('where (C.Serie = ' + QuotedStr('BE') + ' or C.CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('Tit_naoEst').AsString) + ')' + ' and B.IdPrd = A.IdPrd and C.idMov = B.IdMov');
                                Sql.Add('And A.CodigoPrd like ' + QuotedStr(DtGru.DataSet.FieldByName('GRM_ID').AsString + '%'));
                                Sql.Add('And B.CodColigada = A.CodColigada and C.CodColigada = B.CodColigada');
                                Sql.Add('And C.CodCCusto = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_CentroCusto').AsString));
                                Sql.Add('and C.DataMovimento >= ' + QuotedStr(DateToStr(Now-30)) + ' and C.DataMovimento <= ' + QuotedStr(DateToStr(Now)));
                                Sql.Add('Order by A.CodigoPrd');
//                                memo1.Text:=sql.Text;
                                Open;
                                if not Eof then
                                   begin
                                        Repeat
                                           ValorTotal:=ValorTotal + StrToFloat(DtSaigru.DataSet.FieldByName('ValorLiquido').AsString);
                                           Next;
                                        Until eof ;
                                           DtRelGru.DataSet.Open;
                                           DtRelGru.DataSet.Insert;
                                           DtRelGru.DataSet.FieldByName('TTG_ID').AsString:=DtGru.DataSet.FieldByName('GRM_ID').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Des').AsString:=DtGru.DataSet.FieldByName('GRM_Des').AsString;
                                           DtRelGru.DataSet.FieldByName('TTG_Valor').AsString:=FormatFloat('#####0.00',ValorTotal);
                                           DtRelGru.DataSet.FieldByName('TTG_KM').AsString:=KmRodados;
                                           DtRelGru.DataSet.FieldByName('TTG_mdKM').AsString:=FormatFloat('#####0.00',(valortotal/StrToInt(KmRodados)));
                                           DtRelGru.DataSet.FieldByName('TTG_QtVei').AsString:=QtVei;
                                           DtRelGru.DataSet.Post;
                                           DtRelGru.DataSet.Close;
                                           ValorTotal:=0;
                                   end;
                            end;
                        Next;
                     Until Eof ;
                              DtRelGru.DataSet.Open;
                              Application.CreateForm(TFormMostraGraficoCusto,FormMostraGraficoCusto);
                              FormMostraGraficoCusto.Panel1.Visible:=true;
                              FormMostraGraficoCusto.dbgrid1.Visible:=false;
                              FormMostraGraficoCusto.BorderStyle:=bsNone;
                              FormMostraGraficoCusto.DBChart1.Align:=alClient;
                              FormMostraGraficoCusto.DBChart1.Visible:=true;
                              FormMostraGraficoCusto.ShowModal;
                 end
                 Else // Contrario de ter lancamento;
                 Begin
                   ShowMessage('Não há dados para geração do Relatório');
                 End;
        End;
Screen.Cursor:=CrDefault;
Close;


end;

procedure TFormInfoGeraCusto.Timer1Timer(Sender: TObject);
begin
close;
end;

end.
