unit UnitDadosConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, pngimage, ExtCtrls, ImgList, GestureMgr,
  GestureCtrls, ComCtrls, DBCGrids, DB, ADODB, RpDefine, RpCon, MPlayer,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan, jpeg, System.Actions;

type
  TFormDadosConsultas = class(TForm)
    Image2: TImage;
    Timer1: TTimer;
    BalloonHint1: TBalloonHint;
    GestureManager1: TGestureManager;
    Image1: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Label3: TLabel;
    Image6: TImage;
    Label5: TLabel;
    Image7: TImage;
    Panel1: TPanel;
    DBText5: TDBText;
    Label7: TLabel;
    Panel2: TPanel;
    Image8: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Image9: TImage;
    Label10: TLabel;
    Image10: TImage;
    Label13: TLabel;
    Image11: TImage;
    Label11: TLabel;
    Label14: TLabel;
    dataehora: TLabel;
    Timer2: TTimer;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Image12: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    DtAviso: TDataSource;
    ActionManager1: TActionManager;
    AcShow: TAction;
    Image13: TImage;
    Image14: TImage;
    Label25: TLabel;
    Image15: TImage;
    Image3: TImage;
    Label23: TLabel;
    Label6: TLabel;
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure AcShowExecute(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDadosConsultas: TFormDadosConsultas;

implementation

uses UnitTerminalConsulta, UnitServerPai, UnitLancaInfoVeiculo, UnitInfoMedidas,
  UnitIniciaSistema, UnitInfoBaseRevisao, UnitInfoPrdUti, UnitInfoCarac,
  UnitInfoRev, UnitInfoPMC, UnitInfoAtendimento, UnitInfoManCorretivas,
  UnitRelatorio, UnitMostraGraficoCusto, UnitInfoGeraCusto, UnitInfoPneus, UnitOS,
  UnitInfoComponentes, UnitOsSenha, UtDadosListaSocorro;

{$R *.dfm}

procedure TFormDadosConsultas.AcShowExecute(Sender: TObject);
begin
ShowMessage('Funcionou');
end;

procedure TFormDadosConsultas.DBText2Click(Sender: TObject);
begin
hide;
end;

procedure TFormDadosConsultas.FormActivate(Sender: TObject);
begin
label13.Caption:='Vers�o : ' + FormIniciaSistema.EditVersao.Caption;
//DtAviso.DataSet.Open;
with pai.QrAviso do
    begin
        close;
        sql.Clear;
        sql.Add('select * from tb_CbAviso where tun_coligada = ' + quotedStr(FormTerminalConsulta.DtColigada.DataSet.FieldByName('cod_coligada').AsString));
        Open;
    end;
Dataehora.Caption:=DateTimeToStr(now);
end;

procedure TFormDadosConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtAviso.DataSet.close;
Action:=Cafree;
end;

procedure TFormDadosConsultas.FormShow(Sender: TObject);
begin
//if FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vsi_Cod').AsString = '1' then
//    Begin
//      Image1.Visible:=true;
//    End;
//if FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vsi_Cod').AsString = '2' then
//    Begin
//      Image4.Visible:=true;
//    End;

end;

procedure TFormDadosConsultas.Image10Click(Sender: TObject);
begin
        PAI.VOS_VEI:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
        PAI.VOS_VEICULO:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_numero').AsString;
        Application.CreateForm(TFormInfoListaSocorro,FormInfoListaSocorro);
        FormInfoListaSocorro.ShowModal;

end;

procedure TFormDadosConsultas.Image11Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoPrdUti, FormInfoPrdUti);
with formInfoPrdUti.QrMovPrd do
   begin
     Close;
     Sql.Clear;
     Sql.Add('Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CampoLivre3, A.CodColigada, B.CodColigada,  B.IdPrd, B.Quantidade, B.ValorLiquido, C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.CodVen1, C.Serie, C.CodCCusto');
     Sql.Add('from Tprd A, TitmMov B, TMov C');
     Sql.Add('where A.IdPrd = B.IdPrd and C.idMov = B.IdMov');
     Sql.Add('And B.CodColigada = A.CodColigada and C.CodColigada = B.CodColigada');
     Sql.Add('and A.CodigoPrd not like ' +QuotedStr('016%'));
     Sql.Add('And C.Serie = '+ QuotedStr('BE'));
//     Sql.Add('And A.CampoLivre3 = ' + QuotedStr('1'));
     Sql.Add('And C.CodCCusto = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_CentroCusto').AsString));
     Sql.Add('Order by C.DataMovimento Desc, A.NomeFantasia');
     Open;
    end;

FormInfoPrdUti.ShowModal;
end;

procedure TFormDadosConsultas.Image12Click(Sender: TObject);
begin
      beep;
      Application.CreateForm(TFormInfoGeraCusto,FormInfoGeraCusto);
      FormInfoGeraCusto.ShowModal;
{ /// Grafico
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
//                Sql.Add('And Abast_vei = ' + QuotedStr(FormTerminalConsulta.q
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
                              FormMostraGraficoCusto.BorderStyle:=bsNone;
                              FormMostraGraficoCusto.panel1.Visible:=true;
                              FormMostraGraficoCusto.ShowModal;

                 end
                 Else // Contrario de ter lancamento;
                 Begin
                   ShowMessage('N�o h� dados para gera��o do Relat�rio');
                 End;

        End;
Screen.Cursor:=CrDefault;

}
/// Fim
end;

