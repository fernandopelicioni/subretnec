unit UnitPneuInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Buttons, StdCtrls, ADODB, DBCtrls, ComCtrls,
  pngimage, ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFormPneuInfo = class(TForm)
    GroupBox1: TGroupBox;
    EditPneu: TEdit;
    SpeedButton1: TSpeedButton;
    DtPneus: TDataSource;
    BitBtn1: TBitBtn;
    QrPneus: TADOQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    QrMedia: TADOQuery;
    DtMedia: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Image1: TImage;
    ImageList1: TImageList;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPneuKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditPneuEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuInfo: TFormPneuInfo;

implementation

uses UnitServerPai, UnitPneuAlteraMotivoRetirada, UnitRelatorio,
  UnitIniciaSistema;

{$R *.dfm}

procedure TFormPneuInfo.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFormPneuInfo.BitBtn2Click(Sender: TObject);
begin
            Screen.Cursor:=CrHourGlass;
             Relatorio.QrPneuHis.Open;
             Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
             Relatorio.Projeto.ExecuteReport('RvPneuHis');
            Screen.Cursor:=CrDefault;


end;

procedure TFormPneuInfo.DBGrid1DblClick(Sender: TObject);
begin

         if MessageDlg('Voce Deseja alterar o Motivo de Retirada deste Pneu?', mtConfirmation, [mbYes, mbNo], 0) = Mryes then
                 begin
                        Application.CreateForm(TFormPneuAlteraMotivoRetirada,FormPneuAlteraMotivoRetirada);
                        FormPneuAlteraMotivoRetirada.ShowModal;
                 end;
end;

procedure TFormPneuInfo.EditPneuEnter(Sender: TObject);
begin
                     BitBtn2.Enabled:=false;
end;

procedure TFormPneuInfo.EditPneuKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
          key:=#0;
          SpeedButton1.Click;
    end;
end;

procedure TFormPneuInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPneus.DataSet.Close;
action:=cafree;
end;

procedure TFormPneuInfo.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuInfo.Image8Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuInfo.SpeedButton1Click(Sender: TObject);
begin
             Relatorio.QrPneuHis.Close;
             Relatorio.QrPneuHis.Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
             Relatorio.QrPneuHis.Parameters.ParamByName('Pneu').Value:=EditPneu.Text;
//             Relatorio.QrPneuHis.Open;

             QrMedia.Close;
             QrMedia.Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
             QrMedia.Parameters.ParamByName('Pneu').Value:=EditPneu.Text;
             memo1.Text:=qrmedia.SQL.Text;
             QrMedia.Open;
             QrPneus.Close;
             QrPneus.Parameters.ParamByName('Coligada').Value:=Pai.QrColigadas.FieldByName('Cod_Coligada').AsString;
             QrPneus.Parameters.ParamByName('Pneu').Value:=EditPneu.Text;
             memo1.Text:=qrpneus.SQL.Text;
             QrPneus.Open;
             if QrPneus.eof then
                     ShowMessage('O Numero de Fogo Informado n�o confere com nenhum Pneu desta coligada')
                     else
                     BitBtn2.Enabled:=true;

end;

end.
