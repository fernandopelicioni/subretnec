unit UnitOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons, DB, DBCtrls, Mask;

type
  TFormOS = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DtMotivoOS: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    EditData: TMaskEdit;
    EditDataFinal: TMaskEdit;
    Label8: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOS: TFormOS;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormOS.FormShow(Sender: TObject);
begin
//           WITH PAI.QrListaMotivoOS DO
//                BEGIN
//                      Parameters.ParamByName('CODIGO').Value:='6';
//                END;
           DtMotivoOS.DataSet.Open;
           lABEL5.Caption:=dateToStr(now);
           label4.Caption:=pai.Vos_Veiculo;
//           Editdata.Text:=DateToStr(now);
//           Editdata.Text:=DateToStr(now);
end;

procedure TFormOS.Image5Click(Sender: TObject);
begin
Close;
end;

procedure TFormOS.Panel1Click(Sender: TObject);
begin
     Close;
end;

procedure TFormOS.Panel2Click(Sender: TObject);
begin
close;
end;

procedure TFormOS.SpeedButton1Click(Sender: TObject);
//var Vid:integer;
begin
              if StrToDateTime(EditDataFinal.Text) < StrToDateTime(EditData.Text) then
                    begin
                           MessageBox(0, 'Data de fim da vig�ncia n�o pode ser anterior ao inicio.'+#13+#10+''+#13+#10+'Corrija', 'Erro na informa��o de datas', MB_ICONSTOP or MB_OK);
                           Abort;

                    end;


              if DBLookupComboBox1.KeyValue = NULL then
                   BEGIN
                         MessageBox(0, '� necess�rio informar o tipo de OS para abertura', 'incompleto', MB_ICONSTOP or MB_OK);
                         abort;
                   END;
              if memo1.Text = '' then
                  begin
                        MessageBox(0, 'O campo de informa��es complementares � obrigat�rio', 'Falta Preenchimento', MB_ICONWARNING or MB_OK);
                        Abort;
                  end;
              if Memo1.Text = '' then memo1.Text:='Sem Historico';

              Pai.Vos_Status:='A';
              Pai.VOS_DTABE:=(now);
              //showmessage(pai.VOS_VEI);
              // VEICULO � PREENCHIDO NA CHAMADA DO METODO FORMOS, PASSA PARAMETRO VOS_VEI
              pai.VOS_DTFEC    :=StrToDate('01/01/1900');
              PAI.VOS_HIS      :=MEMO1.Text;
              PAI.VOS_CODMTV   :=DBLookupComboBox1.KeyValue;
              Pai.VOS_DTPrazo  :=StrToDate(EditDataFinal.Text);
              Pai.VOS_DTVIGINI :=StrToDate(EditData.Text);
              Pai.VOS_DTVIGFIM :=StrToDate(EditDataFinal.Text);
 //             showmessage(timetostr(now));
              pai.VOS_HRABE    :=StrToTime(copy(TimeToStr(now),1,5));
              pai.VOS_HRFEC    :=strtotime('00:00');
              Pai.VOS_USUABE   :=Pai.QrUsuarios.FieldByName('usu_login').AsString;
              Pai.VOS_USUFEC   :='A';

              PAI.CriaOS;

{              if (MessageDlg('Deseja imprimir a OS criada agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                   begin
                         with Relatorio.QrOsMov do
                              begin
                                  CLOSE;
                                  Parameters.ParamByName('Id').Value:=PAI.VOS_ID;
                                  open;
                                  if Not Eof then
                                        begin
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                 Relatorio.Projeto.ExecuteReport('Rv_os');
                                        end;
                              end;
                   end;}
                   Close;




end;

end.
