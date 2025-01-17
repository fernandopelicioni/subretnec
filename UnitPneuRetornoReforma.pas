unit UnitPneuRetornoReforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, DBCtrls, DBCGrids, ADODB, ComCtrls, Buttons,
  Mask;

type
  TFormPneusRetornoReforma = class(TForm)
    Panel1: TPanel;
    DtPnRef: TDataSource;
    DtReformadora: TDataSource;
    DtColigada: TDataSource;
    DtMovRef: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBCheckBox1: TDBCheckBox;
    QrPnMovRef: TADOQuery;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    DtPnTipoBorracha: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DtPnDesenho: TDataSource;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Edit1: TEdit;
    EditNf: TEdit;
    EditTipRef: TEdit;
    Panel2: TPanel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DateTimePicker2: TDateTimePicker;
    Label9: TLabel;
    Memo1: TMemo;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    DateTimePicker3: TDateTimePicker;
    Memo2: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    DateTimePicker4: TDateTimePicker;
    Memo3: TMemo;
    Label14: TLabel;
    SpeedButton5: TSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn1: TBitBtn;
    TabSheet5: TTabSheet;
    Label18: TLabel;
    DateTimePicker5: TDateTimePicker;
    Memo4: TMemo;
    Label19: TLabel;
    SpeedButton6: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure EditNfKeyPress(Sender: TObject; var Key: Char);
    procedure EditTipRefKeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker3KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneusRetornoReforma: TFormPneusRetornoReforma;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneusRetornoReforma.BitBtn1Click(Sender: TObject);
begin
      close;
end;

procedure TFormPneusRetornoReforma.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               DBLookupComboBox1.SetFocus;
       end;
end;

procedure TFormPneusRetornoReforma.DateTimePicker2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               Memo1.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.DateTimePicker3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               Memo2.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.DateTimePicker4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               Memo3.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.DBCtrlGrid1Exit(Sender: TObject);
begin
       IF DtMovRef.DataSet.State = DsEdit then
               DtMovRef.DataSet.post;

end;

procedure TFormPneusRetornoReforma.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               DBLookupComboBox2.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               Edit1.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               EditNf.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.EditNfKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               EditTipRef.SetFocus;
       end;

end;

procedure TFormPneusRetornoReforma.EditTipRefKeyPress(Sender: TObject;
  var Key: Char);
begin
if key =#13 then
       begin
               key:=#0;
               SpeedButton1.Click;
       end;

end;

