unit UnitPneuRetirada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ComCtrls, ExtCtrls, XPMan,
  CustomizeDlg, ActnColorMaps, ActnMan, Buttons, DB, Grids,
  DBGrids, Vcl.Imaging.pngimage;

type
  TFormPneuRetirada = class(TForm)
    Panel1: TPanel;
    EditData: TMaskEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    EditKm: TMaskEdit;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Panel2: TPanel;
    DBText9: TDBText;
    Label9: TLabel;
    Label11: TLabel;
    DBText7: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DtPneu: TDataSource;
    DBText3: TDBText;
    Label6: TLabel;
    DtMov: TDataSource;
    DtVeiculos: TDataSource;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    Label12: TLabel;
    DtVeiPn: TDataSource;
    DBText8: TDBText;
    DtMotRet: TDataSource;
    DBText10: TDBText;
    Panel3: TPanel;
    Image5: TImage;
    Btsalva: TButton;
    Button2: TButton;
    procedure BTSALVAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditMotivoKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataEnter(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure EditKmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
     PneuSelecionado, LocalDestino:string;
    { Public declarations }
  end;

var
  FormPneuRetirada: TFormPneuRetirada;
  kmrodado: integer;

implementation

uses UnitPneuMovimento, UnitPneuOpcaoRetirada, UnitServerPai;



{$R *.dfm}

procedure TFormPneuRetirada.BTSALVAClick(Sender: TObject);
var T :string[1];
rodado: integer;
begin
                               rodado:=StrtoInt(EditKm.Text) - StrToInt(DtMov.DataSet.FieldByName('Pmov_KmEnt').AsString);
                               if rodado < 0 then
                                     Rodado:=rodado+1000000;

if Messagedlg('Confirma retirada de Pneu do Veiculo : ' + Dbtext6.caption + ' ?                                                  '+#13+#13+#13+
              'KM�s Rodados     : ' + IntToStr(rodado) +#13+#13+#13  ,mtConfirmation,[mbno, mbyes],0)
              =mryes then
                        begin
                           //try
                               DtMov.DataSet.FieldByName('Pmov_DtSai').AsString:=EditData.Text;
                               DtMov.DataSet.FieldByName('Pmov_KmSai').AsString:=Editkm.Text;
                               rodado:=StrtoInt(EditKm.Text) - StrToInt(DtMov.DataSet.FieldByName('Pmov_KmEnt').AsString);
                               if rodado < 0 then
                                     Rodado:=rodado+1000000;
                               if rodado > 200000 then
                                  begin
                                     MessageBox(0, 'Data ou Km Rodado muito superior a m�dia estabelecida!'+#13+#10+'Confira', 'Alerta', MB_ICONERROR or MB_OK);
                                     DtMov.DataSet.Cancel;
                                     Abort;
                                  end;

                               DtMov.DataSet.FieldByName('Pmov_KmRod').AsString:=IntToStr(Rodado);
                               DtMov.DataSet.FieldByName('Pmov_Status').AsString:='F';
                               DtMov.DataSet.FieldByName('Pmov_MotRet').AsString:=DtMotRet.DataSet.FieldByName('Tmrp_cod').AsString;
                               with pai.QrVeiPn do
                                  Begin
                                        Close;
                                        Sql.Clear;
                                        Sql.Add('Select * from tb_PnVeiPn');
                                        Sql.Add('where Tvp_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
                                        open;
                                        Edit;
                                  End;
                               Dtpneu.DataSet.Edit;
                               DtVeiPn.DataSet.FieldByName('TVP_'+FormPneuMovimento.PosicaoNova).AsString:='';
                               DtPneu.DataSet.FieldByName('Tcp_local').AsString:=localDestino;
                               DtPneu.DataSet.FieldByName('Tcp_DtUlAlt').AsString:=DateToStr(now);

                               DtVeiPn.DataSet.Post;
                               DtMov.DataSet.Post;
                               DtPneu.DataSet.Post;
                             //  except
                             //  DtVeiPn.DataSet.cancel;
                              // DtPneu.DataSet.cancel;
                             //  DtMov.DataSet.cancel;
                             //  end;
                        end;
                        DtMov.DataSet.Cancel;
                        Close;
end;

procedure TFormPneuRetirada.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuRetirada.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;

end;

procedure TFormPneuRetirada.FormActivate(Sender: TObject);
begin

      editKm.Text:=DtVeiculos.DataSet.FieldByName('Tin_Odo').AsString;
      with FormPneuMovimento.QrMovPneu Do
           begin
               Close;
                Sql.Clear;
                 Sql.Add('Select * from Tb_PnMov E');
                  Sql.Add('Where E.Pmov_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
                   Sql.Add('And E.Pmov_Pneu = ' + QuotedStr(DtPneu.DataSet.FieldByName('Tcp_cod').AsString));
                    Sql.Add('And E.Pmov_Status = ' + QuotedStr('A') + ' and Pmov_motret is null');
                     Sql.Add('And E.Pmov_Posicao = ' + QuotedStr(FormPneuMovimento.PosicaoNova));
                Open;
                edit;
           end;
        Label2.Caption:=DtPneu.DataSet.FieldByName('Tcp_fog').AsString;
        With FormPneuMovimento.QrMotRet do
               Begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select * from tb_PnMotRet Where TMRP_Cod = ' + QuotedStr(LocalDestino));
                     Open;
               End;

//EditSaida.caption:=LocalDestino;
end;

procedure TFormPneuRetirada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
                               DtVeiPn.DataSet.cancel;
                               DtPneu.DataSet.cancel;
                               DtMov.DataSet.cancel;
DtMov.DataSet.Cancel;
DtMov.DataSet.Close;
FormPneuOpcaoRetirada.close;
ACTION:=CAFREE;

end;

procedure TFormPneuRetirada.EditMotivoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   EditData.SetFocus;

   end;

end;

procedure TFormPneuRetirada.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   With FormPneuMovimento.QrPegaKm do
        begin
               Close;
               Sql.Clear;
               Sql.Add('select Abast_km from Tb_CbMovAbast A');
               Sql.Add('Where A.Abast_data = (Select max(B.Abast_data) from tb_CbMovAbast B Where B.Abast_Vei = A.Abast_vei and B.Abast_data <= ' + QuotedStr(EditData.Text)+')');
               Sql.Add('And A.Abast_vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('Vei_nun').AsString));
               Open;
               Editkm.Text:=FormPneuMovimento.QrPegaKm.Fields[0].AsString;
        end;
               editkm.SetFocus;
   end;

end;

procedure TFormPneuRetirada.EditKmKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   Begin
   key:=#0;
   BTSALVA.SetFocus;
   end;

end;

procedure TFormPneuRetirada.EditDataEnter(Sender: TObject);
begin
EditData.text:=DateToStr(now);
end;

procedure TFormPneuRetirada.FormHide(Sender: TObject);
begin
close;
end;

procedure TFormPneuRetirada.Image5Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuRetirada.FormDeactivate(Sender: TObject);
begin
close;
end;

procedure TFormPneuRetirada.EditKmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;
end;

procedure TFormPneuRetirada.EditDataKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 38 then
   begin
    Perform(WM_NextDlgCtl,2,0);
  end;
end;

end.
