unit UnitPneuMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB, jpeg, ExtCtrls, ADODB, Grids,
  DBGrids, ComCtrls;

type
  TFormPneuMovimento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    EditVei: TEdit;
    Estrutura: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Image3: TImage;
    AroDD: TImage;
    AroDe: TImage;
    AroTDE: TImage;
    AroTDI: TImage;
    AroTEI: TImage;
    AroTEE: TImage;
    AroRDE: TImage;
    AroRDI: TImage;
    AroREI: TImage;
    AroREE: TImage;
    DtVeiculos: TDataSource;
    PnTDE: TImage;
    PnTDI: TImage;
    PnRDI: TImage;
    PnRDE: TImage;
    PnDD: TImage;
    PnDE: TImage;
    PnTEE: TImage;
    PnTEI: TImage;
    PnREI: TImage;
    PnREE: TImage;
    QrMovPneu: TADOQuery;
    QrVeiculos: TADOQuery;
    QrVeiculosVEI_NUN: TWideStringField;
    QrVeiculosVEI_PLACA: TWideStringField;
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
    DtColigada: TDataSource;
    DtVeiPn: TDataSource;
    DBText3: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Label2: TLabel;
    DtMov: TDataSource;
    DtPneus: TDataSource;
    QrPneusCompletos: TADOQuery;
    QrHis: TADOQuery;
    DtHis: TDataSource;
    QrMotRet: TADOQuery;
    Panel1: TPanel;
    DBText19: TDBText;
    Label8: TLabel;
    QrTemp: TADOQuery;
    QrPegaKm: TADOQuery;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    DBText15: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    DBText16: TDBText;
    Label6: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    Label7: TLabel;
    Label9: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Kmrodado: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    QrMovVei: TADOQuery;
    DtMovVei: TDataSource;
    DBGrid2: TDBGrid;
    QrVeiculosVei_Numero: TWideStringField;
    DBText22: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure AroDDClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AroDeClick(Sender: TObject);
    procedure AroTDEClick(Sender: TObject);
    procedure AroTDIClick(Sender: TObject);
    procedure AroTEEClick(Sender: TObject);
    procedure AroTEIClick(Sender: TObject);
    procedure AroRDEClick(Sender: TObject);
    procedure AroRDIClick(Sender: TObject);
    procedure AroREIClick(Sender: TObject);
    procedure AroREEClick(Sender: TObject);
    procedure PnDDClick(Sender: TObject);
    procedure EditVeiKeyPress(Sender: TObject; var Key: Char);
    procedure EditVeiEnter(Sender: TObject);
    procedure PnDEClick(Sender: TObject);
    procedure PnTEEClick(Sender: TObject);
    procedure PnTEIClick(Sender: TObject);
    procedure PnTDIClick(Sender: TObject);
    procedure PnTDEClick(Sender: TObject);
    procedure PnREEClick(Sender: TObject);
    procedure PnREIClick(Sender: TObject);
    procedure PnRDIClick(Sender: TObject);
    procedure PnRDEClick(Sender: TObject);
    procedure PnDDDblClick(Sender: TObject);
    procedure PnDEDblClick(Sender: TObject);
    procedure PnTEEDblClick(Sender: TObject);
    procedure PnTEIDblClick(Sender: TObject);
    procedure PnTDIDblClick(Sender: TObject);
    procedure PnTDEDblClick(Sender: TObject);
    procedure PnREEDblClick(Sender: TObject);
    procedure PnREIDblClick(Sender: TObject);
    procedure PnRDIDblClick(Sender: TObject);
    procedure PnRDEDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure PegaKm(Sender :  TObject);
    procedure TabSheet6Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PosicaoNova:string;
    PneuMovimentado: string;
  end;

var
  FormPneuMovimento: TFormPneuMovimento;
   PneuSelecionado : string[10];
implementation

uses UnitServerPai, UnitPneuInclusao, UnitPneuOpcaoRetirada;

{$R *.dfm}

procedure TFormPneuMovimento.AroDDClick(Sender: TObject);
begin
posicaoNova:='DD';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;


end;

procedure TFormPneuMovimento.AroDeClick(Sender: TObject);
begin
posicaoNova:='DE';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroRDEClick(Sender: TObject);
begin
posicaoNova:='CDE';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroRDIClick(Sender: TObject);
begin
posicaoNova:='CDI';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroREEClick(Sender: TObject);
begin
posicaoNova:='CEE';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroREIClick(Sender: TObject);
begin
posicaoNova:='CEI';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroTDEClick(Sender: TObject);
begin
posicaoNova:='TDE';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroTDIClick(Sender: TObject);
begin
posicaoNova:='TDI';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroTEEClick(Sender: TObject);
begin
posicaoNova:='TEE';
Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.AroTEIClick(Sender: TObject);
begin
    posicaoNova:='TEI';
    Application.CreateForm(TFormPneuInclusao,FormPneuInclusao);
    FormPneuInclusao.ShowModal;

end;

