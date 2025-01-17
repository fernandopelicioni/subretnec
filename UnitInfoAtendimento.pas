unit UnitInfoAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, DB, StdCtrls, DBCtrls, Mask, ComCtrls, Buttons,
  ADODB;

type
  TFormInfoAtendimento = class(TForm)
    Panel2: TPanel;
    Timer1: TTimer;
    DtSos: TDataSource;
    SpeedButton2: TSpeedButton;
    Image5: TImage;
    QrSocorro: TADOQuery;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QrMtvSoc: TADOQuery;
    DtMtvSoc: TDataSource;
    RdTipo: TRadioGroup;
    Memo1: TMemo;
    RdTrocaVei: TRadioGroup;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    Procedure CriaOS;
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoAtendimento: TFormInfoAtendimento;

implementation

uses UnitServerPai, UnitTerminalConsulta;

{$R *.dfm}

procedure TFormInfoAtendimento.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
      key :=#0;

end;

end;

procedure TFormInfoAtendimento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
      key :=#0;

end;

end;

procedure TFormInfoAtendimento.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if KEY = #13 then
         BEGIN
               kEY:=#0;
               MEMO1.SetFocus;
         END;
end;

procedure TFormInfoAtendimento.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
      key :=#0;

end;
end;

procedure TFormInfoAtendimento.FormActivate(Sender: TObject);
begin
           DtMtvSoc.DataSet.Open;
           lABEL5.Caption:=dateToStr(now);
           label4.Caption:=pai.Vos_Veiculo;


end;

procedure TFormInfoAtendimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMtvSoc.DataSet.Close;
DtSos.DataSet.close;
Action:=cafree;
end;

procedure TFormInfoAtendimento.Image5Click(Sender: TObject);
begin
    DtSos.DataSet.Cancel;
    close;

end;

procedure TFormInfoAtendimento.SpeedButton2Click(Sender: TObject);
var VTipo, VSub:string;
begin
        if RdTipo.ItemIndex = 0 then
              Vtipo:='S'
              else
              Vtipo:='N';
        if RdTrocaVei.ItemIndex = 0 then
              VSub:='S'
              else
              VSub:='N';

        With QrSocorro do
             begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Insert Into Tb_SocMov (Soc_Col, Soc_Vei, Soc_Data, Soc_usuario, Soc_Mtv_Inf, Soc_Mtv_Real, Soc_His, Soc_TrocaVei, Soc_GERAOS)');
                    Sql.Add('Values ('  +
                            QuotedStr(pai.QrColigadas.FieldByName('cod_coligada').asstring) +','+
                            QuotedStr(pai.Vos_Vei)                                          +','+
                            QuotedStr(DateTimeToStr(Now))                                   +','+
                            QuotedStr(Pai.QrUsuarios.FieldByName('usu_login').AsString)     +','+
                            QuotedStr(DBLookupComboBox1.KeyValue)                           +','+
                            QuotedStr(DBLookupComboBox1.KeyValue)                           +','+
                            QuotedStr(Memo1.Text)                                           +','+
                            QuotedStr(Vsub)                                                 +','+
                            QUOTEDSTR(VTipo)                                                +')');
                            //Memo1.Text:=sql.Text;
                            ExecSQL;
                            MessageBox(0, 'Salvo com sucesso!', 'Sucesso', MB_ICONINFORMATION or MB_OK);
                            CriaOs;

                   close;
             end;
       Close;

end;

procedure TFormInfoAtendimento.SpeedButton3Click(Sender: TObject);
begin
DtSos.DataSet.Cancel;
Close;
end;

procedure TFormInfoAtendimento.Timer1Timer(Sender: TObject);
begin
close;
end;

Procedure  TformInfoAtendimento.CriaOS;
begin

                              //PAI.VOS_VEI:=Pai.VOS_VEI;
                              //PAI.VOS_VEICULO:=DtVeiculos.DataSet.FieldByName('vei_numero').AsString;
                              Pai.Vos_Status:='A';
                              Pai.VOS_DTABE:=(now);
                              pai.VOS_DTFEC:=Now;
                              PAI.VOS_HIS:='Gerada automaticamente - SOCORRO';
                              PAI.VOS_CODMTV:=7;
                              Pai.VOS_DTPrazo:=(now);
                              pai.VOS_HRABE:=StrToTime(copy(TimeToStr(now),1,5));
                              pai.VOS_HRFEC:=strtotime('00:00');
                              Pai.VOS_USUABE:=Pai.QrUsuarios.FieldByName('usu_login').AsString;
                              Pai.VOS_USUFEC:='A';
                              pai.VOS_DTVIGINI:=(Now);
                              pai.VOS_DTVIGFIM:=(Now);

                              PAI.CriaOS;

end;
end.
