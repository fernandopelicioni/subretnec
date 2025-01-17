unit UnitCadastraAssociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, Buttons, ADODB, Grids, DBGrids, DBCtrls,
  ComCtrls, pngimage, Mask, ImgList, Menus, System.ImageList;

type
  TFormCadastraAssociacao = class(TForm)
    DtVeiculos: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    QrVeiculos: TADOQuery;
    DtBaseRevisao: TDataSource;
    BitBtn1: TBitBtn;
    QrBaseRevisao: TADOQuery;
    QrBaseRevisaoBRE_VEI: TWideStringField;
    QrBaseRevisaoBRE_ODO: TIntegerField;
    QrBaseRevisaoBRE_ROD: TIntegerField;
    QrBaseRevisaoBRE_SCO: TSmallintField;
    QrBaseRevisaoBRE_STATUS: TWideStringField;
    QrBaseRevisaoSCO_COD: TSmallintField;
    QrBaseRevisaoSCO_DES: TStringField;
    QrBaseRevisaoSCO_PRINT: TWideStringField;
    QrBaseRevisaoSCO_INDICE: TWideStringField;
    QrBaseRevisaoSCO_PRDCOD: TStringField;
    QrBaseRevisaoSCO_VALIDADE: TIntegerField;
    QrBaseRevisaoSCO_CAMPOLIVRE: TStringField;
    QrBaseRevisaoSCO_LOCAL: TStringField;
    QrBaseRevisaoSCO_ACAO: TWideStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    QrBaseRevisaoBRE_DAT: TDateTimeField;
    QrBaseRevisaoSCO_HIS: TStringField;
    QrVeiculosVEI_NUN: TWideStringField;
    QrVeiculosVEI_PLACA: TWideStringField;
    QrVeiculosVEI_AQUISICAO: TDateTimeField;
    QrVeiculosVEI_PADRAO: TSmallintField;
    QrVeiculosVEI_GRUPO: TSmallintField;
    QrVeiculosVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculosVEI_CENTROCUSTO: TStringField;
    QrVeiculosVEI_CHASSINUM: TWideStringField;
    QrVeiculosVEI_CHASSIANO: TWideStringField;
    QrVeiculosVEI_MODCHA: TSmallintField;
    QrVeiculosVEI_CARMOD: TSmallintField;
    QrVeiculosVEI_CARANO: TWideStringField;
    QrVeiculosVEI_OPERADOR: TWideStringField;
    QrVeiculosVEI_COLIGADA: TWordField;
    QrVeiculosCAR_COD: TSmallintField;
    QrVeiculosCAR_DES: TWideStringField;
    QrVeiculosMOD_COD: TSmallintField;
    QrVeiculosMOD_DES: TWideStringField;
    QrVeiculosMOD_MEDCOMBUSTIVEL: TBCDField;
    QrVeiculosMOD_MEDKM: TIntegerField;
    QrVeiculosMOD_EIXOS: TWordField;
    QrVeiculosMOD_MEDCOMMAX: TBCDField;
    QrVeiculosTIN_VEI: TWideStringField;
    QrVeiculosTIN_ULTCOL: TDateTimeField;
    QrVeiculosTIN_ODO: TIntegerField;
    QrVeiculosTIN_ULTMED: TBCDField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DtMovRevPre: TDataSource;
    QrMovPre: TADOQuery;
    DtMovPre: TDataSource;
    DtRevGer: TDataSource;
    QrBaseRevisaoBRE_OS: TStringField;
    DBGrid3: TDBGrid;
    Label6: TLabel;
    TabSheet4: TTabSheet;
    Image8: TImage;
    Label7: TLabel;
    DBGrid4: TDBGrid;
    GroupBox3: TGroupBox;
    TbMovRev: TADOTable;
    DtTbMovRev: TDataSource;
    DBMemo2: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    EditData: TMaskEdit;
    EditKm: TMaskEdit;
    TbBaseRevisao: TADOTable;
    DttbBaseRevisao: TDataSource;
    ImageList1: TImageList;
    DtPrd: TDataSource;
    Image6: TImage;
    Label5: TLabel;
    Label12: TLabel;
    Image9: TImage;
    DtColigada: TDataSource;
    EditVei: TEdit;
    QrBaseRevisaoBRE_CSC: TSmallintField;
    QrBaseRevisaoCSC_COD: TSmallintField;
    QrBaseRevisaoCSC_DES: TWideStringField;
    Execrev: TSpeedButton;
    NoExecRev: TSpeedButton;
    Label14: TLabel;
    kmrod: TLabel;
    Label15: TLabel;
    PopupMenu1: TPopupMenu;
    Detalhes1: TMenuItem;
    ImprimirSegundaVia1: TMenuItem;
    SpeedButton1: TSpeedButton;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Label16: TLabel;
    DtMovPrd: TDataSource;
    SpeedButton2: TSpeedButton;
    QrBaseRevisaoBRE_EMITE: TWideStringField;
    FechaTabela: TBitBtn;
    DBGrid6: TDBGrid;
    QrBaseRevisaoBRE_HIS: TStringField;
    DtIntegracao: TDataSource;
    DBMemo3: TDBMemo;
    EditExec: TEdit;
    QrPmc: TADOQuery;
    InventarioPneu: TLabel;
    QrMovRev: TADOQuery;
    QrPegaKM: TADOQuery;
    Memo1: TMemo;
    DBText6: TDBText;
    QrVeiculosVEI_CARNUM: TStringField;
    QrVeiculosVEI_STATUS: TWordField;
    QrVeiculosVEI_RENAVAN: TStringField;
    QrVeiculosVEI_VSI: TWordField;
    QrVeiculosVEI_INTMON: TWideStringField;
    QrVeiculosVEI_SUSTENTAVEL: TWideStringField;
    QrVeiculosVEI_PMM: TWordField;
    QrVeiculosVEI_NUMMOTOR: TWideStringField;
    QrVeiculosVEI_NUMERO: TWideStringField;
    QrBaseRevisaoBRE_IDENTIFICADOR: TWideStringField;
    QrBaseRevisaoSCO_STATUS: TWideStringField;
    BtVoltaTodos: TSpeedButton;
    QrTemp: TADOQuery;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField2: TSmallintField;
    WideStringField2: TWideStringField;
    SmallintField3: TSmallintField;
    StringField1: TStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    WideStringField5: TWideStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    StringField7: TStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    QrBaseRevisaoBRE_COD: TAutoIncField;
    Panel2: TPanel;
    Image2: TImage;
    Image1: TImage;
    SpeedButton3: TSpeedButton;
    Btclose: TImage;
    Label3: TLabel;
    QrBaseRevisaoKMRODADO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditKmEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure EditVeiEnter(Sender: TObject);
    procedure EditVeiKeyPress(Sender: TObject; var Key: Char);
    procedure ExecrevClick(Sender: TObject);
    procedure NoExecRevClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ImprimirSegundaVia1Click(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FechaTabelaClick(Sender: TObject);
    procedure InventarioPneuClick(Sender: TObject);
    procedure BtVoltaTodosClick(Sender: TObject);
    procedure BtcloseClick(Sender: TObject);
    Procedure VerificaOSpendente;
    procedure SpeedButton3Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
  AberturaOs:String;
      OsStatus:String;
    { Public declarations }
  end;

var
  FormCadastraAssociacao: TFormCadastraAssociacao;

implementation

uses UnitPai, UnitLancaAssociacao, UnitRelatorio, UnitLancaNovaRevisao,
  UnitServerPai, UnitIniciaSistema, Principal, UnitLancaOSCorretiva, UnitOS,
  UtNucleo;

{$R *.dfm}

procedure TFormCadastraAssociacao.BitBtn1Click(Sender: TObject);
begin
With QrVeiculos do
Begin
 Close;
 Sql.Clear;
 Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D');
 Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod');
 Sql.Add('and A.Vei_Nun = D.Tin_Vei');
 Sql.Add('And A.Vei_Coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
 Sql.Add('And A.Vei_numero = ' + QuotedStr(EditVei.text));
 open;
 //ShowMessage('Veiculos');
 if not eof then
  Begin
    with QrBaseRevisao do
       Begin
       Close;
       Parameters.ParamByName('VEICULO').Value:= (DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring);
       //       Sql.Clear;
//       Sql.Add('Select * from Tb_BaseRevisao A, Tb_ServicosControlados B, Tb_SerConCar C');
//       Sql.Add('Where A.Bre_Sco = B.Sco_Cod and C.Csc_Cod = A.Bre_CSC');
//       Sql.Add('And A.Bre_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring))        ;
//       Sql.Add('Order By B.Sco_Des');
       Open;
    //    ShowMessage('Revisao');
       End;
     With Pai.QrRevGer do
        begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Tb_RevGer');
        Sql.Add('Where TRG_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring));
        Sql.Add('order by Trg_data desc');
        Open;
  //       ShowMessage('RevGer');
        end;
  // carrega produtos
        With Relatorio.QrMovPrd do
            begin
               Close;
               Sql.Clear;
               Sql.Add('Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CampoLivre3, B.IdPrd, B.Quantidade, B.DataEmissao, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto, C.CodTmv from Tprd A, TitmMov B, TMov C');
               Sql.Add('where B.IdPrd = A.IdPrd and C.idMov = B.IdMov And (C.Serie = ' + QuotedStr('BE') + ' or CodTmv = ' + QuotedStr(DtIntegracao.DataSet.FieldByName('TIT_NaoEst').AsString)+')');
//               Sql.Add('And A.CampoLivre3 = ' + QuotedStr('1')); // somente itens marcados como controlaveis
               Sql.Add('And C.CodColigada = A.CodColigada and B.CodColigada = A.CodColigada');
               Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('And C.CodCCusto = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_CentroCusto').AsString));
               Sql.Add('And B.DataEmissao >= ' + QuotedStr(DatetoStr(Now-30)));
               Sql.Add('Order by B.DataEmissao desc, A.NomeFantasia');
               Open;
               // Memo1.text:=sql.Text;
//                ShowMessage('MovPrd');
            end;
   // fim carrega produtos



     DBText3.Visible:=true;
     GroupBox2.Visible:=true;
     PageControl1.Enabled:=true;
  End
  else
  begin
    MessageBox(Handle,'Ve�culo n�o esta Cadastrado, Indique Outro, por favor','N�o Encontrado',Mb_iconInformation+Mb_ok);

  end;

PageControl1.ActivePageIndex:=0;
End;
end;

procedure TFormCadastraAssociacao.BitBtn2Click(Sender: TObject);
begin

DtTbBaseRevisao.DataSet.FieldByName('BRE_Status').AsString:='F';
DtTbBaseRevisao.DataSet.FieldByName('BRE_Odo').AsString:=EditKm.Text;
//DtTbBaseRevisao.DataSet.FieldByName('BRE_hIS').AsString:=dBmEMO2.Text;
DtTbBaseRevisao.DataSet.FieldByName('BRE_Dat').AsString:=EditData.Text;
DtTbMovRev.DataSet.FieldByName('RPR_Status').AsString:='F';
DtTbMovRev.DataSet.FieldByName('RPR_Exec').AsString:='S';
DtTbMovRev.DataSet.FieldByName('RPR_DiasRod').AsString:=FloatToStr(StrToDate(EditData.Text)- StrToDate(DtTbMovRev.DataSet.FieldByName('RPR_DTULTTR').AsString));


DtTbMovRev.DataSet.FieldByName('RPR_DTFec').AsString:=Editdata.Text;
DtTbMovRev.DataSet.FieldByName('RPR_OdoVal').AsString:=EditKm.Text;
DtTbMovRev.DataSet.FieldByName('RPR_Func').AsString:=EditExec.Text;
DtTbMovRev.DataSet.FieldByName('RPR_Rod').AsString:=IntToStr(StrToInt(EditKm.Text) - StrToInt(DtTbMovRev.DataSet.FieldByName('RPR_OdoIns').AsString)); //      EditKm.Text;
DtTbMovRev.DataSet.post;
DtTbBaseRevisao.DataSet.Post;
DtMovRevPre.DataSet.Close;
EditData.Text:='';
EditKm.Text:='';
DtMovRevPre.DataSet.open;
DtMovRevPre.DataSet.Refresh;
BitBtn2.Enabled:=false;
ExecRev.Enabled:=false;
NoExecRev.Enabled:=false;

end;

procedure TFormCadastraAssociacao.BitBtn3Click(Sender: TObject);
begin
DtTbBaseRevisao.DataSet.Cancel;
DtTbMovRev.DataSet.Cancel;
ExecRev.Enabled:=false;
NoExecRev.Enabled:=false;
end;

procedure TFormCadastraAssociacao.DBEdit1Enter(Sender: TObject);
begin
EditVei.SetFocus;

end;

procedure TFormCadastraAssociacao.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  Dbmemo2.SetFocus;
end;

end;

procedure TFormCadastraAssociacao.DBGrid1DblClick(Sender: TObject);
begin
KmRod.Caption:=IntToStr(StrToInt(Dtveiculos.DataSet.FieldByName('Tin_Odo').AsString)- StrToInt(DtBaseRevisao.DataSet.FieldByName('Bre_odo').AsString));
if StrToInt(KmRod.Caption) > StrToInt(DtBaseRevisao.DataSet.FieldByName('Sco_Validade').AsString) then
     label15.Caption:='Item Vencido, Verifique ! '
     Else
     label15.Caption:='Item N�O est� Vencido.';

end;

procedure TFormCadastraAssociacao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.index = 0 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   // Desenha o Quadrado
   //Image1.Picture.BitBap;
   //ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);
   // Desenha o check sobre o quadrado quando ativo = �S�
   if (DTbaseRevisao.DataSet.FieldByName('Bre_Odo').AsInteger + DTbaseRevisao.DataSet.FieldByName('Sco_validade').AsInteger) < DtVeiculos.DataSet.FieldByName('Tin_odo').AsInteger then
        ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,1)
        else
         ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);


    end;

