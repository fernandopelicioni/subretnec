unit UtRevisaoHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormRevisaoHistorico = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Q: TFDQuery;
    QrRevisoes: TFDQuery;
    procedure Image5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRevisaoHistorico: TFormRevisaoHistorico;

implementation

{$R *.dfm}

uses UnitServerPai, UtRelatorio, UnitIniciaSistema;

procedure TFormRevisaoHistorico.Button1Click(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;
        With Q do Begin
               close;
               sql.Clear;
               sql.Add('delete tb_revhistorico');
               ExecSql;
               Close;
        End;

        With QrRevisoes do
              begin
                      Close;
                      ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                      ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Date-90);
                      ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Date );
                      Open;
                      while not eof do
                           begin
                                   With q do
                                        begin
                                              close;
                                              sql.Clear;
                                              sql.Add('insert into tb_RevHistorico (Trev_Col, Trev_vei, Trev_Data, Trev_Km, Trev_Rev)' );
                                              Sql.Add('values ( ' +
                                                     Pai.QrColigadas.FieldByName('cod_coligada').AsString    +','+
                                                     QuotedStr(QrRevisoes.FieldByName('veiculo').AsString)   +','+
                                                     QuotedStr(QrRevisoes.FieldByName('Data').AsString)   +','+
                                                     QuotedStr(QrRevisoes.FieldByName('Km').AsString)   +','+
                                                     QuotedStr(QrRevisoes.FieldByName('Rev').AsString)   +')');
                                              ExecSQL;
                                              Close;
                                        end;
                           Next;
                           end;

                          with relatorio2.QrKmPreventivas do
                               begin
                                      close;
                                      ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                                      ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Date);
                                      ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Date);
                                      Open;
                                      if not eof then
                                          begin
                                                 Relatorio2.FtKmPreventivas.Variables['EditVersao'] := QuotedStr(FormIniciaSistema.EditVersao.caption);
                                                 Relatorio2.FtKmPreventivas.Variables['DataI'] := QuotedStr(DateToStr(DateTimePicker1.Date));
                                                 Relatorio2.FtKmPreventivas.Variables['DataF'] := QuotedStr(DateToStr(DateTimePicker2.Date));
                                                 Relatorio2.FtKmPreventivas.ShowReport();

                                          end;

                               end;


              end;
Screen.Cursor:=crDefault;
end;

procedure TFormRevisaoHistorico.FormCreate(Sender: TObject);
begin
          DateTimePicker1.Date:=now-30;
          DateTimePicker2.Date:=now;

end;

procedure TFormRevisaoHistorico.Image5Click(Sender: TObject);
begin
Close;
end;

end.
