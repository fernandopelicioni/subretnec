unit UnitPneuCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,  Grids, DBGrids,
  XPMan, Buttons, Spin, Menus, ADODB, ComCtrls, pngimage;

type
  TFormPneuCadastro = class(TForm)
    PopupMenu1: TPopupMenu;
    Localizar1: TMenuItem;
    CancelarFiltro1: TMenuItem;
    DtDesenho: TDataSource;
    QrPneu: TADOQuery;
    DtColigada: TDataSource;
    DtMedida: TDataSource;
    DtPneu: TDataSource;
    DtMarca: TDataSource;
    DtFornecedor: TDataSource;
    DtVida: TDataSource;
    DtLocal: TDataSource;
    Panel3: TPanel;
    Image5: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    EditMedida: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    EditFogo: TDBEdit;
    EditNotafiscal: TDBEdit;
    Editdata: TDBEdit;
    EditSerie: TDBEdit;
    EditDesenho: TDBLookupComboBox;
    EditModelo: TDBLookupComboBox;
    EditMarca: TDBLookupComboBox;
    EditFornecedor: TDBLookupComboBox;
    Editvalor: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    quant: TSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    EditDot: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    QrPneusCompletos: TADOQuery;
    DtPneusComplestos: TDataSource;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    QrPneusCompletosCodigoPneu: TSmallintField;
    QrPneusCompletosFogo: TIntegerField;
    QrPneusCompletosVeiculo: TWideStringField;
    QrPneusCompletosMarcas: TWideStringField;
    QrPneusCompletosMedidas: TWideStringField;
    QrPneusCompletosDesenhos: TWideStringField;
    QrPneusCompletosVida: TWideStringField;
    QrPneusCompletosDesLocal: TWideStringField;
    QrPneusCompletosLocal: TWideStringField;
    QrPneusCompletosDtEntrada: TStringField;
    QrPneusCompletosKmParcial: TIntegerField;
    Label13: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    SpeedButton4: TSpeedButton;
    BitBtn1: TButton;
    BitBtn2: TButton;
    Button3: TButton;
    Q: TADOQuery;
    QrPneusCompletosSerie: TWideStringField;
    procedure EditFogoExit(Sender: TObject);
    procedure EditFogoEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPerfilKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuCadastro: TFormPneuCadastro;
  numerofogo,numeroserie,marca,desenho,medida,data,notafiscal,fornecedor,perfil:string;
  Valor:Currency;
  t:string[1];



implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormPneuCadastro.EditFogoExit(Sender: TObject);
begin
EditFogo.color:=clWindow;
end;

procedure TFormPneuCadastro.EditFogoEnter(Sender: TObject);
begin
EditFogo.color:=$00CAFF95;
end;

