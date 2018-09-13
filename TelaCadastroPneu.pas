unit TelaCadastroPneu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,
  XPMan, Buttons, Spin, Menus;

type
  TFormCadastroPneu = class(TForm)
    Panel1: TPanel;
    Table1: TTable;
    DataSource1: TDataSource;
    Table1T_MARCA: TStringField;
    Table1T_MODELO: TStringField;
    Table1T_DESENHO: TStringField;
    Table1T_NOTA_FISCAL: TStringField;
    Table1T_DATA_AQUIZICAO: TDateField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    EditFogo: TDBEdit;
    Label1: TLabel;
    EditMedida: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditNotafiscal: TDBEdit;
    Label6: TLabel;
    EditFornecedor: TDBEdit;
    GroupBox2: TGroupBox;
    Editdata: TDBEdit;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditSerie: TDBEdit;
    Table1T_NUMERO_SERIE: TStringField;
    Table1T_VALOR: TCurrencyField;
    Table1T_STATUS: TStringField;
    Label8: TLabel;
    Label3: TLabel;
    Table1T_FORNECEDOR: TStringField;
    EditMarca: TDBLookupComboBox;
    QRMARCAS: TQuery;
    dTMARCAS: TDataSource;
    EditDesenho: TDBLookupComboBox;
    qrDesenho: TQuery;
    DtDesenho: TDataSource;
    qrDesenhoCODIGO: TStringField;
    qrDesenhoDESCRICAO_DESENHO: TStringField;
    EditModelo: TDBLookupComboBox;
    QrMedida: TQuery;
    DtMedida: TDataSource;
    Query1: TQuery;
    Query1T_NUMERO_SERIE: TStringField;
    Query1T_MARCA: TStringField;
    Query1T_MODELO: TStringField;
    Query1T_DESENHO: TStringField;
    Query1T_FORNECEDOR: TStringField;
    Query1T_NOTA_FISCAL: TStringField;
    Query1T_DATA_AQUIZICAO: TDateField;
    Query1T_VALOR: TCurrencyField;
    Query1T_STATUS: TStringField;
    Query1CODIGO: TStringField;
    Query1DESCRICAO_MARCA: TStringField;
    Query1CODIGO_1: TStringField;
    Query1DESCRICAO_DESENHO: TStringField;
    DataSource2: TDataSource;
    Query1Descricao_Medida: TStringField;
    Query1CODIGO_2: TStringField;
    Table1T_NUMERO_FOGO: TStringField;
    Query1T_NUMERO_FOGO: TStringField;
    Table1T_local: TStringField;
    EditPerfil: TComboBox;
    Label9: TLabel;
    QRMARCASCODIGO: TStringField;
    QRMARCASDESCRICAO_MARCA: TStringField;
    QrMedidaCodigo: TStringField;
    QrMedidaDescricao_Medida: TStringField;
    EditValor: TMaskEdit;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    quant: TSpinEdit;
    BitBtn3: TBitBtn;
    PopupMenu1: TPopupMenu;
    Localizar1: TMenuItem;
    CancelarFiltro1: TMenuItem;
    procedure EditFogoExit(Sender: TObject);
    procedure EditFogoEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditFogoKeyPress(Sender: TObject; var Key: Char);
    procedure EditMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure EditModeloKeyPress(Sender: TObject; var Key: Char);
    procedure EditdesenhoKeyPress(Sender: TObject; var Key: Char);
    procedure EditNotafiscalKeyPress(Sender: TObject; var Key: Char);
    procedure EditFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure EditdataKeyPress(Sender: TObject; var Key: Char);
    procedure EditSerieKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditSerieEnter(Sender: TObject);
    procedure EditSerieExit(Sender: TObject);
    procedure EditMarcaExit(Sender: TObject);
    procedure EditdesenhoExit(Sender: TObject);
    procedure EditModeloExit(Sender: TObject);
    procedure EditdataExit(Sender: TObject);
    procedure EditNotafiscalExit(Sender: TObject);
    procedure EditFornecedorExit(Sender: TObject);
    procedure EditValorExit(Sender: TObject);
    procedure EditMarcaEnter(Sender: TObject);
    procedure EditdesenhoEnter(Sender: TObject);
    procedure EditModeloEnter(Sender: TObject);
    procedure EditdataEnter(Sender: TObject);
    procedure EditNotafiscalEnter(Sender: TObject);
    procedure EditFornecedorEnter(Sender: TObject);
    procedure EditValorEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPerfilKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EditPerfilExit(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure CancelarFiltro1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPneu: TFormCadastroPneu;
  numerofogo,numeroserie,marca,desenho,medida,data,notafiscal,fornecedor,perfil:string;
  Valor:Currency;
  t:string[1];



implementation

{$R *.dfm}

procedure TFormCadastroPneu.EditFogoExit(Sender: TObject);
begin
EditFogo.color:=clWindow;
end;

procedure TFormCadastroPneu.EditFogoEnter(Sender: TObject);
begin
EditFogo.color:=$00CAFF95;
end;

procedure TFormCadastroPneu.BitBtn1Click(Sender: TObject);
var x,N:integer;
begin
Screen.Cursor:=CrHourGlass;
if (table1.state = dsinsert) or (table1.State = dsEdit) then
          BEGIN
          if quant.value > 1 then
            begin
            X:=1;
            n:=StrtoInt(EditFogo.text);
            NumeroSerie      :=EditSerie.text;
            Marca            :=QRMARCASCODIGO.text;
            Desenho          :=qrDesenhoCODIGO.text;
            Medida           :=QrMedidaCodigo.text;
            Data             :=EditData.text;
            Notafiscal       :=EditNotafiscal.text;
            Fornecedor       :=EditFornecedor.text;
            valor            :=StrToFloat(EditValor.text);
            Perfil           :=t;
            While x <= Quant.value do
                begin
                Table1T_NUMERO_FOGO.text     :=IntToStr(N);
                Table1T_MARCA.text           :=Marca;
                Table1T_NUMERO_SERIE.text    :=NumeroSerie;
                Table1T_DESENHO.Text         :=Desenho;
                Table1T_MODELO.text          :=Medida;
                Table1T_DATA_AQUIZICAO.text  :=Data;
                Table1T_NOTA_FISCAL.text     :=NotaFiscal;
                Table1T_FORNECEDOR.text      :=Fornecedor;
                Table1T_VALOR.text           :=FormatFloat('###0.00',Valor);
                Table1T_STATUS.text          :=Perfil;
                Table1T_local.text           :='E'; // Vai direto para estoque;
                Inc(N);
                Table1.post;
                Table1.insert;
                Inc(X);
                end;
            end
            else
            begin
            TABLE1T_LOCAL.TEXT:='E';
            Table1T_STATUS.Text:=t;
            table1.Post;
            END;
          End;
Table1.cancel;
table1.close;
tABLE1.MasterSource:=DataSource2;
table1.MasterFields:='T_NUMERO_FOGO';
table1.IndexFieldNames:='T_NUMERO_FOGO';
Table1.open;
query1.close;
query1.open;
query1.Refresh;
Quant.value:=0;
editvalor.clear;

Screen.Cursor:=CrDefault;
BITBTN2.SetFocus;

end;

procedure TFormCadastroPneu.BitBtn2Click(Sender: TObject);
begin
table1.cancel;
EditFogo.clear;
//tABLE1.MasterSource.text:='';
table1.MasterFields:='';
table1.IndexFieldNames:='';

table1.Append;
EditFogo.setfocus;
end;

procedure TFormCadastroPneu.EditFogoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
      If EditFogo.text = '' then
       Begin
       MessageBox(Handle,'Este Numero de fogo não é valído','Atenção', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       Else
       Editserie.Setfocus;
   end;
end;

procedure TFormCadastroPneu.EditMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditMarca.text = '' then
       Begin
       MessageBox(Handle,'Você precisa escolher uma marca','Atenção', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       Else
       EditDesenho.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditModeloKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditModelo.text = '' then
       Begin
       MessageBox(Handle,'Você precisa escolher uma Medida','Atenção', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       else
       EditData.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditdesenhoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditDesenho.text = '' then
       Begin
       MessageBox(Handle,'Você precisa escolher um Desenho','Atenção', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       else
       EditModelo.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditNotafiscalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditFornecedor.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditValor.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditdataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditNotaFiscal.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditMarca.Setfocus;
   end;


end;

procedure TFormCadastroPneu.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   Table1T_VALOR.text:=Editvalor.text;
   EditPerfil.Setfocus;
   end;

end;

procedure TFormCadastroPneu.EditSerieEnter(Sender: TObject);
begin
EditSerie.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditSerieExit(Sender: TObject);
begin
Editserie.color:=clWindow;

end;

procedure TFormCadastroPneu.EditMarcaExit(Sender: TObject);
begin
Editmarca.color:=clWindow;

end;

procedure TFormCadastroPneu.EditdesenhoExit(Sender: TObject);
begin
Editdesenho.color:=clWindow;

end;

procedure TFormCadastroPneu.EditModeloExit(Sender: TObject);
begin
Editmodelo.color:=clWindow;

end;

procedure TFormCadastroPneu.EditdataExit(Sender: TObject);
begin
Editdata.color:=clWindow;

end;

procedure TFormCadastroPneu.EditNotafiscalExit(Sender: TObject);
begin
Editnotafiscal.color:=clWindow;

end;

procedure TFormCadastroPneu.EditFornecedorExit(Sender: TObject);
begin
Editfornecedor.color:=clWindow;

end;

procedure TFormCadastroPneu.EditValorExit(Sender: TObject);
begin
Editvalor.color:=clWindow;

end;

procedure TFormCadastroPneu.EditMarcaEnter(Sender: TObject);
begin
Editmarca.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditdesenhoEnter(Sender: TObject);
begin
Editdesenho.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditModeloEnter(Sender: TObject);
begin
Editmodelo.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditdataEnter(Sender: TObject);
begin
Editdata.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditNotafiscalEnter(Sender: TObject);
begin
Editnotafiscal.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditFornecedorEnter(Sender: TObject);
begin
Editfornecedor.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.EditValorEnter(Sender: TObject);
begin
Editvalor.color:=$00CAFF95;

end;

procedure TFormCadastroPneu.FormShow(Sender: TObject);
begin
TABLE1.OPEN;
end;

procedure TFormCadastroPneu.FormActivate(Sender: TObject);
begin
dTMARCAS.DataSet.Open;
DtDesenho.DataSet.Open;
DtMedida.DataSet.Open;
DataSource1.DataSet.Open;
DataSource2.DataSet.Open;
end;

procedure TFormCadastroPneu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dTMARCAS.DataSet.Close;
DtDesenho.DataSet.Close;
DtMedida.DataSet.Close;
DataSource1.DataSet.Close;
DataSource2.DataSet.Close;

action:=cafree;
end;

procedure TFormCadastroPneu.EditPerfilKeyPress(Sender: TObject;
  var Key: Char);

begin
if key = #13 then
   begin
   Key:=#0;
   if editperfil.text = '' then
   begin
   editperfil.setfocus;
   end
   else
   begin
   t:=editperfil.text;
   Table1T_STATUS.text:=T;
   BitBtn1.Setfocus;
   end;
   end;


end;

procedure TFormCadastroPneu.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
    Quant.enabled:=true
    else
    Quant.enabled:=false;

end;

procedure TFormCadastroPneu.DBGrid1DblClick(Sender: TObject);
begin
quant.value:=1;
panel2.Enabled:=false;
table1.edit;
EditFogo.setfocus;
end;

procedure TFormCadastroPneu.BitBtn3Click(Sender: TObject);
begin
If MessageDlg('Você deseja excluir este Pneu, Verifique se ele já não foi movimentado',
      mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         table1.delete;
         Query1.Close;
         query1.open;
         query1.refresh;
         End;
end;

procedure TFormCadastroPneu.EditPerfilExit(Sender: TObject);
begin
   t:=editperfil.text;


end;

procedure TFormCadastroPneu.Localizar1Click(Sender: TObject);
var pneu :string;
begin
pneu:= InputBox('Localizar','Digite o numero desejado:','0 '); ;
Query1.Filter:='T_Numero_Fogo = ' + QuotedStr(pneu);
Query1.Filtered:=true;

end;

procedure TFormCadastroPneu.DBGrid1ColEnter(Sender: TObject);
begin
Query1.filtered:=false;
end;

procedure TFormCadastroPneu.CancelarFiltro1Click(Sender: TObject);
begin
Query1.filtered:=false;
end;

end.
