unit UtSubstituicaoVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFormSubstituicaoVeiculos = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Button5: TButton;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    TabEdicao: TTabSheet;
    Label1: TLabel;
    BtSalvar: TButton;
    BtCancelar: TButton;
    DbMotivo: TDBLookupComboBox;
    QrMov: TFDQuery;
    QrMotivos: TFDQuery;
    QrLocal: TFDQuery;
    DtLocal: TDataSource;
    DtMotivos: TDataSource;
    DtMov: TDataSource;
    Q: TFDQuery;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSubstituicaoVeiculos: TFormSubstituicaoVeiculos;

implementation

{$R *.dfm}

uses UnitServerPai;



procedure TFormSubstituicaoVeiculos.BtCancelarClick(Sender: TObject);
begin
     // DbMotivo.KeyValue:=NULL;


end;

procedure TFormSubstituicaoVeiculos.BtSalvarClick(Sender: TObject);
begin
                 QrMov.Last;
                 QrMov.First;

                 BtCancelar.Click;
                 QrMov.Refresh;
                 tabLista.Show;


end;

procedure TFormSubstituicaoVeiculos.Button3Click(Sender: TObject);
begin
       TabEdicao.Show;
end;

procedure TFormSubstituicaoVeiculos.Button5Click(Sender: TObject);
begin
     With QrMov do
         begin
               close;
               ParamByName('coligada').AsString:= Pai.QrColigadas.FieldByName('cod_coligada').AsString;
               ParamByName('DataI').AsString:= DateToStr(DateTimePicker2.Date);
               ParamByName('DataF').AsString:= DateToStr(DateTimePicker3.Date);
               Open;
         end;

end;

procedure TFormSubstituicaoVeiculos.DBGrid1DblClick(Sender: TObject);
begin
       TabEdicao.Show;

end;

procedure TFormSubstituicaoVeiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       QrLocal.Close;
       QrMov.Close;
       QrMotivos.Close;
       Action:=cafree;
end;

procedure  TFormSubstituicaoVeiculos.FormCreate(Sender: TObject);
begin
     QrMotivos.Open;
     DateTimePicker2.Date:=Now-1;
     DateTimePicker3.Date:=Now;
     With QrLocal do
         begin
               close;
               ParamByName('coligada').AsString:= Pai.QrColigadas.FieldByName('cod_coligada').AsString;
               Open;
         end;

     With QrMov do
         begin
               close;
               ParamByName('coligada').AsString:= Pai.QrColigadas.FieldByName('cod_coligada').AsString;
               ParamByName('DataI').AsString:= DateToStr(DateTimePicker2.Date);
               ParamByName('DataF').AsString:= DateToStr(DateTimePicker3.Date);
               Open;
         end;


end;

procedure TFormSubstituicaoVeiculos.Image1Click(Sender: TObject);
begin
close;
end;

end.