if Column.index = 5 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   // Desenha o Quadrado
   //Image1.Picture.BitBap;
   //ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);
   // Desenha o check sobre o quadrado quando ativo = �S�
   if DTbaseRevisao.DataSet.FieldByName('Kmrodado').AsInteger > (DTbaseRevisao.DataSet.FieldByName('Sco_validade').AsInteger) then
        begin
//              DBGrid1.Canvas.Font.Style:= [fsbold];
              DBGrid1.Canvas.Font.Color := ClRed;
        end
        else
        begin
              DBGrid1.Canvas.Font.Color := Clblue;
              DBGrid1.Canvas.Font.Style:= [];

        end;
        DBGrid1.Canvas.FillRect(Rect);
        DBGrid1.DefaultDrawDataCell(Rect, (Sender as   TDBGrid).columns[datacol].field, State);



    end;


end;

procedure TFormCadastraAssociacao.DBGrid3DblClick(Sender: TObject);
begin
With Pai.QrMovRevisao do
  begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerConCar C');
  Sql.Add('Where B.Sco_Cod = A.RPR_Sco and C.CSC_cod = A.RPR_CSC');
  Sql.Add('and RPR_TRG = ' + QuotedStr(DtRevGer.DataSet.FieldByName('Trg_Cod').AsString));
  Open;
  end;

