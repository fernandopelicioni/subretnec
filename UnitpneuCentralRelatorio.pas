unit UnitpneuCentralRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Buttons, RvLdCompiler;

type
  TFormPneuCentralRelatorio = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Dtmarcas: TDataSource;
    DtMedidas: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DtPnDesenho: TDataSource;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DtColigada: TDataSource;
    Label6: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    CbRef: TDBLookupComboBox;
    Label9: TLabel;
    CBBorRef: TDBLookupComboBox;
    Label10: TLabel;
    TabSheet4: TTabSheet;
    Label11: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox10: TDBLookupComboBox;
    Label13: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    Label14: TLabel;
    TabSheet5: TTabSheet;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    RadioGroup1: TRadioGroup;
    TabSheet9: TTabSheet;
    Label15: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    DBLookupComboBox14: TDBLookupComboBox;
    Label17: TLabel;
    SpeedButton5: TSpeedButton;
    DtVida: TDataSource;
    DBLookupComboBox15: TDBLookupComboBox;
    Label18: TLabel;
    CbDesRef: TDBLookupComboBox;
    Label19: TLabel;
    DtDesenhoRef: TDataSource;
    DtBorrachaRef: TDataSource;
    DTReformadora: TDataSource;
    RadioGroup2: TRadioGroup;
    SpeedButton6: TSpeedButton;
    Label20: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label21: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label22: TLabel;
    DBLookupComboBox16: TDBLookupComboBox;
    DBLookupComboBox17: TDBLookupComboBox;
    Label23: TLabel;
    SpeedButton7: TSpeedButton;
    RadioGroup3: TRadioGroup;
    SpeedButton8: TSpeedButton;
    DtModCha: TDataSource;
    DBLookupComboBox18: TDBLookupComboBox;
    Label24: TLabel;
    Label25: TLabel;
    DBLookupComboBox19: TDBLookupComboBox;
    DtModCar: TDataSource;
    Label26: TLabel;
    EditVei: TEdit;
    TabSheet10: TTabSheet;
    SpeedButton9: TSpeedButton;
    Label27: TLabel;
    TabSheet11: TTabSheet;
    Memo1: TMemo;
    TabSheet12: TTabSheet;
    Label28: TLabel;
    TabSheet13: TTabSheet;
    SpeedButton10: TSpeedButton;
    RadioInvPneu: TRadioGroup;
    Label29: TLabel;
    DbLookMarcaInvent: TDBLookupComboBox;
    Label30: TLabel;
    DbLookMedidaInvent: TDBLookupComboBox;
    DbLookDesenhoInvent: TDBLookupComboBox;
    Label31: TLabel;
    DBLookupComboBox20: TDBLookupComboBox;
    Label32: TLabel;
    DBLookupComboBox21: TDBLookupComboBox;
    Label33: TLabel;
    SpeedButton11: TSpeedButton;
    OrdemInstalados: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuCentralRelatorio: TFormPneuCentralRelatorio;

implementation
uses UnitServerPai, UnitRelatorio, UnitIniciaSistema, UtGeraPlanilha,
  UtRelatorio;
{$R *.dfm}

procedure TFormPneuCentralRelatorio.BitBtn1Click(Sender: TObject);
begin
close;
end;
procedure TFormPneuCentralRelatorio.FormActivate(Sender: TObject);
begin
//            DateTimePicker1.Date:=(Now-365);
            DateTimePicker1.Date:=(Now-30);
            DateTimePicker2.Date:=(Now);
            DtVida.DataSet.Open;
            Dtmarcas.DataSet.Open;
            DtMedidas.DataSet.Open;
            DtPnDesenho.DataSet.Open;
end;
procedure TFormPneuCentralRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
            Dtmarcas.DataSet.Close;
            DtMedidas.DataSet.Close;
            DtPnDesenho.DataSet.Close;
            Action:=cafree;
end;
procedure TFormPneuCentralRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_f11 then
    Memo1.Visible:=true;
end;

procedure TFormPneuCentralRelatorio.SpeedButton10Click(Sender: TObject);
begin

MessageBox(0, 'Usu�rio,'+#13+#10+''+#13+#10+'Este relat�rio baseia-se na situa��o atual, sendo assim, as datas informadas s�o indiferentes e n�o influenciam no resultado!', 'Informa��o', MB_ICONINFORMATION or MB_OK);
            Screen.Cursor:=CrHourGlass;
            With Relatorio.QrInvPneu do
                 Begin
                       Close;
                       Sql.Clear;
                       Sql.Add('select TCP_COD as CodigoPneu,	 TCP_FOG as Fogo,	 VEI.VEI_NUMERO as Veiculo,	 Marca.TPM_DES as Marcas,	Convert(varchar(10),Mov.PMOV_DTENT,103) as DtEntrada, Medida.TPM_DES as Medidas,');
                       Sql.Add('Desenho.TPD_DES as Desenhos, Vida.TPV_DES as Vidas,	 TCP_LOCAL as Local, (Ind.TIN_ODO - Mov.PMOV_KMENT) as KmParcial, Loc.TPL_DES as DesLocal	 from TB_PnPneus Pn');
                       Sql.Add('Join Tb_PnMarcas as Marca On Marca.Tpm_Cod = Pn.Tcp_Marca Join Tb_PnMedidas as Medida On Medida.Tpm_Cod = Pn.Tcp_Medida');
                       Sql.Add('Join Tb_PnDesenhos as Desenho On Desenho.Tpd_Cod = Pn.Tcp_Desenho Join TB_PNVIDA as Vida On Vida.TPV_COD = Pn.TCP_VIDA Left Join TB_PnMOV Mov On Mov.PMOV_PNEU = Pn.TCP_COD and Mov.PMOV_STATUS = ''A''');
                       sql.Add('Left Join TB_VEICULOS Vei On Vei.VEI_NUN = MOV.PMOV_VEI');
                       Sql.Add('Left Join TB_INDICEREVISAO Ind On Ind.TIN_VEI = Mov.PMOV_VEI');
                       Sql.Add('Left Join TB_PNLOCAL Loc On Loc.TPL_COD = Pn.TCP_LOCAL');
//                       sQL.Add('Join TB_PNVIDA as Vida On Vida.TPV_COD = Pn.TCP_VIDA');
                       Sql.Add('Where Pn.Tcp_Coligada = ' +   QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));

                       if DbLookMarcaInvent.KeyValue <> Null then
                             Sql.Add('and Marca.Tpm_Cod = ' + QuotedStr(DbLookMarcaInvent.KeyValue));
                       if DbLookMedidaInvent.KeyValue <> Null then
                             Sql.Add('and Medida.Tpm_Cod = ' + QuotedStr(DbLookMedidaInvent.KeyValue));
                       if DbLookDesenhoInvent.KeyValue <> Null then
                             Sql.Add('and Desenho.Tpd_Cod = ' + QuotedStr(DbLookDesenhoInvent.KeyValue));

                       case RadioInvPneu.ItemIndex of
                            0 : Sql.Add('And Pn.Tcp_Local = ''A''');
                            1 : Sql.Add('And Pn.Tcp_Local = ''C''');
                            2 : Sql.Add('And Pn.Tcp_Local = ''E''');
                            3 : Sql.Add('And Pn.Tcp_Local = ''F''');
                            4 : Sql.Add('And Pn.Tcp_Local = ''I''');
                            5 : Sql.Add('And Pn.Tcp_Local = ''M''');
                            6 : Sql.Add('And Pn.Tcp_Local = ''S''');
                            7 : Sql.Add('And Pn.Tcp_Local = ''T''');

                       end;

                       Sql.Add('Order by Local, Fogo');
                       Memo1.Text:=sql.Text;
                       Open;
                       if Not Eof then
                             begin
                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RV_InvPneu');
