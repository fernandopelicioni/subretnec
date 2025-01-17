unit UnitAssociaFichaContVei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, Mask, DBCtrls, StdCtrls, ComCtrls, Buttons, Grids,
  DBGrids, ADODB;

type
  TFormAssociaFichaContVei = class(TForm)
    Panel1: TPanel;
    DtFichamant: TDataSource;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DtItemFicha: TDataSource;
    DtVeiculo: TDataSource;
    DtSetores: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    QrFichaContCompleta: TADOQuery;
    DtFichaContCompleta: TDataSource;
    BitBtn4: TBitBtn;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    EditData: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TEdit;
    EditKm: TEdit;
    Label8: TLabel;
    DtColigada: TDataSource;
    QrVeiculos: TADOQuery;
    QrVeiculosVEI_NUN: TWideStringField;
    QrVeiculosVEI_PLACA: TWideStringField;
    QrVeiculosVEI_AQUISICAO: TDateTimeField;
    QrVeiculosVEI_PADRAO: TSmallintField;
    QrVeiculosVEI_GRUPO: TSmallintField;
    QrVeiculosVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculosVEI_CENTROCUSTO: TStringField;
    QrVeiculosVEI_CHASSINUM: TWideStringField;
    QrVeiculosVEI_CHASSIANO: TWideStringField;
    QrVeiculosVEI_MODCHA: TSmallintField;
    QrVeiculosVEI_CARMOD: TSmallintField;
    QrVeiculosVEI_CARANO: TWideStringField;
    QrVeiculosVEI_OPERADOR: TWideStringField;
    QrVeiculosVEI_COLIGADA: TWordField;
    QrVeiculosCAR_COD: TSmallintField;
    QrVeiculosCAR_DES: TWideStringField;
    QrVeiculosMOD_COD: TSmallintField;
    QrVeiculosMOD_DES: TWideStringField;
    QrVeiculosMOD_MEDCOMBUSTIVEL: TBCDField;
    QrVeiculosMOD_MEDKM: TIntegerField;
    QrVeiculosMOD_EIXOS: TWordField;
    QrVeiculosMOD_MEDCOMMAX: TBCDField;
    QrVeiculosTIN_VEI: TWideStringField;
    QrVeiculosTIN_ULTCOL: TDateTimeField;
    QrVeiculosTIN_ODO: TIntegerField;
    QrVeiculosTIN_ULTMED: TBCDField;
    TbFichaMant: TADOTable;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure EditKmEnter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssociaFichaContVei: TFormAssociaFichaContVei;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormAssociaFichaContVei.BitBtn1Click(Sender: TObject);
begin
//Panel1.Enabled:=false;
if (DtFichaMant.DataSet.State = DsInsert) or (DtFichaMant.DataSet.State = DsEdit) then
 Begin
    GroupBox3.Enabled:=false;
    DtFichamant.DataSet.FieldByName('FCM_Data').AsString:=DateToStr(EditData.Date);
    DtFichamant.DataSet.FieldByName('FCM_Km').AsString:= EditKm.Text;
    DtFichamant.DataSet.post;
    DtFichaContCompleta.DataSet.Close;
    DtFichaContCompleta.DataSet.Open;
    DtFichamant.DataSet:=TbFichaMant;
 End;
end;

procedure TFormAssociaFichaContVei.BitBtn2Click(Sender: TObject);
begin
Panel1.Enabled:=true;
GroupBox3.Enabled:=true;
EditData.Date:=Now;
DtFichamant.DataSet.Cancel;
DtFichamant.DataSet:=pai.QrFicContMan;
DtFichamant.DataSet.Open;
DtFichamant.DataSet.Insert;
DtFichamant.DataSet.FieldByName('FCM_Vei').AsString:=DtVeiculo.DataSet.FieldByName('vei_nun').AsString;

DBLookupComboBox2.SetFocus;
end;

procedure TFormAssociaFichaContVei.BitBtn3Click(Sender: TObject);
begin
    DtFichamant.DataSet.cancel;
    DtFichamant.DataSet:=TbFichaMant;

end;