procedure TFormPneuMovimento.BitBtn1Click(Sender: TObject);
begin
With QrVeiculos do
Begin
      PageControl1.ActivePageIndex:=0;
      PageControl2.ActivePageIndex:=0;
      Close;
      Sql.Clear;
      Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D');
      Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod');
      Sql.Add('and A.Vei_Nun = D.Tin_Vei');
      Sql.Add('And A.Vei_Coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
      Sql.Add('And A.Vei_numero = ' + QuotedStr(EditVei.text));
      open;
      if not eof then
             begin
                    if DtVeiculos.DataSet.FieldByName('Mod_Eixos').AsString = '2' then
                              BEGIN
                              image1.Height:=115;
                              Image4.Visible:=false;
                              AroREE.Visible:=false;
                              AroREI.Visible:=false;
                              AroRDE.Visible:=false;
                              AroRDI.Visible:=false;

                              END
                              else
                              BEGIN
                              Image4.Visible:=true;
                              AroREE.Visible:=TRUE;
                              AroREI.Visible:=TRUE;
                              AroRDE.Visible:=TRUE;
                              AroRDI.Visible:=TRUE;
                              image1.Height:=225;
                              END;

                    with pai.QrVeiPn do
                          begin
                                Close;
                                Sql.Clear;

                                Sql.Add('Select * from Tb_PnVeiPn where TVP_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring));

                                Open;

                                if DtVeiPn.DataSet.FieldByName('TVP_DD').AsString <> '' then
                                      PnDD.Visible:=true
                                      else
                                      PnDD.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_DE').AsString <> '' then
                                      PnDE.Visible:=true
                                      else
                                      PnDE.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_TDI').AsString <> '' then
                                      PnTdi.Visible:=true
                                      else
                                      PnTdi.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_Tde').AsString <> '' then
                                      PnTde.Visible:=true
                                      else
                                      PnTde.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_TEI').AsString <> '' then
                                      PnTei.Visible:=true
                                      else
                                      PnTei.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_TEe').AsString <> '' then
                                      PnTee.Visible:=true
                                      else
                                      PnTee.Visible:=False;
// 3 eixos
                                if DtVeiPn.DataSet.FieldByName('TVP_CDI').AsString <> '' then
                                      PnRdi.Visible:=true
                                      else
                                      PnRdi.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_Cde').AsString <> '' then
                                      PnRde.Visible:=true
                                      else
                                      PnRde.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_CEI').AsString <> '' then
                                      PnRei.Visible:=true
                                      else
                                      PnRei.Visible:=False;
                                if DtVeiPn.DataSet.FieldByName('TVP_CEe').AsString <> '' then
                                      PnRee.Visible:=true
                                      else
                                      PnRee.Visible:=False;
                                if eof then
                                      begin
                                           insert;
                                           Pai.QrVeiPn.FieldByName('TVP_vei').AsString:= DtVeiculos.DataSet.FieldByName('Vei_Nun').asstring;
                                           post;
                                      end;
                                Estrutura.Visible:=true;
                                GroupBox2.Visible:=true;
                                GroupBox3.Visible:=true;
                                PageControl1.ActivePageIndex:=0;
                                PageControl2.enabled:=true;

                          end;
             end
             else begin
                    ShowMessage('Ve�culo n�o encontrado ou pertence a outra coligada');
                    EditVei.Text:='';
                    EditVei.SetFocus;
             end;
End;
end;

procedure TFormPneuMovimento.EditVeiEnter(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
PageControl2.ActivePageIndex:=0;
DtPneus.DataSet.Close;
Label16.Caption:='';
Kmrodado.Caption:='';
PageControl1.Enabled:=true;
PageControl2.Enabled:=true;
DtMovVei.DataSet.Close;
Estrutura.Visible:=false;
GroupBox3.Visible:=false;
GroupBox2.Visible:=false;

end;

procedure TFormPneuMovimento.EditVeiKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
         key:=#0;
         BitBtn1.Click;
    end
    else
    begin
          PageControl1.ActivePageIndex:=0;
          PageControl1.Enabled:=false;
          Estrutura.Visible:=false;
          GroupBox3.Visible:=false;
          GroupBox2.Visible:=false;
          Label16.Caption:='';
          Kmrodado.Caption:='';
          DtPneus.DataSet.Close;
    end;
end;

procedure TFormPneuMovimento.FormActivate(Sender: TObject);
begin
Estrutura.Visible:=false;
QrMovPneu.Close;
QrVeiculos.Close;
QrHis.Close;
editvei.SetFocus;
//QrMotRet.Open;
end;

procedure TFormPneuMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtHis.DataSet.Close;
DtVeiculos.DataSet.Close;
DtVeiPn.DataSet.Close;
DtMov.DataSet.Close;
QrMotRet.close;
action:=cafree;

end;

procedure TFormPneuMovimento.FormShow(Sender: TObject);
begin
estrutura.Visible:=false;
end;

procedure TFormPneuMovimento.PnDDClick(Sender: TObject);
begin
posicaoNova:='DD';
      with QrPneusCompletos Do
           begin
               Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             GroupBox3.Visible:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;
end;

procedure TFormPneuMovimento.PnDDDblClick(Sender: TObject);
begin
posicaoNova:='DD';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnDEClick(Sender: TObject);
begin
posicaoNova:='DE';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                        memo1.Text:=sql.Text;
                Open;
                          PageControl1.ActivePageIndex:=0;
                          PageControl1.Enabled:=true;
                          GroupBox3.Visible:=true;
                          KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnDEDblClick(Sender: TObject);
begin
posicaoNova:='DE';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnRDEClick(Sender: TObject);
begin
posicaoNova:='CDE';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
             GroupBox3.Visible:=true;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnRDEDblClick(Sender: TObject);
begin
posicaoNova:='CDE';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnRDIClick(Sender: TObject);
begin
posicaoNova:='CDI';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
             GroupBox3.Visible:=true;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnRDIDblClick(Sender: TObject);
begin
posicaoNova:='CDI';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnREEClick(Sender: TObject);
begin
posicaoNova:='CEE';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
             GroupBox3.Visible:=true;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnREEDblClick(Sender: TObject);
begin
posicaoNova:='CEE';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnREIClick(Sender: TObject);
begin
posicaoNova:='CEI';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
             Open;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             GroupBox3.Visible:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
        With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnREIDblClick(Sender: TObject);
begin
posicaoNova:='CEI';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnTDEClick(Sender: TObject);
begin
posicaoNova:='TDE';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
             GroupBox3.Visible:=true;
             PageControl1.ActivePageIndex:=0;
             PageControl1.Enabled:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnTDEDblClick(Sender: TObject);
begin
posicaoNova:='TDE';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnTDIClick(Sender: TObject);
begin
posicaoNova:='TDI';
      with QrPneusCompletos Do
           begin
               Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
               Open;
               GroupBox3.Visible:=true;
               PageControl1.ActivePageIndex:=0;
               PageControl1.Enabled:=true;
               KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnTDIDblClick(Sender: TObject);
begin
posicaoNova:='TDI';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnTEEClick(Sender: TObject);
begin
posicaoNova:='TEE';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                MEMO1.TEXT:=SQL.Text;
                Open;
                                                       // fore into more pagecontrol.tab
             PageControl1.ActivePageIndex:=0;
                PageControl1.Enabled:=true;
               GroupBox3.Visible:=true;
             KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnTEEDblClick(Sender: TObject);
begin
posicaoNova:='TEE';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.PnTEIClick(Sender: TObject);
begin
posicaoNova:='TEI';
      with QrPneusCompletos Do
           begin
                Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnMov E');
                  Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                   Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                    Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And PMov_Pneu = A.Tcp_Cod');
                      Sql.Add('And E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                       Sql.Add('And E.Pmov_MotRet is null ');
                        Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(PosicaoNova));
                Open;
                PageControl1.ActivePageIndex:=0;
                GroupBox3.Visible:=true;
                PageControl1.Enabled:=true;
                KmRodado.Caption:=IntToStr(StrToInt(DtVeiculos.DataSet.FieldByName('Tin_odo').AsString) - StrtoInt(DtPneus.DataSet.FieldByName('Pmov_KmEnt').AsString));
           end;
       With QrTemp do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Select sum(Pmov_KmRod) as KM from tb_pnmov');
                  Sql.Add('where Pmov_pneu = ' + QuotedStr(DtPneus.DataSet.FieldByName('PMov_Pneu').AsString));
                  Sql.Add('group By Pmov_pneu');
                  Open;
                  Label16.Caption:=FormatFloat('###,##0',QrTemp.Fieldbyname('KM').AsInteger+StrToInt(Kmrodado.Caption));
                  Close;
            end;

end;

procedure TFormPneuMovimento.PnTEIDblClick(Sender: TObject);
begin
posicaoNova:='TEI';
Application.CreateForm(TFormPneuOpcaoRetirada,FormPneuOpcaoRetirada);
FormPneuOpcaoRetirada.Show;

end;

procedure TFormPneuMovimento.TabSheet2Exit(Sender: TObject);
begin
QrHis.Close;
end;

procedure TFormPneuMovimento.TabSheet2Show(Sender: TObject);
begin
     with QrHis do
          begin
                 Close;
                 Parameters.ParamByName('pneu').Value:=DtPneus.DataSet.FieldByName('Tcp_Cod').AsString;
                 Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                 Open;
          end;
end;
procedure TFormPneuMovimento.TabSheet6Show(Sender: TObject);
begin
       with QrMovVei do
              begin
                    Close;
                    Parameters.ParamByName('veiculo').Value:=  DtVeiculos.DataSet.FieldByName('Vei_nun').AsString;
                    Open;
              end;
end;

Procedure TFormPneuMovimento.PegaKm(Sender: TObject);
begin
       With Pai.Qrtemp do
           Begin

           End;
  //..

end;
end.


