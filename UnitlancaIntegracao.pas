unit UnitlancaIntegracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  DBCGrids, ADODB;

type
  TFormParametros = class(TForm)
    DtIntegracao: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    DtCC: TDataSource;
    DtVeiSistema: TDataSource;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DtClassificacao: TDataSource;
    DBText1: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBGrid1: TDBGrid;
    DtEveCont: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    DBText2: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    DBText4: TDBText;
    Label5: TLabel;
    EditMasc: TMaskEdit;
    TreeView1: TTreeView;
    DtColigada: TDataSource;
    DBText5: TDBText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    QrItensMovEntrada: TADOQuery;
    TabSheet4: TTabSheet;
    DtItensMovEntradas: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText6: TDBText;
    DBText7: TDBText;
    DBCheckBox2: TDBCheckBox;
    TabSheet6: TTabSheet;
    DBCtrlGrid2: TDBCtrlGrid;
    DBText8: TDBText;
    DBText9: TDBText;
    DBCheckBox3: TDBCheckBox;
    DtItensMovSaidas: TDataSource;
    QrItensMovSaida: TADOQuery;
    Label16: TLabel;
    GroupBox3: TGroupBox;
    DBEdit8: TDBEdit;
    QrPar: TADOQuery;
    DtPar: TDataSource;
    Label17: TLabel;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure EditMascKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormParametros.BitBtn2Click(Sender: TObject);
begin
if messagedlg('Tem certeza de que deseja apagar o Registro selecionado? ' + #13+ #13+ #13 + 'Atenção, Se houver algum relacionamento entre este registro e alguma baixa, não será possivel continuar',MtConfirmation,[mbyes,mbno],0) = mryes then
   Begin
     DtCC.DataSet.Delete;
   End;

end;

procedure TFormParametros.BitBtn3Click(Sender: TObject);
begin
if QrItensMovEntrada.State = DsInsert then DtItensMovEntradas.DataSet.Post;
if QrItensMovSaida.State = DsInsert then DtItensMovSaidas.DataSet.Post;
end;

procedure TFormParametros.BitBtn4Click(Sender: TObject);
begin
DtItensMovEntradas.DataSet.Cancel;;
DtItensMovSaidas.DataSet.Cancel;;
end;

procedure TFormParametros.DBLookupComboBox1Click(Sender: TObject);
begin
EditMasc.SetFocus;
end;

procedure TFormParametros.DBLookupComboBox3Exit(Sender: TObject);
begin
if DBLookupComboBox3.KeyValue <> null then
  begin
    DtIntegracao.DataSet.FieldByName('TIT_CodEveCont').AsString:=DtEveCont.DataSet.FieldByName('NumEvento').AsString;
    DtIntegracao.DataSet.FieldByName('TIT_EveCont').AsString:=DtEveCont.DataSet.FieldByName('CodEvento').AsString;
    DtIntegracao.DataSet.FieldByName('TIT_MovBaixa').AsString:=DtEveCont.DataSet.FieldByName('CodTmv').AsString;
  end;
end;

procedure TFormParametros.EditMascKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) or (key = #9) then
Begin
  Key:=#0;
  DBLookupComboBox2.SetFocus;
End;
end;

procedure TFormParametros.FormActivate(Sender: TObject);
begin
With QrPar do
Begin
  Close;
  Sql.Clear;
  Sql.Add('select DataFechamentoEstoque from Tpar');
  Sql.Add('where CodColigada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
  open;
End;

With pai.QrEveCont do
Begin
  Close;
  Sql.Clear;
  Sql.Add('select * from TTMV A, TEventosCont B where A.CodEvento = B.CodEvento');
  Sql.Add('and B.CodColigada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
  open;
End;

With pai.QrCC do
Begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tb_CbCC');
  Sql.Add('Order by Tcc_MasGrupo');
  open;
End;
With pai.QrIntegra do
Begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tb_CbIntegra where Tit_Coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
  open;
End;
DtVeiSistema.DataSet.Open;
with pai.QrClassificacao do
Begin
  Close;
  Sql.Clear;
  Sql.Add('select * from TTB1 where InAtivo = 0');
  Sql.Add('And CodColigada = ' + DtColigada.Dataset.FieldByName('Cod_Coligada').AsString);
  Sql.Add('Order by Descricao');
  Open;
End;

end;

procedure TFormParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtEveCont.DataSet.Close;
DtClassificacao.DataSet.Close;
DtVeiSistema.DataSet.Close;
DtIntegracao.DataSet.Close;
DtCC.DataSet.Close;
Action:=cafree;
end;

procedure TFormParametros.SpeedButton1Click(Sender: TObject);
begin
if DBLookupComboBox2.KeyValue = Null then
begin
  ShowMessage('Não é possível continuar sem que você informe o codigo da Classificação Contabil');
  DBLookupComboBox1.SetFocus;
end else
   Begin
//     DtCC.DataSet.FieldByName('Tcc_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString; apaguei a coligada
     DtCC.DataSet.FieldByName('Tcc_MasGrupo').AsString:=EditMasc.Text;
     DtCc.DataSet.Post;
     GroupBox2.Enabled:=false;
   End;
end;

procedure TFormParametros.SpeedButton2Click(Sender: TObject);
begin
EditMasc.Text:='';
GroupBox2.Enabled:=true;
DtCc.DataSet.Insert;
DBLookupComboBox1.SetFocus;
end;

procedure TFormParametros.SpeedButton3Click(Sender: TObject);
begin
DtCC.DataSet.Cancel;
GroupBox2.Enabled:=false;
end;

procedure TFormParametros.SpeedButton4Click(Sender: TObject);
begin
DtIntegracao.DataSet.Post;
SpeedButton4.Enabled:=false;
end;

procedure TFormParametros.SpeedButton5Click(Sender: TObject);
begin
QrPar.Post;
end;

procedure TFormParametros.TabSheet1Exit(Sender: TObject);
begin
DtIntegracao.DataSet.cancel;
end;

procedure TFormParametros.TabSheet1Show(Sender: TObject);
begin
DtIntegracao.DataSet.Open;
Dtintegracao.DataSet.Edit;
DtIntegracao.DataSet.FieldByName('TIT_coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
end;

procedure TFormParametros.TabSheet5Show(Sender: TObject);
begin
QrItensMovEntrada.Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
DtItensMovEntradas.DataSet.Open;

end;

procedure TFormParametros.TabSheet6Show(Sender: TObject);
begin
QrItensMovSaida.Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
DtItensMovSaidas.DataSet.Open;

end;

end.
