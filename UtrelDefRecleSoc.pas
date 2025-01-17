unit UtrelDefRecleSoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormRelDefeitosReclamadoseSocorro = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    EditVei: TEdit;
    Label3: TLabel;
    QrDefeitos: TFDQuery;
    DtDefeitos: TDataSource;
    Label4: TLabel;
    QrGrupoSoc: TFDQuery;
    DtGrupoSoc: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    RadioGroup1: TRadioGroup;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelDefeitosReclamadoseSocorro: TFormRelDefeitosReclamadoseSocorro;

implementation

{$R *.dfm}

uses UtRelatorio, UnitServerPai, UnitIniciaSistema;

procedure TFormRelDefeitosReclamadoseSocorro.Button1Click(Sender: TObject);
var
Status,v1,v2:string;
begin
       if EditVei.Text <> '' then
           begin
                   V1:=Editvei.text;
                   V2:=Editvei.text;
           end
           else
           begin
             v1:='1';
             v2:='99999';
           end;
           if RadioGroup1.ItemIndex=0 then Status:='F' else Status:='A';

        With Relatorio2.QrDefeitoseSocorro do
             begin
                    Close;
                    ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    ParamByName('DataI').value:=DatetoStr(DateTimePicker1.Datetime);
                    ParamByName('DataF').value:=DatetoStr(DateTimePicker2.Datetime);
                    ParamByName('veiI').asstring:=V1;
                    ParamByName('veiF').asstring:=V2;
                    ParamByName('Status').asstring:=Status;
                    if DBLookupComboBox1.KeyValue <> NULL then
                        begin
                                ParamByName('ItemI').asstring:=DBLookupComboBox1.KeyValue;
                                ParamByName('ItemF').asstring:=DBLookupComboBox1.KeyValue;
                        end
                        else
                        begin
                                ParamByName('ItemI').asstring:='1';
                                ParamByName('ItemF').asstring:='999';
                        end;
                    Open;
                    if not eof then
                    begin
                                 Relatorio2.FtDefeitoseSocorro.Variables['EditVersao'] := QuotedStr(FormIniciaSistema.EditVersao.caption);
                                 Relatorio2.FtDefeitoseSocorro.Variables['DataI'] := QuotedStr(DateToStr(DateTimePicker1.Date));
                                 Relatorio2.FtDefeitoseSocorro.Variables['DataF'] := QuotedStr(DateToStr(DateTimePicker2.Date));
                                 Relatorio2.FtDefeitoseSocorro.ShowReport();
                    end;
             end;

end;

procedure TFormRelDefeitosReclamadoseSocorro.Button2Click(Sender: TObject);
begin
close;
end;

procedure TFormRelDefeitosReclamadoseSocorro.DBLookupComboBox1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if KEY = VK_ESCAPE then
        DBLookupComboBox1.KeyValue:=NULL;
end;

procedure TFormRelDefeitosReclamadoseSocorro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
QrDefeitos.Close;
action:=cafree;
end;

procedure TFormRelDefeitosReclamadoseSocorro.FormCreate(Sender: TObject);
begin
          QrDefeitos.Open;
          DateTimePicker1.Date:=now;
          DateTimePicker2.Date:=now;
end;

procedure TFormRelDefeitosReclamadoseSocorro.Image1Click(Sender: TObject);
begin
close;
end;

end.

