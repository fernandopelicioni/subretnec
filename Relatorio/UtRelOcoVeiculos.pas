unit UtRelOcoVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TFormRelOcorVeiculos = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Q: TFDQuery;
    DtGrupoSoc: TDataSource;
    QrGrupoSoc: TFDQuery;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelOcorVeiculos: TFormRelOcorVeiculos;

implementation

{$R *.dfm}

uses UtRelatorio, UnitIniciaSistema, UnitRelatorio, UnitServerPai;



procedure TFormRelOcorVeiculos.Button1Click(Sender: TObject);
begin
        With Relatorio2.QrIndicePM do
             begin
                    Close;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Datetime);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Datetime);
                    Open;
             end;

        With Relatorio2.QrIndiceQuebra do
             begin
                    Close;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Datetime);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Datetime);
                    Open;
             end;
        With Relatorio2.QrSocTop5 do
             begin
                    Close;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Datetime);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Datetime);
                    Open;
             end;

        With Relatorio2.QrDefTop5 do
             begin
                    Close;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Datetime);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Datetime);
                    Open;
             end;
        With Relatorio2.QrQtdQuebras do
             begin
                    Close;
                    Sql.Clear;
                    Sql.Text:=Q.SQL.Text; // copia conteudo da sql base para montar a ordenacao
                    case RadioGroup1.ItemIndex of
                       0: Sql.Add('Order by A, Data');
                       1: Sql.Add('Order by A, Veiculo');
                       2: Sql.Add('Order by A, Motivo');
                       3: Sql.Add('Order by A, Local');
                       4: Sql.Add('Order by A, Grupo');
                    end;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Date);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Date);
                    if DBLookupComboBox1.KeyValue <> NULL then
                    begin
                            ParamByName('GruI').value:=DBLookupComboBox1.KeyValue;
                            ParamByName('GruF').value:=DBLookupComboBox1.KeyValue;
                    end
                    else
                    begin
                            ParamByName('GruI').value:='001';
                            ParamByName('GruF').value:='999';
                    end;

                    Open;
             end;

                                 Relatorio2.FtIndiceDefeitoVeiculos.Variables['EditVersao'] := QuotedStr(FormIniciaSistema.EditVersao.caption);
                                 Relatorio2.FtIndiceDefeitoVeiculos.Variables['DataI'] := QuotedStr(DateToStr(DateTimePicker1.Date));
                                 Relatorio2.FtIndiceDefeitoVeiculos.Variables['DataF'] := QuotedStr(DateToStr(DateTimePicker2.Date));
                                 Relatorio2.FtIndiceDefeitoVeiculos.ShowReport();


end;

procedure TFormRelOcorVeiculos.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelOcorVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         Relatorio2.QrIndicePM.Close;
         Relatorio2.QrIndiceQuebra.Close;
         Relatorio2.QrQtdQuebras.Close;
         Action:=Cafree;

end;

procedure TFormRelOcorVeiculos.FormCreate(Sender: TObject);
begin
          DateTimePicker1.Date:=now;
          DateTimePicker2.Date:=now;
          QrGrupoSoc.Open;

end;

procedure TFormRelOcorVeiculos.Image1Click(Sender: TObject);
begin
close;
end;

end.
