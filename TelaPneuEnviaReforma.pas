{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit TelaPneuEnviaReforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,
  XPMan, Buttons, ActnMan, ActnColorMaps, CJVEditDate, JvExMask, JvToolEdit,
  ComCtrls;

type
  TFormPneuEnviaReforma = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    DtPneu: TDataSource;
    EditReformadora: TDBLookupComboBox;
    DtReformadora: TDataSource;
    Label4: TLabel;
    DtEnvia: TDataSource;
    SpeedButton1: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditReformadoraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditDataEnter(Sender: TObject);
  private
    { Private declarations }
  public
     numeropneu:string;
    { Public declarations }
  end;

var
  FormPneuEnviaReforma: TFormPneuEnviaReforma;
  x:integer;

implementation

uses TelaDesenhoPneusMovimento, TelaLogEnvioReforma;


{$R *.dfm}

procedure TFormPneuEnviaReforma.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    bitBtn1.Enabled:=true;
    BITbTN1.setfocus;

    end;

end;

procedure TFormPneuEnviaReforma.FormShow(Sender: TObject);
begin
AlphaBlendValue := 210;
AlphaBlend := True;

end;

procedure TFormPneuEnviaReforma.BitBtn2Click(Sender: TObject);
begin
QRPNEUS.CLOSE;
QRrEFORMADORA.CLOSE;

close;
end;

procedure TFormPneuEnviaReforma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormPneuEnviaReforma.FormActivate(Sender: TObject);
begin
QRPNEUS.OPEN;
QRrEFORMADORA.Open;
end;

procedure TFormPneuEnviaReforma.DBGrid1DblClick(Sender: TObject);
begin
table1.Open;
table1.Edit;
IF Table1T_ENVIO.TEXT = 'X' THEN
         BEgin
         Table1T_ENVIO.TEXT:='';
         Dec(x);
         End
         ELSE
         Begin
         Table1T_ENVIO.TEXT:='X';
         Inc(x);
         End;
TABLE1.POST;
//TABLE1.CLOSE;TABLE1.OPEN;
TABLE1.REFRESH;
//QRPNEUS.CLOSE;
QRPNEUS.CLOSE;
QRPNEUS.OPEN;
QRPNEUS.Refresh;
end;

procedure TFormPneuEnviaReforma.EditReformadoraKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   EditData.SetFocus;
end;

procedure TFormPneuEnviaReforma.BitBtn1Click(Sender: TObject);
begin
x:=0;
If MessageDlg('Confirma Envio de :                                                                             '+#13 +
               IntToStr(x)+ ' Pneu(s) '+#13+
               'Para : ' + QrReformadoraR_RAZAOSOCIAL.text +
               #13 +
               #13 +
               #13 +
               #13 +
               #13 +
               #13 +
               #13 +
               #13
               , mtConfirmation,[mbno, mbyes],0)
    =MrYes Then
     Begin
     Screen.Cursor:=CrHourglass;
     TbLog.EmptyTable;
     TbLog.Open;
     tbenvia.Open;
     TABLE1.OPEN;
     with QrPneus do
         Begin
         open;
         first;
         if not eof then
            begin
            repeat
            if QrPneusT_ENVIO.text = 'X' then        // X = PNEU MARCADO NO GRIDO COM ESCOLHIDO PARA ENVIO
               begin
                tbenvia.Insert;
         //      TbEnviaIDADE_REFORMA.text:=QrPneusT_STATUS.text;
               TbEnviaNUM_PNEU_REFORMADO.text:=QrPneusT_NUMERO_FOGO.text;
               TbEnviaDATA_ENVIO.text:=editdata.text;
               TbEnviaREFORMADORA.Text:=QrReformadoraR_REFORMADORA.text;
               TbEnviaENVIO.TEXT:=' ';
               TbLog.Insert;
               TbLogNUMEROPNEU.text :=QrPneusT_NUMERO_FOGO.text;
               TbLogMARCA.text      :=QrPneusDESCRICAO_MARCA.text;
               TbLogDESENHO.text    :=QrPneusDESCRICAO_DESENHO.text;
               TbLogVIDA.text       :=QrPneusVidaDecrita.text;
               TbLogReformadora.text:=QrReformadoraR_RAZAOSOCIAL.text;
               TbLog.Post;
               TbEnvia.post;
               table1.edit;
               Table1T_local.Text:='A';  // A = PNEU AUSENTE OU NA REFORMADORA
               Table1T_ENVIO.text:=' ';
               Table1.post;
               End;
               next;
             until eof;
             end;
         End;
        tbEnvia.Close;
        TbLog.Close;
        TABLE1.Close;
        BitBtn1.Enabled:=false;
        QrPneus.Refresh;
        QRPNEUS.CLOSE;
        QRPNEUS.OPEN;
        eDITdATA.TEXT:='';
        screen.Cursor:=CrDefault;
        ShowMessage('Pneus Foram Enviados com sucesso para reformadora: '+#13+
              EditReformadora.text);
           MessageBox(handle,'Sistema gerou relatório de remessa, imprima-o e guarde, este relatório não poderá ser emitido novamente','Informação Importante !!!' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' +
                          #13 + ' ' , MB_OK + MB_OK);
        close;
        Application.CreateForm(TFormLogEnvioReforma, FormLogEnvioReforma);
        FormLogEnvioReforma.Query1.open;
        FormLogEnvioReforma.quickrep1.preview;
       //DbGrid1.SetFocus;
       end;
End;

procedure TFormPneuEnviaReforma.SpeedButton1Click(Sender: TObject);
begin
EditReformadora.enabled:=true;
EditData.Enabled:=true;
EditReformadora.setfocus;
end;

procedure TFormPneuEnviaReforma.EditDataEnter(Sender: TObject);
begin
EditData.text:=DateToStr(now);
end;

end.
