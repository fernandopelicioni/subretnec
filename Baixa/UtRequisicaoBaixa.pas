unit UtRequisicaoBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, pngimage, ExtCtrls, DB, Buttons, Keyboard,
  ADODB, Grids, DBGrids, ImgList, System.ImageList;

type
  TFormRequisicaoBaixa = class(TForm)
    DtProduto: TDataSource;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DtCentroCusto: TDataSource;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    GroupBox3: TGroupBox;
    EDitPrd: TMaskEdit;
    Label1: TLabel;
    Executa: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    DBText1: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText7: TDBText;
    QrPrdEstoque: TADOQuery;
    Label8: TLabel;
    DBText8: TDBText;
    DtPRdEstoque: TDataSource;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText11: TDBText;
    GroupBox7: TGroupBox;
    EditPro: TMaskEdit;
    BtGrava: TBitBtn;
    Btcancel: TBitBtn;
    DBText12: TDBText;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DtCbPro: TDataSource;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBText13: TDBText;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label17: TLabel;
    QrTMov: TADOQuery;
    Label10: TLabel;
    EditPosicao: TMaskEdit;
    Label18: TLabel;
    EditQt: TEdit;
    TbPrdLoc: TADOTable;
    DtIntegra: TDataSource;
    GroupBox9: TGroupBox;
    DBText9: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DtCC: TDataSource;
    DtColigada: TDataSource;
    Label19: TLabel;
    Label20: TLabel;
    btTitMov: TBitBtn;
    DtTitMov: TDataSource;
    QrTemp: TADOQuery;
    DtMov: TDataSource;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DtPrdLoc: TDataSource;
    QrTTb: TADOQuery;
    DtTTb: TDataSource;
    GroupBox10: TGroupBox;
    Label15: TLabel;
    DBText10: TDBText;
    DBText19: TDBText;
    Label21: TLabel;
    DBText20: TDBText;
    BtTMov: TSpeedButton;
    BtTitMMovCompl: TBitBtn;
    QrTitMovCompl: TADOQuery;
    DtTitMovCompl: TDataSource;
    QrPrd: TADOQuery;
    QrPrdIdPrd: TIntegerField;
    QrPrdCodColigadaA: TSmallintField;
    QrPrdUltimoNivel: TSmallintField;
    QrPrdCodigoReduzido: TStringField;
    QrPrdNomeFantasia: TStringField;
    QrPrdUsuarioCriacao: TStringField;
    QrPrdDtCadastramento: TDateTimeField;
    QrPrdCodigoPRd: TStringField;
    QrPrdCodUndControle: TStringField;
    QrPrdIdPrd_1: TIntegerField;
    QrPrdPrateleira: TStringField;
    QrPrdGarantia: TStringField;
    QrPrdTpLocal: TStringField;
    QrPrdCodColigada: TSmallintField;
    QrPrdEstoqueIdPrd: TIntegerField;
    QrPrdEstoqueCodLoc: TStringField;
    QrPrdEstoqueCodColigada: TSmallintField;
    QrPrdEstoqueCodFilial: TSmallintField;
    QrPrdEstoqueSaldoFisico2: TBCDField;
    QrPrdEstoqueCustoMedio: TBCDField;
    QrPrdEstoqueCustoUnitario: TBCDField;
    QrPrdEstoqueCodLoc_1: TStringField;
    QrPrdEstoqueCodFilial_1: TSmallintField;
    QrPrdEstoqueNome: TStringField;
    QrTMovcodcoligada: TSmallintField;
    QrTMovIDMOV: TIntegerField;
    QrTMovCODFILIAL: TSmallintField;
    QrTMovCODLOC: TStringField;
    QrTMovCODLOCDESTINO: TStringField;
    QrTMovNUMEROMOV: TStringField;
    QrTMovSERIE: TStringField;
    QrTMovCODTMV: TStringField;
    QrTMovTIPO: TStringField;
    QrTMovSTATUS: TStringField;
    QrTMovMOVIMPRESSO: TSmallintField;
    QrTMovDATAEMISSAO: TDateTimeField;
    QrTMovVALORBRUTO: TBCDField;
    QrTMovVALORLIQUIDO: TBCDField;
    QrTMovVALOROUTROS: TBCDField;
    QrTMovCODMOEVALORLIQUIDO: TStringField;
    QrTMovDATAMOVIMENTO: TDateTimeField;
    QrTMovCODCFOAUX: TStringField;
    QrTMovCODCCUSTO: TStringField;
    QrTMovCODVEN1: TStringField;
    QrTMovCODUSUARIO: TStringField;
    QrTMovCODFILIALDESTINO: TSmallintField;
    QrTMovCODCOLCXA: TSmallintField;
    QrTMovCODEVENTO: TSmallintField;
    QrTMovSTATUSEXPORTCONT: TSmallintField;
    QrTMovCODLOTE: TIntegerField;
    QrTMovHORULTIMAALTERACAO: TDateTimeField;
    QrTMovINDUSOOBJ: TBCDField;
    QrTMovUSUARIOCRIACAO: TStringField;
    QrTMovDATACRIACAO: TDateTimeField;
    QrTMovVALORBRUTOINTERNO: TBCDField;
    QrTMovDATACONTABILIZACAO: TDateTimeField;
    QrTMovSEQUENCIALESTOQUE: TIntegerField;
    QrTMovINTEGRAAPLICACAO: TStringField;
    QrTMovDATALANCAMENTO: TDateTimeField;
    QrTMovDOCIMPRESSO: TSmallintField;
    QrTMovFATIMPRESSA: TSmallintField;
    QrTMovRECIBONFESTATUS: TStringField;
    QrTMovCODCOLCFOAUX: TSmallintField;
    QrTMovVRBASEINSSOUTRAEMPRESA: TBCDField;
    QrTMovINTEGRADOAUTOMACAO: TSmallintField;
    QrTMovFlagProcessado: TSmallintField;
    QrTMovCONTABILIZADOPORTOTAL: TSmallintField;
    EditCCusto: TEdit;
    QrAutoInc: TADOQuery;
    BtTmovCont: TBitBtn;
    QrTmovCont: TADOQuery;
    DtTmovCont: TDataSource;
    QrTmovCont2: TADOQuery;
    DtTmovCont2: TDataSource;
    BtClctLote: TBitBtn;
    DtClCtlote: TDataSource;
    QrClCtlote: TADOQuery;
    BtClote: TBitBtn;
    QrClote: TADOQuery;
    DtClote: TDataSource;
    TbPrd: TADOTable;
    DtPRd: TDataSource;
    DtUltMov: TDataSource;
    QrUltMov: TADOQuery;
    QrAtualizaPrd: TADOQuery;
    QrPrdSaldoGeralFisico: TBCDField;
    QrPrdSaldoGeralFinanc: TBCDField;
    DtVwOSAberta: TDataSource;
    ImageList1: TImageList;
    Timer2: TTimer;
    Q: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecutaClick(Sender: TObject);
    procedure EDitPrdKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditQtKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure EditProKeyPress(Sender: TObject; var Key: Char);
    procedure BtGravaClick(Sender: TObject);
    procedure btTitMovClick(Sender: TObject);
    procedure BtcancelClick(Sender: TObject);
    procedure BtTMovClick(Sender: TObject);
    procedure BtTitMMovComplClick(Sender: TObject);
    procedure EditCCustoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCCustoEnter(Sender: TObject);
    procedure EDitPrdEnter(Sender: TObject);
    procedure EditQtEnter(Sender: TObject);
    procedure EditQtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtTmovContClick(Sender: TObject);
    procedure BtClctLoteClick(Sender: TObject);
    procedure BtCloteClick(Sender: TObject);
    procedure GridMovEnter(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    PROCEDURE EXEC_PRD;
    PROCEDURE EXEC_QTD;
    PROCEDURE EXEC_VEI;
    PROCEDURE EXEC_RESP;
    PROCEDURE EXEC_GRAVA;
//    Procedure GravaTitMov(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations } VdataAtual:tdate;
  end;

var
  FormRequisicaoBaixa: TFormRequisicaoBaixa;
  Quantidade : integer;
  DtMovimento : Tdate;
  ValorProduto : Double;
  GrupodaPeca:string[3];
  UltSeqEst,UltimoIdMov,numeroMov, UltimoIdMovCont, ULTIMOLCTREF : integer;
  Debito,credito:string;
  VCodigoPrd:String;
implementation

uses UnitServerPai,  Principal;



{$R *.dfm}
PROCEDURE TFORMREQUISICAOBAIXA.EXEC_GRAVA;
begin
Screen.Cursor:=CrHourGlass;
            BtTmov.Click;
            BtTitMov.Click;
            BtCancel.Click;
Screen.Cursor:=CrDefault;
QrPrdEstoque.Close;
Close;

end;

PROCEDURE TFormRequisicaoBaixa.EXEC_PRD;
begin
if EditPrd.Text <> '' then
     Begin
       // Caso seja coletur, busca prd com base nos 5 caractestes finais
        if pai.QrColigadas.FieldByName('cod_coligada').AsInteger =4 then
            begin
                   with q do begin
                        close;
                        Sql. clear;
                        Sql.Add('select CodigoPrd from Tprd where codigoprd like ' + QuotedStr('%' + EditPrd.Text));
                        open;
                        if not eof then
                              begin
                                   if RecordCount > 1 then
                                       begin
                                             ShowMessage('H� mais de um produto com esse ID final, por seguran�a, n�o irei continuar');
                                             Abort;
                                       end;
                                       VCodigoPrd:=Fieldbyname('codigoprd').AsString;
                              end;

                   end;

            end
            else
            VCodigoPrd:=EditPrd.Text;


       With QrPrd do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('Select A.IdPrd, A.SaldoGeralFisico, A.SaldoGeralFinanc, A.CodColigada AS CodColigadaA, A.UltimoNivel, A.CodigoReduzido, A.NomeFantasia, A.UsuarioCriacao, A.DtCadastramento, A.CodigoPRd, A.CodUndControle, B.IdPrd, B.Prateleira, B.Garantia,');
            Sql.Add('B.TpLocal, B.CodColigada  From Tprd A, TprdCompl B');
//            Sql.Add('Select * from TPRD A, TPRDCompl B');
            Sql.Add('Where A.IDPrd = B.IDPrd');
            Sql.Add('and UltimoNivel = 1 And A.CodColigada = B.CodColigada');
            Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
            Sql.Add('And A.CodigoPrd = ' + QuotedStr(Vcodigoprd));
            Open;
            end;
      With QrPrdEstoque do
        Begin
             Close;
              Sql.Clear;
              Sql.Add('select A.IdPrd, A.CodLoc, A.CodColigada, A.CodFilial, A.SaldoFisico2, A.CustoMedio, A.CustoUnitario, B.CodLoc, B.CodFilial, B.Nome');
               Sql.Add('From TprdLoc A, Tloc B');
 //              Sql.Add('Select * from TPRDLoc A, TLoc B');
                 Sql.Add('Where B.CodLoc = A.CodLoc');
                  Sql.Add('And A.CodColigada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                   Sql.Add('And A.CodLoc = ' + QuotedStr('01.001'));
                    Sql.Add('And A.IdPrd = ' + QuotedStr(DtProduto.DataSet.FieldByName('IDPRd').AsString));
                     Open;

           if eof then
           Begin
                 MessageBox(Handle,'N�o h� estoque do Produto Selecionado Nesta data','Saldo Indispon�vel',Mb_IconInformation + Mb_Ok);
           End
           ELSE
           Begin
                  if (QrPrdEstoque.FieldByName('saldofisico2').AsFloat < 0) or (QrPrdEstoque.FieldByName('CustoUnitario').AsFloat < 0) then
                       begin
                             ShowMessage('Encontrei Problemas em potencial com este Item, Verifique se h� Valores negativos nas quantidades ou nos valores, contate o suporte TOTVS');
                             BitBtn2.Click;
                       end
                       else
                       begin
                             GroupBox5.Enabled:=true;
                       end;
          End;

       End;

     End;

end;
PROCEDURE TFormRequisicaoBaixa.EXEC_QTD;
begin
    if StrToInt(EditQt.Text) > 0 then
     Begin
         GroupBox1.Enabled:=true;
         if DtPrdEstoque.DataSet.FieldByName('SaldoFisico2').AsInteger >= StrToInt(EditQt.Text) then
           begin
              // DtCentroCusto.DataSet.Open; // abre tabela de veiculos X C Custos
               Quantidade:=StrToInt(EditQt.Text);
           end
           else Begin
             MessageBox(Handle,'O quantidade informada para Retirada � Maior que o Saldo Em estoque, Voc� n�o pode continuar !','Saldo Insuficiente',Mb_IconInformation+Mb_Ok);
             EditQt.Text:='';
           End;
      End
     else begin
       GroupBox1.Enabled:=false;
       MessageBox(Handle,'O valor informado � inv�lido','Aten��o',mb_IconInformation+ MB_Ok);
     end;

end;

PROCEDURE TFormRequisicaoBaixa.EXEC_VEI;
begin
    With Pai.QrVeiculosCompletos do
       Begin
             Close;
             Sql.clear;
             Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D, TB_VeiSistema E, Tb_PadVeic G');
             Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod and E.Vsi_Cod = A.Vei_Vsi and G.Pad_Cod = A.Vei_Padrao');
             Sql.Add('And A.Vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
             Sql.Add('and A.Vei_Nun = D.Tin_Vei');
             Sql.Add('And A.Vei_Numero = ' + QuotedStr(EditCCusto.Text));
             Sql.Add('And A.Vei_Status <> ' + QuotedStr('5'));
             open;
             if not eof then
                    begin
                         Grupodapeca:=copy(VcodigoPrd,1,3);
                         With  Pai.QrCC Do
                               begin   //
                                    Close;
                                    Sql.Clear;
                                    Sql.Add('Select * from Tb_CbCC');
                                    Sql.Add('Where Tcc_Vsi = ' + DtCentroCusto.DataSet.FieldByName('Vei_Vsi').AsString);
                                    Sql.Add('And Tcc_MasGrupo = ' + QuotedStr(GrupoDaPeca));
                                    Open;
                                    if eof then
                                            begin //
                                                   MessageBox(Handle,'N�o h� parametriza��o de Classifica��o Contabil para este Sistema de Ve�culo, Avise a Contabilidade','Erro de Classifica��o Contabil',Mb_IconInformation+Mb_Ok);
                                            end  //
                                            else //
                                            begin //
                                                 with QrTTb do
                                                      begin   //
                                                           Close;
                                                           Sql.Clear;
                                                           Sql.Add('select * from TTb1 where codcoligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
                                                           Sql.Add('And CodTb1fat = ' + quotedStr(DtCC.DataSet.FieldByName('Tcc_CodCC').AsString));
                                                           Open;
                                                       end; //
                                            GroupBox2.Visible:=true;
                                            GroupBox10.Visible:=true;
                                            GroupBox7.Enabled:=true;
                                            end; //
                                end; //
                    end
                    else
                    begin
                          // Faz o contrario caso nao encontre o veiculo digitado
                             MessageBox(Handle,'O Centro de Custo / Ve�culo informado n�o existe, informe um nome v�lido','Centro de Custo Inv�lido',Mb_IconInformation+Mb_Ok);
                             EditCCusto.Text:='';
                    end;
        end;




end;

PROCEDURE TFormRequisicaoBaixa.EXEC_RESP;
begin
  // NAO PRECISA ABRIR, JA QUE FOI TESTADO NA CRIACAO
end;



procedure TFormRequisicaoBaixa.FormActivate(Sender: TObject);
begin
DtMovimento:=Vdataatual;
label19.Caption:=DateToStr(DtMovimento);
//DtIntegra.DataSet.Open;
WITH PAI.QrIntegra do
Begin
  close;
  Sql.Clear;
  Sql.Add('select * from tb_cbIntegra where tit_coligada = ' + dtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
  Open;
End;
top :=0;
Left :=0;
Width := Screen.Width;
Height := Screen.Height;
//Image1.Align:= AlClient;
Timer1Timer(Nil);
label3.Caption:=DateToStr(now);
//DtCentroCusto.DataSet.Open;
//DtCbPro.DataSet.Open;
Timer2Timer(nil);
//EditPrd.SetFocus;

end;

procedure TFormRequisicaoBaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtTitMovCompl.DataSet.cancel;
DtUltMov.DataSet.Close;
DtTitMov.DataSet.cancel;
DtMov.DataSet.cancel;
DtTmovCont.DataSet.cancel;
DtTmovCont2.DataSet.cancel;
DtClote.DataSet.Cancel;
DtClCtLote.DataSet.Cancel;
DtPrdLoc.DataSet.Cancel; // Cancela alguma altera��o no saldo caso n�o seja efetuada a confirma��o
DtCC.DataSet.Close;
DtClCtLote.DataSet.Close;
QrAutoInc.Close;
DtTmovCont.DataSet.Close;
DtTitMovCompl.DataSet.Close;
DtClote.DataSet.Close;
Dtmov.DataSet.Close;
DtIntegra.DataSet.Close;
DtPrdLoc.DataSet.Close;
DtCbPro.DataSet.Close;
DtPRdEstoque.DataSet.Close;
DtCentroCusto.DataSet.Close;
DtProduto.DataSet.Close;
DtTTb.Dataset.Close;
DtTitMov.DataSet.Close;
QrAtualizaPrd.Close;
Action:=cafree;
end;

procedure TFormRequisicaoBaixa.FormCreate(Sender: TObject);
begin
         if Pai.QrColigadas.FieldByName('cod_coligada').Asinteger < 4 then
                 EDitPrd.EditMask:='000\.000\.0000;_'
                 else
                 EditPrd.EditMask:='00000\.0';
WITH PAI.QrIntegra do
Begin
  close;
  Sql.Clear;
  Sql.Add('select * from tb_cbIntegra where tit_coligada = ' + dtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
  Open;
End;

end;

procedure TFormRequisicaoBaixa.GridMovEnter(Sender: TObject);
begin
//EditQt.SetFocus;
end;

procedure TFormRequisicaoBaixa.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
    key:=#0;
//    DBLookupComboBox1.SetFocus;

  end;

end;

procedure TFormRequisicaoBaixa.SpeedButton2Click(Sender: TObject);
begin
if EditCCusto.Text = '' then
  Begin
    ShowMessage('Voc� precisa Escolher um Centro de Custo V�lido');
    GroupBox2.Visible:=False;
    GroupBox10.Visible:=False;
    EditCCusto.text:='';
    GroupBox7.Enabled:=false;
//    EditCCusto.SetFocus;
    End
    Else begin
    With Pai.QrVeiculosCompletos do
       Begin
             Close;
             Sql.clear;
             Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D, TB_VeiSistema E, Tb_PadVeic G');
             Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod and E.Vsi_Cod = A.Vei_Vsi and G.Pad_Cod = A.Vei_Padrao');
             Sql.Add('And A.Vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
             Sql.Add('and A.Vei_Nun = D.Tin_Vei');
             Sql.Add('And A.Vei_Numero = ' + QuotedStr(EditCCusto.Text));
             Sql.Add('And A.Vei_Status <> ' + QuotedStr('5'));
             open;
             if not eof then
                    begin
                         Grupodapeca:=copy(VcodigoPrd,1,3);
                         With  Pai.QrCC Do
                               begin   //
                                    Close;
                                    Sql.Clear;
                                    Sql.Add('Select * from Tb_CbCC');
                                    Sql.Add('Where Tcc_Vsi = ' + DtCentroCusto.DataSet.FieldByName('Vei_Vsi').AsString);
                                    Sql.Add('And Tcc_MasGrupo = ' + QuotedStr(GrupoDaPeca));
                                    Open;
                                    if eof then
                                            begin //
                                                   MessageBox(Handle,'N�o h� parametriza��o de Classifica��o Contabil para este Sistema de Ve�culo, Avise a Contabilidade','Erro de Classifica��o Contabil',Mb_IconInformation+Mb_Ok);
                                            end  //
                                            else //
                                            begin //
                                                 with QrTTb do
                                                      begin   //
                                                           Close;
                                                           Sql.Clear;
                                                           Sql.Add('select * from TTb1 where codcoligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
                                                           Sql.Add('And CodTb1fat = ' + quotedStr(DtCC.DataSet.FieldByName('Tcc_CodCC').AsString));
                                                           Open;
                                                       end; //
                                            GroupBox2.Visible:=true;
                                            GroupBox10.Visible:=true;
                                            GroupBox7.Enabled:=true;
//                                            EditPro.SetFocus;
                                            end; //
                                end; //
                    end
                    else
                    begin
                          // Faz o contrario caso nao encontre o veiculo digitado
                             MessageBox(Handle,'O Centro de Custo / Ve�culo informado n�o existe, informe um nome v�lido','Centro de Custo Inv�lido',Mb_IconInformation+Mb_Ok);
                             EditCCusto.Text:='';
                    end;
        end;
      End;
  end;

procedure TFormRequisicaoBaixa.SpeedButton4Click(Sender: TObject);
begin
with pai.QrPro Do
  Begin
       Close;
       Sql.Clear;
       Sql.Add('Select CodColigada, Cargo, Nome, CodVen, Inativo from Tven');
       Sql.Add('where codColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
       Sql.Add('And CodVen = ' + QuotedStr(EditPro.Text));
       Open;
       if not eof then
            begin
                 DBText12.Visible:=true;
                 DBText13.Visible:=true;
                 BtGrava.Enabled:=true;
//                 BtGrava.SetFocus;
            End
            Else
            begin
                 DBText12.Visible:=false;
                 DBText13.Visible:=false;
                 MessageBox(Handle,'N�o h� Registro relacionado ao dado informado','Solicitante desconhecido',mb_IconInformation+Mb_Ok);
                 EditPro.Text:='';
//                 EditPro.SetFocus;
           end;
  End;
end;

procedure TFormRequisicaoBaixa.BtcancelClick(Sender: TObject);
begin
ULTSEQEST:=0;
EditCCusto.Text:='';
UltimoIdmov:=0;
DtMov.DataSet.Cancel;
DtPrdLoc.DataSet.Cancel; // Cancela alguma altera��o no saldo caso n�o seja efetuada a confirma��o
DtTitMovCompl.DataSet.cancel;
DtTitMov.DataSet.cancel;
DtMov.DataSet.cancel;
DtTmovCont.DataSet.cancel;
DtTmovCont2.DataSet.cancel;
DtClCtLote.DataSet.Cancel;
DtClote.DataSet.Cancel;


DtUltMov.DataSet.Close;
DtCentroCusto.DataSet.Close;
DtCC.DataSet.Close;
DtPrd.DataSet.Close;
DtMov.DataSet.Close;
DtProduto.DataSet.Close;
DtTitMov.DataSet.Close;
EditPro.text:='';
DBLookupComboBox1.KeyValue:=null;
DtTTb.Dataset.Close;
EditQt.Text:='';
EditPrd.Text:='';
// Fechando tabelas
With Pai.QrPrd do
     Begin
       Close;
     end;
With QrPrdEstoque do
     Begin
       Close;
     End;
with pai.QrPro Do
  Begin
    Close;
  End;
// Leva para o botao novo
GroupBox2.Visible:=false;
GroupBox7.Enabled:=false;
GroupBox1.Enabled:=false;
GroupBox5.Enabled:=false;

Screen.Cursor:=crdefault;
end;

procedure TFormRequisicaoBaixa.BtClctLoteClick(Sender: TObject);
begin



          with QrAutoInc do  // Captura ULTREF, pega o da tabela e acrescenta 1
                    Begin
                           Close;
                           Sql.Clear;
                           Sql.Add('Select * from GAutoInc');
                           Sql.Add('where CodAutoInc = ' + QuotedStr('LCTREF'));
                           Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                           Open;
                           UltimoLCTREF:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
                           Edit;
                           QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(UltimoLCTREF);
                           post;
                           close;
                   End;


             DtClCtlote.DataSet.Open;
             DtClCtlote.DataSet.Insert;
             DtClCtlote.DataSet.FieldByName('codcoligada').AsString          :=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
             DtClCtlote.DataSet.FieldByName('LctRef').AsString               :=intToStr(UltimoLctRef);
             DtClCtlote.DataSet.FieldByName('CodFilial').AsString            :='1';
             DtClCtlote.DataSet.FieldByName('Data').AsString                 :=DateToStr(DtMovimento);

                       With QrTemp do
                             begin
                                  close;
                                  Sql.Clear;
                                  Sql.Add('Select * from TTB1Cont');
                                  Sql.Add('where codcoligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                  Sql.Add('And CodTb1Fat = ' + QuotedStr(DtTTb.DataSet.FieldByName('CodTb1Fat').AsString));
                                  Sql.Add('And ClassConta = ' + QuotedStr('NESTOCAVEL')+ ' AND TIPO = ' + QuotedStr('1'));
                                  Open;
                                  if not eof then
                                          Debito := QrTemp.FieldByName('CodConta').AsString
                                          else
                                          Showmessage('Tabela de configura��o vazia');
                             end;
                        With QrTemp do
                             begin
                                  Close;
                                  Sql.Clear;
                                  Sql.Add('Select * from TTB1Cont');
                                  Sql.Add('where codcoligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                  Sql.Add('And CodTb1Fat = ' + QuotedStr(DtTTb.DataSet.FieldByName('CodTb1Fat').AsString));
                                  Sql.Add('And ClassConta = ' + QuotedStr('ESTOCAVEL')+ ' AND TIPO = ' + QuotedStr('2'));
                                  Open;
                                  if not eof then
                                         CREDITO := QrTemp.FieldByName('CodConta').AsString
                                  Else
                                         Showmessage('Tabela de configura��o vazia');
                            End;

             DtClCtlote.DataSet.FieldByName('Debito').AsString                    := Debito;
             DtClCtlote.DataSet.FieldByName('CREDITO').AsString                   := CREDITO;
             DtClCtlote.DataSet.FieldByName('valor').AsString                     := FormatFloat('#0.0000',ValorProduto);
             DtClCtLote.DataSet.FieldByName('CodHistP').AsString                  := DtIntegra.DataSet.FieldByName('Tit_CodHis').AsString;
             DtClCtLote.DataSet.FieldByName('Complemento').AsString               := 'Baixa dia : ' + DateToStr(DtMovimento);
             DtClCtLote.DataSet.FieldByName('IntegraAplicacao').AsString          := 'T';
             DtClCtLote.DataSet.FieldByName('VALOR2').AsString                    :='0';

             DtClCtLote.DataSet.FieldByName('IntegraChave').AsString              :=intToStr(UltimoIdMov);
             DtClCtLote.DataSet.FieldByName('CodLote').AsString                   :=DtIntegra.DataSet.FieldByName('Tit_CodEveCont').AsString;
             DtClCtLote.DataSet.FieldByName('CodCCusto').AsString                 :=  DtCentroCusto.DataSet.FieldByName('Vei_CentroCusto').AsString;
             DtClCtLote.DataSet.FieldByName('Documento').AsString                 :=  FormatFloat('000000',NumeroMov);
             DtClCtlote.DataSet.FieldByName('Data2').AsString                     :=DateToStr(DtMovimento);
//             DtClCtlote.DataSet.FieldByName('Usuario').AsString                   :=pai.QrUsuarios.FieldByName('USU_Login').AsString;
//             DtClCtlote.DataSet.FieldByName('UsuarioAlter').AsString              :=pai.QrUsuarios.FieldByName('USU_Login').AsString;
             DtClCtlote.DataSet.FieldByName('DataAlter').AsString                 :=DateToStr(DtMovimento);
             DtClCtlote.DataSet.FieldByName('DataInclu').AsString                 :=DateToStr(DtMovimento);
             DtClCtlote.DataSet.FieldByName('CodColCredito').AsString             :='0';
             DtClCtlote.DataSet.FieldByName('CodColDebito').AsString              :='0';
             DtClCtlote.DataSet.FieldByName('CodColPartida').AsString             :='0';
//             memo2.lines.Add(QrClCtlote.SQL.Text);

end;

procedure TFormRequisicaoBaixa.BtTmovContClick(Sender: TObject);
begin
//Grava TMOVCONT  1
{      with QrAutoInc do  // Captura ULTIMO ID MOV CONT, pega o da tabela e acrescenta 1
           Begin
                 Close;
                 Sql.Clear;
                 Sql.Add('Select * from GAutoInc');
                 Sql.Add('where CodAutoInc = ' + QuotedStr('IDMOVCONT'));
                 Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                 Open;

                 ULTIMOIDMOVCONT:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
                 Edit;
                 QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(ULTIMOIdMovCONT+1);
                 post;
                 close;
           End;
               DtTmovCont.DataSet.open;
               DtTmovCont.DataSet.Insert;
               DtTmovCont.DataSet.FieldByName('CodColigada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
               DtTmovCont.DataSet.FieldByName('IdMovCont').AsString:=IntToStr(ULTIMOIDMOVCONT);
               DtTmovCont.DataSet.FieldByName('IdMov').AsString:=IntToStr(ULTIMOIDMOV);
 //              DtTmovCont.DataSet.FieldByName('TIPO').AsString:='2';
               DtTmovCont.DataSet.FieldByName('CodColConta').AsString:='0';
               DtTmovCont.DataSet.FieldByName('CodConta').AsString:=Credito;
               DtTmovCont.DataSet.FieldByName('valor').AsString:=FormatFloat('#0.0000',valorProduto);
               DtTmovCont.DataSet.FieldByName('CodFilial').AsString:='1';// por enquanto
               if DtIntegra.DataSet.FieldByName('Tit_cCusto').AsString = 'S' then
                          DtTmovCont.DataSet.FieldByName('CodCCusto').AsString:=DtCentroCusto.DataSet.FieldByName('Vei_CentroCusto').AsString;
//                          else
//                          DtTmovCont.DataSet.FieldByName('CodCCusto').AsString:='null';
               DtTmovCont.DataSet.FieldByName('CodHistP').AsString:=DtIntegra.DataSet.FieldByName('Tit_CodHis').AsString;
               DtTmovCont.DataSet.FieldByName('ComplHistorico').AsString:='[MOV]';
               DtTmovCont.DataSet.FieldByName('CodLote').AsString:=DtIntegra.DataSet.FieldByName('Tit_CodEveCont').AsString;
               DtTmovCont.DataSet.FieldByName('LctRef').AsString:=intToStr(UltimoLctRef);
               DtTmovCont.DataSet.FieldByName('Ativo').AsString:='1';
               DtTmovCont.DataSet.FieldByName('CodColConta').AsString:='0';



//Grava TMOVCONT  2
      with QrAutoInc do  // Captura ULTIMO ID MOV CONT, pega o da tabela e acrescenta 1
           Begin
                 Close;
                 Sql.Clear;
                 Sql.Add('Select * from GAutoInc');
                 Sql.Add('where CodAutoInc = ' + QuotedStr('IDMOVCONT'));
                 Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                 Open;
                 ULTIMOIDMOVCONT:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
                 Edit;
                 QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(ULTIMOIdMovCONT+1);
                 post;
                 close;
           End;
               DtTmovCont2.DataSet.open;
               DtTmovCont2.DataSet.Insert;
               DtTmovCont2.DataSet.FieldByName('CodColigada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
               DtTmovCont2.DataSet.FieldByName('IdMovCont').AsString:=IntToStr(ULTIMOIDMOVCONT);
               DtTmovCont2.DataSet.FieldByName('IdMov').AsString:=IntToStr(ULTIMOIDMOV);
               DtTmovCont2.DataSet.FieldByName('CodConta').AsString:=Debito;
               DtTmovCont2.DataSet.FieldByName('TIPO').AsString:='1';
               DtTmovCont2.DataSet.FieldByName('valor').AsString:=FormatFloat('#0.0000',ValorProduto);
               DtTmovCont2.DataSet.FieldByName('CodFilial').AsString:='1';// por enquanto
               DtTmovCont2.DataSet.FieldByName('CodCCusto').AsString:=DtCentroCusto.DataSet.FieldByName('Vei_CentroCusto').AsString;
               DtTmovCont2.DataSet.FieldByName('CodHistP').AsString:=DtIntegra.DataSet.FieldByName('Tit_CodHis').AsString;
               DtTmovCont2.DataSet.FieldByName('ComplHistorico').AsString:='[MOV]';
               DtTmovCont2.DataSet.FieldByName('CodLote').AsString:=DtIntegra.DataSet.FieldByName('Tit_CodEveCont').AsString;
               DtTmovCont2.DataSet.FieldByName('LctRef').AsString:=intToStr(UltimoLctRef);
               DtTmovCont2.DataSet.FieldByName('Ativo').AsString:='1';
               DtTmovCont2.DataSet.FieldByName('CodColConta').AsString:='0';  }

end;

procedure TFormRequisicaoBaixa.BtCloteClick(Sender: TObject);
var valorlote: real;
begin
with QrClote do
      begin
        close;
        sql.Clear;
        sql.Add('select * from clote where codcoligada = ' + quotedstr(dtcoligada.DataSet.FieldByName('cod_coligada').AsString) );
        sql.Add('and codlote = ' + quotedStr(DtIntegra.DataSet.FieldByName('Tit_CodEveCont').AsString));
        Open;
        if not eof then
                begin
                      edit;
                      ValorLote  :=  StrtoFloat(DtClote.DataSet.FieldByName('valor').AsString) +
                                     (StrToInt(EditQt.Text)* StrToFloat(DtPrdEstoque.DataSet.FieldByName('CustoMedio').AsString));

                      DtClote.DataSet.FieldByName('valor').AsString:= FormatFloat('######0.00',valorlote);
                end;

      end;

end;

procedure TFormRequisicaoBaixa.BitBtn2Click(Sender: TObject);
begin
       if pai.ConctPai.Connected = FALSE THEN pai.ConctPai.Connected:=true;
       IF pai.ConectCorpore.Connected = FALSE THEN pai.ConectCorpore.Connected:=true;
       GrupodaPeca:='';


//       EditPrd.SetFocus;
       Btcancel.Click;
end;

procedure TFormRequisicaoBaixa.BitBtn3Click(Sender: TObject);
begin
     close;
end;

procedure TFormRequisicaoBaixa.BtGravaClick(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
BtTmov.Click;
//ShowMessage('Gravou tmov');
BtTitMov.Click;

//BtTitMmovCompl.Click;
BtCancel.Click;
Screen.Cursor:=CrDefault;
BitBtn2.click;

end;

procedure TFormRequisicaoBaixa.BtTitMMovComplClick(Sender: TObject);
begin
// esse item � executado dentro do titmov



DtTitMovCompl.DataSet.Open;
DtTitMovCompl.DataSet.Insert;
DtTitMovCompl.DataSet.FieldByName('CodColigada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
DtTitMovCompl.DataSet.FieldByName('IdMOv').AsString:=IntToStr(UltimoIdMov);
// Criar rotina para alterar numero sequancial
DtTitMovCompl.DataSet.FieldByName('NseqItmMov').AsString:='1';
DtTitMovCompl.DataSet.FieldByName('Local').AsString:='1';


end;

procedure TFormRequisicaoBaixa.btTitMovClick(Sender: TObject);
var
saldopostransacao: integer;
SaldoFinanceiro : Double;
begin


DtTitMov.DataSet.Open;
DtTitMov.DataSet.insert;
DtTitMov.DataSet.FieldByName('CodColigada').AsString            :=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
DtTitMov.DataSet.FieldByName('IdMov').AsString                  :=IntToStr(UltimoIdMov);
// registra idmov para tabela Tmov_Requisicao
Pai.vidmovatual:=UltimoIdMov;
DtTitMov.DataSet.FieldByName('NSeqItmMov').AsString             :='1';
DtTitMov.DataSet.FieldByName('NumeroSequencial').AsString       :='1';
DtTitMov.DataSet.FieldByName('IdPrd').AsString                  :=DtPRdEstoque.DataSet.FieldByName('IDPRd').AsString;
DtTitMov.DataSet.FieldByName('Quantidade').AsString             :=EditQt.Text;
DtTitMov.DataSet.FieldByName('PrecoUnitario').AsString          :=DtPRdEstoque.DataSet.FieldByName('CustoMedio').AsString;
DtTitMov.DataSet.FieldByName('DataEmissao').AsString            :=DateTimeToStr(now);
DtTitMov.DataSet.FieldByName('CodTb1Fat').AsString              :=DtCC.DataSet.FieldByName('TCC_CodCC').AsString;
DtTitMov.DataSet.FieldByName('CodUnd').AsString                 :=DtProduto.DataSet.FieldByName('CodUndControle').AsString;
DtTitMov.DataSet.FieldByName('QuantidadeAReceber').AsString     :=EditQt.Text;
//DtTitMov.DataSet.FieldByName('DataFatDec').AsString             :='0'; CAMPO EXCLUIDO A PARTIR DA VERSAO 11.82.37
DtTitMov.DataSet.FieldByName('FlagEfeitoSaldo').AsString        :='5'; // Todas as movimentacoes de baixa que vi estacam com 5
DtTitMov.DataSet.FieldByName('FlagReFaturamento').AsString      :='0'; // Todas as movimentacoes de baixa que vi estacam com 5
DtTitMov.DataSet.FieldByName('ValorUnitario').AsString          :=DtPrdEstoque.DataSet.FieldByName('CustoMedio').AsString;
DtTitMov.DataSet.FieldByName('ValorFinanceiro').AsString        :=FormatFloat('#0.0000',ValorProduto);
DtTitMov.DataSet.FieldByName('QuantidadeOriginal').AsString     :=EditQt.Text;
DtTitMov.DataSet.FieldByName('CodFilial').AsString              :='1';
DtTitMov.DataSet.FieldByName('PrecoEditado').AsString           :='';
DtTitMov.DataSet.FieldByName('PrecoTotalEditado').AsString      :='';
DtTitMov.DataSet.FieldByName('ValServicoNfe').AsString          :='0';
DtTitMov.DataSet.FieldByName('QtDeVolumeUnitario').AsString     :='1';
DtTitMov.DataSet.FieldByName('CodLoc').AsString                 := DtPrdEstoque.DataSet.FieldByName('CodLoc').AsString;
DtTitMov.DataSet.FieldByName('ValorLiquido').AsString           :=FormatFloat('#0.0000',ValorProduto);
//      showmessage('Indicou os valores para Titmmov');
//memo3.Text:=pai.QrTitMov.SQL.Text;



 // Grava na Tabela TitMmovCompl
BtTitMMovCompl.Click;

//BtClctLote.Click;
//BtTmovCont.Click;
BtClote.Click;
if MessageDlg('A confirma��o deste procedimento depende da sua aprova��o, ' +#13+#13+#13+#13 + 'Confirmar ? ' +#13+#13,MtConfirmation,[mbyes,mbno],0) = mryes then
  begin
      try
        SaldoposTransacao                                               := (StrToInt(DtPRdEstoque.DataSet.FieldByName('SaldoFisico2').AsString) - (StrToInt(EditQt.Text)));
        SaldoFinanceiro                                                 := SaldoPosTransacao * DtPrdEstoque.DataSet.FieldByName('CustoMedio').AsFloat;
        with QrAtualizaPrd do
              begin
                    Close;
                    Sql.Clear;
                     Sql.Add('Select * from TprdLoc');
                      Sql.Add('where Idprd = ' + quotedStr(QrPRd.FieldByName('IDPRd').AsString));
                       Sql.Add('and CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                        Sql.Add('And CodFilial = ' + QuotedStr('1') + ' and CodLoc = ' + QuotedStr('01.001'));
                         Open;
                          if Not Eof then
                                 begin
                                       Edit;
                                        //DecimalSeparator:='.';
                                         QrAtualizaPrd.FieldByName('SaldoFisico2').AsString:=FormatFloat('0.0000',SaldoPosTransacao);
                                         if saldopostransacao < 1 then QrAtualizaPrd.FieldByName('CustoMedio').AsString:= FormatFloat('0.0000',SaldoFinanceiro);
                                           QrAtualizaPrd.FieldByName('SaldoFinanceiro2').AsString:= FormatFloat('0.0000',SaldoFinanceiro);
                                        //    DecimalSeparator:=',';

                                              post;
                                  end
                               else
                                    begin
                                           ShowMessage('Contacte o suporte imediatamente');
                               end;
              end;
        // Altera Dados na Tabela TPRD - Saldo Geral Fisico e Santo Geral Financeiro
        with QrAtualizaPrd do
              begin
                    Close;
                    Sql.Clear;
                    //DecimalSeparator:='.';
                    Sql.Add('Update Tprd set SaldoGeralFisico = ' + quotedStr(StringReplace(FormatFloat('0.0000',SaldoPosTransacao), ',', '.', [])));
                    if saldopostransacao <= 0 then
                           Sql.Add(', CustoMedio = 0');
                    Sql.Add(', SaldoGeralFinanc = ' +  quotedStr(StringReplace(FormatFloat('0.0000',SaldoFinanceiro), ',', '.', [])));
                    Sql.Add('where Idprd = ' + quotedStr(QrPRd.FieldByName('IDPRd').AsString) + ' and CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                    ExecSql;
              end;
        // fim do bloco
        //Memo1.Lines.Add(qrTmov.sql.text);
//        Memo2.Lines.Add(pai.QrTitMov.sql.text);
//        Memo3.Lines.Add(QrTitMovCompl.SQL.text);
        DtMOv.DataSet.Post;
//        showmessage('1');
        DtTitMov.DataSet.Post;
//        showmessage('2');
        DtTitMovCompl.DataSet.Post;
//        showmessage('3');

        //           DtClCtlote.DataSet.Post;
            //DtTmovCont.DataSet.Post;
             //DtTmovCont2.DataSet.Post;
              DtClote.DataSet.Post;

      except
           DtMOv.DataSet.Cancel;
            DtTitMovCompl.DataSet.Cancel;
             DtTitMov.DataSet.Cancel;
              DtPrdloc.DataSet.Cancel;
               DtPrd.DataSet.Close;
                DtClCtlote.DataSet.Cancel;
                 DtTmovCont.DataSet.Cancel;
                  DtTmovCont2.DataSet.Cancel;
                   DtClote.DataSet.Cancel;
                    Showmessage('Erro inesperado');
                    Close;
      end;
  end
  else Begin
        DtMOv.DataSet.Cancel;
        DtTitMovCompl.DataSet.Cancel;
        DtTitMov.DataSet.Cancel;
        DtPrdloc.DataSet.Cancel;
        DtClCtlote.DataSet.Cancel;
        DtTmovCont.DataSet.Cancel;
        DtTmovCont2.DataSet.Cancel;
        DtClote.DataSet.Cancel;

  End;
end;

procedure TFormRequisicaoBaixa.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
begin
  key:=#0;
  SpeedButton2.Click;
end;
end;

procedure TFormRequisicaoBaixa.EditCCustoEnter(Sender: TObject);
begin
groupbox7.Enabled:=false;
end;

procedure TFormRequisicaoBaixa.EditCCustoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
  begin
    GroupBox1.Enabled:=false;
//    editQt.SetFocus;
  end;

end;

procedure TFormRequisicaoBaixa.EditCCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
begin
  key:=#0;
  SpeedButton2.Click;
end;

end;

procedure TFormRequisicaoBaixa.EDitPrdEnter(Sender: TObject);
begin
Quantidade:=0;
DtUltMov.DataSet.Close;
GroupBox1.Enabled:=false;
GroupBox5.Enabled:=false;
GroupBox7.Enabled:=false;
end;

procedure TFormRequisicaoBaixa.EDitPrdKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
Begin
  Key:=#0;

  ExecutaClick(nil);
End;
end;

procedure TFormRequisicaoBaixa.EditProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
  begin
    GroupBox7.Enabled:=false;
//    editCCusto.SetFocus;
  end;

end;

procedure TFormRequisicaoBaixa.EditProKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  SpeedButton4.Click;
end;
end;

procedure TFormRequisicaoBaixa.EditQtEnter(Sender: TObject);
begin
GroupBox1.Enabled:=false;

end;

procedure TFormRequisicaoBaixa.EditQtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
  begin
    GroupBox5.Enabled:=false;
//    editprd.SetFocus;
  end;
end;

procedure TFormRequisicaoBaixa.EditQtKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) or (Key = #9) then
  begin
    Key:=#0;
    if StrToInt(EditQt.Text) > 0 then
     Begin
         GroupBox1.Enabled:=true;
         if DtPrdEstoque.DataSet.FieldByName('SaldoFisico2').AsInteger >= StrToInt(EditQt.Text) then
           begin
              // DtCentroCusto.DataSet.Open; // abre tabela de veiculos X C Custos
               Quantidade:=StrToInt(EditQt.Text);
//               EditCCusto.SetFocus;
           end
           else Begin
             MessageBox(Handle,'O quantidade informada para Retirada � Maior que o Saldo Em estoque, Voc� n�o pode continuar !','Saldo Insuficiente',Mb_IconInformation+Mb_Ok);
             EditQt.Text:='';
//             EditQt.SetFocus;
           End;
      End
     else begin
       GroupBox1.Enabled:=false;
       MessageBox(Handle,'O valor informado � inv�lido','Aten��o',mb_IconInformation+ MB_Ok);
//       EditQt.SetFocus;
     end;
  end;
end;

procedure TFormRequisicaoBaixa.ExecutaClick(Sender: TObject);
var ontem : tdate;
begin
if EditPrd.Text <> '' then
     Begin
       // Caso seja coletur, busca prd com base nos 5 caractestes finais
        if pai.QrColigadas.FieldByName('cod_coligada').AsInteger =4 then
            begin
                   with q do begin
                        close;
                        Sql. clear;
                        Sql.Add('select CodigoPrd from Tprd where codigoprd like ' + QuotedStr('%' + EditPrd.Text));
                        open;
                        if not eof then
                              begin
                                   if RecordCount > 1 then
                                       begin
                                             ShowMessage('H� mais de um produto com esse ID final, por seguran�a, n�o irei continuar');
                                             Abort;
                                       end;
                                       VCodigoPrd:=Fieldbyname('codigoprd').AsString;
                              end;

                   end;

            end
            else
            VCodigoPrd:=EditPrd.Text;


       With QrPrd do
          Begin
            Close;
            Sql.Clear;
            Sql.Add('Select A.IdPrd, A.SaldoGeralFisico, A.SaldoGeralFinanc, A.CodColigada AS CodColigadaA, A.UltimoNivel, A.CodigoReduzido, A.NomeFantasia, A.UsuarioCriacao, A.DtCadastramento, A.CodigoPRd, A.CodUndControle, B.IdPrd, B.Prateleira, B.Garantia,');
            Sql.Add('B.TpLocal, B.CodColigada  From Tprd A, TprdCompl B');
//            Sql.Add('Select * from TPRD A, TPRDCompl B');
            Sql.Add('Where A.IDPrd = B.IDPrd');
            Sql.Add('and UltimoNivel = 1 And A.CodColigada = B.CodColigada');
            Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
            Sql.Add('And A.CodigoPrd = ' + QuotedStr(Vcodigoprd));
            Open;
            end;
      With QrPrdEstoque do
        Begin
             Close;
              Sql.Clear;
              Sql.Add('select A.IdPrd, A.CodLoc, A.CodColigada, A.CodFilial, A.SaldoFisico2, A.CustoMedio, A.CustoUnitario, B.CodLoc, B.CodFilial, B.Nome');
               Sql.Add('From TprdLoc A, Tloc B');
 //              Sql.Add('Select * from TPRDLoc A, TLoc B');
                 Sql.Add('Where B.CodLoc = A.CodLoc');
                  Sql.Add('And A.CodColigada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString));
                   Sql.Add('And A.CodLoc = ' + QuotedStr('01.001'));
                    Sql.Add('And A.IdPrd = ' + QuotedStr(DtProduto.DataSet.FieldByName('IDPRd').AsString));
                     Open;
                            ontem:=now-60;
//                             With QrUltMov do
//                                  begin
//                                       Close;
//                                        Sql.Clear;
//                                         Sql.Add('select top 15 b.DataMovimento, B.codVen1, A.Quantidade, B.CodCcusto from TitmMov A, Tmov B');
//                                          Sql.Add('where a.idmov = b.idmov and a.codcoligada = b.codcoligada');
//                                           Sql.Add('and B.serie = ' + QuotedStr('BE'));
//                                            Sql.Add('And A.CodColigada = ' + DtColigada.DataSet.FieldByName('cod_coligada').AsString);
//                                            // Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(ontem)));
//                                              Sql.Add('And A.idPrd = ' + QuotedStr(DtPRdEstoque.DataSet.FieldByName('IdPrd').AsString));
//                                               Sql.Add('order by B.DataMovimento Desc');
//                                                Open;
//                                  end;

           if eof then
           Begin
                 MessageBox(Handle,'N�o h� estoque do Produto Selecionado Nesta data','Saldo Indispon�vel',Mb_IconInformation + Mb_Ok);
//                  EditPrd.SetFocus;
           End
           ELSE
           Begin
                  if (QrPrdEstoque.FieldByName('saldofisico2').AsFloat < 0) or (QrPrdEstoque.FieldByName('CustoUnitario').AsFloat < 0) then
                       begin
                             ShowMessage('Encontrei Problemas em potencial com este Item, Verifique se h� Valores negativos nas quantidades ou nos valores, contate o suporte TOTVS');
                             BitBtn2.Click;
                       end
                       else
                       begin
{                             GridMov.Enabled:=true;
                             ontem:=now-60;
                             With QrUltMov do
                                  begin
                                       Close;
                                        Sql.Clear;
                                         Sql.Add('select b.DataMovimento, B.codVen1, A.Quantidade, B.CodCcusto from TitmMov A, Tmov B');
                                          Sql.Add('where a.idmov = b.idmov and a.codcoligada = b.codcoligada');
                                           Sql.Add('and B.serie = ' + QuotedStr('BE'));
                                            Sql.Add('And A.CodColigada = ' + DtColigada.DataSet.FieldByName('cod_coligada').AsString);
                                             Sql.Add('and B.DataMovimento >= ' + QuotedStr(DateToStr(ontem)));
                                              Sql.Add('And A.idPrd = ' + QuotedStr(DtPRdEstoque.DataSet.FieldByName('IdPrd').AsString));
                                               Sql.Add('order by B.DataMovimento Desc');
                                                Open;
                                   end;}
                         //    if DtProduto.DataSet.FieldByName('ItemCOntrole').AsString = '1' then
//                                       EditAvisoControle.Caption:='Item controlado, Supervisor ser� avisado !'
//                                       Else
//                                       EditAvisoControle.Caption:='';
                             GroupBox5.Enabled:=true;
//                             EditQt.SetFocus;
                       end;
          End;

       End;

     End;


end;

procedure TFormRequisicaoBaixa.Timer1Timer(Sender: TObject);
begin
        label2.Caption:=(copy(TimeToStr(Now),1,5));

end;

procedure TFormRequisicaoBaixa.Timer2Timer(Sender: TObject);
begin
//        showmessage(copy(TimeToStr(Now),1,5));
          with Pai.QrOSMovCompleto do
               begin
                       Close;
                       Parameters.ParamByName('Coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                       Parameters.ParamByName('DtAbertura').Value:=DateToStr(now);
                       Parameters.ParamByName('DtFechamento').Value:=DateToStr(now);
                       open;

               end;

end;

procedure TFormRequisicaoBaixa.BtTMovClick(Sender: TObject);
begin
        DtMov.DataSet.open;
        DtMov.DataSet.Insert;
        QrTMov.FieldByName('CodColigada').AsString:=Pai.QrColigadas.FieldByName('Cod_coligada').AsString;
        // Gera numeracao para idmov da tabela Tmov
        // Atualizar a tabela GAutoInc -

with QrAutoInc do  // Captura IDMOV, pega o da tabela e acrescenta 1
     Begin
           Close;
           Sql.Clear;
           Sql.Add('Select * from GAutoInc');
           Sql.Add('where CodAutoInc = ' + QuotedStr('IDMOV'));
           Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Open;
           UltimoIdMov:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
           Edit;
           QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(UltimoIdMov);
           post;
           close;
     End;

with QrAutoInc do  // Captura SEQUENCIALESTOQUE, pega o da tabela e acrescenta 1
     Begin
           Close;
           Sql.Clear;
           Sql.Add('Select * from GAutoInc');
           Sql.Add('where CodAutoInc = ' + QuotedStr('SEQUENCIALESTOQUE'));
           Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Open;
           UltSeqEst:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
           Edit;
           QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(UltSeqEst);
           post;
           close;
     End;

// Rotina para incrementar serie BE - Baixa Estoque. NumeroMov .... inc if BE
with QrAutoInc do  // Captura SEQUENCIALESTOQUE, pega o da tabela e acrescenta 1
     Begin
           Close;
           Sql.Clear;
           Sql.Add('Select * from GAutoInc');
           Sql.Add('where CodAutoInc = ' + QuotedStr('BE 000001'));
           Sql.Add('And CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Open;
           NumeroMov:=StrToInt(QrAutoInc.FieldByName('ValAutoInc').AsString)+1;
           Edit;
           QrAutoInc.FieldByName('ValAutoInc').AsString:=IntToStr(NumeroMov);
           post;
           close;
     End;



QrTMov.FieldByName('IDMov').AsString:= IntToStr(UltimoIdMov); // Rotina segue acima.
QrTMov.FieldByName('CodFilial').AsString:='1'; // Vincular a filial criada para esta coligada, s� uma mesmo. ok
QrTMov.FieldByName('CodLoc').AsString:='01.001'; // Ok
QrTMov.FieldByName('CodLocDestino').AsString:='01.001';
QrTMov.FieldByName('serie').AsString:='BE'; // que serie � esta? Baixa EStoque

QrTMov.FieldByName('NumeroMov').AsString                     :=FormatFloat('000000',NumeroMov); // Acho que esse numero pode ser qualquer um
QrTMov.FieldByName('CODTMV').AsString                        :=DtIntegra.DataSet.FieldByName('TIT_MOVBAIXA').AsString;//  '4.1.04';  //DtIntegra.DataSet.FieldByName('tit_movbaixa').AsString; // criei uma tela de parametros para apontar esse codigo que � criado pelo consultor
QrTMov.FieldByName('Tipo').AsString                          :='P'; // P esta sendo usado para outro movimento de baixa, nao sei o q segnifica
QrTMov.FieldByName('Status').AsString                        :='N'; // tem uma tabela por ai com as nomenclaturas, N F A s�o alternaticvas.
QrTMov.FieldByName('DataEmissao').AsString                   :=DateToStr(DtMovimento); // Certamente � a data da tela anterior, com dados do caixa
QrTMov.FieldByName('movimpresso').AsString                   :='0'; // campo devera ser zerado
QrTMov.FieldByName('docimpresso').AsString                   :='0'; // campo devera ser zerado
QrTMov.FieldByName('fatimpressa').AsString                   :='0'; // campo devera ser zerado
// Calcular os valores dos produtos total informado x customedio
ValorProduto                                                 :=(StrToInt(EditQt.Text)* StrToFloat(DtPrdEstoque.DataSet.FieldByName('CustoMedio').AsString));
QrTMov.FieldByName('ValorBruto').AsString                    :=(FormatFloat('#0.0000',ValorProduto)); // CustoUnitario X Total de saidas, importante descrobrir de onde sai esta informa��o de valor, pois se for preco medio deve ser cauculado...
QrTMov.FieldByName('ValorLiquido').AsString                  :=(FormatFloat('#0.0000',ValorProduto)); // Acho que � a mesma coisa do de cima
QrTMov.FieldByName('ValorOutros').AsString                   :=(FormatFloat('#0.0000',ValorProduto)); // Repetir
//QrTMov.FieldByName('ValorOutros').AsString:='?'; // Repetir
QrTMov.FieldByName('CodCfoAux').AsString                     :='CXXXXXXXXXX'; // REPETI DE UMA BAIXA
QrTMov.FieldByName('CodCCusto').AsString                     :=DtCentroCusto.DataSet.FieldByName('Vei_CentroCusto').AsString; //Alterar
QrTMov.FieldByName('CodVen1').AsString                       :=EditPro.Text;
QrTMov.FieldByName('CodUsuario').AsString                    :=Pai.QrUsuarios.FieldByName('Usu_login').AsString; // Preciso criar um usuario com poderes para usar nesta integra��o
QrTMov.FieldByName('CodFilialDestino').AsString              :='1'; // Criar Vinculo entre coligada e filial
QrTMov.FieldByName('CodColCxa').AsString                     :=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
QrTMov.FieldByName('CodEvento').AsString                     :=DtIntegra.DataSet.FieldByName('Tit_EveCont').AsString; // na ultima baixa estava 38
QrTMov.FieldByName('StatusExporTCont').AsString              :='1'; // BUSCAR DA TABLE DE CONFIG DO NUCLEUS
QrTMov.FieldByName('CodLote').AsString                       :=DtIntegra.DataSet.FieldByName('Tit_CodEveCont').AsString;
QrTMov.FieldByName('HorUltimaAlteracao').AsString            :=DateTimeToStr(now); // Ultima Altera��o
QrTMov.FieldByName('UsuarioCriacao').AsString                :=DtProduto.DataSet.FieldByName('UsuarioCriacao').AsString;
QrTMov.FieldByName('DataCriacao').AsString                   :=DtProduto.DataSet.FieldByName('DTCADASTRAMENTO').AsString; // Data da Tela Anterior a ser ainda criada
QrTMov.FieldByName('ValorBrutoInterno').AsString             :=(FormatFloat('#0.0000',ValorProduto)); // Repetir valor X quantidade
QrTMov.FieldByName('DataContabilizacao').AsString            :=DateToStr(DtMovimento); // Datada Tela Anterior ou data de importa��o pelo Saldus
QrTMov.FieldByName('SequencialEstoque').AsString             :=IntToStr(UltSeqEst); // criar uma rotina para incluir tipo autoinc
QrTMov.FieldByName('IntegraAplicacao').AsString              :='T'; // Todos os registros estao com T, deve ser isso
QrTMov.FieldByName('Datalancamento').AsString                :=DateTIMEToStr(NOW); // Data da Tela ANTERIOR
QrTMov.FieldByName('CodMoeValorLiquido').AsString            :='R$'; // campo devera ser zerado
QrTMov.FieldByName('CONTABILIZADOPORTOTAL').AsString        :='1';


QrTMov.FieldByName('DataMovimento').AsString:=DatetoStr(DtMovimento);
QrTMov.FieldByName('ReciboNfeStatus').AsString:='0'; // campo devera ser zerado
QrTMov.FieldByName('CodColcFoAux').AsString:='0'; // campo devera ser zerado
QrTMov.FieldByName('Vrbaseinssoutraempresa').AsString:=''; // campo devera ser zerado
QrTMov.FieldByName('IndUsoObj').AsString:='0'; // campo devera ser zerado
QrTMov.FieldByName('FlagProcessado').AsString:=''; // campo devera ser zerado
QrTMov.FieldByName('IntegraDOAutoMAcao').AsString:='0'; // campo devera ser zerado


end;

end.
