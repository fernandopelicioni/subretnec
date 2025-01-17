unit UtRelSocorro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TFormRelSocorro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    Image5: TImage;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CbGrupo: TDBLookupComboBox;
    DTSUBGRUPO: TDataSource;
    QrSubGrupo: TFDQuery;
    DTGRUPOS: TDataSource;
    QrGrupos: TFDQuery;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelSocorro: TFormRelSocorro;

implementation

{$R *.dfm}

uses UnitServerPai, UtRelatorio, UnitIniciaSistema;

procedure TFormRelSocorro.FormActivate(Sender: TObject);
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

procedure TFormRelSocorro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Pai.FdCorpore.Connected:=false;
Action:=cafree;

end;

procedure TFormRelSocorro.FormCreate(Sender: TObject);
begin
     Pai.FdCorpore.Connected:=true;

end;

procedure TFormRelSocorro.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormRelSocorro.SpeedButton1Click(Sender: TObject);
VAR ORIENTACAO, tipo, GI, GF :STRING;

begin
                WITH Relatorio2.QrListaSocorroAnalitico DO
                     BEGIN
                             CLOSE;
                             ParamByName('COLIGADA').Value := PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                             ParamByName('DataI').Value := DATETOSTR(DateTimePicker1.Date);
                             ParamByName('DataF').Value := DATETOSTR(DateTimePicker2.Date);
                             // CHECA SELE��O DO GRUPO
                             GI:='001';
                             GF:='016';
                             if CBGRUPO.KeyValue <> NULL then
                                   BEGIN
                                       GI:= CBGRUPO.KeyValue;
                                       GF:= CBGRUPO.KeyValue;
                                   END;
                             ParamByName('GI').Value := GI;
                             ParamByName('GF').Value := GF;
                             OPEN;
                             //MEMO1.Text:=SQL.Text;
                             if NOT EOF then
                                        begin
                                            Relatorio2.FtListaSocAnal.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtListaSocAnal.Variables['titulo']:=QUOTEDSTR(ORIENTACAO);
                                            Relatorio2.FtListaSocAnal.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtListaSocAnal.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtListaSocAnal.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;

                     END;

end;

end.