procedure TFormPneuCadastro.BitBtn1Click(Sender: TObject);
var x,N, Fogo:integer;
SDot, SSerie, SMarca, SMedida, SDesenho, SData, SNF, Sfornecedor, SValor, SVida, SLocDestino, Sfogo:string;
begin
Screen.Cursor:=CrHourGlass;
EditFogo.ReadOnly:=false;
X:=1;
             /// checa se ja existe
            if DtPneu.DataSet.State = Dsinsert then
                     begin
                           with q do
                                 begin
                                      close;
                                      sql.Clear;
                                      sql.Add('select * from tb_pnpneus where tcp_fog=:fogo and tcp_coligada=:coligada');
                                      Parameters.ParamByName('Fogo').Value:=EditFogo.Text;
                                      Parameters.ParamByName('Coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                      Open;
                                      if not eof then
                                             begin
                                                  ShowMessage('J� existe um Pneu com esse n�mero de fogo nesta empresa, Escolha um novo numero ou exclua o anterior');
                                                  Abort;
                                             end;
                                 end;
                     end;


if (DtPneu.DataSet.State = Dsinsert) or (DtPneu.DataSet.State = DsEdit) then
    begin
          if CheckBox1.Checked = True then
                   begin
                          SMarca:=EditMarca.KeyValue;
                          SDot:=EditDot.TExt;
                          SMedida:=EditModelo.KeyValue;
                          SDesenho:=EditDesenho.KeyValue;
                          SData:=EditData.Text;
                          SSerie:=EditSerie.Text;
                          SValor:=EditValor.Text;
                          SVida:=DBLookupComboBox2.KeyValue;
                          SLocDestino:=DBLookupComboBox1.KeyValue;
                          SNF:=EditNotafiscal.Text;
                          Sfornecedor:=EditFornecedor.KeyValue;
                          Fogo:=StrToInt(EditFogo.Text);
                          DtPneu.DataSet.FieldByName('TCP_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                          DtPneu.DataSet.Post;
                          while X < StrToInt(Quant.Text) do
                                  begin
                                         X:=X+1;
                                         Fogo:=Fogo+1;
                                         DtPneu.DataSet.Insert;
                                         DtPneu.DataSet.FieldByName('TCP_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                         DtPneu.DataSet.FieldByName('TCP_Marca').AsString:=Smarca;
                                         DtPneu.DataSet.FieldByName('TCP_Medida').AsString:=SMedida;
                                         DtPneu.DataSet.FieldByName('TCP_Desenho').AsString:=SDesenho;
                                         DtPneu.DataSet.FieldByName('TCP_Valor').AsString:=SValor;
                                         DtPneu.DataSet.FieldByName('TCP_DtAq').AsString:=SData;
                                         DtPneu.DataSet.FieldByName('TCP_Vida').AsString:=SVida;
                                         DtPneu.DataSet.FieldByName('TCP_Serie').AsString:=SSerie;
                                         DtPneu.DataSet.FieldByName('TCP_Dot').AsString:=SDot;
                                         DtPneu.DataSet.FieldByName('TCP_Local').AsString:=SLocDestino;
                                         DtPneu.DataSet.FieldByName('TCP_Nf').AsString:=SNf;
                                         DtPneu.DataSet.FieldByName('TCP_For').AsString:=Sfornecedor;
                                         DtPneu.DataSet.FieldByName('TCP_Fog').AsString:=IntToStr(Fogo);
                                         DtPneu.DataSet.Post;
                                  end;
                   end
                   else
                   begin
                          DtPneu.DataSet.FieldByName('TCP_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                          DtPneu.DataSet.Post;
                          GroupBox1.Enabled:=false;
                   end;
    end;
Screen.Cursor:=CrDefault;

end;

procedure TFormPneuCadastro.EditFogoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   end;
end;

procedure TFormPneuCadastro.EditMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditMarca.text = '' then
       Begin
            MessageBox(Handle,'Voc� precisa escolher uma marca','Aten��o', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
            EditMarca.setfocus;
       end
       Else
            EditDesenho.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditModeloKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditModelo.text = '' then
       Begin
       MessageBox(Handle,'Voc� precisa escolher uma Medida','Aten��o', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       else
       EditData.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditdesenhoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   If EditDesenho.text = '' then
       Begin
       MessageBox(Handle,'Voc� precisa escolher um Desenho','Aten��o', MB_IconInformation + MB_OK); //   e 2", MB_ICONINFORMATION + MB_OK)
       EditMarca.setfocus;
       end
       else
       EditModelo.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditNotafiscalKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditFornecedor.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditValor.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditdataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditNotaFiscal.Setfocus;
   end;

end;

procedure TFormPneuCadastro.EditSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   EditMarca.Setfocus;
   end;


end;

procedure TFormPneuCadastro.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
   Key:=#0;
   end;

end;

procedure TFormPneuCadastro.EditSerieEnter(Sender: TObject);
begin
EditSerie.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditSerieExit(Sender: TObject);
begin
Editserie.color:=clWindow;

end;

procedure TFormPneuCadastro.EditMarcaExit(Sender: TObject);
begin
Editmarca.color:=clWindow;

end;

procedure TFormPneuCadastro.EditdesenhoExit(Sender: TObject);
begin
Editdesenho.color:=clWindow;

end;

procedure TFormPneuCadastro.EditModeloExit(Sender: TObject);
begin
Editmodelo.color:=clWindow;

end;

procedure TFormPneuCadastro.EditdataExit(Sender: TObject);
begin
Editdata.color:=clWindow;

end;

procedure TFormPneuCadastro.EditNotafiscalExit(Sender: TObject);
begin
Editnotafiscal.color:=clWindow;

end;

procedure TFormPneuCadastro.EditFornecedorExit(Sender: TObject);
begin
Editfornecedor.color:=clWindow;

end;

procedure TFormPneuCadastro.EditValorExit(Sender: TObject);
begin
Editvalor.color:=clWindow;

end;

procedure TFormPneuCadastro.EditMarcaEnter(Sender: TObject);
begin
Editmarca.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditdesenhoEnter(Sender: TObject);
begin
Editdesenho.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditModeloEnter(Sender: TObject);
begin
Editmodelo.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditdataEnter(Sender: TObject);
begin
Editdata.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditNotafiscalEnter(Sender: TObject);
begin
Editnotafiscal.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditFornecedorEnter(Sender: TObject);
begin
Editfornecedor.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.EditValorEnter(Sender: TObject);
begin
Editvalor.color:=$00CAFF95;

end;

procedure TFormPneuCadastro.FormActivate(Sender: TObject);
begin
DtDesenho.DataSet.OPEN;
DtMedida.DataSet.OPEN;
DtMarca.DataSet.Open;
DtFornecedor.DataSet.Open;
DtVida.DataSet.Open;
DtLocal.DataSet.Open;
//DtPneusComplestos.DataSet.Open;
with qrPneusCompletos do
      begin
            Close;
            Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
            open;
      end;

with QrPneu do
      Begin
           close;
           Sql.Clear;
           Sql.Add('Select * from tb_PnPneus where TCP_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('Order By Tcp_Fog desc');
           open;
      End;
end;

procedure TFormPneuCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtDesenho.DataSet.Close;
DtMedida.DataSet.Close;
DtPneu.DataSet.Close;
DtPneusComplestos.DataSet.Close;
DtMarca.DataSet.Close;
DtFornecedor.DataSet.Close;
DtVida.DataSet.Close;
DtLocal.DataSet.Close;

action:=cafree;
end;

procedure TFormPneuCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
    begin
      Key:=#0;
      Perform(WM_NextDlgCtl,0,0);
    end;
end;

procedure TFormPneuCadastro.Image5Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuCadastro.EditPerfilKeyPress(Sender: TObject;
  var Key: Char);

begin
if key = #13 then
   begin
   Key:=#0;
   end;


end;

procedure TFormPneuCadastro.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked = true then
    Quant.enabled:=true
    else
    Quant.enabled:=false;

end;

procedure TFormPneuCadastro.DBGrid1DblClick(Sender: TObject);
begin
///******************************************************************************************************
with QrPneu do
      Begin
           close;
           Sql.Clear;
           Sql.Add('Select * from tb_PnPneus where TCP_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('and Tcp_Cod = ' + DtPneusComplestos.DataSet.FieldByName('CodigoPneu').AsString);
           Sql.Add('Order By Tcp_Fog');
           open;
      End;


DtPneu.DataSet.Edit;
Checkbox1.Checked:=false;
GroupBox1.Enabled:=true;
EditFogo.ReadOnly:=true;
PageControl1.ActivePageIndex:=0;
EditSerie.SetFocus;
end;

procedure TFormPneuCadastro.BitBtn2Click(Sender: TObject);
begin
EditFogo.ReadOnly:=false;
DtPneu.DataSet.Insert;
GroupBox1.Enabled:=true;
EditFogo.SetFocus;
end;

procedure TFormPneuCadastro.BitBtn3Click(Sender: TObject);
begin
If MessageDlg('Voc� deseja excluir este Pneu, Verifique se ele j� n�o foi movimentado',
      mtConfirmation,[mbno, mbyes],0)
         =mryes then begin
         End;
end;

procedure TFormPneuCadastro.Button3Click(Sender: TObject);
begin
If MessageDlg('Voc� deseja excluir este Pneu, Verifique se ele j� n�o foi movimentado',
      mtConfirmation,[mbno, mbyes],0)
         =mryes then
         begin
               try
                     With q do
                         begin
                                close;
                                Sql.Clear;
                                Sql.Add('delete tb_pnpneus where tcp_cod =:codigopneu and tcp_coligada=:coligada');
                                Parameters.ParamByName('CodigoPneu').Value:=DtPneusComplestos.DataSet.FieldByName('CodigoPneu').AsString;
                                Parameters.ParamByName('Coligada').Value:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                                ExecSql;
                         end;
                        DtPneusComplestos.DataSet.Refresh;


               Except
                      ShowMessage('Pneu ja foi movimentado, e n�o pode ser instalado');
               end;

         End;

end;

procedure TFormPneuCadastro.Localizar1Click(Sender: TObject);
var pneu :string;
begin

end;

procedure TFormPneuCadastro.SpeedButton4Click(Sender: TObject);
begin
//      if ComboBox1.ItemIndex = 0 then With QrPneusCompletos do Locate('Fogo', Edit1.Text);
      if ComboBox1.ItemIndex = 0 then With QrPneusCompletos do Locate('Fogo', Edit1.Text, [loCaseInsensitive] );
      if ComboBox1.ItemIndex = 1 then With QrPneusCompletos do Locate('CodigoPneu', Edit1.Text, [loCaseInsensitive, loPartialKey] );
      if ComboBox1.ItemIndex = 2 then With QrPneusCompletos do Locate('Medidas', Edit1.Text, [loCaseInsensitive, loPartialKey] );
      if ComboBox1.ItemIndex = 3 then With QrPneusCompletos do Locate('Serie', Edit1.Text, [loCaseInsensitive, loPartialKey] );
//      if ComboBox1.ItemIndex = 2 then With QrPneusCompletos do Locate('Medidas',Edit1.Text);
//      if ComboBox1.ItemIndex = 3 then With QrPneusCompletos do Locate('NCM',Edit1.Text);
//      if ComboBox1.ItemIndex = 4 then With QrPneusCompletos do Locate('CodigoAuxiliar',Edit1.Text);

    //- PageControl1.ActivePageIndex:=1;
       if Edit1.Text = '' then
           QrPneusCompletos.Close;
           QrPneusCompletos.Open;

end;

end.
