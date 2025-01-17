unit UnitCentralComponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  TFormCentralComponentes = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    DtIni: TDateTimePicker;
    DtFin: TDateTimePicker;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DtServicosControlados: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DtVeiculo: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DtCsc: TDataSource;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCentralComponentes: TFormCentralComponentes;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormCentralComponentes.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFormCentralComponentes.FormActivate(Sender: TObject);
begin
             DtServicosControlados.DataSet.Open;
             DtVeiculo.DataSet.Open;
             DtCsc.DataSet.Open;
             DtIni.Date:=now-365;
             DtFin.Date:=now;
end;

procedure TFormCentralComponentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormCentralComponentes.SpeedButton2Click(Sender: TObject);
begin
screen.Cursor:=crHourGlass;
                  With Relatorio.QrServicosComponentes do
                            begin
                                   close;
                                   Sql.Clear;
                                   sql.Add(' select  SER.SCO_DES AS SERVICO,  CAR.CSC_DES AS CARACTERISTICA,	  MOV.RPR_ROD AS RODAGEM,	  VEI.VEI_NUMERO AS VEICULO,  (MOV.RPR_DTFEC - RPR_DIASROD) AS ABERTURA_OS,');
                                   sql.Add(' MOV.RPR_DTFEC AS FECHAMENTO_OS,	  MOV.RPR_DIASROD  from TB_MOVREVPRE MOV');
                                   sql.Add(' JOIN TB_VEICULOS VEI ON VEI.VEI_NUN = MOV.RPR_VEI');
                                   sql.Add(' JOIN TB_SERVICOSCONTROLADOS SER ON SER.SCO_COD = MOV.RPR_SCO');
                                   sql.Add(' JOIN TB_SERCONCAR CAR ON CAR.CSC_COD = MOV.RPR_CSC');
                                   sql.Add(' WHERE MOV.RPR_DTFEC >=' + QuotedStr(DateToStr(DtIni.Date)) + ' AND MOV.RPR_DTFEC <= ' + QuotedStr(DateToStr(DtFin.Date)));
                                   sql.Add(' AND RPR_STATUS = ''F''');
                                   sql.Add(' and Vei.VEI_coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                                   sql.Add(' AND RPR_ROD > 0 ');
                                   Sql.Add(' And Vei.Vei_Status = ''1''');
                                   if DBLookupComboBox1.KeyValue <> NULL then
                                          sql.Add('AND SER.SCO_COD = ' + QuotedStr(DBLookupComboBox1.KeyValue));
                                   if DBLookupComboBox3.KeyValue <> NULL then
                                          sql.Add('AND CAR.CSC_COD = ' + QuotedStr(DBLookupComboBox3.KeyValue));
                                   sql.Add(' AND RPR_EXEC = ''S''');
                                   if DBLookupComboBox2.KeyValue <> NULL then
                                          sql.Add('AND RPR_VEI = ' + QuotedStr(DBLookupComboBox2.KeyValue));
                                   sql.Add('ORDER BY SERVICO, CARACTERISTICA, VEICULO ');
                                   memo1.Text:=sql.Text;
                                   open;
                                   if Not Eof then
                                        begin
                                               Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                               Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFin.Date));
                                               Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                               Relatorio.Projeto.ExecuteReport('RV_ProSerCon');

                                        end;



                            end;


screen.Cursor:=crDefault;

end;

end.
