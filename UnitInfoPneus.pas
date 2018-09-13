unit UnitInfoPneus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, jpeg, ExtCtrls, StdCtrls, DB, ADODB, DBCtrls, Buttons;

type
  TFormInfoPneus = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image3: TImage;
    Image4: TImage;
    Image2: TImage;
    Image1: TImage;
    PnDE: TImage;
    PnDD: TImage;
    PnTEE: TImage;
    PnTEI: TImage;
    PnTDI: TImage;
    PnTDE: TImage;
    PnREE: TImage;
    PnREI: TImage;
    PnRDI: TImage;
    PnRDE: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    QrPneu: TADOQuery;
    LbDeFog: TLabel;
    LbDDFOG: TLabel;
    LbDEROD: TLabel;
    LbDDRod: TLabel;
    LbTEEFog: TLabel;
    LbTEERod: TLabel;
    LbTeiFog: TLabel;
    LbTeiRod: TLabel;
    LbtdiFog: TLabel;
    LbTdiRod: TLabel;
    LbTdeFog: TLabel;
    LbTdeRod: TLabel;
    LbREEFog: TLabel;
    LbREERod: TLabel;
    LbReiRod: TLabel;
    LbReiFog: TLabel;
    LbRdiRod: TLabel;
    lBrDIfOG: TLabel;
    LbRdeRod: TLabel;
    LbRdeFog: TLabel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    DtPne: TDataSource;
    DBText1: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    DBText4: TDBText;
    Label15: TLabel;
    DBText5: TDBText;
    Label16: TLabel;
    DBText6: TDBText;
    Label17: TLabel;
    DBText7: TDBText;
    Image8: TImage;
    procedure Panel1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PnDDClick(Sender: TObject);
    procedure PnDEClick(Sender: TObject);
    procedure PnTEEClick(Sender: TObject);
    procedure PnTEIClick(Sender: TObject);
    procedure PnTDIClick(Sender: TObject);
    procedure PnTDEClick(Sender: TObject);
    procedure PnREEClick(Sender: TObject);
    procedure PnREIClick(Sender: TObject);
    procedure PnRDIClick(Sender: TObject);
    procedure PnRDEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoPneus: TFormInfoPneus;
      fogo : string;
implementation

uses UnitServerPai, UnitTerminalConsulta;

{$R *.dfm}

procedure TFormInfoPneus.FormActivate(Sender: TObject);
var posicao:string;
begin
        if FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Mod_Eixos').AsInteger = 2 then
              begin
                      Image1.Height:=85;
                      Image4.Visible:=false;
                      Label7.Visible:=false;
                      Label8.Visible:=false;
                      Label9.Visible:=false;
                      Label10.Visible:=false;
              end;

        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as Medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef,M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_dd');
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           Pnde.Visible:=true;
                           LbDDFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbDDRod.Caption:='Km Rod.: ' + QrPneu.FieldByName('Rodados').AsString;
                     end;
                     close;
             end;

        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef,M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_de'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           Pndd.Visible:=true;
                           LbDEFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbDERod.Caption:='Km Rod.: ' + QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    TEE
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt  from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_TEE'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnTEE.Visible:=true;
                           LbTEEFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbTEERod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;

//    TEI
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_TEI'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnTEI.Visible:=true;
                           LbTEIFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbTEIRod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    TDI
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_TDI'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnTdi.Visible:=true;
                           LbTDIFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbTDIRod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;

//    TDe
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_TDe'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnTde.Visible:=true;
                           LbTDeFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbTDeRod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    REE
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_CEE'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnREE.Visible:=true;
                           LbREEFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbREERod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    REI
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_CEI'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnREI.Visible:=true;
                           LbREIFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbREIRod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    RDI
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_CDI'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnRDI.Visible:=true;
                           LbRDIFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbRDIRod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;
//    RDI
        with QrPneu do
             begin
                     close;
                     Sql.Clear;
                     Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as medida, V.Tpv_des as Vida,');
                     Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
                     Sql.Add('Left Join Tb_PnPneus B On B.Tcp_cod = A.Tvp_CDE'); // alterar aqui
                     Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
                     Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
                     Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
                     Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
                     Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod = ');
                     Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
                     Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
                     Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
                     Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                     OPEN;
                     if not eof then
                     begin
                           PnRDE.Visible:=true;
                           LbRDEFog.Caption:=QrPneu.FieldByName('fogo').AsString;
                           LbRDERod.Caption:=QrPneu.FieldByName('rodados').AsString;
                     end;
                     close;
             end;


end;

procedure TFormInfoPneus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormInfoPneus.Image5Click(Sender: TObject);
begin
close;close;
end;

procedure TFormInfoPneus.Panel1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoPneus.PnDDClick(Sender: TObject);
begin
        fogo:=Lbddfog.Caption;
        SpeedButton1.Click;
end;

procedure TFormInfoPneus.PnDEClick(Sender: TObject);
begin
        fogo:=Lbdefog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnRDEClick(Sender: TObject);
begin
        fogo:=Lbrdefog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnRDIClick(Sender: TObject);
begin
        fogo:=Lbrdifog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnREEClick(Sender: TObject);
begin
        fogo:=Lbreefog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnREIClick(Sender: TObject);
begin
        fogo:=Lbreifog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnTDEClick(Sender: TObject);
begin
        fogo:=Lbtdefog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnTDIClick(Sender: TObject);
begin
        fogo:=Lbtdifog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnTEEClick(Sender: TObject);
begin
        fogo:=Lbteefog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.PnTEIClick(Sender: TObject);
begin
        fogo:=Lbteifog.Caption;
        SpeedButton1.Click;

end;

procedure TFormInfoPneus.SpeedButton1Click(Sender: TObject);
begin
     With QrPneu do
         begin
              Close;
              Sql.Clear;
              Sql.Add('select B.Tcp_Fog as Fogo, D.Tpm_Des as Marca, F.Tpd_Des as Desenho, E.Tpm_Des as Medida, V.Tpv_des as Vida,');
              Sql.Add('(C.Tin_Odo - M.Pmov_KmEnt) as Rodados, R.Rmov_TipRef, M.Pmov_DtEnt from tb_pnveipn A');
              Sql.Add('Join Tb_PnPneus B On B.Tcp_fog = ' + fogo);
              Sql.Add('Join Tb_IndiceRevisao As C On C.Tin_vei = A.Tvp_Vei');
              Sql.Add('Join Tb_PnMarcas As D on D.Tpm_cod = B.Tcp_Marca');
              Sql.Add('Join Tb_PnMedidas As E on E.Tpm_cod = B.Tcp_Medida');
              Sql.Add('Join Tb_PnDesenhos As F on F.Tpd_cod = B.Tcp_Marca');
              Sql.Add('Left Join Tb_PnRefMov As R On R.Rmov_Pneu = B.Tcp_Cod and R.Rmov_Cod =');
              Sql.Add('(Select top 1 R2.Rmov_Cod from Tb_PnRefmov R2 where R2.Rmov_Pneu = R.Rmov_pneu order By R.RMov_cod desc)');
              Sql.Add('Left Join Tb_PnMov as M On M.PMov_Pneu = B.Tcp_Cod and M.Pmov_Motret Is null');
              Sql.Add('Join Tb_PnVida as V On V.Tpv_cod = B.Tcp_Vida');
              Sql.Add('Where Tvp_vei = ' + QuotedStr(Formterminalconsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
              open;

         end;


end;

end.
