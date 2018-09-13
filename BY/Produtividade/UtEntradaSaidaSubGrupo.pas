unit UtEntradaSaidaSubGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormEntradaSaidaSubGrupo = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Image1: TImage;
    CbGrupo: TDBLookupComboBox;
    CbSubGrupo: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    QrGrupos: TFDQuery;
    DTGRUPOS: TDataSource;
    QrSubGrupo: TFDQuery;
    DTSUBGRUPO: TDataSource;
    RadioGroup1: TRadioGroup;
    SpeedButton2: TSpeedButton;
    RadioGroup2: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CbSubGrupoEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntradaSaidaSubGrupo: TFormEntradaSaidaSubGrupo;

implementation

{$R *.dfm}

uses UnitPai, UtRelatorio, UnitIniciaSistema, UnitServerPai, UnitRelatorio;

procedure TFormEntradaSaidaSubGrupo.CbSubGrupoEnter(Sender: TObject);
begin
        if CbGrupo.KeyValue = NULL then
                  ABORT;
        WITH QrSubGrupo DO
            BEGIN
                      CLOSE;
                      ParamByName('GRUPO').Value := CbGrupo.KeyValue;
                      OPEN;

            END;
end;

procedure TFormEntradaSaidaSubGrupo.FormActivate(Sender: TObject);
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

procedure TFormEntradaSaidaSubGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Pai.FdCorpore.Connected:=false;

      Action:=cafree;
end;

procedure TFormEntradaSaidaSubGrupo.FormCreate(Sender: TObject);
begin
     Pai.FdCorpore.Connected:=true;
end;

procedure TFormEntradaSaidaSubGrupo.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormEntradaSaidaSubGrupo.SpeedButton1Click(Sender: TObject);
VAR ORIENTACAO, tipo, GI, GF, SI, SF :STRING;

begin
      tipo:= inttostr(RadioGroup2.ItemIndex);
      if tipo = '0' then
            begin
                WITH PAI.QrEntradaSaidaGSSintetitico DO
                     BEGIN
                             CLOSE;
                             ParamByName('COLIGADA').Value := PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                             ParamByName('INICIO').Value := DATETOSTR(DateTimePicker1.Date);
                             ParamByName('FIM').Value := DATETOSTR(DateTimePicker2.Date);

                             if RadioGroup1.ItemIndex = 0 then
                                   begin
                                       ParamByName('saida').Value := ('%');
                                       ParamByName('entrada').Value := 'S';
                                       ORIENTACAO:='ENTRADA';
                                   end
                                   ELSE
                                   BEGIN
                                       ParamByName('saida').Value := 'S';
                                       ParamByName('entrada').Value := ('%');
                                       ORIENTACAO:='SAIDA';
                                   END;

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
                                            Relatorio2.FtProdGrupoSubSintetico.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtProdGrupoSubSintetico.Variables['titulo']:=QUOTEDSTR(ORIENTACAO);
                                            Relatorio2.FtProdGrupoSubSintetico.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtProdGrupoSubSintetico.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtProdGrupoSubSintetico.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'Não há dados', MB_ICONINFORMATION or MB_OK);
                                        close;

                     END;
                     end;


      if tipo = '1' then
        begin

//          if CBGRUPO.KeyValue = NULL then
//               BEGIN
//                     MessageBox(0, 'Por favor, preencha o campo do Grupo para continuar', 'Preencha o Grupo', MB_ICONWARNING or MB_OK);
//                     abort;
//               END;
          WITH PAI.QrEntradaSaidaGrupoSubGrupo DO
               BEGIN
                       CLOSE;
                       ParamByName('COLIGADA').Value := PAI.QrColigadas.FieldByName('COD_COLIGADA').AsString;
                       ParamByName('INICIO').Value := DATETOSTR(DateTimePicker1.Date);
                       ParamByName('FIM').Value := DATETOSTR(DateTimePicker2.Date);

                       if RadioGroup1.ItemIndex = 0 then
                             begin
                                 ParamByName('saida').Value := ('%');
                                 ParamByName('entrada').Value := 'S';
                                 ORIENTACAO:='ENTRADA';
                             end
                             ELSE
                             BEGIN
                                 ParamByName('saida').Value := 'S';
                                 ParamByName('entrada').Value := ('%');
                                 ORIENTACAO:='SAIDA';
                             END;


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
                                  Relatorio2.FtEntradaSaidagrupoSubgrupo.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                  Relatorio2.FtEntradaSaidagrupoSubgrupo.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                  Relatorio2.FtEntradaSaidagrupoSubgrupo.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));

                                  Relatorio2.FtEntradaSaidagrupoSubgrupo.Variables['titulo']:=QUOTEDSTR(ORIENTACAO);
                                  Relatorio2.FtEntradaSaidagrupoSubgrupo.ShowReport();
                                  end
                                  ELSE
                                  MessageBox(0, 'Redefina sua consulta e tente novamente!', 'Não há dados', MB_ICONINFORMATION or MB_OK);
                       close;

               END;
        end;
end;

end.
