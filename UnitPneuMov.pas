unit UnitPneuMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, DB, DBTables, DBCtrls, Menus,
  Mask, ActnColorMaps, ActnMan, XPMan, ComCtrls,
 AppEvnts;

type
  TFormPneusMov = class(TForm)
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    PopupMenu1: TPopupMenu;
    EnviarparEstoque1: TMenuItem;
    PneuFurado1: TMenuItem;


    
    EnviarparConserto1: TMenuItem;
    SairparaRodizio1: TMenuItem;
    Sucatear1: TMenuItem;
    Reformar1: TMenuItem;
    MovimentaodePneus1: TMenuItem;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    s: TLabel;
    buscapneu: TBitBtn;
    XPManifest1: TXPManifest;
    DBText15: TDBText;
    GroupBox2: TGroupBox;
    Image2: TImage;
    botaoDD: TBitBtn;
    Image1: TImage;
    BotaoDE: TBitBtn;
    DBText9: TDBText;
    DBText10: TDBText;
    BotaoTDE: TBitBtn;
    BotaoTDI: TBitBtn;
    BotaoTEI: TBitBtn;
    botaoTEE: TBitBtn;
    Image3: TImage;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText12: TDBText;
    DBText11: TDBText;
    lABEL11: TImage;
    lABEL1: TImage;
    lABEL14: TImage;
    lABEL15: TImage;
    lABEL12: TImage;
    lABEL13: TImage;
    Image4: TImage;
    SOME: TButton;
    Memo1: TMemo;
    DBText16: TDBText;
    Label4: TLabel;
    Label17: TLabel;
    DBText17: TDBText;
    Label18: TLabel;
    DBText18: TDBText;
    LabelCDI: TImage;
    LABELCDE: TImage;
    LABELCEI: TImage;
    LABELCEE: TImage;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    BOTAOCDE: TBitBtn;
    BOTAOCDI: TBitBtn;
    BOTAOCEI: TBitBtn;
    BOTAOCEE: TBitBtn;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    GroupBox4: TGroupBox;
    estoque: TImage;
    GroupBox5: TGroupBox;
    sucata: TImage;
    GroupBox6: TGroupBox;
    reforma: TImage;
    procedure buscapneuClick(Sender: TObject);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoTEIClick(Sender: TObject);
    procedure eDITvEICULOEnter(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoDEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure botaoDDMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure botaoTEEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoTEIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoTDIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoTDEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BotaoDEClick(Sender: TObject);
    procedure botaoDDClick(Sender: TObject);
    procedure botaoTEEClick(Sender: TObject);
    procedure BotaoTDIClick(Sender: TObject);
    procedure BotaoTDEClick(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure eDITvEICULOClick(Sender: TObject);
    procedure DBLookupListBox1DblClick(Sender: TObject);
    procedure SOMEClick(Sender: TObject);
    procedure BotaoTDIEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure BotaoTDIStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure botaoDDDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Edit1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure LabelCDIClick(Sender: TObject);
    procedure LABELCDEClick(Sender: TObject);
    procedure LABELCEIClick(Sender: TObject);
    procedure LABELCEEClick(Sender: TObject);
    procedure BOTAOCDEClick(Sender: TObject);
    procedure BOTAOCEEClick(Sender: TObject);
    procedure BOTAOCDIClick(Sender: TObject);
    procedure BOTAOCDEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BOTAOCDIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BOTAOCEIClick(Sender: TObject);
    procedure BOTAOCEIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BOTAOCEEMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure JvTransparentButton1Click(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure DBLookupListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure estoqueDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure botaoDDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure botaoDDEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure sucataDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure reformaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BotaoDEDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure botaoTEEDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BotaoTEIDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BotaoTDIDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BotaoTDEDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BOTAOCEEDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BOTAOCEIDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BOTAOCDIDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BOTAOCDEDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BotaoDEDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBLookupListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRVEICULO2AfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    VeiculoAtual,LOCAL,PNEUselecionado:string;
    NomeBotao:String;
    { Public declarations }
  end;

var
  FormPneusMov: TFormPneusMov;
  MOVE_KM,MOVE_DATA,MOVE_VEICULO,PneuSai,PneuEntra:STRING;

implementation

uses UnitPneuRetirada, UnitPneuInclusao, UnitServerPai;

{$R *.dfm}

procedure TFormPneusMov.buscapneuClick(Sender: TObject);
begin
//WITH QRVEICULO2 DO
//      BEGIN
//      CLOSE;
//      FILTER:='VEICULO = ' + S.CAPTION + QRVEICULOVEICULO.TEXT + S.CAPTION;
//      FILTERED:=TRUE;
//      OPEN;
//      END;

    END;
//QrPneu.Open;
//QrPneu.Refresh;
//veiculopeeu.open;
//VeiculoPeeu.refresh;

procedure TFormPneusMov.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
groupbox1.Visible:=false;

end;

procedure TFormPneusMov.BotaoTEIClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
local:='TEI';
veiculopeeuTEI.text:='';
Application.CreateForm(TFormPneuRetirada, FormPneuRetirada);
FormPneuRetirada.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuRetirada.show;

end;

procedure TFormPneusMov.eDITvEICULOEnter(Sender: TObject);
begin
botaodd.Visible:=false;
botaode.Visible:=false;
botaoTdE.Visible:=false;
botaoTdI.Visible:=false;
botaoTEI.Visible:=false;
botaoTEE.Visible:=false;
qrveiculo2.Close;
//qrveiculo.Close;
end;

procedure TFormPneusMov.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
groupbox1.Visible:=false;

end;

procedure TFormPneusMov.Image2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
groupbox1.Visible:=false;

end;

procedure TFormPneusMov.BotaoDEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='DE';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuDE.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.botaoDDMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='DD';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + veiculopeeuDD.text + s.caption ;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.botaoTEEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='TEE';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuTEE.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BotaoTEIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='TEI';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuTEI.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BotaoTDIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='TDI';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuTDI.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BotaoTDEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='TDE';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + veiculopeeuTDE.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;


end;

procedure TFormPneusMov.BotaoDEClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuDE.text:='';
LOCAL:='DE';
Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
FormPneuInclusao.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuInclusao.show;

end;

procedure TFormPneusMov.botaoDDClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuDD.text:='';
LOCAL:='DD';
Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
FormPneuInclusao.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuInclusao.show;

end;

procedure TFormPneusMov.botaoTEEClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuTEE.text:='';
LOCAL:='TEE';
Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
FormPneuInclusao.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuInclusao.show;

end;

procedure TFormPneusMov.BotaoTDIClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuTDI.text:='';
LOCAL:='TDI';
Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
FormPneuInclusao.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuInclusao.show;

end;

procedure TFormPneusMov.BotaoTDEClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuTDE.text:='';
LOCAL:='TDE';
Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
FormPneuInclusao.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormPneuInclusao.show;

end;

procedure TFormPneusMov.Label13Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição ' + #13 +#13 +#13 +#13 + 'TDE',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.POSICAO:='TDE'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormPneuInclusao.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.Label12Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                      ' +#13 + #13 +#13 +#13 + '             TDI',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='TDI'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormPneuInclusao.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.Label14Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                     ' +#13 +#13 +#13 +#13 + '             TEE',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='TEE'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormPneuInclusao.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.Label15Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                      ' +#13 +#13 +#13 +#13 + '             TEI',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='TEI'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormPneuInclusao.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.Label1Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                       ' +#13 +#13 +#13 +#13 + '              DE',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='DE'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.Label11Click(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                      ' + #13 +#13 +#13 +#13 + '             DD',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='DD'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;
end;

procedure TFormPneusMov.FormShow(Sender: TObject);
begin
//FormDesenhoPneusMovimenta.AlphaBlendValue := 220; FormDesenhoPneusMovimenta.AlphaBlend := True;
//EDITVEICULO.SETFOCUS;
end;

procedure TFormPneusMov.FormActivate(Sender: TObject);
begin
veiculopeeu.close;
//vEICULOpEEU.OPEN;
QRVEICULO2.close;
qrveiculo2.Open;
QrVeiculo2.Refresh;
groupBox2.Visible:=false;
groupBox1.Visible:=false;
dbLOOKUPlISTbOX1.SetFocus;
end;

procedure TFormPneusMov.GroupBox2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
groupbox1.Visible:=false;

end;

procedure TFormPneusMov.eDITvEICULOClick(Sender: TObject);
begin
EditVeiculo.text:='';
end;

procedure TFormPneusMov.DBLookupListBox1DblClick(
  Sender: TObject);
begin
SCREEN.cursor:=crhourGlass;
//          Application.CreateForm(TFormMovimentaPneu, FormMovimentaPneu);
//          FormMovimentaPneu.Num_pneu:=QRVEICULO2VEICULO.text;
//          VeiculoPeeu.close;
          SOMECLICK(NIL);
        //  EditVeiculo.text:=qrveiculo2veiculo.text;
          GroupBox2.Visible:=tRUE;
          memo1.lines.text:=QrVeiculo2Veiculo.text;
          if QrVeiculo2MEDIDAS.text = '2' then
               begin
               Image1.Height:=168;
               Image4.Visible:=false;
               LABELCDI.VISIBLE:=FALSE;
               LABELCDE.VISIBLE:=FALSE;
               LABELCEI.VISIBLE:=FALSE;
               LABELCEE.VISIBLE:=FALSE;
               BOTAOCDE.Visible:=FALSE;
               BOTAOCDI.Visible:=FALSE;
               BOTAOCEE.Visible:=FALSE;
               BOTAOCEI.Visible:=FALSE;
               end;
          if QrVeiculo2MEDIDAS.text = '3' then
               begin
               Image1.Height:=256;
               Image4.Visible:=True;
               LABELCDI.VISIBLE:=TRUE;
               LABELCDE.VISIBLE:=TRUE;
               LABELCEI.VISIBLE:=TRUE;
               LABELCEE.VISIBLE:=TRUE;
               end;
//          QrPneu.Open;
//          QrPneu.Refresh;
          buscapneuclick(nil);

SCREEN.cursor:=CrDefault;
end;

procedure TFormPneusMov.SOMEClick(Sender: TObject);
begin
BOTAODE.Visible:=FALSE;
BOTAODD.Visible:=FALSE;
BOTAOTDE.Visible:=FALSE;
BOTAOTDI.Visible:=FALSE;
BOTAOTEE.Visible:=FALSE;
BOTAOTEI.Visible:=FALSE;

BOTAOCEI.Visible:=FALSE;
BOTAOCEE.Visible:=FALSE;
BOTAOCDE.Visible:=FALSE;
BOTAOCDI.Visible:=FALSE;

end;

procedure TFormPneusMov.BotaoTDIEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
showMessage('deu certo');
end;

procedure TFormPneusMov.BotaoTDIStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
showMessage('deu certo');

end;

procedure TFormPneusMov.botaoDDDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.Edit1DragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
accept:=true;
end;

procedure TFormPneusMov.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormPneusMov.DBLookupListBox1Click(
  Sender: TObject);
begin
groupbox1.Visible:=false;
groupbox2.Visible:=false;

end;

procedure TFormPneusMov.LabelCDIClick(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                     ' + #13 +#13 +#13 +#13 + '             RDI/CDI',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='CDI'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;

end;

procedure TFormPneusMov.LABELCDEClick(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                     ' + #13 +#13 +#13 +#13 + '              RDE/CDE',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='CDE'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;

end;

procedure TFormPneusMov.LABELCEIClick(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                     ' + #13 +#13 +#13 +#13 + '              REI/CEI',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='CEI'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;

end;

procedure TFormPneusMov.LABELCEEClick(Sender: TObject);
begin
if messagedlg('Deseja Instalar um Pneu nesta vaga deste veiculo na posição                    ' + #13 + #13 +#13 +#13 +'              REE/CEE',mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         Application.CreateForm(TFormPneuInclusao, FormPneuInclusao);
         FormPneuInclusao.posicao:='CEE'  ;
         FormPneuInclusao.EditVeiculo.caption:=QRVEICULO2VEICULO.text;
//         FormMovimentaPneu.qrpneu.Open;
         FormPneuInclusao.show;
         end;

end;

procedure TFormPneusMov.BOTAOCDEClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuCDE.text:='';
LOCAL:='CDE';
Application.CreateForm(TFormEscolheMovimento, FormEscolheMovimento);
FormEscolheMovimento.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormEscolheMovimento.show;


end;

procedure TFormPneusMov.BOTAOCEEClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuCEE.text:='';
LOCAL:='CEE';
Application.CreateForm(TFormEscolheMovimento, FormEscolheMovimento);
FormEscolheMovimento.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormEscolheMovimento.show;


end;

procedure TFormPneusMov.BOTAOCDIClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuCDI.text:='';
LOCAL:='CDI';
Application.CreateForm(TFormEscolheMovimento, FormEscolheMovimento);
FormEscolheMovimento.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormEscolheMovimento.show;


end;

procedure TFormPneusMov.BOTAOCDEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='CDE';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuCDE.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BOTAOCDIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='CDI';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuCDI.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BOTAOCEIClick(Sender: TObject);
begin
GroupBox2.Visible:=false;
veiculopeeu.edit;
veiculopeeuCEI.text:='';
LOCAL:='CEI';
Application.CreateForm(TFormEscolheMovimento, FormEscolheMovimento);
FormEscolheMovimento.editfogo.text:=QrPneuT_NUMERO_FOGO.text;
FormEscolheMovimento.show;


end;

procedure TFormPneusMov.BOTAOCEIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='CEI';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuCEI.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.BOTAOCEEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
pneuselecionado:='CEE';
with qrpneu do
    begin
    close;
    filter:='T_Numero_FOGO = ' + s.caption + VeiculopeeuCEE.text + s.caption;
    filtered:=true;
    open;
    groupbox1.Visible:=true;
    end;

end;

procedure TFormPneusMov.JvTransparentButton1Click(
  Sender: TObject);
begin
Close;
end;

procedure TFormPneusMov.ApplicationEvents1Hint(
  Sender: TObject);
begin
StatusBar1.Panels[0].text:=Application.hint;
end;

procedure TFormPneusMov.DBLookupListBox1KeyPress(
  Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN
   BEGIN
   KEY:=#0;
   DBLookupListBox1DblClick(NIL);
//   vEICULOPEEU.OPEN;
   END;
end;

procedure TFormPneusMov.estoqueDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;
end;

procedure TFormPneusMov.botaoDDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDE)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    BeginDrag(False);
//DbText9.Caption;
end;

procedure TFormPneusMov.botaoDDEndDrag(Sender,
  Target: TObject; X, Y: Integer);
begin
if Target = BotaoDE then // Destino
   Begin
   PneuSai   := VeiculoPeeuDD.text;
   PneuEntra := VeiculoPeeuDe.text;
   ShowMessage('Sai : ' + Pneusai + ' E entra : ' + PneuEntra);
   End;
end;

procedure TFormPneusMov.sucataDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.reformaDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BotaoDEDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.botaoTEEDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BotaoTEIDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BotaoTDIDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BotaoTDEDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BOTAOCEEDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) Then
    Accept:=True;

end;

procedure TFormPneusMov.BOTAOCEIDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BOTAOCDIDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDE) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BOTAOCDEDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
if (Sender = BotaoDD)  or
   (Sender = BotaoDe)  or
   (Sender = BotaoTDI) or
   (Sender = BotaoTDE) or
   (Sender = BotaoTEI) or
   (Sender = BotaoTEE) or
   (Sender = BotaoCDI) or
   (Sender = BotaoCEI) or
   (Sender = BotaoCEE) Then
    Accept:=True;

end;

procedure TFormPneusMov.BotaoDEDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
if Source = BotaoDD then
   BotaoDD.EndDrag(True);
if Source = BotaoDE then
   BotaoDE.EndDrag(True);
if Source = BotaoTEE then
   BotaoTEE.EndDrag(True);
if Source = BotaoTEI then
   BotaoTEI.EndDrag(True);
if Source = BotaoTDE then
   BotaoTDE.EndDrag(True);
if Source = BotaoTDI then
   BotaoTDI.EndDrag(True);
if Source = BotaoCEE then
   BotaoCEE.EndDrag(True);
if Source = BotaoCEI then
   BotaoCEI.EndDrag(True);
if Source = BotaoCDE then
   BotaoCDE.EndDrag(True);
if Source = BotaoCDI then
   BotaoCDI.EndDrag(True);
end;

procedure TFormPneusMov.DBLookupListBox1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if (Key = 38) or (key = 39) then
   Begin
      DBLookupListBox1DblClick(NIL);


   End;
end;

procedure TFormPneusMov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormPneusMov.QRVEICULO2AfterRefresh(
  DataSet: TDataSet);
begin
With VeiculoPeeu do
  Begin
  close;
  open;
  refresh;
  End;
end;

end.