end;

procedure TFormCadastraAssociacao.DBGrid4DblClick(Sender: TObject);
begin
ExecRev.Enabled:=true;
NoExecRev.Enabled:=true;
BtVoltaTodos.Enabled:=true;
end;

procedure TFormCadastraAssociacao.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//if Column.Index = 1 then
//   BEGIN
     if NOT DtMovRevPre.DataSet.eof then
        begin
            if sTRtOiNT(DTMovRevPre.DataSet.FieldByName('RPR_OdoVal').AsString) < StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) then
                 Begin
                   DBGrid4.Canvas.Font.Color:= clRed;
//                    Dbgrid4.Canvas.Font.Style:=FsBold;
                    DBGrid4.Canvas.FillRect(Rect);
                    DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End
                    else
                    begin
                    DBGrid4.Canvas.Font.Color:= clBlack;
                    DBGrid4.Canvas.FillRect(Rect);
                    DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            end;
        end;
  // END;
end;

procedure TFormCadastraAssociacao.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if KEY = #13 then
begin
  key:=#0;
  BitBtn1.SetFocus;

end;
end;

procedure TFormCadastraAssociacao.EditDataEnter(Sender: TObject);
begin
EditData.Text:=DateToStr(now);
end;

procedure TFormCadastraAssociacao.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
           With QrPegaKm do
                begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select Abast_km from Tb_CbMovAbast A');
                     Sql.Add('Where A.Abast_data = (Select max(B.Abast_data) from tb_CbMovAbast B Where B.Abast_Vei = A.Abast_vei and B.Abast_data <= ' + QuotedStr(Editdata.Text)+')');
                     Sql.Add('And A.Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                     Open;
                     Editkm.Text:=QrPegaKm.Fields[0].AsString;
                end;
  EditKm.SetFocus;
end;

end;

procedure TFormCadastraAssociacao.EditKmEnter(Sender: TObject);
begin
//EditKm.Text:=DtVeiculos.DataSet.FieldByName('Tin_Odo').AsString;
end;

procedure TFormCadastraAssociacao.EditKmKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  DbMemo2.SetFocus;
end;

end;

procedure TFormCadastraAssociacao.EditVeiEnter(Sender: TObject);
begin
EditVei.Text:='';
pagecontrol1.ActivePageIndex:=0;
DtBaseRevisao.DataSet.Close;

end;

procedure TFormCadastraAssociacao.EditVeiKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  BitBtn1.Click;
end;
end;

procedure TFormCadastraAssociacao.ExecrevClick(Sender: TObject);
begin
BitBtn2.Enabled:=true;
      With QrMovRev Do
            Begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select * from tb_movRevPre');
                  Sql.Add('Where Rpr_Cod = ' + QuotedStr(DtMovRevPre.DataSet.FieldByName('Rpr_Cod').AsString));
                  Open;
                  Edit;
            End;
//DtTbMovRev.DataSet.Open;
//DtTbMovRev.DataSet.Edit;
DtTbBaseRevisao.DataSet.Open;
DtTbBaseRevisao.DataSet.Edit;
GroupBox3.Enabled:=true;
EditData.SetFocus;

end;

procedure TFormCadastraAssociacao.FechaTabelaClick(Sender: TObject);
begin
DtPrd.DataSet.Close;
DtVeiculos.DataSet.Close;
DtBaseRevisao.DataSet.Close;
DtRevGer.DataSet.Close;
DtMovPre.DataSet.Close;
DtTbMovRev.DataSet.Close;
DtMovRevPre.DataSet.Close;
DtTbBaseRevisao.DataSet.Close;
DtMovprd.DataSet.Close;
PageControl1.ActivePageIndex:=0;
Editvei.SetFocus;
end;

procedure TFormCadastraAssociacao.FormActivate(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
//DtbaseRevisao.DataSet.Open;
//DtMovPre.DataSet.Open;
//DtTbMovRev.DataSet.Open;
//DtVeiculos.DataSet.Open;
PageControl1.ActivePageIndex:=0;
DtIntegracao.DataSet.Open;
Screen.Cursor:=CrDefault;
end;

procedure TFormCadastraAssociacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPrd.DataSet.Close;
DtVeiculos.DataSet.Close;
QrTemp.Close;
QrPmc.Close;
DtIntegracao.DataSet.Close;
DtBaseRevisao.DataSet.Close;
DtRevGer.DataSet.Close;
DtMovPre.DataSet.Close;
DtTbMovRev.DataSet.Close;
DtMovRevPre.DataSet.Close;
DtTbBaseRevisao.DataSet.Close;
DtMovprd.DataSet.Close;
Action:=cafree;
end;

procedure TFormCadastraAssociacao.Image1Click(Sender: TObject);
begin
Application.CreateForm(TFormLancaAssociacao,FormLancaAssociacao);
FormLancaAssociacao.DtBaseRevisao.DataSet.Open;
FormLancaAssociacao.DtBaseRevisao.DataSet.Insert;
FormLancaAssociacao.DtBaseRevisao.DataSet.FieldByName('Bre_Vei').AsString:=DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring;
FormLancaAssociacao.ShowModal;

end;

procedure TFormCadastraAssociacao.Image2Click(Sender: TObject);
begin
if FormNucleo.nivel > 9 then
     begin
    if MessageDlg('Excluir um servi�o Controlado pode refletir negativamente na manuten��o do ve�culo, voc� precisa estar certo disto'+#13+#13+#13+'Deseja mesmo Continuar ? +' ,mtConfirmation,[MBYES,MBNO],0) = MRYES then
         begin
               With QrTemp do
                    begin
                           close;
                           Sql.Clear;
                           Sql.Add('Delete tb_baserevisao where bre_cod = ' + QuotedStr(Dtbaserevisao.DataSet.FieldByName('bre_cod').AsString));
                        //   showmessage(sql.Text);
                           Execsql;
                    end;
               DtBaseRevisao.DataSet.Close;
               DtBaseRevisao.DataSet.Open;

         end;
    end
    else begin
      ShowMessage('Usu�rio n�o autorizado !');
    end;

end;

procedure TFormCadastraAssociacao.Image3Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadastraAssociacao.Image5Click(Sender: TObject);
Var
DataRevisao,NumOS:String;
begin

            VerificaOSpendente;
            if OsStatus = 'A' then
                     begin
                               MessageBox(0, 'Encontrei uma OS aberta/pendente'+#13+#10+''+#13+#10+'Ser� necess�rio fecha-la para abrir outra!', 'Ordem de Servi�o Aberta', MB_ICONINFORMATION or MB_OK);
                               abort;
                     end
                     else
                     begin
                              PAI.VOS_VEI:=DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
                              PAI.VOS_VEICULO:=DtVeiculos.DataSet.FieldByName('vei_numero').AsString;
                              Pai.Vos_Status:='A';
                              Pai.VOS_DTABE:=(now);
                              pai.VOS_DTFEC:=StrToDate('01/01/1900');
                              PAI.VOS_HIS:='OS gerada a partir da Revis�o Preventiva';
                              PAI.VOS_CODMTV:=3;
                              Pai.VOS_DTPrazo:=(now+2);
                              pai.VOS_HRABE:=StrToTime(copy(TimeToStr(now),1,5));
                              pai.VOS_HRFEC:=strtotime('00:00');
                              Pai.VOS_USUABE:=Pai.QrUsuarios.FieldByName('usu_login').AsString;
                              Pai.VOS_USUFEC:='A';
                              //PAI.CriaOS;

                     End;



With Pai.QrMovRevisao do
       begin
       Close;
       Sql.Clear;
       Sql.Add('Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerConCar C');
       Sql.Add('Where B.Sco_Cod = A.RPR_Sco And C.Csc_Cod = A.Rpr_Csc');
       Sql.Add('And A.RPR_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
       Sql.Add('And A.RPR_Status = ' + QuotedStr('A'));
       Open;
       End;
       if Pai.QrMovRevisao.eof then
       begin
       DtRevGer.DataSet.Open;
       NumOs:=FormatDateTime('yyyy',now) + FormatDateTime('MM',now) + FormatDateTime('dd',now) + '.' + FormatDateTime('hh',now) + FormatDateTime('nn',now) + FormatDateTime('ss',now);
       DtRevGer.DataSet.Insert;
       DtRevGer.DataSet.FieldByName('TRG_Cod').AsString:=NumOs;
       DtRevGer.DataSet.FieldByName('TRG_Vei').AsString:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
       DtRevGer.DataSet.FieldByName('TRG_Tipo').AsString:='Preventiva';
       Application.CreateForm(TFormLancaNovaRevisao,FormLancaNovaRevisao);
       FormLancaNovaRevisao.Image5.Visible:=true;
       FormLancaNovaRevisao.label2.Caption:='Revis�o Preventiva';
              FormLancaNovaRevisao.ShowModal;
       //showMessage(numOs);
       DataRevisao:=DtRevGer.DataSet.FieldByName('TRG_Data').AsString;

       if MessageDlg('Deseja Continuar com a emiss�o da Nova Ordem de Revis�o : ' + NumOS + #13+#13 + 'Para Continuar confirme !',MtInformation,[mbyes,mbno],0) = Mryes then
           begin
           //   DtRevGer.DataSet.FieldByName('TRG_DATA').AsString:=DateToStr(now);
            DtRevGer.DataSet.Post;
//            pai.VOS_DTVIGINI:=StrToDate(FormLancaNovaRevisao.EditData.Text);
//            pai.VOS_DTVIGFIM:=StrToDate(FormLancaNovaRevisao.EditData.Text);
            PAI.CriaOS;
           Screen.Cursor:=CrHourGlass;
           With Relatorio.QrSRVFIX do
               Begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from TB_SerFixo where SFX_Coligada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
               End;
          with Relatorio.QrBaseRev do
               begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from TB_BaseRevisao A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_VeiModCar D, Tb_VeiModCha E, Tb_PadVeic F, Tb_IndiceRevisao G, Tb_SerConCar H');
               Sql.Add('Where B.Sco_Cod = A.Bre_Sco and C.Vei_Nun = A.Bre_Vei and D.Car_Cod = C.Vei_CarMod and E.Mod_Cod = C.Vei_ModCha and F.Pad_Cod = C.Vei_Padrao and G.Tin_Vei = C.Vei_Nun and H.Csc_Cod = A.Bre_Csc');
               Sql.Add('And B.Sco_Print = ' + quotedStr('SIM'));
               Sql.Add('and C.VEi_nun = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
               //      Sql.Add('And H.Rpr_Vei = C.Vei_nun and Rpr_Trg = ' + QuotedStr(NumOS));
               Sql.Add('Order by B.Sco_Des');
               Open;
               if not eof then
                  Begin
                  DtMovPre.DataSet.Open;
                  Repeat
                    DtMovPre.DataSet.Insert;
                    DtMovPre.DataSet.FieldByName('RPR_Vei').AsString       :=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_DTABE').AsString     :=AberturaOs;
                    DtMovPre.DataSet.FieldByName('RPR_ODOINS').AsString    :=Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_CSC').AsString       :=Relatorio.QrBaseRev.FieldByName('BRE_CSC').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_DTULTTR').AsString   :=Relatorio.QrBaseRev.FieldByName('BRE_DAT').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_iDENTIFICADOR').AsString   :=Relatorio.QrBaseRev.FieldByName('BRE_IDENTIFICADOR').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_Carencia').AsString  :=Relatorio.QrBaseRev.FieldByName('Sco_validade').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_SCO').AsString       :=Relatorio.QrBaseRev.FieldByName('Sco_Cod').AsString;
                    if (StrToInt(Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsString) + StrToInt(Relatorio.QrBaseRev.FieldByName('BRE_Rod').AsString)) > StrToInt(Relatorio.QrBaseRev.FieldByName('Tin_Odo').AsString) then
                                   DtMovPre.DataSet.FieldByName('RPR_Vcd').AsString       :='NAO'
                                   else
                                   DtMovPre.DataSet.FieldByName('RPR_Vcd').AsString       :='SIM';

                    DtMovPre.DataSet.FieldByName('RPR_TRG').AsString       :=NumOs;
                    DtMovPre.DataSet.FieldByName('RPR_OdoVal').AsString    :=IntToStr(Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsInteger + Relatorio.QrBaseRev.FieldByName('SCO_Validade').AsInteger);
                    DtMovPre.DataSet.post;
                   Next
                 Until Eof;
                 End;
                 end;
                 with Relatorio.QrBaseRev do
                    begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from TB_MovRevPre A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_VeiModCar D, Tb_VeiModCha E, Tb_PadVeic F, Tb_IndiceRevisao G, Tb_SerConCar H');
                    Sql.Add('Where B.Sco_Cod = A.Rpr_Sco and C.Vei_Nun = A.Rpr_Vei and D.Car_Cod = C.Vei_CarMod and E.Mod_Cod = C.Vei_ModCha and F.Pad_Cod = C.Vei_Padrao and G.Tin_Vei = C.Vei_Nun and H.CSC_cod = A.Rpr_Csc');
                    Sql.Add('and c.VEi_nun = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                    Sql.Add('And A.Rpr_Vei = C.Vei_nun and Rpr_Trg = ' + QuotedStr(NumOS));
                    Sql.Add('Order by B.Sco_Des');
                   Open;
                   if not eof then
                      begin
                              InventarioPneuClick(nil);
                              Relatorio.Projeto.SetParam('Dt1',DataRevisao);
                              Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
//                              QrPmc.Parameters.ParamByName('veiculo').
                              QrPmc.Parameters.ParamByName('veiculo').Value:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
                              QrPmc.Open;
                              if not QrPmc.eof then
                                     Relatorio.Projeto.SetParam('Obs','* Aten��o, Ve�culo com Defeito Reclamado, Consulte !')
                                     ELSE
                                     Relatorio.Projeto.SetParam('Obs','');
                              Relatorio.Projeto.ExecuteReport('RvFichaVistoria');
//                              Relatorio.Projeto.close;
                      end;
                end;
              end
           else
   DtRevGer.DataSet.Cancel;
   Screen.Cursor:=CrDefault;
    end else
    begin
      MessageBox(handle,'Existe Revis�es ou Itens das Revis�es Abertas, � necess�rio fecha-los antes de Emitir nova Ordem de Servi�o !!','Revis�es n�o Finalizadas',MB_IconInformation+mb_Ok);
    end;
end;

procedure TFormCadastraAssociacao.ImprimirSegundaVia1Click(Sender: TObject);
begin
              With Relatorio.QrSRVFIX do
                    Begin
                        Close;
                        Sql.Clear;
                        Sql.Add('Select * from TB_SerFixo where SFX_Coligada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
                     End;
                 with Relatorio.QrBaseRev do
                    begin
                        Close;
                        Sql.Clear;
                        Sql.Add('Select * from TB_MovRevPre A join tb_ServicosControlados B on B.Sco_Cod = A.Rpr_Sco Join Tb_veiculos C on C.Vei_Nun = A.Rpr_Vei Join  Tb_VeiModCar D on D.Car_Cod = C.Vei_CarMod');
                        Sql.Add('Join Tb_VeiModCha E on E.Mod_Cod = C.Vei_ModCha Join Tb_PadVeic F on F.Pad_Cod = C.Vei_Padrao Join  Tb_IndiceRevisao G On G.Tin_Vei = C.Vei_Nun Join Tb_SerConCar H on  H.CSC_cod = A.Rpr_Csc');
                        Sql.Add('join tb_CbMovAbast Ab on Ab.abast_vei = C.vei_nun and ab.abast_data = (select max(bb.abast_data) from tb_cbmovAbast BB where bb.abast_vei=ab.abast_vei and bb.Abast_data <= Rpr_DtAbe)');

//                        Sql.Add('Select * from TB_MovRevPre A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_VeiModCar D, Tb_VeiModCha E, Tb_PadVeic F, Tb_IndiceRevisao G, Tb_SerConCar H');
//                        Sql.Add('Where B.Sco_Cod = A.Rpr_Sco and C.Vei_Nun = A.Rpr_Vei and D.Car_Cod = C.Vei_CarMod and E.Mod_Cod = C.Vei_ModCha and F.Pad_Cod = C.Vei_Padrao and G.Tin_Vei = C.Vei_Nun and H.CSC_cod = A.Rpr_Csc');
//                      Sql.Add('and C.Vei_Coligada = B.Sco_Coligada');
                        Sql.Add('and c.VEi_nun = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                        Sql.Add('And A.Rpr_Vei = C.Vei_nun and Rpr_Trg = ' + QuotedStr(DtRevGer.DataSet.FieldByName('Trg_Cod').AsString));
                        Sql.Add('Order by B.Sco_Des');
                        memo1.Text:=sql.Text;
                   Open;
                   if not eof then
                      begin
                             Relatorio.Projeto.SetParam('Dt1',FieldByName('RPR_DTABE').AsString);
                             Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                             Relatorio.Projeto.ExecuteReport('RvFichaVistoria');
                             Relatorio.Projeto.close;
                      end
                      Else begin
                        MessageBox(Handle,'Contate o Desenvolvedor do Software. H� alguma inconsistencia...','Aten��o',Mb_IconInformation+mb_ok);

                      end;
                    end;


end;

procedure TFormCadastraAssociacao.InventarioPneuClick(Sender: TObject);
begin
       With Relatorio.QrPnInventerio do
            begin
                  Close;
                  Parameters.ParamByName('veiculo').Value:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
                  Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                  OPEN;
            end;

end;

procedure TFormCadastraAssociacao.Label3Click(Sender: TObject);
begin
Close;
end;

procedure TFormCadastraAssociacao.MaskEdit1Enter(Sender: TObject);
begin
EditVei.SetFocus;
end;

procedure TFormCadastraAssociacao.NoExecRevClick(Sender: TObject);
begin
      With QrMovRev Do
            Begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select * from tb_movRevPre');
                  Sql.Add('Where Rpr_Cod = ' + QuotedStr(DtMovRevPre.DataSet.FieldByName('Rpr_Cod').AsString));
                  Open;
                  Edit;
            End;
      DtTbBaseRevisao.DataSet.Open;
      DtTbBaseRevisao.DataSet.Edit;
      GroupBox3.Enabled:=true;
      DtTbBaseRevisao.DataSet.FieldByName('BRE_Status').AsString:='F';
      DtTbMovRev.DataSet.FieldByName('RPR_Status').AsString:='F';
      DtTbMovRev.DataSet.FieldByName('RPR_DTFec').AsString:=DtTbBaseRevisao.DataSet.FieldByName('BRE_Dat').AsString;
      DtTbMovRev.DataSet.FieldByName('RPR_His').AsString:='Este item n�o foi revisado nesta data, antes do vencimento, ou desnecess�rio, em : ' + DateTimeToStr(now);
      DtTbMovRev.DataSet.post;
      DtTbBaseRevisao.DataSet.Post;
      DtMovRevPre.DataSet.Close;
      DtMovRevPre.DataSet.open;
      DtMovRevPre.DataSet.Refresh;
      BitBtn2.Enabled:=false;
      ExecRev.Enabled:=false;
      NoExecRev.Enabled:=false;
end;

procedure TFormCadastraAssociacao.SpeedButton1Click(Sender: TObject);
begin
      Application.CreateForm(TFormLancaAssociacao,FormLancaAssociacao);
      FormLancaAssociacao.DtBaseRevisao.DataSet.Open;
      FormLancaAssociacao.DtBaseRevisao.DataSet.Insert;
      FormLancaAssociacao.DtBaseRevisao.DataSet.FieldByName('Bre_Vei').AsString:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
      FormLancaAssociacao.ShowModal;
end;

procedure TFormCadastraAssociacao.SpeedButton2Click(Sender: TObject);
Var
DataRevisao,NumOS:String;
begin
          { // VerificaOSpendente;

            if OsStatus = 'A' then
                     begin
                               MessageBox(0, 'Encontrei uma OS aberta/pendente'+#13+#10+''+#13+#10+'Ser� necess�rio fecha-la para abrir outra!', 'Ordem de Servi�o Aberta', MB_ICONINFORMATION or MB_OK);
                               abort;
                     end
                     else
                     begin
                              PAI.VOS_VEI:=DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
                              PAI.VOS_VEICULO:=DtVeiculos.DataSet.FieldByName('vei_numero').AsString;
                              Pai.Vos_Status:='A';
                              Pai.VOS_DTABE:=(now);
                              pai.VOS_DTFEC:=StrToDate('01/01/1900');
                              PAI.VOS_HIS:='OS gerada a partir da Revis�o Corretiva';
                              PAI.VOS_CODMTV:=4;
                              Pai.VOS_DTPrazo:=(now+2);
                              pai.VOS_HRABE:=StrToTime(copy(TimeToStr(now),1,5));
                              pai.VOS_HRFEC:=strtotime('00:00');
                              Pai.VOS_USUABE:=Pai.QrUsuarios.FieldByName('usu_login').AsString;
                              Pai.VOS_USUFEC:='A';
                              //PAI.CriaOS;

                     End;  }

Application.CreateForm(TFormLancaOsCorretiva,FormLancaOsCorretiva);
FormlancaOsCorretiva.Showmodal;
With Pai.QrMovRevisao do
       begin
       Close;
       Sql.Clear;
       Sql.Add('Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerConCar C');
       Sql.Add('Where B.Sco_Cod = A.RPR_Sco And C.Csc_Cod = A.Rpr_Csc');
       Sql.Add('And A.RPR_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
       Sql.Add('And A.RPR_Status = ' + QuotedStr('A'));
       Sql.Add('Order by Rpr_DtAbe Desc');
       Open;
       End;
       if Pai.QrMovRevisao.eof then
       begin
       DtRevGer.DataSet.Open;
       NumOs:=FormatDateTime('yyyy',now) + FormatDateTime('MM',now) + FormatDateTime('dd',now) + '.' + FormatDateTime('hh',now) + FormatDateTime('nn',now) + FormatDateTime('ss',now);
       DtRevGer.DataSet.Insert;
       DtRevGer.DataSet.FieldByName('TRG_Cod').AsString:=NumOs;
       DtRevGer.DataSet.FieldByName('TRG_Tipo').AsString:='Corretiva';
       DtRevGer.DataSet.FieldByName('TRG_Vei').AsString:=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
       Application.CreateForm(TFormLancaNovaRevisao,FormLancaNovaRevisao);
       FormLancaNovaRevisao.Image1.Visible:=true;
       FormLancaNovaRevisao.label2.Caption:='Revis�o Corretiva';
       FormLancaNovaRevisao.ShowModal;
       DataRevisao:=DtRevGer.DataSet.FieldByName('TRg_Data').AsString;
       //showMessage(numOs);
       if MessageDlg('Revis�o Corretiva' +#13+#13+'Deseja Continuar com a emiss�o da Nova Ordem de Revis�o : ' + NumOS + #13+#13 + 'Para Continuar confirme !',MtInformation,[mbyes,mbno],0) = Mryes then
           begin
           //   DtRevGer.DataSet.FieldByName('TRG_DATA').AsString:=DateToStr(now);
                DtRevGer.DataSet.Post;
                // cria A OS categoria 4
               // PAI.CriaOS;
                Screen.Cursor:=CrHourGlass;
           With Relatorio.QrSRVFIX do
               Begin
                 Close;
                 Sql.Clear;
                 Sql.Add('Select * from TB_SerFixo where SFX_Coligada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
               End;
          with Relatorio.QrBaseRev do
               begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select * from TB_BaseRevisao A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_VeiModCar D, Tb_VeiModCha E, Tb_PadVeic F, Tb_IndiceRevisao G, Tb_SerConCar H');
                  Sql.Add('Where B.Sco_Cod = A.Bre_Sco and C.Vei_Nun = A.Bre_Vei and D.Car_Cod = C.Vei_CarMod and E.Mod_Cod = C.Vei_ModCha and F.Pad_Cod = C.Vei_Padrao and G.Tin_Vei = C.Vei_Nun and H.Csc_Cod = A.Bre_Csc');
                  Sql.Add('and c.VEi_nun = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                 //      Sql.Add('And H.Rpr_Vei = C.Vei_nun and Rpr_Trg = ' + QuotedStr(NumOS));
                  Sql.Add('And A.Bre_Emite = ' + QuotedStr('1'));
                  Sql.Add('Order by B.Sco_Des');
                  Open;
               if not eof then
                  Begin
                  DtMovPre.DataSet.Open;
                  Repeat
                    DtMovPre.DataSet.Insert;
                    DtMovPre.DataSet.FieldByName('RPR_Vei').AsString       :=DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_DTABE').AsString     :=AberturaOs;
                    DtMovPre.DataSet.FieldByName('RPR_ODOINS').AsString    :=Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_CSC').AsString       :=Relatorio.QrBaseRev.FieldByName('BRE_CSC').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_iDENTIFICADOR').AsString   :=Relatorio.QrBaseRev.FieldByName('BRE_IDENTIFICADOR').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_DTULTTR').AsString   :=Relatorio.QrBaseRev.FieldByName('BRE_DAT').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_Carencia').AsString  :=Relatorio.QrBaseRev.FieldByName('Sco_validade').AsString;
                    DtMovPre.DataSet.FieldByName('RPR_SCO').AsString       :=Relatorio.QrBaseRev.FieldByName('Sco_Cod').AsString;
                    if (StrToInt(Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsString) + StrToInt(Relatorio.QrBaseRev.FieldByName('BRE_Rod').AsString)) > StrToInt(Relatorio.QrBaseRev.FieldByName('Tin_Odo').AsString) then
                                   DtMovPre.DataSet.FieldByName('RPR_Vcd').AsString       :='NAO'
                                   else
                                   DtMovPre.DataSet.FieldByName('RPR_Vcd').AsString       :='SIM';
                    DtMovPre.DataSet.FieldByName('RPR_TRG').AsString       :=NumOs;
                    DtMovPre.DataSet.FieldByName('RPR_OdoVal').AsString    :=IntToStr(Relatorio.QrBaseRev.FieldByName('BRE_ODO').AsInteger + Relatorio.QrBaseRev.FieldByName('SCO_Validade').AsInteger);
                    DtMovPre.DataSet.post;
                   Next
                 Until Eof;
                 End;
                 end;
                 with Relatorio.QrBaseRev do
                    begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Select * from TB_MovRevPre A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_VeiModCar D, Tb_VeiModCha E, Tb_PadVeic F, Tb_IndiceRevisao G, Tb_SerConCar H');
                    Sql.Add('Where B.Sco_Cod = A.Rpr_Sco and C.Vei_Nun = A.Rpr_Vei and D.Car_Cod = C.Vei_CarMod and E.Mod_Cod = C.Vei_ModCha and F.Pad_Cod = C.Vei_Padrao and G.Tin_Vei = C.Vei_Nun and H.CSC_cod = A.Rpr_Csc');
                    Sql.Add('and c.VEi_nun = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                    Sql.Add('And A.Rpr_Vei = C.Vei_nun and Rpr_Trg = ' + QuotedStr(NumOS));
                    Sql.Add('Order by B.Sco_Des');
                   Open;
                   if not eof then
                      begin
                           if MessageDlg('A Revis�o foi gerada com Sucesso, Deseja imprimi-la ?',mtConfirmation,[mbyes,mbno],0) = mryes  then
                                begin
                                     Relatorio.Projeto.SetParam('Dt1',DataRevisao);
                                     Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                     Relatorio.Projeto.ExecuteReport('RvFichaVistoria');
//                                     Relatorio.Projeto.close;
                                end;
                      end;
                end;
              end
           else
   DtRevGer.DataSet.Cancel;
   Screen.Cursor:=CrDefault;
   Fechatabela.Click;
    end else
    begin
      MessageBox(handle,'Existe Revis�es ou Itens das Revis�es Abertas, � necess�rio fecha-los antes de Emitir nova Ordem de Servi�o !!','Revis�es n�o Finalizadas',MB_IconInformation+mb_Ok);
    end;

end;

procedure TFormCadastraAssociacao.SpeedButton3Click(Sender: TObject);
begin
           // if True then

            VerificaOSpendente;
            if OsStatus = 'A' then
                     begin
                               MessageBox(0, 'Encontrei uma OS aberta/pendente'+#13+#10+''+#13+#10+'Ser� necess�rio fecha-la para abrir outra!', 'Ordem de Servi�o Aberta', MB_ICONINFORMATION or MB_OK);
                               abort;
                     end
                     else
                     begin
                             WITH PAI.QrListaMotivoOS DO
                                    BEGIN
                                          CLOSE;
                                          Parameters.ParamByName('CODIGO').Value:='0';
                                          OPEN;
                                    END;
//                              PAI.VOS_VEI:=DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
//                              PAI.VOS_VEICULO:=DtVeiculos.DataSet.FieldByName('vei_numero').AsString;
                              Application.CreateForm(TformOs, FormOs);
                                    // ENVIA VEICULO PARA FORM OS
                                    PAI.VOS_VEI:=DtVeiculos.DataSet.FieldByName('vei_nun').AsString;
                                    PAI.VOS_VEICULO:=DtVeiculos.DataSet.FieldByName('vei_numero').AsString;

                                   FormOs.Editdata.Text:=DateToStr(now); // insere datas de viegencia
                                   FormOs.EditdataFinal.Text:=DateToStr(now); // insere datas de viegencia
                              FormOs.ShowModal;
                     end;

end;

procedure TFormCadastraAssociacao.BtcloseClick(Sender: TObject);
begin
      Close;
end;

procedure TFormCadastraAssociacao.BtVoltaTodosClick(Sender: TObject);
VAR
      OS, CC : String;
      QrAtualizaMOv: Tadoquery;
      QrAtualizaBase: Tadoquery;
begin
/// RECEBER TODAS REVISOES DE UMA VEZ SEM ALTERA��O
///
///

      if (MessageDlg('Este procedimento recebe todas os itens da revis�o sem altera��es, voc� s� deve fazer isso ap�s receber os itens que sofrer�o altera��es'+#13+#10+''+#13+#10+'Deseja continuar?', mtInformation, [mbYes, mbNo], 0) = mrYes) then
      begin
            Screen.Cursor:=CrHourGlass;
            QrAtualizaMov:=tadoquery.Create(nil);
            QrAtualizaMov.Connection:=pai.ConctPai;
            QrAtualizaBase:=tadoquery.Create(nil);
            QrAtualizaBase.Connection:=pai.ConctPai;
            Os:=DtMovRevPre.DataSet.FieldByName('RPR_TRG').AsString;
            CC:=DtMovRevPre.DataSet.FieldByName('RPR_VEI').AsString;
            DtTbBaseRevisao.DataSet.Open;
            With QrAtualizaMov do
                 begin
                       Close;
                       Sql.Clear;
                         Sql.Add('Update tb_MovRevPre set Rpr_Status = (''F''), RPR_DTFec = (:dtfechamento), rpr_his = (:his), rpr_vei=(:veiculo)');
                         Sql.Add('where RPR_Status = ''A'' and rpr_trg = ' + QuotedStr(OS));
                         Parameters.ParamByName('dtfechamento').Value:=DtTbBaseRevisao.DataSet.FieldByName('BRE_Dat').AsString;
                         Parameters.ParamByName('veiculo').Value:=CC;
                         Parameters.ParamByName('his').Value:='N�o revisao ou desnecess�rio - ' + DateToStr(now);
                         ExecSql;
                 end;

            With QrAtualizaBase do
                 begin
                         Close;
                         Sql.Clear;
                         Sql.Add('Update tb_BaseRevisao set BRE_Status = (''F'')');
                         Sql.Add('where BRE_Status = ''A'' and BRE_VEI = ' + QuotedStr(CC));
                         ExecSql;
                 end;
           DtTbBaseRevisao.DataSet.close;
           DtMovRevPre.DataSet.Close;
           DtMovRevPre.DataSet.open;
           DtRevGer.dataset.close;
           DtRevGer.Dataset.Open;

           QrAtualizaMov.Free;
           QrAtualizaBase.Free;
           screen.Cursor:=CrDefault;
     end;


end;

procedure TFormCadastraAssociacao.TabSheet2Show(Sender: TObject);
begin
DtMovRevPre.DataSet.Close;
end;

procedure TFormCadastraAssociacao.TabSheet4Show(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
   With Pai.QrMovRevisao do
       begin
       Close;
       Sql.Clear;
       Sql.Add('Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerConCar C');
       Sql.Add('Where B.Sco_Cod = A.RPR_Sco and C.Csc_Cod = A.RPR_Csc');
//       Sql.Add('and RPR_TRG = ' + QuotedStr(DtRevGer.DataSet.FieldByName('Trg_Cod').AsString));
       Sql.Add('And A.RPR_Status = ' + QuotedStr('A'));
       Sql.Add('And A.RPR_Vei = ' + quotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
       Open;
       end;
//DtPrd.DataSet.Open;
Screen.Cursor:=CrDefault;
Execrev.Enabled:=false;
NoExecrev.Enabled:=false;
end;

procedure TFormCadastraAssociacao.VerificaOSpendente;
  var Q: tadoquery;
begin
//            formentrada.memo1.text:='INICIANDO1';

            OsStatus:='F';
            Q:=tadoquery.create(nil);
            Q.Connection:=pai.ConctPai;
            Q.CLOSE;
            Q.SQL.Clear;
//            formentrada.memo1.text:='INICIANDO2';
            Q.SQL.ADD('select * from TB_OSMOV ');
            Q.SQL.Add('WHERE TOS_vei = ' + QUOTEDSTR(QrVeiculos.FieldByName('vei_nun').AsString));
            Q.SQL.Add('And (Tos_DtVigIni<=:DtAbertura and Tos_DtVigFim>=:DtFechamento)');
            Q.SQL.Add('and Tos_status = ''A''');
            Q.Parameters.ParamByName('DtAbertura').Value:= DateToStr(now);
            Q.Parameters.ParamByName('DtFechamento').Value:= DateToStr(now);

            Q.Open;
            //formentrada.memo1.text:=q.SQL.Text;


            if not Q.eof then
                   begin
                          OsStatus:='A';
                      //  abort;
                   end
                   else
                   begin
                          OsStatus:='F'
                   end;
            Q.Free;




end;
end.
