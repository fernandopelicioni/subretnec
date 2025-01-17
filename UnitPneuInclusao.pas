unit UnitPneuInclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,  Grids, DBGrids,
  XPMan, Buttons, ComCtrls, ADODB;

type
  TFormPneuInclusao = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    EditVeiculo: TDBText;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    EditFogo: TMaskEdit;
    EditPosicao: TLabel;
    Label12: TLabel;
    DateTimePicker1: TDateTimePicker;
    DtPneu: TDataSource;
    SpeedButton1: TSpeedButton;
    DtColigada: TDataSource;
    DtPnVeiPn: TDataSource;
    DtPnMov: TDataSource;
    DtVeiculos: TDataSource;
    EditKm: TEdit;
    QrTemp: TADOQuery;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
     posicao,Num_Pneu:string;
    { Public declarations }
  end;

var
  FormPneuInclusao: TFormPneuInclusao;

implementation

uses UnitServerPai, UnitPneuMovimento;


{$R *.dfm}

procedure TFormPneuInclusao.EditFogoExit(Sender: TObject);
begin
EditFogo.color:=clWindow;
end;

procedure TFormPneuInclusao.EditFogoEnter(Sender: TObject);
begin
           DbText1.Visible:=false;
           DbText2.Visible:=false;
           DbText3.Visible:=false;

end;

procedure TFormPneuInclusao.BitBtn1Click(Sender: TObject);
begin
        Screen.Cursor:=crHourGlass;
        DtPnMov.DataSet.Open;
        DtPnMov.DataSet.Insert;
        DtPnMov.DataSet.FieldByName('Pmov_Pneu').AsString := DtPneu.DataSet.FieldByName('Tcp_Cod').AsString;
        DtPnMov.DataSet.FieldByName('Pmov_Fog').AsString := DtPneu.DataSet.FieldByName('Tcp_Fog').AsString;
        DtPnMov.DataSet.FieldByName('Pmov_Vei').AsString := DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString;
        DtPnMov.DataSet.FieldByName('Pmov_Coligada').AsString := DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
        DtPnMov.DataSet.FieldByName('Pmov_Vida').AsString :=  DtPneu.DataSet.FieldByName('Tcp_Vida').AsString;
        DtPnMov.DataSet.FieldByName('Pmov_DtEnt').AsString :=  DateToStr(DateTimePicker1.Date);
        DtPnMov.DataSet.FieldByName('Pmov_KmEnt').AsString :=  EditKm.Text;
        DtPnMov.DataSet.FieldByName('Pmov_Posicao').AsString :=  FormPneuMovimento.PosicaoNova;

        DtPnVeiPn.DataSet.OPEN;
        DtPnVeiPn.DataSet.edit;
        if FormPneuMovimento.posicaoNova =  'DD'  THEN DtPnVeiPn.DataSet.FieldByName('TVP_DD').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'DE'  THEN DtPnVeiPn.DataSet.FieldByName('TVP_DE').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'TDI' THEN DtPnVeiPn.DataSet.FieldByName('TVP_TDI').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'TDE' THEN DtPnVeiPn.DataSet.FieldByName('TVP_TDE').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'TEE' THEN DtPnVeiPn.DataSet.FieldByName('TVP_TEE').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'TEI' THEN DtPnVeiPn.DataSet.FieldByName('TVP_TEI').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'CDI' THEN DtPnVeiPn.DataSet.FieldByName('TVP_CDI').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'CDE' THEN DtPnVeiPn.DataSet.FieldByName('TVP_CDE').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'CEE' THEN DtPnVeiPn.DataSet.FieldByName('TVP_CEE').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;
        if FormPneuMovimento.posicaoNova =  'CEI' THEN DtPnVeiPn.DataSet.FieldByName('TVP_CEI').AsString := DtPneu.DataSet.FieldByName('TcP_Cod').AsString;

        DtPneu.DataSet.Edit;
        DtPneu.DataSet.FieldByName('TCP_LOCAL').AsString:='I';
        Try
            DtPnMov.DataSet.post;
            DtPnVeiPn.DataSet.post;
            DtPneu.DataSet.Post    ;
            Close                  ;
        Except
            DtPnVeiPn.DataSet.cancel;
            DtPneu.DataSet.cancel;
            DtPnMov.DataSet.cancel;

        END;
        Screen.Cursor:=CrDefault;
end;

