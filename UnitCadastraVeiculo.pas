unit UnitCadastraVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, XPMan, Mask, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TFormCadastraVeiculo = class(TForm)
    GroupBox1: TGroupBox;
    XPManifest1: TXPManifest;
    DtCadastro: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DtPadVei: TDataSource;
    DtModCha: TDataSource;
    DBGrid1: TDBGrid;
    DtmodCar: TDataSource;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DtIndiceRevisao: TDataSource;
    DtStavei: TDataSource;
    DtVeiSis: TDataSource;
    DtColigada: TDataSource;
    DtCcusto: TDataSource;
    GroupBox5: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    BitBtn6: TBitBtn;
    DtModMotor: TDataSource;
    Label16: TLabel;
    EditNumero: TDBEdit;
    DtVeiLayOut: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    Editplaca: TMaskEdit;
    DBEdit6: TDBEdit;
    EditKm: TMaskEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBCheckBox3: TDBCheckBox;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    EditInicioOperacao: TDBEdit;
    DBEdit11: TDBEdit;
    Label22: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditplacaExit(Sender: TObject);
    procedure EditAquisicaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure EditKmExit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure EditOperacaoExit(Sender: TObject);
    procedure CriaLacreCatracaVeiculo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraVeiculo: TFormCadastraVeiculo;
  veiculo : string;
implementation

uses UnitServerPai, UnitBuscar;

{$R *.dfm}

procedure TFormCadastraVeiculo.BitBtn1Click(Sender: TObject);
begin
DtCadastro.DataSet.Insert;
EditKm.Text:='';
//EditAquisicao.text:='';
EditPlaca.Text:='';
GroupBox1.Enabled:=True;
DBEdit1.SetFocus;
end;

procedure TFormCadastraVeiculo.BitBtn2Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
GroupBox1.Enabled:=false;
PageControl1.ActivePageIndex:=0;
end;

procedure TFormCadastraVeiculo.BitBtn3Click(Sender: TObject);
begin
DtCadastro.DataSet.FieldByName('Vei_Coligada').AsString:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
if (DtCadastro.DataSet.State = DsInsert) then
begin
         DtCadastro.DataSet.Post;
         DtIndicerevisao.DataSet.Insert;
         DtIndiceRevisao.DataSet.FieldByName('tin_vei').AsString:=Veiculo;
         DtIndiceRevisao.DataSet.FieldByName('tin_UltCol').AsString:=('01/01/2010');
         DtIndiceRevisao.DataSet.FieldByName('tin_Odo').AsString:=EditKm.Text;
         DtIndicerevisao.DataSet.Post;
         GroupBox1.Enabled:=False;
         CriaLacreCatracaVeiculo;
end;
if (DtCadastro.DataSet.State = DsEdit) then
begin
         DtIndiceRevisao.DataSet.FieldByName('tin_UltCol').AsString:=DateToStr(Now);
         DtIndiceRevisao.DataSet.FieldByName('tin_Odo').AsString:=EditKm.Text;
         DtIndicerevisao.DataSet.Post;
         DtCadastro.DataSet.Post;
         PageControl1.ActivePageIndex:=0;
         GroupBox1.Enabled:=False;
         end;



end;

procedure TFormCadastraVeiculo.CriaLacreCatracaVeiculo;
begin
  //
     with pai.Qrtemp2 do
         begin
                close;
                sql.add('insert into TB_MONCAT (cat_vei, cat_cat, cat_lacre, cat_data, cat_coligada)');
                sql.Add('values ('+
                         quotedstr(EditNumero.Text)           +','+
                         quotedStr('1')                       +','+
                         quotedStr('12345')                   +','+
                         quotedStr(EditInicioOperacao.Text)   +','+
                         DtColigada.DataSet.FieldByName('Cod_Coligada').AsString +')');
                  execsql;
                  close;

         end;

end;