//                                        Relatorio.Projeto.Close;
                             end
                             else
                             begin
                                        ShowMessage('N�o h� dados para gera��o de Relat�rios');
                             end;




                 End;

                 Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCentralRelatorio.SpeedButton11Click(Sender: TObject);
begin
      Application.CreateForm(TFormGeraPlanilha,FormGeraPlanilha);
//      FormGeraPlanilha.Query.SQL:=Relatorio2.QrAbastDias.SQL;

        with FormGeraPlanilha.Query do
              begin
                            Close;
                            Sql.Clear;
                            sql.Add('select A.Vei_Numero As Veiculo, mar.TPM_des as Marca,');
                            sql.Add('(select SUM(MM.PMOV_KMROD) from TB_PNMOV MM where MM.PMOV_PNEU = B.PMOV_PNEU and MM.PMOV_DTSAI is not null and MM.PMOV_VIDA = b.pmov_vida)     as KMJaRodado,');
                            sql.Add('B.Pmov_Posicao as Pos, C.Tcp_Fog as Fogo, B.Pmov_KmEnt as Entrada, (D.Tin_Odo - B.Pmov_KmEnt) as Rod, convert(varchar(10),B.Pmov_DtEnt,103) as DtEntrada,');
                            sql.Add('(isnull((select SUM(MM.PMOV_KMROD) from TB_PNMOV MM where MM.PMOV_PNEU = B.PMOV_PNEU and MM.PMOV_DTSAI is not null and MM.PMOV_VIDA = b.pmov_vida),0) +(D.Tin_Odo - B.Pmov_KmEnt)) as RodTotal, E.Tpv_des as Vida');
                            sql.Add('from tb_Veiculos A');
                            sql.Add('Left Join Tb_PnMov B On B.Pmov_Vei = A.Vei_nun And B.Pmov_Status = ''A''');
                            sql.Add('Join Tb_PnPneus C On C.Tcp_Cod = B.Pmov_Pneu');
                            sql.Add('Left Join Tb_IndiceRevisao D On D.Tin_Vei = A.Vei_Nun');
                            sql.Add('Join Tb_PnVida E on E.Tpv_Cod = B.Pmov_Vida');
                            sql.Add('join TB_PNMARCAS mar on mar.TPM_COD = C.TCP_MARCA');
                             Sql.Add('Where A.Vei_Coligada = '+ QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             if DBLookupComboBox18.KeyValue <> null then Sql.Add('And Vei_ModCha = ' + QuotedStr(DBLookupComboBox18.KeyValue));
                             if DBLookupComboBox19.KeyValue <> null then Sql.Add('And Vei_CarmOD = ' + QuotedStr(DBLookupComboBox19.KeyValue));
                             if EditVei.Text <> '' then Sql.Add('And Vei_Numero = ' + QuotedStr(EditVei.Text));
                             case OrdemInstalados.ItemIndex of
                               0 : Sql.Add('Order By Marca, Vida');
                               1 : Sql.Add('Order By Veiculo, Pos');
                               2 : Sql.Add('Order By Vida, RodTotal');
                               3 : Sql.Add('Order By RodTotal');
                             end;


                             Memo1.Text:=sql.Text;
                             Open;
                            if Not Eof then
                                        begin
                                           FormGeraPlanilha.SaveDialog.Title := 'Exportar a Microsoft Excel...';
                                           FormGeraPlanilha.SaveDialog.Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
                                           FormGeraPlanilha.SaveDialog.FilterIndex := 1;
                                           FormGeraPlanilha.SaveDialog.DefaultExt := '*.xlsx';
                                           if FormGeraPlanilha.SaveDialog.Execute Then
                                           begin
                                             FormGeraPlanilha.ExpAbast1.FileName := FormGeraPlanilha.SaveDialog.FileName;
                                             FormGeraPlanilha.ExpAbast1.Grid := FormGeraPlanilha.DbAbast;
                                             FormGeraPlanilha.ExpAbast1.ExportGrid;
                                           end;

                                  end
                                  ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                      close;



              end;

end;

procedure TFormPneuCentralRelatorio.SpeedButton1Click(Sender: TObject);
begin
            Screen.Cursor:=CrHourGlass;
            With Relatorio.QrPneuCusto1 do
                 Begin
                       Close;
                       Sql.Clear;
//                       Sql.Add('select A.Tpm_des as Marca,D.Tpm_Des as Medidas, E.Tpd_Des as Desenho, B.Tcp_Fog As Fogo, avg(B.TCP_valor) as valor, sum(C.pmov_KmRod) as rodagem from Tb_PnMarcas A, Tb_PnPneus B, Tb_PnMov C, Tb_PnMedidas D, Tb_PnDesenhos E');
                       Sql.Add('select A.Tpm_des as Marca, D.Tpm_Des as Medidas, B.tcp_valor as valor, E.Tpd_Des as Desenho, B.Tcp_Fog As Fogo, (select sum(CC.pmov_KmRod) from TB_PNMOV Cc where Cc.PMOV_PNEU = B.TCP_COD and Cc.PMOV_VIDA = ''N'') as rodagem');
                       sql.Add('from  Tb_PnPneus B join TB_PNMARCAS A on B.Tcp_Marca = A.Tpm_Cod join  Tb_PnMov C on c.Pmov_Pneu  = B.Tcp_Cod  join Tb_PnMedidas D on D.Tpm_COd = B.Tcp_Medida join  Tb_PnDesenhos E on E.Tpd_Cod = B.Tcp_Desenho');
                       Sql.Add('where B.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_coligada').AsString));
                       Sql.Add('And C.Pmov_status = '  + QuotedStr('F'));

                       if DBLookupComboBox1.KeyValue <> NULL THEN
                                Sql.Add('And B.Tcp_marca = '   + QuotedStr(DBLookupComboBox1.KeyValue));
                       if DBLookupComboBox2.KeyValue <> NULL THEN
                                Sql.Add('And B.Tcp_medida = '  + QuotedStr(DBLookupComboBox2.KeyValue));
                       if DBLookupComboBox3.KeyValue <> NULL THEN
                                Sql.Add('And B.Tcp_Desenho = '
                                                        + QuotedStr(DBLookupComboBox3.KeyValue));
                       Sql.add('and C.Pmov_vida =    '  + QuotedStr('N'));
                       Sql.add('and B.Tcp_vida <>              '  + QuotedStr('N'));
                       Sql.Add('And B.Tcp_Coligada = '  + QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));
                       Sql.Add('And Pmov_DtSai >=    '  + QuotedStr(DateToStr(DateTimePicker1.date))
                                                        + ' and Pmov_DtSai <= ' + QuotedStr(DateToStr(DateTimePicker2.date)));
                       Sql.Add('Order by A.Tpm_Des, B.Tcp_Fog');
                       Memo1.Text:=Sql.Text;
                       Open;
                       if Not Eof then
                             begin
                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvPneuCustoKmNovo');
