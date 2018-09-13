unit TelaMovimentaPneu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,
  XPMan, Buttons, JvExMask, JvToolEdit, ComCtrls;

type
  TFormMovimentaPneu = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtPneu: TDataSource;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    EditVeiculo: TDBText;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    EditKm: TDBEdit;
    Label10: TLabel;
    s: TLabel;
    EditFogo: TMaskEdit;
    DataSource2: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure EditFogoExit(Sender: TObject);
    procedure EditFogoEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditFogoKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     posicao,Num_Pneu:string;
    { Public declarations }
  end;

var
  FormMovimentaPneu: TFormMovimentaPneu;

implementation

uses TelaDesenhoPneusMovimento;

{$R *.dfm}

procedure TFormMovimentaPneu.EditFogoExit(Sender: TObject);
begin
EditFogo.color:=clWindow;
end;

procedure TFormMovimentaPneu.EditFogoEnter(Sender: TObject);
begin
           DbText1.Visible:=false;
           DbText2.Visible:=false;
           DbText3.Visible:=false;

end;

procedure TFormMovimentaPneu.BitBtn1Click(Sender: TObject);
begin
Table1M_IDADE_PNEU.text:=QrPneuT_STATUS.text;
Table1M_DATA_ENTRADA.Text:=EditData.text;
Table1M_MOTIVO_SAIDA.text:='I';
table1.Post;
TABLE2.OPEN;
TABLE2.EDIT;
Table2T_local.TEXT:='I';
TABLE2.Post;
TABLE2.Close;
with FormDesenhoPneusMovimenta.Veiculopeeu do
    begin
//    close;
//    filter:='veiculo = ' + s.caption + eDITvEICULO.caption + s.caption;
//    filtered:=True;
//    open;
    if not eof then
        begin
        Edit;
        if posicao =  'DD' THEN FormDesenhoPneusMovimenta.VeiculopeeuDD  .TEXT:=EDITFOGO.TEXT;
        if posicao =  'DE' THEN FormDesenhoPneusMovimenta.VeiculopeeuDE  .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TDE' THEN FormDesenhoPneusMovimenta.VeiculopeeuTDE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TDI' THEN FormDesenhoPneusMovimenta.VeiculopeeuTDI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TEE' THEN FormDesenhoPneusMovimenta.VeiculopeeuTEE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TEI' THEN FormDesenhoPneusMovimenta.VeiculopeeuTEI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CEI' THEN FormDesenhoPneusMovimenta.VeiculopeeuCEI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CEE' THEN FormDesenhoPneusMovimenta.VeiculopeeuCEE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CDE' THEN FormDesenhoPneusMovimenta.VeiculopeeuCDE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CDI' THEN FormDesenhoPneusMovimenta.VeiculopeeuCDI .TEXT:=EDITFOGO.TEXT;
        POST;
        end
        ELSE
        BEGIN
        INSERT;
        FormDesenhoPneusMovimenta.veiculopeeuVeiculo.TEXT:= FormDesenhoPneusMovimenta.QrVeiculo2VEICULO.text;;
        if posicao =  'DD' THEN FormDesenhoPneusMovimenta.VeiculopeeuDD  .TEXT:=EDITFOGO.TEXT;
        if posicao =  'DE' THEN FormDesenhoPneusMovimenta.VeiculopeeuDE  .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TDE' THEN FormDesenhoPneusMovimenta.VeiculopeeuTDE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TDI' THEN FormDesenhoPneusMovimenta.VeiculopeeuTDI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TEE' THEN FormDesenhoPneusMovimenta.VeiculopeeuTEE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'TEI' THEN FormDesenhoPneusMovimenta.VeiculopeeuTEI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CEI' THEN FormDesenhoPneusMovimenta.VeiculopeeuCEI .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CEE' THEN FormDesenhoPneusMovimenta.VeiculopeeuCEE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CDE' THEN FormDesenhoPneusMovimenta.VeiculopeeuCDE .TEXT:=EDITFOGO.TEXT;
        if posicao = 'CDI' THEN FormDesenhoPneusMovimenta.VeiculopeeuCDI .TEXT:=EDITFOGO.TEXT;
        POST;
        END;
    end;
qrpneu.close;
eDITFOGO.TEXT:='';
close;
end;

procedure TFormMovimentaPneu.BitBtn2Click(Sender: TObject);
begin
tABLE1.CANCEL;
tABLE2.CANCEL;

CLOSE;
end;

procedure TFormMovimentaPneu.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   BitBtn1.Setfocus;
   end;

end;

procedure TFormMovimentaPneu.EditFogoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    with qrpneu do
        begin
        close;
        filter:='T_NUMERO_FOGO = ' + s.caption + editFogo.Text + s.caption;
        filtered:=true;
        open;
        if eof then
           BEGIN
           ShowMessage('Este Pneu não Existe ou não esta disponível no estoque');
           EDITFOGO.TEXT:='';
           EDITfOGO.SETFOCUS;
           END
           ELSE
           BEGIN
           table1.open;
           table1.Insert;
           Table1M_NUMERO_FOGO.text:=EditFoGo.text;
           Table1M_VEICULO.text:=EditVeiculo.caption;
           Table1M_POSICAO.Text:=posicao;
           editData.setfocus;
           DbText1.Visible:=true;
           DbText2.Visible:=true;
           DbText3.Visible:=true;
           END;
        end;

    end;
end;

procedure TFormMovimentaPneu.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    If StrtoDate(EditData.text) < StrtoDate(QrPneuT_DATA_AQUIZICAO.text) then
        Begin
        ShowMessage('Data de Movimentação antecede a Data de aquizição, verifique !'+ #13 +
                    'Movimentação : ' + EditData.text + #13 +
                    'Aquizição    : ' + QrPneuT_DATA_AQUIZICAO.text);
        EditData.text:=DateTostr(now);
        EditData.Setfocus;

        End
        Else  editKm.setfocus;

    end;

end;

procedure TFormMovimentaPneu.EditKmKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    bitbtn1.Enabled:=true;
    bitbtn1.setfocus;

    end;

end;

procedure TFormMovimentaPneu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//table1.Close;
//QRPNEU.CLOSE;
action:=cafree;
end;

procedure TFormMovimentaPneu.FormHide(Sender: TObject);
begin
table1.Close;
QRPNEU.CLOSE;

end;

procedure TFormMovimentaPneu.FormActivate(Sender: TObject);
begin
QRPNEU.CLOSE;
qrpneu.Filtered:=false;
QRPNEU.OPEN;
Label11.Caption:=Posicao;
EditFogo.Setfocus;
end;

procedure TFormMovimentaPneu.EditDataEnter(Sender: TObject);
begin
editdata.text:=datetostr(now);
end;

procedure TFormMovimentaPneu.DBGrid1DblClick(Sender: TObject);
begin
eDITfOGO.TEXT:=QrPneuT_NUMERO_FOGO.TEXT;
EditFogo.SetFocus;
end;

procedure TFormMovimentaPneu.FormShow(Sender: TObject);
begin
qrpneu.open;
qrpneu.refresh;
end;

end.
