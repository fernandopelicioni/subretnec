unit UtCi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFormCI = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    BtAlterar: TButton;
    BtIncluir: TButton;
    BtApagar: TButton;
    DBGrid1: TDBGrid;
    TabEdicao: TTabSheet;
    BtSalvar: TButton;
    BtCancelar: TButton;
    PnEdicao: TPanel;
    ImageList1: TImageList;
    QrMov: TFDQuery;
    DtCadastro: TDataSource;
    QrCi: TFDQuery;
    DtCi: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBMemo1: TDBMemo;
    Button1: TButton;
    Q: TFDQuery;
    procedure Image1Click(Sender: TObject);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCI: TFormCI;

implementation

{$R *.dfm}

uses UnitServerPai, UtRelatorio;

procedure TFormCI.BtAlterarClick(Sender: TObject);
begin
     wITH QrCi DO
         BEGIN
                  CLOSE;
                  ParamByName('iD').AsString:=QrMov.FieldByName('Tci_ID').AsString;
                  Open;
                  Edit;
                  DateTimePicker1.Date:=StrToDate(QrMov.FieldByName('data').Asstring);
                  TabEdicao.Show;


         END;
end;

procedure TFormCI.BtApagarClick(Sender: TObject);
begin
      With q do
          begin
                 close;
                 sql.Clear;
                 sql.Add('delete tb_movCi where Tci_id=:id');
                 ParamByName('id').AsString:=QrMov.FieldByName('Tci_Id').AsString;
                 ExecSql;
                 QrMov.Refresh;
          end;
end;

procedure TFormCI.BtCancelarClick(Sender: TObject);
begin
   QrCi.Cancel;
   tabLista.Show;
end;

procedure TFormCI.BtIncluirClick(Sender: TObject);
begin
           QrCi.Open;
           QrCi.Insert;
           TabEdicao.Show;
           DateTimePicker1.SetFocus;
end;

procedure TFormCI.BtSalvarClick(Sender: TObject);
begin
           With QrCi do
                 begin
                         FieldByName('Tci_Data').AsString:=DateToStr(DateTimePicker1.Date);
                         FieldByName('Tci_Usuario').AsString:=pai.QrUsuarios.FieldByName('usu_Codigo').AsString;
                         Try
                               Post;
                               QrCi.Close;
                               QrMov.Refresh;
                               tabLista.Show;

                         Except
                               ShowMessage('Confira o preenchimento dos campos!');
                         End;
                 end;
end;

procedure TFormCI.Button1Click(Sender: TObject);
begin
           With relatorio2.QrCi  do
                 begin
                        Close;
                        ParamByName('ID').AsString:=QrMov.FieldByName('Tci_Id').AsString;
                        Open;
                        relatorio2.FTCI. ShowReport();
                 end;

end;

procedure TFormCI.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
            key:=#0;
            DBEdit1.SetFocus;
     end;
end;

procedure TFormCI.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
            key:=#0;
            DBEdit2.SetFocus;
     end;

end;

procedure TFormCI.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
            key:=#0;
            DBEdit3.SetFocus;
     end;

end;

procedure TFormCI.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
     begin
            key:=#0;
            DBMemo1.SetFocus;
     end;

end;

procedure TFormCI.FormCreate(Sender: TObject);
begin
         DateTimePicker1.Date:=Now;
         with QrMov do
              begin
                     close;
                     ParamByName('login').AsString:=Pai.QrUsuarios.FieldByName('Usu_Codigo').AsString;
                     Open;
              end;
end;

procedure TFormCI.Image1Click(Sender: TObject);
begin
Close;
end;

end.