procedure TFormDadosConsultas.Image13Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoPneus,FormInfoPneus);
FormInfoPneus.ShowModal;
end;

procedure TFormDadosConsultas.Image14Click(Sender: TObject);
begin
      PAI.VOS_VEI:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_nun').AsString;

      Application.CreateForm(TFormInfoComponentes,FormInfoComponentes);
      FormInfoComponentes.EditVei.Caption:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Numero').AsString;
      FormInfoComponentes.ShowModal;
end;

procedure TFormDadosConsultas.Image1Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoMedidas,FormInfoMedidas);
FormInfoMedidas.ShowModal;
end;

procedure TFormDadosConsultas.Image2Click(Sender: TObject);
begin
beep;
     With Pai.QrRevGer do
        begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Tb_RevGer');
        Sql.Add('Where TRG_Vei = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
  //      Sql.Add('And Rpr_Exec = ' + QuotedStr('S'));
        Open;
        end;
Application.CreateForm(TFormInfoRev,FormInfoRev);
FormInfoRev.ShowModal;

end;

procedure TFormDadosConsultas.Image3Click(Sender: TObject);
begin
FormDadosConsultas.Hide;
//FormTerminalConsulta.ShowModal;
end;

procedure TFormDadosConsultas.Image4Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoCarac,FormInfoCarac);
FormInfoCarac.Showmodal;
end;

procedure TFormDadosConsultas.Image5Click(Sender: TObject);
begin
Application.CreateForm(TFormOsSenha,FormOsSenha);
        FormOsSenha.Showmodal;
        if Pai.Vos_Autoriza <> 'S' then
        begin
                MessageBox(0, 'Sua senha n�o � valida', 'Senha n�o confere', MB_ICONSTOP or MB_OK);
                Abort;

        end;

if FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Tos_Status').AsString <> '' then
         begin
                MessageBox(0, 'Encontrei uma OS aberta/pendente'+#13+#10+''+#13+#10+'Ser� necess�rio fecha-la para abrir outra!', 'Ordem de Servi�o Aberta', MB_ICONINFORMATION or MB_OK);
                abort;
         end;

PAI.VOS_VEI:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
PAI.VOS_VEICULO:=FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('vei_numero').AsString;

           WITH PAI.QrListaMotivoOS DO
                BEGIN
                      Parameters.ParamByName('CODIGO').Value:='6';
                END;

Application.CreateForm(TFormOS,FormOS);
           FormOs.Editdata.Text:=DateToStr(now);
           FormOs.EditdataFinal.Text:=DateToStr(now);

FormOS.ShowModal;
end;

procedure TFormDadosConsultas.Image6Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoManCorretivas,FormInfoManCorretivas);
with FormInfoManCorretivas.QrPmc do
     begin
           Close;
           Sql.Clear;
           Sql.Add('Select * from Tb_CbPmc A, Tb_CbIteRec B');
           Sql.Add('where A.PMC_data > ' + QuotedStr(DatetoStr(now-240)));
           Sql.Add('And B.Tid_Cod = A.Pmc_Item');
           Sql.Add('And A.Pmc_Vei = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
           Sql.Add('And A.PMC_Status = ' + QuotedStr('F'));
           Sql.Add('Order By PMc_Data Desc');
           Open;
           end;
FormInfoManCorretivas.ShowModal;

end;

procedure TFormDadosConsultas.Image7Click(Sender: TObject);
begin
beep;
Application.CreateForm(tFormInfoBaseRevisao,FormInfoBaseRevisao);
FormInfoBaseRevisao.ShowModal;
end;

procedure TFormDadosConsultas.Image9Click(Sender: TObject);
begin
beep;
Application.CreateForm(TFormInfoPmc,FormInfoPmc);
with FormInfoPmc.QrPmc do
     begin
           Close;
           Sql.Clear;
           Sql.Add('Select * from Tb_CbPmc A, Tb_CbIteRec B');
           Sql.Add('where A.PMC_data > ' + QuotedStr(DatetoStr(now-60)));
           Sql.Add('And B.Tid_Cod = A.Pmc_Item');
           Sql.Add('And A.Pmc_Vei = ' + QuotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
           Sql.Add('And A.PMC_Status = ' + QuotedStr('A'));
           Sql.Add('Order By PMc_Data Desc');
           Open;
           end;
FormInfoPmc.ShowModal;
end;

procedure TFormDadosConsultas.Panel2Click(Sender: TObject);
begin
hide;
end;

procedure TFormDadosConsultas.Timer1Timer(Sender: TObject);
begin
hide;
//FormDadosConsultas.Close;
end;

procedure TFormDadosConsultas.Timer2Timer(Sender: TObject);
begin
Dataehora.Caption:='Agora s�o : ' + DateTimeToStr(now);
end;

end.
