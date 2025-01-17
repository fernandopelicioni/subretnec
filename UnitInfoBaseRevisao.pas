unit UnitInfoBaseRevisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, DBCGrids, pngimage, ExtCtrls, jpeg;

type
  TFormInfoBaseRevisao = class(TForm)
    QrBaseRevisao: TADOQuery;
    DtBaseRevisao: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Image1: TImage;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Panel2: TPanel;
    Timer1: TTimer;
    DBText7: TDBText;
    Image5: TImage;
    Label1: TLabel;
    DBText8: TDBText;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoBaseRevisao: TFormInfoBaseRevisao;

implementation

uses UnitTerminalConsulta;

{$R *.dfm}

procedure TFormInfoBaseRevisao.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if not DtBaseRevisao.DataSet.Eof then
begin
    LABEL8.Caption:=IntToStr(DtBaseRevisao.DataSet.FieldByName('Tin_odo').AsInteger - DtBaseRevisao.DataSet.FieldByName('Bre_odo').AsInteger);

    if StrToInt(label8.Caption) > StrToInt(DtBaseRevisao.DataSet.FieldByName('Sco_Validade').AsString) then
        Begin
        Label8.font.Color:=ClRed;
        Image1.Visible:=true;
        Image2.Visible:=False;
        End
        else
        begin
        Label8.font.Color:=$00FF8000;
        Image1.Visible:=false;
        Image2.Visible:=True;
        end;
end;

end;

procedure TFormInfoBaseRevisao.FormActivate(Sender: TObject);
begin
with QrBaseRevisao do
Begin
   Close;
   Sql.Clear;
   Sql.Add('Select sCO_DES,bRE_DAT, BRE_ODO,TIN_ODO,SCO_ACAO,SCO_VALIDADE,CSC_DES,BRE_IDENTIFICADOR from Tb_BaseRevisao A, Tb_ServicosControlados B, Tb_Veiculos C, Tb_IndiceRevisao D, Tb_SerConCar E');
   Sql.Add('Where A.Bre_Sco = B.Sco_Cod And E.CSC_Cod = A.BRe_Csc');
   Sql.Add('And A.Bre_Vei = ' + FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_nun').AsString) ;
   Sql.Add('And C.Vei_Nun = A.Bre_Vei and D.Tin_vei = C.Vei_Nun');
   Sql.Add('Order By B.Sco_Des');
   Open;
   End;


end;

procedure TFormInfoBaseRevisao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtBaseRevisao.DataSet.Close;
Action:=cafree;
end;

procedure TFormInfoBaseRevisao.Image3Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoBaseRevisao.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoBaseRevisao.Panel2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormInfoBaseRevisao.Timer1Timer(Sender: TObject);
begin
CLOSE;
end;

end.