procedure TFormAssociaFichaContVei.BitBtn4Click(Sender: TObject);
begin
With QrVeiculos do
  Begin
       Close;
       Sql.Clear;
       Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D');
       Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod');
       Sql.Add('and A.Vei_Nun = D.Tin_Vei');
       Sql.Add('And A.Vei_Coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
       Sql.Add('And A.Vei_numero = ' + QuotedStr(DBLookupComboBox1.text));
       open;
      // memo1.Text:=sql.Text;
       if not eof then
             begin
                  with QrFichaContCompleta do
                         begin
                              close;
//                              Parameters.ParamByName('veiculo').Value:=QuotedStr(DtVeiculo.DataSet.FieldByName('vei_nun').AsString);
//                              open;
                              Sql.clear;
                              Sql.Add('Select * from tb_FicContMan A, TB_IteFicMan B, TB_veiculos V');
                              Sql.Add('Where B.Ifcm_Cod = A.Fcm_IFcm');
                              sql.Add('and v.vei_nun = a.fcm_vei');
                              Sql.Add('And v.vei_numero = ' + QuotedStr(DBLookupComboBox1.Text));
                              Open;
//                              memo1.Text:=sql.Text;
                              DtFichaMant.DataSet.Open;
                         end;
                   Panel1.Enabled:=true;
                  GroupBox2.Visible:=true;
             end
          else begin
                ShowMessage('Ve�culo n�o encontrado !');
                DBLookupComboBox1.Text:='';
                DBLookupComboBox1.SetFocus;
          end;
  End;

end;

procedure TFormAssociaFichaContVei.BitBtn5Click(Sender: TObject);
begin
if messageDlg('Deseja mesmo apagar o Registro selecionado',MtConfirmation,[mbyes, MBno],0) = Mryes then
   begin
     DtFichaMant.DataSet.Delete;
   end
   else begin
     DtFichaMant.DataSet.Delete;

   end;
GroupBox3.Enabled:=false;
end;

procedure TFormAssociaFichaContVei.DBEdit1Enter(Sender: TObject);
begin
DBLookupComboBox1.SetFocus;
end;

procedure TFormAssociaFichaContVei.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
Begin
  Key:=#0;
  DbEdit3.SetFocus;
End;

end;

procedure TFormAssociaFichaContVei.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
Begin
  Key:=#0;
  DbEdit4.SetFocus;
End;

end;

procedure TFormAssociaFichaContVei.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
Begin
  Key:=#0;
  DbMemo1.SetFocus;
End;

end;

procedure TFormAssociaFichaContVei.DBGrid1DblClick(Sender: TObject);
begin
DtFichaMant.Dataset.edit;
GroupBox3.Enabled:=true;
EditKm.Text:=DtFichaContCompleta.DataSet.FieldByName('FCM_KM').AsString;
EditData.Date:=StrToDate(DtFichaContCompleta.DataSet.FieldByName('FCM_Data').AsString);

Editdata.SetFocus;
end;

procedure TFormAssociaFichaContVei.DBLookupComboBox1Enter(Sender: TObject);
begin
DtFichamant.DataSet.Cancel;
GroupBox2.Visible:=False;
Panel1.Enabled:=false;
end;

procedure TFormAssociaFichaContVei.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  BitBtn4Click(nil);
end;
end;

procedure TFormAssociaFichaContVei.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
Begin
  Key:=#0;
  Editdata.SetFocus;
End;
end;

procedure TFormAssociaFichaContVei.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
Begin
  Key:=#0;
  EditKm.SetFocus;
End;

end;

procedure TFormAssociaFichaContVei.EditKmEnter(Sender: TObject);
begin
if DtFichaMant.DataSet.State = DsInsert then
     EditKm.Text:=DtVeiculo.DataSet.FieldByName('Tin_Odo').AsString;

end;

procedure TFormAssociaFichaContVei.FormActivate(Sender: TObject);
begin
DtItemFicha.DataSet.Open;
//DtFichamant.DataSet.Open;
// filtrar por veiculo e por empresa
DtVeiculo.DataSet.Open;
DtSetores.DataSet.Open;

end;

procedure TFormAssociaFichaContVei.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtItemFicha.DataSet.Close;
DtFichamant.DataSet.Close;
// filtrar por veiculo e por empresa
DtVeiculo.DataSet.Close;
DtSetores.DataSet.Close;
DtFichaContCompleta.DataSet.Close;

end;

end.
