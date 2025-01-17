unit UnitRelatorioCustoKm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, DB, Grids, DBGrids, ADODB,
  Gauges, pngimage, DateUtils,RvLdCompiler, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, System.ImageList,
  Vcl.ImgList, cxPC;

type
  TFormRelatorioCustoKM = class(TForm)
    DtColigada: TDataSource;
    DtIntegracao: TDataSource;
    DtDadosCustoKm: TDataSource;
    QrVeiculos: TADOQuery;
    QrCustoKm: TADOQuery;
    DtCustoKm: TDataSource;
    LimpaDb: TADOQuery;
    Gauge1: TGauge;
    QrKm: TADOQuery;
    QrPublica: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    Mercado: TcxTabSheet;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Panel2: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Image2: TImage;
    Label11: TLabel;
    EditDataPlaIni: TDateTimePicker;
    EditDataPlaFim: TDateTimePicker;
    RadioGroup1: TRadioGroup;
    Label12: TLabel;
    Label13: TLabel;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     AnoAtual,MesAtual:Integer;
    { Public declarations }
  end;

var
  FormRelatorioCustoKM: TFormRelatorioCustoKM;

implementation

uses UnitRelatorio, UnitServerPai, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioCustoKM.FormActivate(Sender: TObject);
begin
//editcoligada.Caption:=DtColigada.DataSet.FieldByName('Des_Coligada').AsString;
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
DtIntegracao.DataSet.Open;
end;

procedure TFormRelatorioCustoKM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtDadosCustoKm.DataSet.Close;
DtCustoKm.DataSet.Close;
QrVeiculos.close;
QrKm.Close;
QrPublica.Close;
DtIntegracao.DataSet.Close;
Action:=cafree;
end;

procedure TFormRelatorioCustoKM.FormShow(Sender: TObject);
begin
    EditDataPlaIni.Date:=now-30;
    EditDataPlaFim.Date:=now;

end;

procedure TFormRelatorioCustoKM.Image2Click(Sender: TObject);
var valorOleo: real;
begin
/// PLANILHA DE CUSTO, GERA PAPEL

Screen.Cursor:=crhourglass;
   Gauge1.Progress:=0;
//Zera Table RCustoKm

//      ShowMessage(IntToStr(MesAtual)+' / ' + InttoStr(AnoAtual));
      With LimpaDb do
          begin
               Close;
               Sql.Clear;
               Sql.Add('delete from tb_RCustoKm where Tck_coligada=:coligada');
               Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
//               Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
//               Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
               ExecSQL;
               Close;
          end;
   //   ShowMessage('Apagou');

