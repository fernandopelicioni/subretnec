unit UnitRelTotvs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, DBCtrls, pngimage, ADODB,
  Gauges, Grids, DBGrids, RvLdCompiler;

type
  TFormRelTotvs = class(TForm)
    Panel1: TPanel;
    Fechar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DtFin: TDateTimePicker;
    DtIni: TDateTimePicker;
    Visualizar: TBitBtn;
    DtColigada: TDataSource;
    DtPrd: TDataSource;
    DtMovPrd: TDataSource;
    DtSaiPrd: TDataSource;
    RadioGroup1: TRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DtCCusto: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Image1: TImage;
    DtFCFO: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    QrPrd: TADOQuery;
    CheckBox2: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label6: TLabel;
    RadioGroup2: TRadioGroup;
    DtSaigru: TDataSource;
    DtGru: TDataSource;
    DtRelGru: TDataSource;
    LimpaDb: TADOQuery;
    DtIntegracao: TDataSource;
    RadioGroup3: TRadioGroup;
    TabSheet8: TTabSheet;
    DtTotGrupos: TDataSource;
    ComboGrupo: TDBLookupComboBox;
    BitBtn7: TBitBtn;
    RadioGroup4: TRadioGroup;
    TabSheet9: TTabSheet;
    BitBtn8: TBitBtn;
    Label7: TLabel;
    ComboGrupos: TDBLookupComboBox;
    DtGruposMan: TDataSource;
    Label8: TLabel;
    RadioGroup5: TRadioGroup;
    ComboGrupoEnt: TDBLookupComboBox;
    CheckBox5: TCheckBox;
    TabSheet11: TTabSheet;
    BitBtn10: TBitBtn;
    ChkValor: TRadioGroup;
    DBLookupComboBox5: TDBLookupComboBox;
    Label10: TLabel;
    TabSheet12: TTabSheet;
    BitBtn11: TBitBtn;
    QrCardex: TADOQuery;
    CbCardexPRD: TDBLookupComboBox;
    Label11: TLabel;
    DBText1: TDBText;
    TabSheet13: TTabSheet;
    BitBtn12: TBitBtn;
    Label12: TLabel;
    CBGrupoCardex: TDBLookupComboBox;
    Label13: TLabel;
    TabSheet14: TTabSheet;
    Memo1: TMemo;
    TabSheet15: TTabSheet;
    BitBtn13: TBitBtn;
    RadioInventarioDiario: TRadioGroup;
    Label14: TLabel;
    TabSheet16: TTabSheet;
    BitBtn14: TBitBtn;
    LookGrupoSaiVei: TDBLookupComboBox;
    Label9: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    CheckBox3: TCheckBox;
    RadioGroup6: TRadioGroup;
    procedure FecharClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VisualizarClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure TabSheet12Show(Sender: TObject);
    procedure CbCardexPRDEnter(Sender: TObject);
    procedure CBGrupoCardexEnter(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelTotvs: TFormRelTotvs;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema, UnitRelatorioIndiceRecl;

{$R *.dfm}

procedure TFormRelTotvs.BitBtn10Click(Sender: TObject);
begin

with relatorio.QrNotEnt do
   begin
       Close;
        Sql.Clear;
         Sql.Add('Select A.DataSaida, A.DataMovimento, A.CodColigada, A.CodCfo, A.ValorLiquido, A.DataEmissao, A.NumeroMov, B.NomeFantasia, B.CGCCFO, B.CodCFO');
          Sql.Add('from Tmov A, FCFO B, TTMV F');
           Sql.Add('Where A.CodTmv = f.CodTmv');
            Sql.Add('And A.CodTmv in (' + QuotedStr('2.2.03') + ',' + QuotedStr('2.2.04') + ',' + QuotedStr('2.2.08') + ',' + QuotedStr('2.2.10') + ',' + QuotedStr('2.2.12') + ',' +QuotedStr('2.2.14')+')');
             Sql.Add('And A.CodCfo = B.CodCfo');
              Sql.Add('And F.CodColigada = A.CodColigada and A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('And A.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and A.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                if DBLookupComboBox2.KeyValue <> null then Sql.Add('And B.CodCfo = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                 Sql.Add('Order by B.NomeFantasia, A.DataSaida');
//                 Memo1.Text:=sql.Text;
        Open;
        if not eof then
             begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvDevolucao');
//                         Relatorio.Projeto.Close;

             end
             else
             begin
                 ShowMessage('N�o h� dados para gera��o de Relat�rios');
             end;

   end;

end;

procedure TFormRelTotvs.BitBtn11Click(Sender: TObject);
begin
      Screen.Cursor:=CrHourGlass;
            With Relatorio.QrCardex do
                 begin
                      Close;
                      Sql.Clear;
                      Sql.Add('select B.CodigoPrd, B.NomeFantasia, C.IdMov, A.DataMovimento, A.SaldoAnterior, A.TotalAnterior, A.QtdeEntrada, A.CustoUnitario, A.TotalEntrada, A.QtdeSaida,A.CustoMedItem,');
                      Sql.Add('A.TotalSaida, A.CustoMedMov, A.SaldoMov, A.TotalMov, Substring(C.CodCCusto,7,5) as CodCCusto from trelsld A');
                      Sql.Add('Join Tprd B On B.Idprd = A.Idprd and A.codcoligada = b.codcoligada');
                      Sql.Add(' Join Tmov C On C.IdMov = A.IdMov and C.CodCOligada = A.CodCOligada ');
                      Sql.Add(' left Join Tmov C2 On C2.IdMov= C.Idmov and C2.Codcoligada = c.codcoligada and a.qtdesaida > 0');
                       sql.Add('and b.CODIGOPRD not like ''016%''');
                      Sql.Add(' where a.Datamovimento >=:inicio and a.Datamovimento <=:fim And A.CodColigada =:coligada');
                      if CBGrupoCardex.KeyValue <> Null then Sql.Add(' And Convert(Varchar(3),B.CodigoPrd) = ' + QuotedStr(CBGrupoCardex.KeyValue));

                      If CbCardexPRD.KeyValue <> NULL then Sql.Add(' and a.idprd = ' + QuotedStr(CbCardexPRD.KeyValue));
                      Sql.Add('    and A.Saldo = 2');
                      Sql.Add('    Order By CodigoPRd, A.DataMovimento');

                      Parameters.ParamByName('inicio').Value:=Datetostr(DtIni.Date);
                      Parameters.ParamByName('fim').Value:=Datetostr(DtFin.Date);
                      Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
//                      Parameters.ParamByName('produto').Value:=CbCardexPRD.KeyValue;
                      memo1.Text:=sql.Text;                      open;

                      if not eof then
                            begin
                                 Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                 Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                 Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                 Relatorio.Projeto.ExecuteReport('RvCardex');
                            end
                            Else
                            ShowMessage('N�o h� dados para gera��o de Relat�rios');
                 end;
      Screen.Cursor:=CrDefault;

end;

procedure TFormRelTotvs.BitBtn13Click(Sender: TObject);
begin
Screen.Cursor:=CrhourGlass;
            With Relatorio.QrInventarioDiario do
                  begin
                       Close;
                       Sql.Clear;



                       Sql.Add('select Prd.IdPrd as IDprd, Prd.CodigoPrd as CodigoPrd, Prd.NOMEFANTASIA, Loc.PRATELEIRA as Prateleira, sum(A.QTDESAIDA) as QtdSaida, avg(Ab.saldomov) as SaldoMov');
                       sql.Add('from trelsld A Join Tprd Prd On Prd.idPrd = A.IDPRD and Prd.CodColigada = A.codcoligada Join TMOV Mov On Mov.Codcoligada = A.Codcoligada and Mov.idmov = a.idmov');
                       Sql.Add('left Join TRelSld AB on AB.IDPRD = A.IDPRD and Ab.CODCOLIGADA = A.CODCOLIGADA and ab.saldo = 2 and Ab.DATAMOVIMENTO = A.DATAMOVIMENTO');
                       Sql.Add('and Ab.SEQUENCIAL =   (select max(ac.sequencial) from Trelsld Ac where ac.IDPRD = ab.IDPRD and ac.CODCOLIGADA = ab.CODCOLIGADA and ac.saldo = 2 and ac.DATAMOVIMENTO = ab.DATAMOVIMENTO)');
                       Sql.Add('Left Join TprdCompl Loc On Loc.IDPRD = A.IDPRD and loc.CODCOLIGADA = a.CODCOLIGADA');
                       Sql.Add('Where A.DATAMOVIMENTO =:inicio');
                       Sql.Add('And A.CODCOLIGADA =:coligada');
                       if RadioGroup6.ItemIndex = 1 then
                            sql.Add('and ab.codloc = ''01.001''');
                       if RadioGroup6.ItemIndex = 2 then
                            sql.Add('and ab.codloc = ''01.002''');
                       Sql.Add('And A.Saldo = 2 and A.QTDESAIDA > 0 and Prd.CODIGOPRD not like ''012%''');
                       sql.Add('and Prd.CODIGOPRD not like ''016%''');
                       Sql.Add('Group by Prd.IdPrd, Prd.CodigoPrd, Prd.NOMEFANTASIA, Loc.Prateleira');
                       case RadioInventarioDiario.ItemIndex of
                           0 : Sql.Add('Order by Prd.NomeFantasia');
                           1 : Sql.Add('Order By Prd.CodigoPrd');
                           2 : Sql.Add('Order by Loc.Prateleira');
                           3 : Sql.Add('Order by Sum(A.QtdeSaida) Desc');
                        end;

                       Parameters.ParamByName('coligada').Value :=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                       Parameters.ParamByName('Inicio').Value:= (DateToStr(DtIni.Date));
//                       Parameters.ParamByName('Final').Value:= (DateToStr(DtFin.Date)); so utiliza uma data
                       memo1.Text:=sql.Text;
                       Open;
                       if not eof then
                              begin
                                 Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                 Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                 Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                 Relatorio.Projeto.ExecuteReport('Rv_InvDia');
                              end
                              Else
                              ShowMessage('N�o h� dados para gera��o de Relat�rios');
                  end;





Screen.Cursor:=CRDefault;
end;

procedure TFormRelTotvs.BitBtn14Click(Sender: TObject);
begin
 //
  Screen.cursor:=CrHourGlass;
   with Relatorio.QrResumoEntradaSaida do
     begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select convert(varchar(3),Prd.CODIGOPRD) AS QUEBRA, Prd2.NomeFantasia,');
                     Sql.Add('sum(SldEnt.TotalEntrada) as Entradas, sum(SldSai.TotalSaida) as Saidas');
                     Sql.Add('from TRELSLD Sld Join TPrd Prd On Prd.IDPRD = Sld.IDPRD and Prd.CODCOLIGADA = Sld.CODCOLIGADA');
                     Sql.Add('Left Join TRELSLD SldEnt on SldEnt.IDPRD = Sld.IDPRD and SldEnt.IDMOV = Sld.IDMOV and SldEnt.SEQUENCIAL = Sld.SEQUENCIAL and sldEnt.TOTALENTRADA > 0');
                     Sql.Add('Left Join TRELSLD SldSai on SldSai.IDPRD = Sld.IDPRD and SldSai.IDMOV = Sld.IDMOV and SldSai.SEQUENCIAL = Sld.SEQUENCIAL And SldSai.TOTALSAIDA > 0');
                     Sql.Add('LEFT Join Tprd Prd2 On convert(varchar(3),Prd.CODIGOPRD) = Prd2.CODIGOPRD and Prd2.CODCOLIGADA = Prd.CODCOLIGADA and Prd2.ULTIMONIVEL = ''0''');
                     Sql.Add('Where Prd.Tipo = ''P''');
                     Sql.Add('And  Sld.DataMovimento >=:Ini and  Sld.DataMovimento<=:fim');
                     Sql.Add('And Sld.CodColigada =:coligada');
                     Sql.Add('And convert(varchar(3),Prd.CODIGOPRD) < ''017''');
                    // Sql.Add('And convert(varchar(3),Prd.CODIGOPRD) = ''012''');
                     Sql.Add('Group By convert(varchar(3),Prd.CODIGOPRD ), Prd2.NomeFantasia');
                     Sql.Add('Order By QUEBRA');
                     Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                     Parameters.ParamByName('fim').Value:=DateToStr(DtFin.Date);
                     Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                     Memo1.Text:=sql.Text;
                     Open;
                     if not eof then
                            begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RV_ResEntSai');
                            end
                            Else
                            begin
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                            end;
     end;
  Screen.Cursor:=CrDefault;








end;

procedure TFormRelTotvs.BitBtn1Click(Sender: TObject);
begin
// Saidas por Grupos
if RadioGroup4.ItemIndex = 0 then
  begin
   with Relatorio.QrSaidaProdutoGrupo do
     begin
            Close;
            Sql.Clear;
            Sql.Add('select D.Zgrm_des, A.NomeFantasia, SUM(c.ValorLiquido) As Valor, sum(C.Quantidade) As Qt from Tprd A, TitMmov C, Tmov B,  Zgrupoman D, ttMV f');
            Sql.Add('Where C.IdPrd = A.IdPrd');
            Sql.Add('And B.CodTmv = f.CodTmv');
            Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
            Sql.Add('And B.IdMov = C.Idmov and F.CodColigada = B.CodColigada and C.codColigada = b.CodColigada and B.CodColigada = A.CodColigada');
            Sql.Add('and A.CodigoPrd like (D.ZGRm_Id + ' + QuotedStr('%')+')');
            if CheckBox5.Checked = False then
                   Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)))
                   else
                   Sql.Add('and B.DataEmissao >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataEmissao <= ' + QuotedStr(DateToStr(DtFin.Date)));
            Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
            if ComboGrupoent.KeyValue <> null then
                      Sql.Add('And D.Zgrm_Id = ' + QuotedStr(ComboGrupoent.KeyValue));
            Sql.Add('Group by D.Zgrm_Des, A.NomeFantasia');
            Sql.Add('Order by D.Zgrm_Des, A.NomeFantasia');
            memo1.text:=sql.Text;

            Open;
            if not eof then
                    begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvEntradagrupoAnalitico');
//                         Relatorio.Projeto.Close;
                    end
                    Else begin
                        ShowMessage('N�o h� dados para gera��o de Relat�rios');
                    end;
       end;
   end else
   begin
   with Relatorio.QrEntGru do
     begin
            Close;
            Sql.Clear;
            Sql.Add('Select case when A.CODCOLIGADA =4 then    case when D.Zgrm_des = ''TELEMETRIA'' THEN ''USO GERAL OFICINA'' ELSE D.Zgrm_des END   ELSE   D.Zgrm_des   END AS Zgrm_des,');
            SQL.Add('SUM(c.valorLiquido) As Valor  from Tprd A, TitMmov C, Tmov B,  Zgrupoman D, TTMV F');
            Sql.Add('Where C.IdPrd = A.IdPrd');
            Sql.Add('And B.CodTmv = f.CodTmv');
            Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
            Sql.Add('and F.CodColigada = B.CodColigada');
            Sql.Add('And B.IdMov = C.Idmov and C.codColigada = b.CodColigada and B.CodColigada = A.CodColigada');
            Sql.Add('and A.CodigoPrd like (D.ZGRm_Id + ' + QuotedStr('%')+')');
            Sql.Add('and B.DataMovimento >= '            + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
            Sql.Add('And A.CodColigada = '               + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
            Sql.Add('Group by A.CODCOLIGADA, Zgrm_des');
            Sql.Add('Order by D.Zgrm_Des');
            memo1.text:=sql.Text;
            Open;
            if not eof then
                    begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('TITULORELATORIO','Entradas por Grupos Sintetico');
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvEntradagrupoSintetico');
//                         Relatorio.Projeto.Close;
                    end
                    Else begin
                        ShowMessage('N�o h� dados para gera��o de Relat�rios');
                    end;
        end;
   end;
 end;

procedure TFormRelTotvs.BitBtn2Click(Sender: TObject);
begin

with relatorio.QrNotEnt do
   begin
        Close;
        Sql.Clear;
         Sql.Add('Select A.DataSaida, A.DataMovimento, A.CodColigada, A.CodCfo, A.ValorLiquido, A.DataEmissao, A.NumeroMov, B.NomeFantasia, B.CGCCFO, B.CodCFO');
          Sql.Add('from Tmov A, FCFO B, TTMV F');
           Sql.Add('Where A.CodTmv = f.CodTmv');
            Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
             Sql.Add('And A.CodCfo = B.CodCfo');
//        Sql.Add('And Serie = ' + QuotedStr('NF'));
               Sql.Add('And F.CodColigada = A.CodColigada and A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                Sql.Add('And A.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and A.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                 if DBLookupComboBox2.KeyValue <> null then Sql.Add('And B.CodCfo = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                  Sql.Add('Order by B.NomeFantasia, A.DataSaida');
                   Memo1.Text:=sql.Text;
        Open;
        if not eof then
             begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvEntradaNota');
//                         Relatorio.Projeto.Close;
             end
             else
             begin
                 ShowMessage('N�o h� dados para gera��o de Relat�rios');
             end;
   end;

end;

procedure TFormRelTotvs.BitBtn3Click(Sender: TObject);
begin
if DBLookupComboBox4.KeyValue <> null then
begin
     With Relatorio.QrEntPrd do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select A.DataSaida, A.DataEmissao, A.DataMovimento, A.Serie, B.ValorLiquido, A.ValorBruto, A.CodColigada, A.NumeroMov, A.CodCfo, A.IdMov, B.CodColigada, B.IdMov, B.IdPrd, B.Quantidade, B.ValorUnitario, C.CodColigada, C.IdPRd, C.NomeFantasia, C.CodigoPrd');
               Sql.Add('From TMov A, TitMmov B, Tprd C, TTMV F');
               Sql.Add('Where A.CodTmv = f.CodTmv');
               Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
               Sql.Add('And B.IdMov = A.IdMov and C.IdPrd = B.IdPrd and B.CodColigada =A.CodColigada and C.CodColigada = B.CodColigada');
               Sql.Add('And F.CodCOligada = A.CodColigada and A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('and A.DataSaida >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and A.DataSaida <= ' + QuotedStr(DateToStr(DtFin.Date)));
               if DBLookupComboBox4.KeyValue <> null then Sql.Add('And B.IdPrd = ' + QuotedStr(DBLookupComboBox4.KeyValue));
               Sql.Add('Order by a.numeromov');
               memo1.Text:=SQL.Text;
               Open;
               if not eof then
                    begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvEntradaProdutos');
                    end
                    Else begin
                         ShowMessage('N�o h� dados para gera��o de Relat�rios');
                    end;
          end;

end
else begin
  MessageBox(handle,'Voc� Precisa escolher um produto para acompanhar as entradas','Faltou uma coisa !',Mb_iconInformation+MB_Ok);
end;
end;

procedure TFormRelTotvs.BitBtn4Click(Sender: TObject);
Var
ValorTotal : Double;
begin
Screen.Cursor:=crHourGlass;
     With Relatorio.QrGruVei do
            begin
                   Close;
                   Sql.Clear;
                    Sql.Add('select E.CodCCusto, a.Zgrm_des,SUM(COALESCE((c.valorliquido),0)) As Total from Tmov B, TitMmov C, Tprd D, Zgrupoman A, GcCusto E, TTMV F');
                     Sql.Add('Where C.IdMov = B.IdMov');
//                      Sql.Add('B.CODTMV IN (' + QuotedStr('4.1.04') + ',' + QuotedStr('1.2.13')+ ',' + QuotedStr('1.2.14')+ ',' + QuotedStr('1.2.15')+')');
                       Sql.Add('And B.CodTmv = f.CodTmv');
                       Sql.Add('And f.MarcaSaida = ' + QuotedStr('S'));
                       Sql.Add('and C.IdPrd = D.IdPrd and D.codColigada = b.CodColigada');
                        Sql.Add('And F.CodColigada = B.CodColigada and C.CodColigada = B.CodColigada And E.CodColigada = C.CodColigada And B.CodCCusto = E.CodCCusto');
                         if RadioGroup3.ItemIndex = 0 then
                                Sql.Add('And E.CampoLivre = ' + QuotedStr('V'));
                           Sql.Add('and D.CodigoPrd like (A.ZGRm_Id + '+QuotedStr('%')+')');
                            Sql.Add('And C.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             Sql.Add('And B.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' And B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                              Sql.Add('group by E.CodCCusto, A.Zgrm_des');
                               Sql.Add('order by E.CodCCusto, A.Zgrm_des');
//                               MEMO1.Text:=SQL.Text;
                    Open;
                  if not eof then
                        begin
                              Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                              Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                              Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                              Relatorio.Projeto.ExecuteReport('RvGruVei');
//                              Relatorio.Projeto.Close;

                        end
                        Else begin
                              ShowMessage('N�o h� dados para gera��o de Relat�rios');
                        end;

            end;


Screen.Cursor:=crDefault;

// Sa�das por Grupo e Subgrupo
end;

procedure TFormRelTotvs.BitBtn5Click(Sender: TObject);
begin
     With Relatorio.QrEntPrd do
          begin
               Close;
               Sql.Clear;
                Sql.Add('Select A.DataSaida, A.DataMovimento, A.DataEmissao, A.Serie, A.ValorLiquido, A.ValorBruto, A.CodColigada, A.NumeroMov, A.CodCfo, A.IdMov, B.CodColigada, B.IdMov, B.IdPrd, B.Quantidade, B.ValorUnitario, C.CodColigada, C.IdPRd, C.NomeFantasia, C.CodigoPrd,');
                 Sql.Add('C.NumeroCCF, A.CODTMV, E.NomeFantasia as CFO From TMov A, TitMmov B, Tprd C, Fcfo E, TTMV F');
                  Sql.Add('Where B.IdMov = A.IdMov and C.IdPrd = B.IdPrd and B.CodColigada =A.CodColigada and C.CodColigada = B.CodColigada');
                  Sql.Add('and F.CodColigada = B.CodColigada');
                   Sql.Add('And E.CodCfo = A.CodCfo');
                    Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                     Sql.Add('And A.CodTmv = f.CodTmv');
 //                     Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
//               Sql.Add('And A.Serie = '+ QuotedStr('NF'));
               Sql.Add('And f.MarcaEntrada = ' + QuotedStr('S'));
                       Sql.Add('and A.DataSaida >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and A.DataSaida <= ' + QuotedStr(DateToStr(DtFin.Date)));
               if DBLookupComboBox5.KeyValue <> null then
                    Sql.Add('And E.CodCfo = ' + QuotedStr(DBLookupComboBox5.KeyValue));
               Sql.Add('Order by E.CFO, A.numeromov');
               Open;
               if not eof then
                    begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvProdutoNota');
//                         Relatorio.Projeto.Close;
                    end
                    Else begin
                         ShowMessage('N�o h� dados para gera��o de Relat�rios');
                    end;
          end;
end;

procedure TFormRelTotvs.BitBtn6Click(Sender: TObject);
begin
// Saida de Produtos
     With Relatorio.QrSaiPrd do
          begin
               Close;
               Sql.Clear;
                Sql.Add('Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CodColigada, B.CodColigada, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, C.CodTmv, D.CodCCusto, D.Nome, D.CodColigada');
                 Sql.Add('from Tprd A, TitmMov B, TMov C, GCCusto D, TTMV F');
                  Sql.Add('Where C.CodTmv = f.CodTmv');
                   Sql.Add('And f.MarcaSaida = ' + QuotedStr('S'));
                    Sql.Add('and B.IdPrd = A.IdPrd and C.idMov = B.IdMov And D.CodCCusto = C.CodCCusto');
                     Sql.Add('And F.CodColigada = B.COdColigada and B.CodColigada = A.CodColigada and C.CodColigada = B.CodColigada and D.CodColigada = C.CodColigada');
                      Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                       Sql.Add('and C.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and C.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                        if DBLookupComboBox3.KeyValue <> null then Sql.Add('And B.IdPrd = ' + QuotedStr(DBLookupComboBox3.KeyValue));
               memo1.Text:=sql.Text;
               Open;
               if not eof then
                    begin
                         Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                         Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvSaiPrd');
//                         Relatorio.Projeto.Close;

                    end
                    Else begin
                        ShowMessage('N�o h� dados para gera��o de Relat�rios');
                    end;
// saida de produtos

          end;

end;

procedure TFormRelTotvs.BitBtn7Click(Sender: TObject);
begin
if RadioGroup5.ItemIndex = 0 then
    begin
        with Relatorio.QrSaidaProdutoGrupo do
           begin
                Close;
                Sql.Clear;
                Sql.Add('select D.Zgrm_des, A.NomeFantasia, Sum(c.valorliquido) As Valor, sum(C.Quantidade) As Qt from Tprd A, TitMmov C, Tmov B,  Zgrupoman D, TTMV F');
                 Sql.Add('Where B.CodTmv = f.CodTmv');
                  Sql.Add('And f.MarcaSaida = ' + QuotedStr('S'));
                   Sql.Add('And A.Idprd = C.Idprd');
                    Sql.Add('And B.IdMov = C.Idmov and C.codColigada = A.CodColigada and B.CodColigada = A.CodColigada');
                     Sql.Add('and A.CodigoPrd like (D.ZGRm_Id + ' + QuotedStr('%')+')');
                      Sql.Add('and F.CodColigada = A.CodColigada and B.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                       Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                        if ComboGrupo.KeyValue <> null then Sql.Add('And D.Zgrm_Id = ' + QuotedStr(ComboGrupo.KeyValue));
                         Sql.Add('Group by D.Zgrm_Des, A.NomeFantasia');
                          Sql.Add('Order by D.Zgrm_Des, A.NomeFantasia');
                          memo1.Text:=sql.Text;
                Open;
                if not eof then
                      begin
                            Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                            Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                            Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                            Relatorio.Projeto.SetParam('TITULORELATORIO','Total de Saidas Analiticas por Grupos');
                            Relatorio.Projeto.ExecuteReport('RvSaidaProdutogrupo');
//                            Relatorio.Projeto.Close;
                      end
                      Else begin
                           ShowMessage('N�o h� dados para gera��o de Relat�rios');
                      end;
           end;
     end
 else
       begin
            with Relatorio.QrEntGru do
                 begin
                      Close;
                      Sql.Clear;
                       Sql.Add('SELECT case when A.CODCOLIGADA =4 then    case when D.Zgrm_des = ''TELEMETRIA'' THEN ''USO GERAL OFICINA'' ELSE D.Zgrm_des END   ELSE   D.Zgrm_des   END AS Zgrm_des,');
                       SQL.Add('SUM(COALESCE((c.VALORLiquido),0)) As Valor  from Tprd A, TitMmov C, Tmov B,  Zgrupoman D, TTMV F');
                        Sql.Add('Where B.CodTmv = f.CodTmv');
                         Sql.Add('And f.MarcaSaida = ' + QuotedStr('S'));
                          Sql.Add('And A.Idprd = C.Idprd');
                           Sql.Add('And B.IdMov = C.Idmov and C.codColigada = A.CodColigada And F.CodColigada = A.CodColigada and B.CodColigada = A.CodColigada');
                            Sql.Add('and A.CodigoPrd like (D.ZGRm_Id + ' + QuotedStr('%')+')');
                             Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                              Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                               Sql.Add('Group by A.CODCOLIGADA, Zgrm_des');
                                Sql.Add('Order by D.Zgrm_Des');
                                 memo1.Text:=sql.Text;
                      Open;
                      if not eof then
                            begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                       Relatorio.Projeto.SetParam('TITULORELATORIO','Sa�das por Grupos Sintetico');
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RvEntradagrupoSintetico');
//                                       Relatorio.Projeto.Close;
                             end
                             Else begin
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                             end;
                end;
end;
end;

procedure TFormRelTotvs.BitBtn8Click(Sender: TObject);
begin
            With Relatorio.QrPosicaoEstoque do
                  begin
                          Close;
                          Sql.Clear;
                          Sql.Add('select  convert(varchar(3),Prd.CODIGOPRD) AS QUEBRA, Prd2.NomeFantasia Grupo, Prd3.NomeFantasia SubGrupo,');
                          Sql.Add('Prd.IdPrd as IDprd, Prd.CodigoPrd as CodigoPrd, Prd.NOMEFANTASIA,  Loc.PRATELEIRA as Prateleira, A.SALDOMOV as SaldoMov,');
                          Sql.Add('A.CustoMedMov as CustoMedio,  A.TotalMov as SaldoValor from trelsld A');
                          Sql.Add(' Join Tprd Prd On Prd.idPrd = A.IDPRD and Prd.CODCOLIGADA = A.CODCOLIGADA');
                          Sql.Add('Left Join TprdCompl Loc On Loc.IDPRD = A.IDPRD and loc.CODCOLIGADA = a.CODCOLIGADA');
                          Sql.Add(' Join Tprd Prd2 On convert(varchar(3),Prd.CODIGOPRD) = Prd2.CODIGOPRD and Prd2.CODCOLIGADA = Prd.CODCOLIGADA and Prd2.ULTIMONIVEL = ''0''');
                          Sql.Add(' Join Tprd Prd3 On convert(varchar(7),Prd.CODIGOPRD) = Prd3.CODIGOPRD and Prd3.CODCOLIGADA = Prd.CODCOLIGADA and Prd3.ULTIMONIVEL = ''0''');
                          Sql.Add('Where A.SALDOMOV > ''0''');
                          Sql.Add('and  A.DATAMOVIMENTO = (Select max(AA.DataMovimento) from TrelSld AA Where AA.Idprd = A.Idprd and AA.codcoligada = A.CodColigada and AA.DataMovimento <=' + QuotedStr(DateToStr(DtIni.Date)));
                          Sql.Add(') And A.SEQUENCIAL = (select max(Aaa.Sequencial) From TrelSld AAA Where AAA.IDPRD = A.IDPRD and AAA.CODCOLIGADA = A.CODCOLIGADA and AAA.DataMovimento = A.DATAMOVIMENTO)');
                          Sql.Add('And A.CODCOLIGADA ='+    pai.QrColigadas.FieldByName('cod_coligada').AsString);
                          Sql.Add('And A.Saldo = 2');
                          if ComboGrupos.KeyValue <> Null then Sql.Add('And  Convert(VarChar(3),Prd.CodigoPrd) = ' + QuotedStr(ComboGrupos.KeyValue));
                          Sql.Add('and Prd.CODIGOPRD not like ''014%''');
                          Sql.Add('Order By Grupo, SubGrupo, CODIGOPRD');
//                          Parameters.ParamByName('inicio').Value:=DateToStr(DtIni.Date);
//                          Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                          MEMO1.Text:=sQL.Text;
                          open;
                          if Not Eof then
                              begin
                                      Relatorio.Projeto.SetParam('Dt1',DateToStr(now));
                                      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                      Relatorio.Projeto.ExecuteReport('RV_PosEst');
//                                      Relatorio.Projeto.Close;
                              end
                              else begin
                                      ShowMessage('N�o h� dados para gera��o de Relat�rios');
                              end;
                  end;
end;

procedure TFormRelTotvs.BitBtn9Click(Sender: TObject);
begin
        with Relatorio.QrSaidaProdutoGrupo do
           begin
                Close;
                Sql.Clear;
                Sql.Add('select D.Zgrm_des, A.NomeFantasia, sum(C.valorLiquido) As Valor, cast(sum(C.Quantidade) as integer) As Qt from Tprd A, TitMmov C, Tmov B,  Zgrupoman D');
                Sql.Add('Where C.IdPrd = A.IdPrd and B.serie = ' + QuotedStr('IS'));
                Sql.Add('And B.IdMov = C.Idmov and C.codColigada = b.CodColigada and B.CodColigada = A.CodColigada');
                Sql.Add('and A.CodigoPrd like (D.ZGRm_Id + ' + QuotedStr('%')+')');
//                Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(DtIni.Date)) + ' and B.DataMovimento <= ' + QuotedStr(DateToStr(DtFin.Date)));
                Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                if ComboGrupo.KeyValue <> null then
                      Sql.Add('And D.Zgrm_Id = ' + QuotedStr(ComboGrupo.KeyValue));
                Sql.Add('Group by D.Zgrm_Des, A.NomeFantasia');
                Sql.Add('Order by D.Zgrm_Des, A.NomeFantasia');
                Open;
                if not eof then
                      begin
           //                 Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
           //                 Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                            Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                            Relatorio.Projeto.SetParam('TITULORELATORIO','Implanta��o de Saldo');
                            Relatorio.Projeto.ExecuteReport('RvSaidaProdutogrupo');
//                            Relatorio.Projeto.Close;
                      end
                      Else begin
                           ShowMessage('N�o h� dados para gera��o de Relat�rios');
                      end;
           end;

end;

procedure TFormRelTotvs.CbCardexPRDEnter(Sender: TObject);
begin
           CBGrupoCardex.KeyValue:=Null;
end;

procedure TFormRelTotvs.CBGrupoCardexEnter(Sender: TObject);
begin
                 CbCardexPRD.KeyValue:=Null;
end;

procedure TFormRelTotvs.CheckBox1Click(Sender: TObject);
begin
if DBLookupComboBox2.Enabled = true then
   DBLookupComboBox2.Enabled:=false
   else
   DBLookupComboBox2.Enabled:=True;

end;

procedure TFormRelTotvs.CheckBox2Click(Sender: TObject);
begin
if DBLookupComboBox3.Enabled = true then
   DBLookupComboBox3.Enabled:=false
   else
   DBLookupComboBox3.Enabled:=True;

end;

procedure TFormRelTotvs.CheckBox3Click(Sender: TObject);
begin
if DBLookupComboBox4.Enabled = true then
   DBLookupComboBox4.Enabled:=false
   else
   DBLookupComboBox4.Enabled:=True;

end;

procedure TFormRelTotvs.FecharClick(Sender: TObject);
begin
Close;
end;

procedure TFormRelTotvs.FormActivate(Sender: TObject);
begin
      With QrPrd Do
      begin
            Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
            Open;
            first;
      end;
      Relatorio.QrCardex.Close;

DtIntegracao.DataSet.Open;
end;

procedure TFormRelTotvs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtGruposMan.DataSet.close;
DtTotGrupos.DataSet.close;
DtPrd.DataSet.Close;
DtMovPrd.DataSet.Close;
DtIntegracao.DataSet.Close;
DtSaiPrd.DataSet.Close;
DtCCusto.DataSet.Close;
DtFCFO.DataSet.Close;
DtSaigru.DataSet.Close;
DtGru.DataSet.Close;
DtRelGru.DataSet.Close;
Limpadb.Close;
Action:=cafree;
end;

procedure TFormRelTotvs.FormCreate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
DtIni.Date:=now;
DtFin.Date:=now;

end;

procedure TFormRelTotvs.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
  begin
        DBLookupComboBox1.Enabled:=true;
        DtCCusto.DataSet.Open;
        DBLookupComboBox1.SetFocus;
    end
 else
    begin
        DBLookupComboBox1.Enabled:=False;
    end;
end;

procedure TFormRelTotvs.RadioGroup2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 0 then
       DBLookupComboBox4.ListField:='NomeFantasia'
       Else
       DBLookupComboBox4.ListField:='CodigoPrd';

end;

procedure TFormRelTotvs.TabSheet12Show(Sender: TObject);
begin
//       DBLookupComboBox6.KeyValue:=null;
        DtTotGrupos.DataSet.Open;
end;

procedure TFormRelTotvs.TabSheet1Show(Sender: TObject);
begin
      DtTotGrupos.DataSet.open

{with pai.QrCCusto do
       Begin
             Close;
              Sql.Clear;
               Sql.Add('select * from GCCUSTO');
                Sql.Add('where Ativo = ' + QuotedStr('T'));
                 Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                  Sql.Add('Order by Nome');
                   open;
       End;                  }
end;

procedure TFormRelTotvs.TabSheet3Show(Sender: TObject);
begin
DtFCFO.DataSet.Open;
end;

procedure TFormRelTotvs.TabSheet4Show(Sender: TObject);
begin
      DtTotGrupos.DataSet.open
end;

procedure TFormRelTotvs.TabSheet5Show(Sender: TObject);
begin
      DtFCFO.DataSet.Open;
end;

procedure TFormRelTotvs.TabSheet8Show(Sender: TObject);
begin
      DtTotGrupos.DataSet.open;
end;

procedure TFormRelTotvs.TabSheet9Show(Sender: TObject);
begin
      DtGruposMan.DataSet.Open;
end;

procedure TFormRelTotvs.VisualizarClick(Sender: TObject);
begin
        With Relatorio.QrSaiPrd do
            begin
                  Close;
                   Sql.Clear;
                    Sql.Add('Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CodColigada, B.CodColigada, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, D.CodCCusto, C.CodTmv, D.Nome, D.CodColigada');
                     Sql.Add('from Tprd A, TitmMov B, TMov C, GCCusto D, TTMV F, Zgrupoman Z');
                      Sql.Add('Where C.CodTmv = f.CodTmv');
                       Sql.Add('And f.MarcaSaida = ' + QuotedStr('S'));
                        Sql.Add('and B.IdPrd = A.IdPrd and C.idMov = B.IdMov And D.CodCCusto = C.CodCCusto');
                         Sql.Add('And F.CodColigada = A.COdColigada and B.CodColigada = A.CodColigada and C.CodColigada = A.CodColigada and D.CodColigada = A.CodColigada');
                          Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                           sql.Add('and A.CodigoPrd like (Z.ZGRm_Id + ' + QuotedStr('%')+')');
                            sql.Add('and a.CODIGOPRD not like ''016%''');

                           Sql.Add('And C.DataMovimento >= ' + QuotedStr(DateToStr(dtIni.Date)) + 'And C.DataMovimento <= ' + QuotedStr(DateToStr(dtFin.Date)));
                            if CheckBox3.Checked=True then
                                 Sql.Add('and Z.zgrm_id <> ''016''');
                            if LookGrupoSaiVei.KeyValue <> NULL then
                                       sql.Add('and z.zgrm_Id = ' + LookGrupoSaiVei.KeyValue );
                            if RadioGroup1.ItemIndex = 0 then
                                Sql.Add('And D.CodCCusto = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                              Sql.Add('order By D.Nome, C.DataMovimento, A.NomeFantasia');
                                memo1.Text:=sql.Text;
                                open;
                                 if Not Eof then
                                       begin
                                              Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                               Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                 Relatorio.Projeto.ExecuteReport('RvSaiPrdCus');
//                                                  Relatorio.Projeto.Close;
                                      end
                                      else begin
                                            ShowMessage('N�o h� dados para gera��o de Relat�rios');
                                      end;
            end;

end;

end.