procedure TFormPneuInclusao.BitBtn2Click(Sender: TObject);
begin
  DtPnVeiPn.DataSet.cancel;
  DtPnMov.DataSet.cancel;

CLOSE;
end;

procedure TFormPneuInclusao.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   BitBtn1.Setfocus;
   end;

end;

procedure TFormPneuInclusao.EditFogoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
      SpeedButton1.Click;
    end;

end;

procedure TFormPneuInclusao.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
//    If StrtoDate(EditData.text) < StrtoDate(QrPneuT_DATA_AQUIZICAO.text) then
//        Begin
//        ShowMessage('Data de Movimenta��o antecede a Data de aquizi��o, verifique !'+ #13 +
//                    'Movimenta��o : ' + EditData.text + #13 +
//                    'Aquizi��o    : ' + QrPneuT_DATA_AQUIZICAO.text);
//        EditData.text:=DateTostr(now);
//        EditData.Setfocus;
//
//        End
//        Else  editKm.setfocus;
//
//    end;

    end;
end;

procedure TFormPneuInclusao.EditKmKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;
    bitbtn1.Enabled:=true;
    bitbtn1.setfocus;

    end;

end;

procedure TFormPneuInclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      DtPnVeiPn.DataSet.close;
      DtPnMov.DataSet.close;
      DtPneu.DataSet.Close;
      Action:=cafree;
end;

procedure TFormPneuInclusao.FormHide(Sender: TObject);
begin
//table1.Close;
//QRPNEU.CLOSE;

end;

procedure TFormPneuInclusao.FormActivate(Sender: TObject);
begin
      With pai.QrPneusCompletos Do
             Begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select * from tb_pnPneus A, Tb_PnMarcas B, Tb_PnVida C, Tb_PnMedidas D');
                     Sql.Add('Where B.TPM_Cod = A.TCP_marca and C.Tpv_Cod = A.TCP_Vida and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And TCP_Local = ' + QuotedStr('E'));
                     Sql.Add('And A.Tcp_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                     Open;
             End;
DateTimePicker1.Date:=now;

EditKm.Text:=DtVeiculos.DataSet.FieldByName('Tin_Odo').AsString;
EditPosicao.Caption:=FormPneuMovimento.posicaonova;
end;

procedure TFormPneuInclusao.EditDataEnter(Sender: TObject);
begin
//editdata.text:=datetostr(now);
end;

procedure TFormPneuInclusao.DateTimePicker1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
          key:=#0;
           With FormPneuMovimento.QrPegaKm do
                begin
                     Close;
                     Sql.Clear;
                     Sql.Add('select Abast_km from Tb_CbMovAbast A');
                     Sql.Add('Where A.Abast_data = (Select max(B.Abast_data) from tb_CbMovAbast B Where B.Abast_Vei = A.Abast_vei and B.Abast_data <= ' + QuotedStr(DateToStr(DateTimePicker1.Date))+')');
                     Sql.Add('And A.Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                     Open;
                     Editkm.Text:=FormPneuMovimento.QrPegaKm.Fields[0].AsString;
                end;
          EditKm.SetFocus;
    end;

end;

procedure TFormPneuInclusao.DBGrid1DblClick(Sender: TObject);
begin
//eDITfOGO.TEXT:=QrPneuT_NUMERO_FOGO.TEXT;
//EditFogo.SetFocus;
end;

procedure TFormPneuInclusao.FormShow(Sender: TObject);
begin
//qrpneu.open;
//qrpneu.refresh;
end;

procedure TFormPneuInclusao.SpeedButton1Click(Sender: TObject);
begin
      With pai.QrPneusCompletos Do
             Begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select * from tb_pnPneus A, Tb_PnMarcas B, Tb_PnVida C, Tb_PnMedidas D');
                     Sql.Add('Where B.TPM_Cod = A.TCP_marca and C.Tpv_Cod = A.TCP_Vida and D.TPM_Cod = A.Tcp_Medida');
                     Sql.Add('And TCP_Local = ' + QuotedStr('E'));
                     Sql.Add('And A.Tcp_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                     Sql.Add('And A.Tcp_Fog = ' + QuotedStr(EditFogo.Text));
                     Open;
                     if not eof then
                           begin
                             GroupBox5.Enabled:=true;
                             DateTimePicker1.SetFocus;
                           end
                           else
                           begin
                               ShowMessage('Pneu n�o existe ou n�o esta Dispon�vel para instala��o');
                               EditFogo.SetFocus;
                           end;
             End;

end;

end.