// Caucula Pre�o m�dio do Oleo Diesel
      With QrPublica do
          begin
               Close;
               Sql.Clear;
               sql.Add('select avg(valorunitario) from Tprd A, TITMMOV B WHERE A.CodigoPrd in (''012.001.0001'',''012.001.0003'',''012.001.00001.1'')');
               //Sql.Add('select avg(valorunitario) from Tprd A, TITMMOV B WHERE A.CodigoPrd = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('TIT_CodCom').AsString));
               Sql.Add('and b.idprd = a.idprd');
               Sql.Add('And A.CodColigada = B.CodColigada and A.CodColigada = ' + QuotedStr(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString));
               Sql.Add('And (B.DataEmissao) >= ' + QuotedStr(DateToStr(EditDataPlaIni.Date)));
               Sql.Add('And (B.DataEmissao) <= ' + QuotedStr(DateToStr(EditDataPlaFim.Date)));
               memo1.text:=sql.Text;
               Open;
               ValorOleo := StrToFloat(Fields[0].Text);
               Close;
       end;


      With Relatorio.QrDadosCustoKm do
             Begin
                      Close;
                      Sql.Clear;                                                                // COALESCE ,0
                       Sql.Add('Select E.CodCCusto as Veiculo, Left(D.CodigoPRd,3) as Grupo, SUM(((c.ValorLiquido))) as valor from Tmov B, TitMmov C, Tprd D, GcCusto E, TTMV F');
                        Sql.Add('Where C.IdMov = B.IdMov');
                         Sql.Add('And F.CodTmv = B.CodTmv');
                          Sql.Add('And F.MarcaSaida = ' + QuotedStr('S'));
                            Sql.Add('and C.IdPrd = D.IdPrd and D.codColigada = b.CodColigada');
                             Sql.Add('And C.CodColigada = B.CodColigada');
                              Sql.Add('And F.CodColigada = C.CodColigada And E.CodColigada = C.CodColigada And B.CodCCusto = E.CodCCusto');
                               Sql.Add('And C.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                Sql.Add('And D.CodigoPrd like (left(D.CodigoPrd,3) + ' + QuotedStr('%')+')');
                                 Sql.Add('And (B.DataEmissao) >= ' + QuotedStr(DateToStr(EditDataPlaIni.Date)));
                                 Sql.Add('And (B.DataEmissao) <= ' + QuotedStr(DateToStr(EditDataPlaFim.Date)));
                                  Sql.Add('Group by E.CodCCusto, Left(D.CodigoPRd,3)');
                                   Sql.Add('order by E.CodCCusto, Left(D.CodigoPRd,3)');
                                    memo1.Lines.Add(sql.Text);
                      Open;
                      Gauge1.MaxValue:=RecordCount;
                      if not eof then
                             Begin
                                    First;
                                    Repeat
                                          begin
                                                Gauge1.Progress:=Gauge1.Progress+1;
                                                With QrVeiculos do
                                                     begin
                                                           Close;
                                                           Sql.Clear;
                                                           Sql.Add('Select Vei_nun, Vei_CentroCusto, Vei_Status, Vei_Coligada from tb_veiculos');
                                                           Sql.Add('where Vei_CentroCusto = ' + QuotedStr(Relatorio.QrDadosCustoKm.Fields[0].Text));
                                                           Sql.Add('And Vei_Status = ' + QuotedStr('1'));
                                                          // Memo2.Text:=sql.Text;
                                                           open;

                                                           if not eof then
                                                                 begin
                                                                       With QrCustoKm do
                                                                             begin
                                                                                    Close;
                                                                                    Sql.Clear;
                                                                                    Sql.Add('Select * from tb_RCustoKm');
                                                                                    //Sql.Add('where Tck_ano='+IntToStr(Anoatual) +' and Tck_mes='+IntToStr(mesAtual));
                                                                                    Sql.Add('Where TCK_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                    sql.add('and TCK_Vei = ' + QuotedStr(QrVeiculos.FieldByName('Vei_nun').AsString));
                                                                                    open;
                                                                                    if eof then
                                                                                          begin
                                                                                                DtCustoKm.DataSet.Insert;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_VEI').AsString:=QrVeiculos.FieldByName('Vei_nun').AsString;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
//                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Mes').AsInteger:=MesAtual;
//                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Ano').AsInteger:=AnoAtual;
                                                                                          end
                                                                                          else begin
                                                                                                DtCustoKm.DataSet.Edit;
                                                                                          end;
                                                                             end;
                                                                             // Grupo 001
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '001' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_001').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 002
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '002' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_002').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 003
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '003' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_003').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 004
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '004' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_004').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 005
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '005' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_005').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 006
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '006' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_006').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 007
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '007' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_007').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 008
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '008' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_008').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 009
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '009' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_009').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 010
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '010' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_010').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 011
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '011' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_011').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 013
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '013' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_013').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Insere o KM rodado
                                                                             if DtCustokm.DataSet.FieldByName('TCK_KM').AsInteger < 1 then
                                                                                     begin
                                                                                          With (QrKm as TADOquery) do
                                                                                                 begin
                                                                                                      If Active Then Close;
                                                                                                      Sql.Clear;
                                                                                                      Sql.Add('select cast(sum(Abast_Rodagem)As integer) as total, Sum(Abast_Combustivel) from Tb_CbMovAbast A, Tb_veiculos B');
                                                                                                      Sql.Add('Where (Abast_Data) >= ' + QuotedStr(DateToStr(EditDataPlaIni.Date)) + ' and (Abast_Data) <= ' + QuotedStr(DateToStr(EditDataPlaFim.Date)));
                                                                                                      Sql.Add('And Abast_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                                      Sql.Add('And A.Abast_vei = ' + QuotedStr(QrVeiculos.FieldByName('Vei_nun').AsString));
                                                                                                      Sql.Add('And B.Vei_nun = A.Abast_vei and B.Vei_Status = ' + QuotedStr('1'));
//                                                                                                      Sql.Add('Group by Abast_vei');
                                                                                                     // memo2.Text:=sql.Text;
                                                                                                      Open;
                                                                                                      if not eof then
                                                                                                          begin
                                                                                                               DtCustokm.DataSet.FieldByName('TCK_012').AsString:=FormatFloat('####0.0000',StrtoFloat(Fields[1].Value * ValorOleo));
                                                                                                               DtCustoKm.DataSet.FieldByName('TCK_KM').AsString:=Fields[0].Text;
                                                                                                          end
                                                                                                          else
                                                                                                          begin
                                                                                                              Showmessage('N�o h� registro de KM no periodo informado, verifique !!');
                                                                                                              Close;
                                                                                                          end;
//                                                                                                      KmRodados := IntToStr(Fields[0].Value);
//                                                                                                      QtVei     := IntToStr(Fields[1].Value);
                                                                                                 end;

                                                                                     end;
                                                                             if (DtCustoKm.DataSet.state = DsEdit) or (DtCustoKm.DataSet.state = DsInsert)  then
                                                                                   DtCustoKm.DataSet.post;

                                                           end;
                                                     end;
                                          end;
                                    next;
                                    Until eof;

                                 //   MessageBox(Handle,'Indicador de Custo por KM foi atualizado com sucesso!' ,'Atualizado !!',MB_IconInformation + MB_Ok);
                                     If RadioGroup1.ItemIndex = 0 then
                                          begin
                                              With Relatorio.QrCustoKm2 do
                                                   begin
                                                        Close;
//                                                        Sql.Clear;
                                                        Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
//                                                        Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
//                                                        Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
 //                                                        Sql.Add('select * from tb_RCustoKm A, Tb_veiculos B, Tb_VeiModCha C');
//                                                        Sql.Add('where B.Vei_nun = A.Tck_vei and C.Mod_Cod = B.Vei_ModCha');
//                                                        Sql.Add('ORDER BY B.Vei_ModCha, B.vei_nun');
                                                        Open;
                                                        Relatorio.Projeto.SetParam('Dt1',(DateToStr(EditDataPlaIni.Date)));
                                                        Relatorio.Projeto.SetParam('Dt2',(DateToStr(EditDataPlaFim.Date)));
                                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                        Relatorio.Projeto.ExecuteReport('RvCustoKm2');
                                                        Relatorio.Projeto.Close;
                                                   end;
                                          end
                                          else
                                          begin
                                              With Relatorio.QrCustoKm_ChaAno do
                                                   begin
                                                        Close;
                                                        Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
//                                                        Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
//                                                        Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
                                                        Open;
                                                        Relatorio.Projeto.SetParam('Dt1',(DateToStr(EditDataPlaIni.Date)));
                                                        Relatorio.Projeto.SetParam('Dt2',(DateToStr(EditDataPlaFim.Date)));
                                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                        Relatorio.Projeto.ExecuteReport('Rv_CustoKm_ChaAno');
                                                        Relatorio.Projeto.Close;
                                                   end;

                                          end;


                             End
                             else begin
                                    ShowMessage('N�o h� dados para gera��o do Relat�rio');
                             end;
             End;

Screen.Cursor:=crDefault;

end;

procedure TFormRelatorioCustoKM.Image3Click(Sender: TObject);
begin
//memo2.Visible:=true;
end;

procedure TFormRelatorioCustoKM.SpeedButton1Click(Sender: TObject);
var valorOleo: real;
begin
 MessageBox(Handle,'Esse n�o � um relat�rio, � o mecanismo de alimenta��o do Indicador de Custo por KM, n�o h� sa�da de dados!' ,'Aten��o !!',MB_IconInformation + MB_Ok);

Screen.Cursor:=crhourglass;
   Gauge1.Progress:=0;
//Zera Table RCustoKm

      AnoAtual:=YearOf(DateTimePicker1.Date);
      MesAtual:=MonthOf(DateTimePicker1.Date);
//      ShowMessage(IntToStr(MesAtual)+' / ' + InttoStr(AnoAtual));
      With LimpaDb do
          begin
               Close;
               Sql.Clear;
               Sql.Add('delete from tb_RCustoKm_KPI where Tck_mes=:mes and tck_Ano=:ano and Tck_coligada=:coligada');
               Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
               Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
               Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
               ExecSQL;
               Close;
          end;
   //   ShowMessage('Apagou');

// Caucula Pre�o m�dio do Oleo Diesel
      With QrPublica do
          begin
               Close;
               Sql.Clear;
               sql.Add('select avg(valorunitario) from Tprd A, TITMMOV B WHERE A.CodigoPrd in (''012.001.0001'',''012.001.0003'')');
               //Sql.Add('select avg(valorunitario) from Tprd A, TITMMOV B WHERE A.CodigoPrd = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('TIT_CodCom').AsString));
               Sql.Add('and b.idprd = a.idprd');
               Sql.Add('And A.CodColigada = B.CodColigada and A.CodColigada = ' + QuotedStr(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString));
               Sql.Add('And month(B.DataEmissao) = ' + IntToStr(MesAtual));
               sql.Add('And year(B.DataEmissao) = ' + IntToStr(AnoAtual));
              // memo2.text:=sql.Text;
               Open;
               ValorOleo := StrToFloat(Fields[0].Text);
               Close;
       end;


      With Relatorio.QrDadosCustoKm do
             Begin
                      Close;
                      Sql.Clear;                                                                // COALESCE ,0
                       Sql.Add('Select E.CodCCusto as Veiculo, Left(D.CodigoPRd,3) as Grupo, SUM(((c.ValorLiquido))) as valor from Tmov B, TitMmov C, Tprd D, GcCusto E, TTMV F');
                        Sql.Add('Where C.IdMov = B.IdMov');
                         Sql.Add('And F.CodTmv = B.CodTmv');
                          Sql.Add('And F.MarcaSaida = ' + QuotedStr('S'));
                            Sql.Add('and C.IdPrd = D.IdPrd and D.codColigada = b.CodColigada');
                             Sql.Add('And C.CodColigada = B.CodColigada');
                              Sql.Add('And F.CodColigada = C.CodColigada And E.CodColigada = C.CodColigada And B.CodCCusto = E.CodCCusto');
                               Sql.Add('And C.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                Sql.Add('And D.CodigoPrd like (left(D.CodigoPrd,3) + ' + QuotedStr('%')+')');
                                 Sql.Add('And Month(B.DataMovimento) = ' + QuotedStr(IntToStr(MesAtual)) + ' And year(B.DataMovimento) = ' + QuotedStr(IntToStr(AnoAtual)));
                                  Sql.Add('Group by E.CodCCusto, Left(D.CodigoPRd,3)');
                                   Sql.Add('order by E.CodCCusto, Left(D.CodigoPRd,3)');
                                    //memo2.Text:=sql.Text;
                      Open;
                      Gauge1.MaxValue:=RecordCount;
                      if not eof then
                             Begin
                                    First;
                                    Repeat
                                          begin
                                                Gauge1.Progress:=Gauge1.Progress+1;
                                                With QrVeiculos do
                                                     begin
                                                           Close;
                                                           Sql.Clear;
                                                           Sql.Add('Select Vei_nun, Vei_CentroCusto, Vei_Status, Vei_Coligada from tb_veiculos');
                                                           Sql.Add('where Vei_CentroCusto = ' + QuotedStr(Relatorio.QrDadosCustoKm.Fields[0].Text));
                                                           Sql.Add('And Vei_Status = ' + QuotedStr('1'));
                                                          // Memo2.Text:=sql.Text;
                                                           open;

                                                           if not eof then
                                                                 begin
                                                                       With QrCustoKm do
                                                                             begin
                                                                                    Close;
                                                                                    Sql.Clear;
                                                                                    Sql.Add('Select * from tb_RCustoKm_KPI');
                                                                                    Sql.Add('where Tck_ano='+IntToStr(Anoatual) +' and Tck_mes='+IntToStr(mesAtual));
                                                                                    Sql.Add('And TCK_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                    sql.add('and TCK_Vei = ' + QuotedStr(QrVeiculos.FieldByName('Vei_nun').AsString));
                                                                                    open;
                                                                                    if eof then
                                                                                          begin
                                                                                                DtCustoKm.DataSet.Insert;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_VEI').AsString:=QrVeiculos.FieldByName('Vei_nun').AsString;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Mes').AsInteger:=MesAtual;
                                                                                                DtCustoKm.DataSet.FieldByName('TCK_Ano').AsInteger:=AnoAtual;
                                                                                          end
                                                                                          else begin
                                                                                                DtCustoKm.DataSet.Edit;
                                                                                          end;
                                                                             end;
                                                                             // Grupo 001
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '001' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_001').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 002
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '002' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_002').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 003
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '003' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_003').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 004
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '004' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_004').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 005
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '005' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_005').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 006
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '006' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_006').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 007
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '007' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_007').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 008
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '008' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_008').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 009
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '009' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_009').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 010
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '010' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_010').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 011
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '011' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_011').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Grupo 013
                                                                             if DtDadosCustoKm.DataSet.FieldByName('Grupo').AsString = '013' then
                                                                                       DtCustoKm.DataSet.FieldByName('TCK_013').AsString:=DtDadosCustoKm.DataSet.FieldByName('valor').AsString;
                                                                             // Insere o KM rodado
                                                                             if DtCustokm.DataSet.FieldByName('TCK_KM').AsInteger < 1 then
                                                                                     begin
                                                                                          With (QrKm as TADOquery) do
                                                                                                 begin
                                                                                                      If Active Then Close;
                                                                                                      Sql.Clear;
                                                                                                      Sql.Add('select cast(sum(Abast_Rodagem)As integer) as total, Sum(Abast_Combustivel) from Tb_CbMovAbast A, Tb_veiculos B');
                                                                                                      Sql.Add('Where MOnth(Abast_Data) = ' + QuotedStr(IntToStr(MesAtual)) + ' and Year(Abast_Data) = ' + QuotedStr(IntToStr(AnoAtual)));
                                                                                                      Sql.Add('And Abast_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                                                                                      Sql.Add('And A.Abast_vei = ' + QuotedStr(QrVeiculos.FieldByName('Vei_nun').AsString));
                                                                                                      Sql.Add('And B.Vei_nun = A.Abast_vei and B.Vei_Status = ' + QuotedStr('1'));
//                                                                                                      Sql.Add('Group by Abast_vei');
                                                                                                     // memo2.Text:=sql.Text;
                                                                                                      Open;
                                                                                                      if not eof then
                                                                                                          begin
                                                                                                               DtCustokm.DataSet.FieldByName('TCK_012').AsString:=FormatFloat('####0.0000',StrtoFloat(Fields[1].Value * ValorOleo));
                                                                                                               DtCustoKm.DataSet.FieldByName('TCK_KM').AsString:=Fields[0].Text;
                                                                                                          end
                                                                                                          else
                                                                                                          begin
                                                                                                              Showmessage('N�o h� registro de KM no periodo informado, verifique !!');
                                                                                                              Close;
                                                                                                          end;
//                                                                                                      KmRodados := IntToStr(Fields[0].Value);
//                                                                                                      QtVei     := IntToStr(Fields[1].Value);
                                                                                                 end;

                                                                                     end;
                                                                             if (DtCustoKm.DataSet.state = DsEdit) or (DtCustoKm.DataSet.state = DsInsert)  then
                                                                                   DtCustoKm.DataSet.post;

                                                           end;
                                                     end;
                                          end;
                                    next;
                                    Until eof;

                                    MessageBox(Handle,'Indicador de Custo por KM foi atualizado com sucesso!' ,'Atualizado !!',MB_IconInformation + MB_Ok);
//                                     If RadioGroup1.ItemIndex = 0 then
//                                          begin
//                                              With Relatorio.QrCustoKm2 do
//                                                   begin
//                                                        Close;
////                                                        Sql.Clear;
//                                                        Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
//                                                        Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
//                                                        Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
// //                                                        Sql.Add('select * from tb_RCustoKm A, Tb_veiculos B, Tb_VeiModCha C');
////                                                        Sql.Add('where B.Vei_nun = A.Tck_vei and C.Mod_Cod = B.Vei_ModCha');
////                                                        Sql.Add('ORDER BY B.Vei_ModCha, B.vei_nun');
//                                                        Open;
//                                                        Relatorio.Projeto.SetParam('Dt1',IntToStr(MesAtual)+'/'+IntToStr(AnoAtual));
//                                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
//                                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
//                                                        Relatorio.Projeto.ExecuteReport('RvCustoKm2');
//                                                        Relatorio.Projeto.Close;
//                                                   end;
//                                          end
//                                          else
//                                          begin
//                                              With Relatorio.QrCustoKm_ChaAno do
//                                                   begin
//                                                        Close;
//                                                        Parameters.ParamByName('coligada').value:=(DtColigada.dataset.fieldbyname('Cod_Coligada').AsString);
//                                                        Parameters.ParamByName('Mes').value:=IntToStr(MesAtual);
//                                                        Parameters.ParamByName('Ano').value:=IntToStr(AnoAtual);
//                                                        Open;
//                                                        Relatorio.Projeto.SetParam('Dt1',IntToStr(MesAtual)+'/'+IntToStr(AnoAtual));
//                                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
//                                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
//                                                        Relatorio.Projeto.ExecuteReport('Rv_CustoKm_ChaAno');
//                                                        Relatorio.Projeto.Close;
//                                                   end;
//
//                                          end;


                             End
                             else begin
                                    ShowMessage('N�o h� dados para gera��o do Relat�rio');
                             end;
             End;

Screen.Cursor:=crDefault;
end;

procedure TFormRelatorioCustoKM.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