procedure TFormPneusRetornoReforma.FormActivate(Sender: TObject);
begin
       with pai.Qrtemp do
            begin
                  Close;
                  Sql.Clear;
                  sql.Add('update Tb_PnRefMov set Rmov_Status = ' + QuotedStr('N') + ' where Rmov_status = ' + QuotedStr('S') + ' and Rmov_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('cod_coligada').AsString));
                  Execsql;
                  close;
            end;
       DtReformadora.DataSet.Open;
       DtPnTipoBorracha.DataSet.Open;
       DtPnDesenho.DataSet.Open;
       DateTimePicker1.Date:=now;
       DateTimePicker2.Date:=now;
       DateTimePicker3.Date:=now;
       DateTimePicker4.Date:=now;
       DateTimePicker5.Date:=now;
end;

procedure TFormPneusRetornoReforma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      DtReformadora.DataSet.close;
      DtPnTipoBorracha.DataSet.close;
      DtPnDesenho.DataSet.close;
      DtPnRef.DataSet.Close;
      DtPnRef.DataSet.Close;
      QrPnMovRef.close;
      action:=cafree;
end;

procedure TFormPneusRetornoReforma.SpeedButton1Click(Sender: TObject);
var x: word;
Desenho, Borracha, Notafiscal, TipoReforma :string;
begin
         desenho     :=DBLookupComboBox2.KeyValue;
         Borracha    :=DBLookupComboBox1.KeyValue;
         NotaFiscal  :=EditNf.Text;
         TipoReforma :=EditTipRef.Text;

         with QrPnMovRef do
               begin
                      First;
                      while not eof do
                             begin
                                   if DtMovRef.DataSet.FieldByName('Rmov_Status').AsString = 'S' then
                                           begin
                                                 Edit;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Sit').AsString := '1';
                                                 DtMovRef.DataSet.FieldByName('Rmov_DtRef').AsString := DateToStr(DateTimePicker1.DateTime);
                                                 DtMovRef.DataSet.FieldByName('Rmov_Valor').AsString := Edit1.Text;
                                                 DtMovRef.DataSet.FieldByName('Rmov_NF').AsString := NotaFiscal;
                                                 DtMovRef.DataSet.FieldByName('Rmov_TipRef').AsString := TipoReforma;
                                                 DtMovRef.DataSet.FieldByName('Rmov_DesRef').AsString := Desenho;
                                                 DtMovRef.DataSet.FieldByName('Rmov_BorRef').AsString := Borracha;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Status').AsString := 'N';
                                                 if CheckBox1.Enabled = true then
                                                        DtMovRef.DataSet.FieldByName('Rmov_CGAR').AsString := '1'
                                                        else
                                                        DtMovRef.DataSet.FieldByName('Rmov_CGAR').AsString := '0';

                                                 // Altera vida do cadastro do pneu
                                                 if DtMovRef.DataSet.FieldByName('Rmov_Vida').AsString = '4' then
                                                         BEGIN
                                                                DtMovRef.DataSet.FieldByName('Tcp_Vida').AsString:='5';
                                                                DtMovRef.DataSet.FieldByName('Rmov_NovaVida').AsString:='5';
                                                         END;
                                                 if DtMovRef.DataSet.FieldByName('Rmov_Vida').AsString = '3' then
                                                         BEGIN
                                                                DtMovRef.DataSet.FieldByName('Tcp_Vida').AsString:='4';
                                                                DtMovRef.DataSet.FieldByName('Rmov_NovaVida').AsString:='4';
                                                         END;
                                                 if DtMovRef.DataSet.FieldByName('Rmov_Vida').AsString = '2' then
                                                         BEGIN
                                                                DtMovRef.DataSet.FieldByName('Tcp_Vida').AsString:='3';
                                                                DtMovRef.DataSet.FieldByName('Rmov_NovaVida').AsString:='3';
                                                         END;
                                                 if DtMovRef.DataSet.FieldByName('Rmov_Vida').AsString = '1' then
                                                         BEGIN
                                                                DtMovRef.DataSet.FieldByName('Tcp_Vida').AsString:='2';
                                                                DtMovRef.DataSet.FieldByName('Rmov_NovaVida').AsString:='2';
                                                         END;
                                                 if DtMovRef.DataSet.FieldByName('Rmov_Vida').AsString = 'N' then
                                                        BEGIN
                                                                DtMovRef.DataSet.FieldByName('Tcp_Vida').AsString:='1';
                                                                DtMovRef.DataSet.FieldByName('Rmov_NovaVida').AsString := '1';
                                                        END;

                                                 DtMovRef.DataSet.FieldByName('Tcp_Local').AsString:='E';
                                                 DtMovRef.DataSet.post;
                                                 X:=x+1;
                                             end;
                                     Next;
                             end;
                             ShowMessage(IntToStr(x)+' Pneus Reformados e Recebidos com sucesso');
                             close;

               end;
memo1.Text:='';
memo2.Text:='';
memo3.Text:='';
memo4.Text:='';
DBLookupComboBox1.KeyValue:=null;
DBLookupComboBox2.KeyValue:=null;
Edit1.Text:='';
EditNf.text:='';
DtMovRef.DataSet.Close;
EditTipRef.Text:='';
Pagecontrol1.Enabled:=false;


end;

procedure TFormPneusRetornoReforma.SpeedButton2Click(Sender: TObject);
begin
//DateTimePicker1.Date:='';
memo1.Text:='';
memo2.Text:='';
memo3.Text:='';
memo4.Text:='';
DBLookupComboBox1.KeyValue:=null;
DBLookupComboBox2.KeyValue:=null;
Edit1.Text:='';
EditNf.text:='';
EditTipRef.Text:='';

if DBLookupComboBox3.KeyValue <> null then
    begin
     with QrPnMovRef do
           begin
                 Close;
                  Sql.Clear;
                   Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnRefMov E');
                    Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                     Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                      Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                       Sql.Add('And E.Rmov_Pneu = A.Tcp_Cod');
                        Sql.Add('And E.Rmov_Sit = ' + QuotedStr('0'));
                         Sql.Add('And E.Rmov_Ref = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                          Sql.Add('And Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                           Open;
                           if not eof then
                                begin
                                    PageControl1.Enabled:=true;
                                end
                                else
                                Begin
                                        ShowMessage('N�o h� Pneus a serem recebidos por esta Reformadora');
                                        PageControl1.Enabled:=False;

                                End;

           end;
    end;

end;

procedure TFormPneusRetornoReforma.SpeedButton3Click(Sender: TObject);
var
x:word;
begin
         with QrPnMovRef do
               begin
                      First;
                      while not eof do
                             begin
                                   if DtMovRef.DataSet.FieldByName('Rmov_Status').AsString = 'S' then
                                           begin
                                                 Edit;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Sit').AsString := '1';
                                                 DtMovRef.DataSet.FieldByName('Rmov_DtRef').AsString := DateToStr(DateTimePicker2.DateTime);
                                                 DtMovRef.DataSet.FieldByName('Tcp_his').AsString := Memo1.Text;
                                                 // Altera vida do cadastro do pneu
                                                 DtMovRef.DataSet.FieldByName('Tcp_Local').AsString:='S';
                                                 DtMovRef.DataSet.post;
                                                 Inc(x);
                                             end;
                                     Next;
                             end;
                             ShowMessage(IntToStr(x)+' Pneus Foram Sucateados');
                             close;

               end;


end;

procedure TFormPneusRetornoReforma.SpeedButton4Click(Sender: TObject);
var
x:word;
begin
         with QrPnMovRef do
               begin
                      First;
                      while not eof do
                             begin
                                   if DtMovRef.DataSet.FieldByName('Rmov_Status').AsString = 'S' then
                                           begin
                                                 Edit;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Sit').AsString := '3';
                                                 DtMovRef.DataSet.FieldByName('Rmov_DtRef').AsString := DateToStr(DateTimePicker3.DateTime);
                                                 DtMovRef.DataSet.FieldByName('Tcp_his').AsString := Memo2.Text;
                                                 // Altera vida do cadastro do pneu
                                                 DtMovRef.DataSet.FieldByName('Tcp_Local').AsString:='F';
                                                 DtMovRef.DataSet.post;
                                                 Inc(x);
                                             end;
                                     Next;
                             end;
                             ShowMessage(IntToStr(x)+' Pneus Foram Disponibilizados para Re-enviar para reformados');
                             close;
               end;
end;

procedure TFormPneusRetornoReforma.SpeedButton5Click(Sender: TObject);
var
x:word;
begin
         with QrPnMovRef do
               begin
                      First;
                      while not eof do
                             begin
                                   if DtMovRef.DataSet.FieldByName('Rmov_Status').AsString = 'S' then
                                           begin
                                                 Edit;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Sit').AsString := '3';
                                                 DtMovRef.DataSet.FieldByName('Rmov_DtRef').AsString := DateToStr(DateTimePicker4.DateTime);
                                                 DtMovRef.DataSet.FieldByName('Tcp_his').AsString := Memo3.Text;
                                                 // Altera vida do cadastro do pneu
                                                 DtMovRef.DataSet.FieldByName('Tcp_Local').AsString:='E';
                                                 DtMovRef.DataSet.post;
                                                 Inc(x);
                                             end;
                                     Next;
                             end;
                             ShowMessage(IntToStr(x)+' Pneus Retornaram para o Estoque sem Altera��o da Vida');
                             close;

               end;

end;
procedure TFormPneusRetornoReforma.SpeedButton6Click(Sender: TObject);
var x : word;
begin
         with QrPnMovRef do
               begin
                      First;
                      while not eof do
                             begin
                                   if DtMovRef.DataSet.FieldByName('Rmov_Status').AsString = 'S' then
                                           begin
                                                 Edit;
                                                 DtMovRef.DataSet.FieldByName('Rmov_Sit').AsString := '1';
                                                 DtMovRef.DataSet.FieldByName('Rmov_DtRef').AsString := DateToStr(DateTimePicker5.DateTime);
                                                 DtMovRef.DataSet.FieldByName('Rmov_TipRef').AsString := 'CONSERTO';
                                                 DtMovRef.DataSet.FieldByName('Tcp_his').AsString := Memo4.Text;
                                                 // Altera vida do cadastro do pneu
                                                 DtMovRef.DataSet.FieldByName('Tcp_Local').AsString:='E';
                                                 DtMovRef.DataSet.post;
                                                 Inc(x);
                                             end;
                                     Next;
                             end;
                             ShowMessage(IntToStr(x)+' Pneus Foram Recebidos do Conserto');
                             close;

               end;

end;

end.
