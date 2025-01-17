unit UtRltPneuDecisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.ComCtrls;

type
  TFormRltPneuDecisao = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Image5: TImage;
    DtPneuMarcas: TDataSource;
    DtPneuDesenho: TDataSource;
    DtPneuMedidas: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Image1: TImage;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label5: TLabel;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRltPneuDecisao: TFormRltPneuDecisao;

implementation

{$R *.dfm}

uses UnitPai, UtProdutividadeCustoKm, UnitServerPai;

procedure TFormRltPneuDecisao.FormActivate(Sender: TObject);
begin
         DateTimePicker1.Date:=now-365;
         DateTimePicker2.Date:=now;

         DtPneuMarcas.DataSet.Open;
         DtPneuMedidas.DataSet.Open;
         DtPneuDesenho.DataSet.Open;
end;

procedure TFormRltPneuDecisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=cafree;
end;

procedure TFormRltPneuDecisao.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormRltPneuDecisao.SpeedButton1Click(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;
          With Pai.QrPneuCustoKmTodasVidas do
                    begin
                            Close;
                            Sql.Clear;
                            Sql.Add('select ''X'' as CK,  PN.TCP_COD AS ID,');
                            Sql.Add('PN.Tcp_Fog  AS Fog,');
                            Sql.Add('MAR.TPM_DES         AS Marca,');
                            Sql.Add('DESE.TPD_DES        AS Desenho,');
                            Sql.Add(' MED.TPM_DES         AS Medida,');
                            Sql.Add(' -- NOVO');
                            Sql.Add('isnull(sum(N.PMOV_KMROD),0)   AS KM_VIDA_N,');
                            Sql.Add('isnull(SUM(PN2.TCP_VALOR),0)  AS VALOR_COMPRA_NOVO,');
                            Sql.Add('isnull((SUM(PN2.TCP_VALOR)/SUM(N.PMOV_KMROD)),0)   AS CUSTOKM_NOVO,');
                            Sql.Add('-- 1 REFORMA');
                            Sql.Add('isnull(sum(r1.PMOV_KMROD),0)  AS KM_VIDA_1,');
                            Sql.Add('isnull(SUM(RF1.RMOV_VALOR),0) AS VALOR_REF1,');
                            Sql.Add('isnull((SUM(RF1.RMOV_VALOR)/SUM(R1.PMOV_KMROD)),0) AS CUSTOKM_1REF,');
                            Sql.Add('-- 2 REFORMA');
                            Sql.Add('isnull(sum(r2.PMOV_KMROD),0)  AS KM_VIDA_2,');
                            Sql.Add('isnull(SUM(RF2.RMOV_VALOR),0) AS VALOR_REF2,');
                            Sql.Add('isnull((SUM(RF2.RMOV_VALOR)/SUM(R2.PMOV_KMROD)),0) AS CUSTOKM_2REF,');
                            Sql.Add('-- 3 REFORMA');
                            Sql.Add('isnull(sum(R3.PMOV_KMROD),0)  AS KM_VIDA_3,');
                            Sql.Add('isnull(SUM(RF3.RMOV_VALOR),0) AS VALOR_REF3,');
                            Sql.Add('isnull((SUM(RF3.RMOV_VALOR)/SUM(R3.PMOV_KMROD)),0) AS CUSTOKM_3REF,');
                            Sql.Add('-- 4 REFORMA');
                            Sql.Add('isnull(sum(R4.PMOV_KMROD),0)  AS KM_VIDA_4,');
                            Sql.Add('isnull(SUM(RF4.RMOV_VALOR),0) AS VALOR_REF4,');
                            Sql.Add('isnull((SUM(RF4.RMOV_VALOR)/SUM(R4.PMOV_KMROD)),0) AS CUSTOKM_4REF,');
                            Sql.Add('-- 5 REFORMA');
                            Sql.Add('isnull(sum(r5.PMOV_KMROD),0)  AS KM_VIDA_5,');
                            Sql.Add('isnull(SUM(RF5.RMOV_VALOR),0) AS VALOR_REF5,');
                            Sql.Add('isnull((SUM(RF5.RMOV_VALOR)/SUM(R5.PMOV_KMROD)),0) AS CUSTOKM_5REF,');
                            Sql.Add('-- TOTAL VALOR REFORMAS');
                            Sql.Add('case when  SUM(REF.RMOV_VALOR) is null then 0 else  SUM(REF.RMOV_VALOR) end AS VALOR_TOTAL_REF,');
                            Sql.Add('-- TOTAL GERAL');
                            Sql.Add('isnull(SUM(MOV.PMOV_KMROD),0) AS KMTOTAL,');
                            Sql.Add('SUM(PN2.TCP_VALOR) +   CASE WHEN SUM(REF.RMOV_VALOR) IS NULL THEN 0 ELSE SUM(REF.RMOV_VALOR) END    AS VALOR_TOTAL,');
                            Sql.Add('(SUM(PN2.TCP_VALOR) + (CASE WHEN SUM(REF.RMOV_VALOR) IS NULL THEN 0 ELSE SUM(REF.RMOV_VALOR) END)) / SUM(MOV.PMOV_KMROD) AS CUSTO_KM_TOTAL');
                            Sql.Add('from  TB_PNPNEUS PN');
                            Sql.Add('JOIN TB_PNMOV MOV         ON MOV.PMOV_PNEU = PN.TCP_COD');
                            Sql.Add('JOIN TB_PNMARCAS MAR      ON MAR.TPM_COD = PN.TCP_MARCA');
                            Sql.Add('JOIN TB_PNDESENHOS DESE   ON DESE.TPD_COD = PN.TCP_DESENHO');
                            Sql.Add('JOIN TB_PNMEDIDAS MED     ON MED.TPM_COD = PN.TCP_MEDIDA');
                            Sql.Add('JOIN TB_PNVIDA VID        ON VID.TPV_COD = MOV.PMOV_VIDA');
                            Sql.Add('JOIN TB_PNMOV MP ON MP.PMOV_PNEU = PN.TCP_COD and MP.PMOV_DTSAI >=' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and MP.PMOV_DTSAI <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                            Sql.Add(' AND (MP.PMOV_MOTRET = ''S'' OR MP.PMOV_MOTRET = ''T'')');
                            Sql.Add('LEFT JOIN TB_PNREFMOV REF ON REF.RMOV_PNEU = MOV.PMOV_PNEU  AND REF.RMOV_NOVAVIDA = MOV.PMOV_VIDA AND REF.RMOV_TIPREF <> ''CONSERTO''');
                            Sql.Add('AND MOV.PMOV_DTENT = (SELECT MIN(MOV1.PMOV_DTENT) FROM TB_PNMOV MOV1 WHERE MOV1.PMOV_PNEU = MOV.PMOV_PNEU AND MOV1.PMOV_VIDA = REF.RMOV_NOVAVIDA)');
                            Sql.Add('LEFT JOIN TB_PNPNEUS PN2  ON PN2.TCP_COD = MOV.PMOV_PNEU AND MOV.PMOV_VIDA = ''N''  AND MP.PMOV_PNEU = MOV.PMOV_PNEU AND MOV.PMOV_DTENT = (SELECT MIN(MOV2.PMOV_DTENT) FROM TB_PNMOV MOV2 WHERE MOV2.PMOV_PNEU = MOV.PMOV_PNEU)');
                            Sql.Add('LEFT JOIN TB_PNMOV     N  ON N.PMOV_COD =  MOV.PMOV_COD   AND N.PMOV_STATUS = ''F'' and N.PMOV_VIDA     = ''N'' AND MP.PMOV_PNEU = N.PMOV_PNEU');
                            Sql.Add('LEFT JOIN TB_PNMOV     R1 ON R1.PMOV_COD = MOV.PMOV_COD AND R1.PMOV_STATUS = ''F'' and R1.PMOV_VIDA    = ''1'' AND MP.PMOV_PNEU = R1.PMOV_PNEU ');
                            Sql.Add('LEFT JOIN TB_PNMOV     R2 ON R2.PMOV_COD = MOV.PMOV_COD AND R2.PMOV_STATUS = ''F'' and R2.PMOV_VIDA    = ''2'' AND MP.PMOV_PNEU = R2.PMOV_PNEU ');
                            Sql.Add('LEFT JOIN TB_PNMOV     R3 ON R3.PMOV_COD = MOV.PMOV_COD AND R3.PMOV_STATUS = ''F'' and R3.PMOV_VIDA    = ''3'' AND MP.PMOV_PNEU = R3.PMOV_PNEU ');
                            Sql.Add('LEFT JOIN TB_PNMOV     R4 ON R4.PMOV_COD = MOV.PMOV_COD AND R4.PMOV_STATUS = ''F'' and R4.PMOV_VIDA    = ''4'' AND MP.PMOV_PNEU = R4.PMOV_PNEU ');
                            Sql.Add('LEFT JOIN TB_PNMOV     R5 ON R5.PMOV_COD = MOV.PMOV_COD AND R5.PMOV_STATUS = ''F'' and R5.PMOV_VIDA    = ''5'' AND MP.PMOV_PNEU = R5.PMOV_PNEU ');
                            Sql.Add('LEFT JOIN TB_PNREFMOV RF1 ON RF1.RMOV_COD = REF.RMOV_COD AND RF1.RMOV_NOVAVIDA = ''1''');
                            Sql.Add('LEFT JOIN TB_PNREFMOV RF2 ON RF2.RMOV_COD = REF.RMOV_COD AND RF2.RMOV_NOVAVIDA = ''2''');
                            Sql.Add('LEFT JOIN TB_PNREFMOV RF3 ON RF3.RMOV_COD = REF.RMOV_COD AND RF3.RMOV_NOVAVIDA = ''3''');
                            Sql.Add('LEFT JOIN TB_PNREFMOV RF4 ON RF4.RMOV_COD = REF.RMOV_COD AND RF4.RMOV_NOVAVIDA = ''4''');
                            Sql.Add('LEFT JOIN TB_PNREFMOV RF5 ON RF5.RMOV_COD = REF.RMOV_COD AND RF5.RMOV_NOVAVIDA = ''5''');
                            Sql.Add('where');
                            Sql.Add('mar.TPM_COD = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                            if DBLookupComboBox2.KeyValue <> NULL then  Sql.Add('and Med.TPM_COD = ' + QuotedStr(DBLookupComboBox2.KeyValue));

                            if DBLookupComboBox3.KeyValue <> NULL then  Sql.Add('and Dese.TPD_COD = ' + QuotedStr(DBLookupComboBox3.KeyValue));

                            Sql.Add('and pN.Tcp_Coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                            Sql.Add('AND ((PN.TCP_LOCAL = ''S'') OR (PN.TCP_LOCAL = ''T''))');
                            Sql.Add(' Group By PN.TCP_COD, PN.Tcp_Fog, MAR.TPM_DES,DESE.TPD_DES,MED.TPM_DES');

                            Sql.Add('Order by  PN.Tcp_Fog');
                            memo1.Text:=sql.Text;
                            Open;
                            if Not Eof then
                                   begin
                                           Application.CreateForm(TFormProdutividadeCustoKm,FormProdutividadeCustoKm);
                                           FormProdutividadeCustoKm.DataInicial:=DateToStr(DateTimePicker1.Date);
                                           FormProdutividadeCustoKm.DataFinal:=DateToStr(DateTimePicker2.Date);
                                           FormProdutividadeCustoKm.lerTabela;
                                           FormProdutividadeCustoKm.showmodal;

                                   end;



                    end;

Screen.Cursor:=crDefault;

end;

end.