//                                        Relatorio.Projeto.Close;
                             end
                             else
                             begin
                                        ShowMessage('N�o h� dados para gera��o de Relat�rios');
                             end;
                 End;
                 Screen.Cursor:=CrDefault;
end;
procedure TFormPneuCentralRelatorio.SpeedButton2Click(Sender: TObject);
begin
            Screen.Cursor:=CrHourGlass;
            With Relatorio.QrPneuCusto2 do
                    begin

                          Close;
                          Sql.Clear;
                          Sql.Add('select');
                          Sql.Add('A.TCP_COD as ID,');
                          Sql.Add('A.Tcp_Fog As Fog,');
                          Sql.Add('A.TCP_VIDA,');
                          Sql.Add('D.TPM_DES as Marca,');
                          Sql.Add('E.TPD_DES as Desenho,');
                          Sql.Add('F.TPM_DES as Medida,');
                          Sql.Add('Sum(B.Pmov_kmRod) as TotalKm,');
                          Sql.Add('(Select sum(T.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV T Where T.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> T.PMOV_VIDA and T.PMOV_STATUS = ''F'') as TOTAL,');
                          Sql.Add('(Select sum(N.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV N             ');
                        	Sql.Add('Where N.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''N'' and N.PMOV_STATUS = ''F''');
                      		Sql.Add('and N.PMOV_VIDA = ''N'') as VidaN,');
                          Sql.Add('(Select sum(ref1.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV Ref1             ');
                          Sql.Add('Where ref1.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''1''');
                          Sql.Add('and ref1.PMOV_STATUS = ''F'' and ref1.PMOV_VIDA = ''1'') as Vida1,');
                          Sql.Add('(Select sum(ref2.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV Ref2');
                          Sql.Add('Where ref2.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''2''');
                          Sql.Add('and ref2.PMOV_STATUS = ''F'' and ref2.PMOV_VIDA = ''2'') as Vida2,');
                          Sql.Add('(Select sum(ref3.PMOV_KMROD) ');
                          Sql.Add(' from TB_PNMOV Ref3');
                          Sql.Add('Where ref3.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''3''');
                          Sql.Add('and ref3.PMOV_STATUS = ''F'' and ref3.PMOV_VIDA = ''3'') as Vida3, ');
                          Sql.Add('(Select sum(ref4.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV Ref4  ');
                          Sql.Add('Where ref4.PMOV_PNEU = A.TCP_COD  and A.TCP_VIDA <>''4''');
                          Sql.Add('and ref4.PMOV_STATUS = ''F'' and ref4.PMOV_VIDA = ''4'') as Vida4, ');
                          Sql.Add('(Select sum(ref5.PMOV_KMROD) ');
                          Sql.Add('from TB_PNMOV Ref5  ');
                          Sql.Add('Where ref5.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''5''');
                          Sql.Add('and ref5.PMOV_STATUS = ''F'' and ref5.PMOV_VIDA = ''5'') as Vida5,');
                          Sql.Add('(Select sum(ref6.PMOV_KMROD)');
                          Sql.Add('from TB_PNMOV Ref6 ');
                          Sql.Add('Where ref6.PMOV_PNEU = A.TCP_COD and A.TCP_VIDA <> ''6''');
                          Sql.Add('and ref6.PMOV_STATUS = ''F'' and ref6.PMOV_VIDA = ''6'') as Vida6');
                          Sql.Add('from');
                          Sql.Add('TB_PNPNEUS A, TB_PNMOV B, TB_PNMARCAS D, TB_PNDESENHOS E, TB_PNMEDIDAS F');
                          Sql.Add('Where');
                          Sql.Add('B.PMOV_PNEU = A.TCP_COD');
                          Sql.Add('and A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));
                          Sql.Add('and D.Tpm_Cod = A.Tcp_Marca');
                          Sql.Add('and E.Tpd_cod = A.Tcp_Desenho');
                          Sql.Add('and F.Tpm_cod = A.Tcp_Medida');
                          if DBLookupComboBox4.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_marca = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                          if DBLookupComboBox5.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_medida = ' + QuotedStr(DBLookupComboBox5.KeyValue));
                          if DBLookupComboBox6.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_Desenho = ' + QuotedStr(DBLookupComboBox6.KeyValue));

                          Sql.Add('Group By');
                          Sql.Add('  A.TCP_COD, A.Tcp_Fog,A.TCP_VIDA, D.TPM_DES, E.TPD_DES, F.TPM_DES');
                          Sql.Add('Order by D.TPM_DES, A.Tcp_Fog');
                          Open;
                          Memo1.Text:=sql.Text;



{




                          Sql.Add('A.TCP_COD as ID,');
                          Sql.Add(' A.Tcp_Fog As Fog,');
                          Sql.Add('D.TPM_DES as Marca,');
                          Sql.Add('E.TPD_DES as Desenho,');
                          Sql.Add('F.TPM_DES as Medida,');
                          Sql.Add(' Sum(B.Pmov_kmRod) as TotalKM,');
                          Sql.Add(' (Select sum(N.PMOV_KMROD)    from TB_PNMOV N   Where N.PMOV_PNEU    = A.TCP_COD and N.PMOV_STATUS    = ''F'' and N.PMOV_VIDA    = ''N'') as VidaN,');
                          Sql.Add('(Select sum(ref1.PMOV_KMROD) from TB_PNMOV Ref1 Where ref1.PMOV_PNEU = A.TCP_COD and ref1.PMOV_STATUS = ''F'' and ref1.PMOV_VIDA = ''1'') as Vida1,');
                          Sql.Add('(Select sum(ref2.PMOV_KMROD) from TB_PNMOV Ref2 Where ref2.PMOV_PNEU = A.TCP_COD and ref2.PMOV_STATUS = ''F'' and ref2.PMOV_VIDA = ''2'') as Vida2,');
                          Sql.Add('(Select sum(ref3.PMOV_KMROD) from TB_PNMOV Ref3 Where ref3.PMOV_PNEU = A.TCP_COD and ref3.PMOV_STATUS = ''F'' and ref3.PMOV_VIDA = ''3'') as Vida3,');
                          Sql.Add('(Select sum(ref4.PMOV_KMROD) from TB_PNMOV Ref4 Where ref4.PMOV_PNEU = A.TCP_COD and ref4.PMOV_STATUS = ''F'' and ref4.PMOV_VIDA = ''4'') as Vida4,');
                          Sql.Add('(Select sum(ref5.PMOV_KMROD) from TB_PNMOV Ref5 Where ref5.PMOV_PNEU = A.TCP_COD and ref5.PMOV_STATUS = ''F'' and ref5.PMOV_VIDA = ''5'') as Vida5,');
                          Sql.Add('(Select sum(ref6.PMOV_KMROD) from TB_PNMOV Ref6 Where ref6.PMOV_PNEU = A.TCP_COD and ref6.PMOV_STATUS = ''F'' and ref6.PMOV_VIDA = ''6'') as Vida6');
                          Sql.Add('from');
                          Sql.Add('   TB_PNPNEUS A, TB_PNMOV B, TB_PNMARCAS D, TB_PNDESENHOS E, TB_PNMEDIDAS F');
                          Sql.Add('Where');
                          Sql.Add('B.PMOV_PNEU = A.TCP_COD');
                          Sql.Add('and A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));
                          Sql.Add('and D.Tpm_Cod = A.Tcp_Marca');
                          Sql.Add('and E.Tpd_cod = A.Tcp_Desenho');
                          Sql.Add('and F.Tpm_cod = A.Tcp_Medida');
                          if DBLookupComboBox4.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_marca = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                          if DBLookupComboBox5.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_medida = ' + QuotedStr(DBLookupComboBox5.KeyValue));
                          if DBLookupComboBox6.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_Desenho = ' + QuotedStr(DBLookupComboBox6.KeyValue));

                          Sql.Add('Group By');
                          Sql.Add('  A.TCP_COD, A.Tcp_Fog, D.TPM_DES, E.TPD_DES, F.TPM_DES');
                          Sql.Add('Order by D.TPM_DES, A.Tcp_Fog');
                    //       memo1.Text:=sql.Text;
                          Open;


                        {  Sql.Add('select A.Tcp_Fog As Fog, D.Tpm_Des as Marca, E.Tpd_Des As Desenho, F.Tpm_des as Medida, Sum(C.Pmov_KmRod) as Rod, Avg(A.Tcp_valor) as Valor, Sum(B.Rmov_Valor) as Ref from tb_PnMov C');
                          Sql.Add('Left Join Tb_PnRefMov   B On B.Rmov_Pneu = C.Pmov_Pneu and B.Rmov_NovaVida <> B.Rmov_Vida and C.Pmov_MotRet = '+QuotedStr('F')+' and B.Rmov_Vida = C.Pmov_Vida');
                          Sql.Add('Left Join Tb_PnPneus    A On C.Pmov_Pneu = A.Tcp_Cod and C.Pmov_Status = ' + QuotedStr('F'));
                          Sql.Add('Left Join Tb_PnMarcas   D On D.Tpm_Cod = A.Tcp_Marca');
                          Sql.Add('Left Join Tb_PnDesenhos E On E.Tpd_cod = A.Tcp_Desenho');
                          Sql.Add('Left Join Tb_PnMedidas  F On F.Tpm_cod = A.Tcp_Medida');
                          Sql.Add('Where A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));
                          if DBLookupComboBox4.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_marca = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                          if DBLookupComboBox5.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_medida = ' + QuotedStr(DBLookupComboBox5.KeyValue));
                          if DBLookupComboBox6.KeyValue <> NULL THEN
                                  Sql.Add('And A.Tcp_Desenho = ' + QuotedStr(DBLookupComboBox6.KeyValue));
                          Sql.Add('Group By A.Tcp_Fog, D.Tpm_Des, E.Tpd_Des, F.Tpm_Des order by fog');
//                          Sql.Add('select D.Tpm_Des As Marca, E.Tpm_des as Medida, F.Tpd_Des, A.Tcp_Fog As pneu, count(*) As Qt, avg(A.Tcp_Valor) As ValorNovo, avg(B.Rmov_valor) AsValorRef, Sum(C.Pmov_kmRod) As Rodagem, Count(distinct(C.Pmov_Vida)) as QtVidas');
//                          Sql.Add('from Tb_PnPneus A, Tb_PnRefMov B, Tb_PnMov C, Tb_PnMArcas D, Tb_PnMedidas E, Tb_PnDesenhos F');
//                          Sql.Add('where b.Rmov_Pneu = A.Tcp_Cod');
//                          Sql.Add('And A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_coligada').AsString));
//                          Sql.Add('And C.Pmov_Pneu = A.Tcp_Cod');
//                          if DBLookupComboBox4.KeyValue <> NULL THEN
//                                  Sql.Add('And A.Tcp_marca = ' + QuotedStr(DBLookupComboBox4.KeyValue));
//                          if DBLookupComboBox5.KeyValue <> NULL THEN
//                                  Sql.Add('And A.Tcp_medida = ' + QuotedStr(DBLookupComboBox5.KeyValue));
//                          if DBLookupComboBox6.KeyValue <> NULL THEN
//                                  Sql.Add('And A.Tcp_Desenho = ' + QuotedStr(DBLookupComboBox6.KeyValue));
//                          Sql.Add('And A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_Coligada').AsString));
//                          sql.Add('And D.Tpm_Cod = A.Tcp_Marca And E.Tpm_Cod = A.Tcp_Medida And F.Tpd_Cod = A.Tcp_desenho');
//                          Sql.Add('group by D.Tpm_Des, E.Tpm_des, F.Tpd_des, A.tcp_fog');
//                          Sql.Add('order by D.Tpm_Des, E.Tpm_des, A.tcp_fog');
                          memo1.Text:=sql.Text;
                          Open;       }


                          if Not Eof then
                                  begin
                                      //  Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                      //  Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvPneuVidasTotal');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        ShowMessage('N�o H� Dados p/ Gera��o de Relat�rios');
                                  end;
            end;
            Screen.Cursor:=CrDefault;

end;
procedure TFormPneuCentralRelatorio.SpeedButton3Click(Sender: TObject);
begin
        Screen.Cursor:=crHourGlass;
        if DBLookupComboBox15.KeyValue = Null then
        begin
            MessageBox(0, 'Voc� precisa informar uma vida para a emiss�o deste Relat�rio', 'Aten��o', MB_ICONINFORMATION or MB_OK);
            abort;
        end;

        With Relatorio.QrPneuRef1 do
              Begin
                      Close;
                      Sql.Clear;
                      Sql.Add('SELECT PN.TCP_FOG FOGO, REF.TPR_DES REFORMADORA,  MAR.TPM_DES AS MARCA, MED.TPM_DES MEDIDA, DES.TPD_DES DESENHO, MREF.RMOV_VALOR valor,  SUM(M.PMOV_KMROD) rodagem, MREF.RMOV_VALOR / SUM(M.PMOV_KMROD) AS MEDIA FROM TB_PNREFMOV MREF');
                      Sql.Add('JOIN TB_PNREFORMADORA REF ON REF.TPR_COD = MREF.RMOV_REF');
                      SQL.Add('JOIN TB_PNPNEUS PN ON PN.TCP_COD = MREF.RMOV_PNEU AND PN.TCP_COLIGADA = MREF.RMOV_COLIGADA ');
                      SQL.Add('JOIN TB_PNMOV M ON M.PMOV_PNEU = MREF.RMOV_PNEU AND M.PMOV_COLIGADA = MREF.RMOV_COLIGADA AND M.PMOV_VIDA = MREF.RMOV_NOVAVIDA AND RMOV_DTREF < M.PMOV_DTENT ');
                      SQL.Add('JOIN TB_PNMARCAS MAR ON MAR.TPM_COD = PN.TCP_MARCA JOIN TB_PNMEDIDAS MED ON MED.TPM_COD = PN.TCP_MEDIDA JOIN TB_PNDESENHOS DES ON DES.TPD_COD = PN.TCP_DESENHO');
                      SQL.Add('WHERE ');
                      SQL.Add('m.PMOV_DTSAI >=:DATAI AND M.PMOV_DTSAI <=:DATAF');
                      SQL.Add('and (pn.TCP_VIDA <> MREF.RMOV_NOVAVIDA or TCP_STATUS in (''S'',''T'',''F'', ''V'',''X'',''Z'')) ');


                      Sql.Add('and Pmov_vida = '+ QuotedStr(DtVida.DataSet.FieldByName('Tpv_Cod').AsString))        ;

                      // REFORMADORA
                      if CBRef.KeyValue <> null then
                              Sql.Add('And MREF.Rmov_Ref = ' + QuotedStr(CBRef.KeyValue));
                      //borracha reforma
                      if CBBorRef.KeyValue <> null then
                              Sql.Add('And MREF.Rmov_BorRef = ' + QuotedStr(CBBorRef.KeyValue));
                      // marca
                      if DBLookupComboBox21.KeyValue <> null then
                              Sql.Add('And mar.TPM_COD = ' + QuotedStr(DBLookupComboBox21.KeyValue));
                      // Medida
                      if DBLookupComboBox20.KeyValue <> null then
                              Sql.Add('And med.TPM_COD = ' + QuotedStr(DBLookupComboBox20.KeyValue));
                       // reformadora
                       if CBDesRef.KeyValue <> null then
                              Sql.Add('And DES.TPD_COD = ' + QuotedStr(CBDesRef.KeyValue));

                      Sql.Add('and M.Pmov_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
//                      Sql.Add('and C.Rmov_NovaVida = '+ QuotedStr(DtVida.DataSet.FieldByName('Tpv_Cod').AsString) + ' and C.RMov_Vida <> C.Rmov_NovaVida');
                      sql.Add('and PMOV_KMROD>0');
                      SQL.Add('GROUP BY PN.TCP_FOG,REF.TPR_DES, MAR.TPM_DES, MED.TPM_DES, DES.TPD_DES, MREF.RMOV_VALOR ORDER BY REFORMADORA, MARCA, MEDIDA, DESENHO, FOGO');
                   //   Parameters.ParamByName('VIDA').Value:=DBLookupComboBox15.KeyValue;
                      Parameters.ParamByName('DATAI').Value:=DateTimePicker1.Date;
                      Parameters.ParamByName('DATAF').Value:=DateTimePicker2.Date;

                      MEMO1.Text:=SQL.Text;
                      Open;
                      if Not Eof then
                             Begin
                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        if DBLookupComboBox15.KeyValue <> null then
                                                  Relatorio.Projeto.SetParam('VidaRef',DtVida.DataSet.FieldByName('Tpv_Des').AsString)
                                                  else
                                                  Relatorio.Projeto.SetParam('Vidaref','Todos');
                                        if CBDesRef.KeyValue <> null then
                                                  Relatorio.Projeto.SetParam('DesenhoRef',DtDesenhoRef.DataSet.FieldByName('Rdes_Des').AsString)
                                                  else
                                                  Relatorio.Projeto.SetParam('DesenhoRef','Todos');
                                        if CBBorRef.KeyValue <> null then
                                                  Relatorio.Projeto.SetParam('BorrachaRef',DtBorrachaRef.DataSet.FieldByName('TpTb_Des').AsString)
                                                  else
                                                  Relatorio.Projeto.SetParam('BorrachaRef','Todos');
                                        Relatorio.Projeto.ExecuteReport('RvPneuReformado1');
//                                        Relatorio.Projeto.Close;
                             End
                             else
                             MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
              End;
        Screen.Cursor:=crDefault;

end;
procedure TFormPneuCentralRelatorio.SpeedButton4Click(Sender: TObject);
begin
               With Relatorio.QrPneuNovo do
                      Begin
                           Close;
                           Sql.Clear;
                           Sql.Add('Select C.Tpm_des as Marca ,D.Tpm_Des as Medidas, E.Tpd_Des as Desenho, sum(B.TCP_valor) as valor, sum(A.pmov_KmRod) as rodagem, (Sum(B.Tcp_Valor) /Sum(A.Pmov_KmRod)) from Tb_PnMov A');
                           Sql.Add('Join  Tb_PnPneus As B On B.Tcp_Cod = A.Pmov_Pneu');
                           Sql.Add('Join  Tb_PnMarcas as C On C.Tpm_Cod = B.Tcp_Marca');
                           Sql.Add('Join  Tb_PnMedidas as D On D.Tpm_Cod = B.Tcp_Medida');
                           Sql.Add('Join  Tb_PnDesenhos as E On E.Tpd_Cod = B.Tcp_Desenho');
                           Sql.Add('Left  Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Vida = A.Pmov_Vida And R.Rmov_Status = '+QuotedStr('F'));
                           Sql.Add('Left  Join Tb_PnMotRet As M on M.Tmrp_Cod = A.Pmov_MotRet and M.Tmrp_Status <> ' +quotedStr('1'));
                           Sql.Add('where A.Pmov_Vida = '  + QuotedStr('N') + ' and A.Pmov_status = ' + QuotedStr('F'));
                           Sql.Add('And B.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                           Sql.Add('And A.Pmov_DtSai >= '  + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and A.Pmov_DtSai <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                           Sql.Add('Group by C.Tpm_Des, D.Tpm_Des ,E.Tpd_Des');
                           Sql.Add('Order by C.Tpm_Des, D.Tpm_Des ,E.Tpd_Des');
                           Open;
                      End;
end;

procedure TFormPneuCentralRelatorio.SpeedButton5Click(Sender: TObject);
begin
             Screen.Cursor:=CrHourGlass;
             With Relatorio.QrCadastroPneu do
                      Begin
                             Close;
                             Sql.Clear;
                             Sql.Add('Select Tcp_Fog As Fog, Tcp_Serie as Serie, Tcp_Valor as Valor, B.Tpm_Des As Marca, C.Tpd_Des As Desenho, D.Tpm_Des As Medida');
                             Sql.Add('From Tb_PnPneus A Join Tb_PnMarcas B On B.Tpm_Cod = A.Tcp_Marca Join Tb_PnDesenhos C On C.Tpd_Cod = A.Tcp_Desenho');
                             Sql.Add('Left Join Tb_PnMov E On E.Pmov_Pneu = A.Tcp_Cod ');
                             Sql.Add('Join Tb_PnMedidas D On D.Tpm_Cod = A.Tcp_Medida');
                             Sql.Add('Where Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             Sql.Add('And Tcp_Vida = ' + QuotedStr('N'));
                             if RadioGroup1.ItemIndex = 1 then Sql.Add('And Tcp_Local = ' + QuotedStr('E'));
                             if RadioGroup1.ItemIndex = 2 then Sql.Add('And Tcp_Local = ' + QuotedStr('I'));
                             if RadioGroup1.ItemIndex = 0 then Sql.Add('And E.Pmov_DtEnt is Null');

                             if DBLookupComboBox12.KeyValue <> null then Sql.Add('And Tcp_Marca = ' + QuotedStr(DBLookupComboBox12.KeyValue));
                             if DBLookupComboBox13.KeyValue <> null then Sql.Add('And Tcp_Medida = ' + QuotedStr(DBLookupComboBox13.KeyValue));
                             if DBLookupComboBox14.KeyValue <> null then Sql.Add('And Tcp_Desenho = ' + QuotedStr(DBLookupComboBox14.KeyValue));
                             Sql.Add('Order By Tcp_Fog');
                             Memo1.Text:=sql.Text;
                             Open;
                             if Not Eof then
                                  begin
//                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
//                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('TITULORELATORIO','Pneus Novos');
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvCadastroPneu');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
                                  end;
                      End;
                      Screen.Cursor:=CrDefault;
end;

procedure TFormPneuCentralRelatorio.SpeedButton6Click(Sender: TObject);
begin
           Screen.Cursor:=CrHourGlass;
           With Relatorio.QrCadastroPnRef do
                     begin
                             Close;
                             Sql.Clear;
                             Sql.Add('select A.Tcp_Fog as Fogo, D.Tpm_des as Marca, E.Tpd_des as Desenho, F.Tpm_Des as Medida, G.Rdes_Des As DesenhoRef,');
                             Sql.Add('B.Rmov_DtRef as DtRef, B.Rmov_Valor as Valor, H.Tpv_Des as Vida, I.Tpr_des as Ref from tb_PnPneus A');
                             Sql.Add('Left Join Tb_PnRefMov B On B.Rmov_pneu = A.Tcp_Cod and B.Rmov_Sit = '+QuotedStr('1')+' and B.Rmov_Vida <> B.Rmov_NovaVida and B.Rmov_NovaVida = A.Tcp_Vida');
                             Sql.Add('Join Tb_PnMarcas D On D.Tpm_Cod = A.Tcp_marca');
                             Sql.Add('Join Tb_PnDesenhos E On E.Tpd_Cod = A.Tcp_Desenho');
                             Sql.Add('Join Tb_PnMedidas F On F.Tpm_Cod = A.Tcp_Medida');
                             Sql.Add('Left Join Tb_PnRefDesenho G On G.Rdes_Cod = B.Rmov_DesRef');
                             Sql.Add('Left Join Tb_PnVida H On H.Tpv_Cod = B.Rmov_NovaVida');
                             Sql.Add('Left Join Tb_PnReformadora I On I.Tpr_Cod = B.Rmov_Ref');
//                             Sql.Add('Where B.Rmov_Cod = (Select Max(Rmov_Cod) From Tb_PnRefMov C Where C.Rmov_Pneu = A.Tcp_Cod)');
                             Sql.Add('Where A.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             Sql.Add('And Tcp_Vida  <> ' + QuotedStr('N'));
                             if RadioGroup2.ItemIndex = 0 then Sql.Add('And Tcp_Local = ' + QuotedStr('E'));
                             if RadioGroup2.ItemIndex = 1 then Sql.Add('And Tcp_Local = ' + QuotedStr('I'));
                             if DBLookupComboBox7.KeyValue <> null then Sql.Add('And Tcp_Marca = ' + QuotedStr(DBLookupComboBox7.KeyValue));
                             if DBLookupComboBox8.KeyValue <> null then Sql.Add('And Tcp_Medida = ' + QuotedStr(DBLookupComboBox8.KeyValue));
                             if DBLookupComboBox16.KeyValue <> null then Sql.Add('And Tcp_Desenho = ' + QuotedStr(DBLookupComboBox16.KeyValue));
//                             if DBLookupComboBox17.KeyValue <> null then Sql.Add('And Tcp_Vida = ' + QuotedStr(DBLookupComboBox17.KeyValue));
                             Sql.Add('Order By Fogo');
                             memo1.Text:=sql.Text;
                             Open;
                             if Not Eof then
                                  begin
//                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
//                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvCadastroPneuRef');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
                                  end;
                     end;
           Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCentralRelatorio.SpeedButton7Click(Sender: TObject);
begin
             Screen.Cursor:=CrHourGlass;
             With Relatorio.QrCadastroPneu do
                      Begin
                             Close;
                             Sql.Clear;
                             Sql.Add('Select Tcp_Fog As Fog, Tcp_Serie as Serie, Tcp_Valor as Valor, B.Tpm_Des As Marca, C.Tpd_Des As Desenho, D.Tpm_Des As Medida');
                             Sql.Add('From Tb_PnPneus A Join Tb_PnMarcas B On B.Tpm_Cod = A.Tcp_Marca Join Tb_PnDesenhos C On C.Tpd_Cod = A.Tcp_Desenho');
                             Sql.Add('Join Tb_PnMedidas D On D.Tpm_Cod = A.Tcp_Medida');
                             Sql.Add('Where Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
//                             Sql.Add('And Tcp_Local = ' + QuotedStr('A'));
                             if RadioGroup3.ItemIndex = 0 then Sql.Add('And Tcp_Local = ' + QuotedStr('A'));
                             if RadioGroup3.ItemIndex = 1 then Sql.Add('And Tcp_Local = ' + QuotedStr('F'));
//                             if DBLookupComboBox12.KeyValue <> null then Sql.Add('And Tcp_Marca = ' + QuotedStr(DBLookupComboBox12.KeyValue));
//                             if DBLookupComboBox13.KeyValue <> null then Sql.Add('And Tcp_Medida = ' + QuotedStr(DBLookupComboBox13.KeyValue));
//                             if DBLookupComboBox14.KeyValue <> null then Sql.Add('And Tcp_Desenho = ' + QuotedStr(DBLookupComboBox14.KeyValue));
                             Sql.Add('Order By Tcp_Fog');
//                             Memo1.Text:=sql.Text;
                             Open;
                             if Not Eof then
                                  begin
//                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                                        Relatorio.Projeto.SetParam('TITULORELATORIO','Pneus p/ Reformar');
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvCadastroPneu');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
                                  end;
                      End;
                      Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCentralRelatorio.SpeedButton8Click(Sender: TObject);
begin
          Screen.Cursor:=CrHourGlass;
          With Relatorio.QrVeiPn do
                      Begin
                             Close;
                             Sql.Clear;
                             sql.Add('select A.Vei_Numero As Veiculo, mar.TPM_des as Marca,');
                            sql.Add('(select SUM(MM.PMOV_KMROD) from TB_PNMOV MM where MM.PMOV_PNEU = B.PMOV_PNEU and MM.PMOV_DTSAI is not null and MM.PMOV_VIDA = b.pmov_vida)     as KMJaRodado,');
                            sql.Add('B.Pmov_Posicao as Pos, C.Tcp_Fog as Fogo, B.Pmov_KmEnt as Entrada, (D.Tin_Odo - B.Pmov_KmEnt) as Rod, convert(varchar(10),B.Pmov_DtEnt,103) as DtEntrada,');
                            sql.Add('(isnull((select SUM(MM.PMOV_KMROD) from TB_PNMOV MM where MM.PMOV_PNEU = B.PMOV_PNEU and MM.PMOV_DTSAI is not null and MM.PMOV_VIDA = b.pmov_vida),0) +(D.Tin_Odo - B.Pmov_KmEnt)) as RodTotal, E.Tpv_des as Vida');
                            sql.Add('from tb_Veiculos A');
                            sql.Add('Left Join Tb_PnMov B On B.Pmov_Vei = A.Vei_nun And B.Pmov_Status = ''A''');
                            sql.Add('Join Tb_PnPneus C On C.Tcp_Cod = B.Pmov_Pneu');
                            sql.Add('Left Join Tb_IndiceRevisao D On D.Tin_Vei = A.Vei_Nun');
                            sql.Add('Join Tb_PnVida E on E.Tpv_Cod = B.Pmov_Vida');
                            sql.Add('join TB_PNMARCAS mar on mar.TPM_COD = C.TCP_MARCA');

                              // SENTEN�A ANTERIOR SEM TOTALIZADOR DO PNEU E SEM MARCA
//                             Sql.Add('select A.Vei_Numero As Veiculo, B.Pmov_Posicao as Pos, C.Tcp_Fog as Fogo, B.Pmov_KmEnt as Entrada,');
//                             Sql.Add('(D.Tin_Odo - B.Pmov_KmEnt) as Rod, B.Pmov_DtEnt as DtEntrada, E.Tpv_des as Vida from tb_Veiculos A');
//                             Sql.Add('Left Join Tb_PnMov B On B.Pmov_Vei = A.Vei_nun And B.Pmov_Status = '+QuotedStr('A'));
//                             Sql.Add('Join Tb_PnPneus C On C.Tcp_Cod = B.Pmov_Pneu');
//                             Sql.Add('Left Join Tb_IndiceRevisao D On D.Tin_Vei = A.Vei_Nun');
//                             Sql.Add('Join Tb_PnVida E on E.Tpv_Cod = B.Pmov_Vida');
//                             Sql.Add('Where A.Vei_Coligada = '+ QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
//                             if DBLookupComboBox18.KeyValue <> null then Sql.Add('And Vei_ModCha = ' + QuotedStr(DBLookupComboBox18.KeyValue));
//                             if DBLookupComboBox19.KeyValue <> null then Sql.Add('And Vei_CarmOD = ' + QuotedStr(DBLookupComboBox19.KeyValue));
//                             if EditVei.Text <> '' then Sql.Add('And Vei_Numero = ' + QuotedStr(EditVei.Text));
//                             Sql.Add('Order By Veiculo, Pos');
//                             Memo1.Text:=sql.Text;
//                             Open;


                             Sql.Add('Where A.Vei_Coligada = '+ QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                             if DBLookupComboBox18.KeyValue <> null then Sql.Add('And Vei_ModCha = ' + QuotedStr(DBLookupComboBox18.KeyValue));
                             if DBLookupComboBox19.KeyValue <> null then Sql.Add('And Vei_CarmOD = ' + QuotedStr(DBLookupComboBox19.KeyValue));
                             if EditVei.Text <> '' then Sql.Add('And Vei_Numero = ' + QuotedStr(EditVei.Text));
                             case OrdemInstalados.ItemIndex of
                               0 : Sql.Add('Order By Marca, Vida');
                               1 : Sql.Add('Order By Veiculo, Pos');
                               2 : Sql.Add('Order By Vida, RodTotal');
                               3 : Sql.Add('Order By RodTotal');
                             end;
                             Memo1.Text:=sql.Text;
                             Open;

                             if Not Eof then
                                  begin
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvVeiPn');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
                                  end;
                      End;

          Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCentralRelatorio.SpeedButton9Click(Sender: TObject);
begin
             Screen.Cursor:=CrHourGlass;
             With Relatorio.QrCadastroPneu do
                      Begin
                             Close;
                             Sql.Clear;
                             Sql.Add('Select Tcp_Fog As Fog, Tcp_Serie as Serie, Tcp_Valor as Valor, B.Tpm_Des As Marca, C.Tpd_Des As Desenho, D.Tpm_Des As Medida');
                             Sql.Add('From Tb_PnPneus A Join Tb_PnMarcas B On B.Tpm_Cod = A.Tcp_Marca Join Tb_PnDesenhos C On C.Tpd_Cod = A.Tcp_Desenho');
                             Sql.Add('Join Tb_PnMedidas D On D.Tpm_Cod = A.Tcp_Medida');
                             Sql.Add('Where Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
//                             Sql.Add('And Tcp_Local = ' + QuotedStr('E'));
//                             if RadioGroup1.ItemIndex = 2 then Sql.Add('And Tcp_Local = ' + QuotedStr('I'));
                             if DBLookupComboBox12.KeyValue <> null then Sql.Add('And Tcp_Marca = ' + QuotedStr(DBLookupComboBox12.KeyValue));
                             if DBLookupComboBox13.KeyValue <> null then Sql.Add('And Tcp_Medida = ' + QuotedStr(DBLookupComboBox13.KeyValue));
                             if DBLookupComboBox14.KeyValue <> null then Sql.Add('And Tcp_Desenho = ' + QuotedStr(DBLookupComboBox14.KeyValue));
                             Sql.Add('Order By Tcp_Fog');
//                             Memo1.Text:=sql.Text;
                             Open;
                             if Not Eof then
                                  begin
//                                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
//                                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                                        Relatorio.Projeto.SetParam('TITULORELATORIO','Todos Pneus em Estoque');
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.ExecuteReport('RvCadastroPneu');
//                                        Relatorio.Projeto.Close;
                                  end
                                  Else
                                  begin
                                        MessageBox(0, 'N�o existem Dados para a emiss�o dos Relat�rio, altere os filtros e tente novamente!', 'Aten��o', MB_ICONWARNING or MB_OK);
                                  end;
                      End;
                      Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCentralRelatorio.TabSheet3Show(Sender: TObject);
begin
DtDesenhoRef.DataSet.Open;
DtBorrachaRef.DataSet.Open;
DTReformadora.DataSet.Open;
DtVida.DataSet.Open
end;

procedure TFormPneuCentralRelatorio.TabSheet6Show(Sender: TObject);
begin
DtModCha.DataSet.Open;
DtModCar.DataSet.Open;
end;

end.
