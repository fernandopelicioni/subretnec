unit UtFormRelatorioCurvaSaidaPrd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DateUtils;

type
  TFormRelatorioCurvaSaidaProdutos = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CbGrupo: TDBLookupComboBox;
    CbSubGrupo: TDBLookupComboBox;
    DTSUBGRUPO: TDataSource;
    QrSubGrupo: TFDQuery;
    DTGRUPOS: TDataSource;
    QrGrupos: TFDQuery;
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCurvaSaidaProdutos: TFormRelatorioCurvaSaidaProdutos;

implementation

{$R *.dfm}

uses UnitServerPai, UtRelatorio, UnitIniciaSistema;

procedure TFormRelatorioCurvaSaidaProdutos.FormActivate(Sender: TObject);
begin
          DateTimePicker1.Date:=NOW-30;
          DateTimePicker2.Date:=NOW;

          WITH QrGrupos DO
               BEGIN
                      CLOSE;
                      ParamByName('COLIGADA').Value := PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                      OPEN;
               END;

end;

procedure TFormRelatorioCurvaSaidaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Pai.FdCorpore.Connected:=false;
Action:=cafree;
end;

procedure TFormRelatorioCurvaSaidaProdutos.FormCreate(Sender: TObject);
begin
     Pai.FdCorpore.Connected:=true;

end;

procedure TFormRelatorioCurvaSaidaProdutos.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormRelatorioCurvaSaidaProdutos.SpeedButton1Click(Sender: TObject);
VAR ORIENTACAO, tipo, GI, GF, SI, SF :STRING;
Vmeses:integer;
begin
                Vmeses:= DaysBetween(DateTimePicker1.Date, DateTimePicker2.Date) ;
                WITH Relatorio2.QrCurvaSaiPrd DO
                     BEGIN
                             CLOSE;
                             ParamByName('COLIGADA').Value := PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                             ParamByName('INICIO').Value := DATETOSTR(DateTimePicker1.Date);
                             ParamByName('FIM').Value := DATETOSTR(DateTimePicker2.Date);
                             ParamByName('DataFinal').Value := DATETOSTR(DateTimePicker2.Date);
                             ParamByName('meses').Value := Vmeses;


                             // CHECA SELEÇÃO DO GRUPO
                             GI:='001';
                             GF:='016';
                             SI:='001.001';
                             SF:='016.999';
                             if CBGRUPO.KeyValue <> NULL then
                                   BEGIN
                                       GI:= CBGRUPO.KeyValue;
                                       GF:= CBGRUPO.KeyValue;
                                   END;
                             if CBSUBGRUPO.KeyValue <> NULL then
                                   BEGIN
                                       SI:= CBSUBGRUPO.KeyValue;
                                       SF:= CBSUBGRUPO.KeyValue;
                                   END;
                             ParamByName('GRUPOI').Value := GI;
                             ParamByName('GRUPOF').Value := GF;
                             ParamByName('SUBI').Value := SI;
                             ParamByName('SUBF').Value := SF;
                             OPEN;
                             //MEMO1.Text:=SQL.Text;
                             if NOT EOF then
                                        begin
                                            Relatorio2.FtCurvaSaiPrd.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtCurvaSaiPrd.Variables['titulo']:=QUOTEDSTR(ORIENTACAO);
                                            Relatorio2.FtCurvaSaiPrd.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtCurvaSaiPrd.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtCurvaSaiPrd.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'Não há dados', MB_ICONINFORMATION or MB_OK);
                                        close;

                     END;


end;

end.