procedure TFormCadastraVeiculo.BitBtn5Click(Sender: TObject);
begin
DtCadastro.DataSet.Cancel;
Close
end;

procedure TFormCadastraVeiculo.BitBtn6Click(Sender: TObject);
begin
      Application.CreateForm(TFormBuscar,FormBuscar);
      FormBuscar.Showmodal;
end;

procedure TFormCadastraVeiculo.DBEdit1Exit(Sender: TObject);
begin
Veiculo:=DbEdit1.Text;
end;

procedure TFormCadastraVeiculo.DBGrid1DblClick(Sender: TObject);
begin
veiculo:=DtCadastro.DataSet.FieldByName('Vei_nun').AsString;
DtCadastro.DataSet.Edit;
GroupBox1.Enabled:=True;
EditPlaca.Text:=DtCadastro.DataSet.FieldByName('Vei_Placa').AsString;
//EditOperacao.Text:=DtCadastro.DataSet.FieldByName('Vei_IniOper').AsString;

//EditAquisicao.Text:=DtCadastro.DataSet.FieldByName('Vei_Aquisicao').AsString;
with DtIndiceRevisao.DataSet do
begin
   Close;
   Filter:='Tin_Vei = ' + Veiculo;
   Filtered:=true;
   Open;
   if not Eof then
   begin
     editKm.Text:=DtIndiceRevisao.DataSet.FieldByName('Tin_Odo').AsString;
     DtIndiceRevisao.DataSet.Edit;
   end
   Else
   Begin
     DtIndiceRevisao.DataSet.Insert;
     DtIndiceRevisao.DataSet.FieldByName('tin_vei').AsString:=Veiculo;
   End;


end;




DBEdit1.SetFocus;

end;

procedure TFormCadastraVeiculo.DBLookupComboBox1Exit(Sender: TObject);
begin
DbText1.Visible:=true;
end;

procedure TFormCadastraVeiculo.EditAquisicaoExit(Sender: TObject);
begin
//Dtcadastro.DataSet.FieldByName('vei_Aquisicao').AsString:=EditAquisicao.Text;

end;

procedure TFormCadastraVeiculo.EditKmExit(Sender: TObject);
begin
//Dtcadastro.DataSet.FieldByName('vei_o').AsString:=EditAquisicao.Text;

end;

procedure TFormCadastraVeiculo.EditOperacaoExit(Sender: TObject);
begin
//DtCadastro.DataSet.FieldByName('Vei_IniOper').AsString:=EditOperacao.Text;
end;

procedure TFormCadastraVeiculo.EditplacaExit(Sender: TObject);
begin
Dtcadastro.DataSet.FieldByName('vei_placa').AsString:=Editplaca.Text;

end;

procedure TFormCadastraVeiculo.FormActivate(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
 PageControl1.ActivePageIndex:=0;

DtIndiceRevisao.DataSet.Open;
DtCCusto.DataSet.Open;
DtVeiLayOut.DataSet.Open;
DtStaVei.DataSet.Open;
DtVeiSis.DataSet.Open;
DtpadVei.DataSet.Open;
DtModCha.DataSet.Open;
DtModMotor.DataSet.Open;
DtModCar.DataSet.Open;
With pai.QrVeiculo do
Begin
   Close;
   Sql.Clear;
   Sql.Add('select * from tb_veiculos where Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
   sQL.Add('Order By Vei_Numero');
   Open;
End;
DtCadastro.DataSet.Open;
Screen.Cursor:=CrDefault;
end;

procedure TFormCadastraVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtStaVei.DataSet.Close;
DtVeiSis.DataSet.Close;
DtCadastro.DataSet.Close;
DtModCha.DataSet.Close;
DtModMotor.DataSet.Close;
DtCCusto.DataSet.Close;
DtModCar.DataSet.Close;
DtPadVei.DataSet.Close;
DtIndiceRevisao.DataSet.Close;
Action:=cafree;
end;

end.
