unit UnitRelatorioMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, DB, DBCtrls, ADODB, RvLdCompiler;

type
  TFormRelatorioMapa = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    RadioGroup1: TRadioGroup;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DtPrd: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DtPrd2: TDataSource;
    QrPrd2: TADOQuery;
    CheckBox2: TCheckBox;
    QrPrd: TADOQuery;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox4: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMapa: TFormRelatorioMapa;

implementation

uses UnitServerPai, UnitRelatorio, Principal, UtNucleo;
{$R *.dfm}

procedure TFormRelatorioMapa.BitBtn1Click(Sender: TObject);
begin
        with Relatorio.QrPrateleiras do
            begin
                  Close;
                  Sql.Clear;
                  Sql.Add('select A.CodigoPrd, A.CodigoAuxiliar, A.Descricao, C.SaldoFisico2, B.Prateleira from TPRD A');
                  Sql.Add('Join TprdCompl B On B.IdPrd = A.IdPrd and B.CodColigada = A.CodColigada');
                  Sql.Add('Join TprdLoc C On C.Idprd = A.IdPrd and C.CodColigada = A.CodColigada');
                  Sql.Add('Where UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
                  if CheckBox1.Checked = false then
                        Sql.Add('and (B.prateleira >= ' + QuotedStr(MaskEdit1.Text) + ' And B.Prateleira <= ' + QuotedStr(MaskEdit2.Text) + ')');
                  if CheckBox2.Checked = True then
                        Sql.Add('And A.CodigoPrd >= ' + QuotedStr(DBLookupComboBox1.Text) + ' and A.CodigoPrd <= ' + QuotedStr(DBLookupComboBox2.Text));
                  if CheckBox4.Checked = True then
                         Sql.Add('And C.SaldoFisico2 > 0');
                  if CheckBox3.Checked = True then
                         Sql.Add('And A.Inativo = 0');
                  if CheckBox5.Checked = True then
                         Sql.Add('And A.Tipo = ' + QuotedStr('P'));
                  if CheckBox6.Checked = True then
                         Sql.Add('And A.Tipo = ' + QuotedStr('S'));
                  if RadioGroup1.ItemIndex = 1 then
                         Sql.Add('Order by A.Descricao');
                  if RadioGroup1.ItemIndex = 0 then
                        Sql.Add('Order by B.Prateleira');



                  if RadioGroup1.ItemIndex = 2 then
                  Sql.Add('Order by A.CodigoPrd');
                  formNucleo.Memo1.text:=sql.Text;
                  Open;
            end;
            Relatorio.Projeto.ExecuteReport('RvMapaBalanco');
            Relatorio.Projeto.Close;

end;

procedure TFormRelatorioMapa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRelatorioMapa.CheckBox1Click(Sender: TObject);
begin
MaskEdit1.SetFocus;
end;

procedure TFormRelatorioMapa.FormActivate(Sender: TObject);
begin
//DtPrd.DataSet.Open;
with QrPrd do
   begin
   Close;
   Sql.Clear;
   Sql.Add('Select A.CodigoPrd From Tprd A, TprdCompl B');
   Sql.Add('Where A.IDprd = B.IdPrd');
   Sql.Add('and UltimoNivel = 1 And A.CodColigada = B.CodColigada');
   Sql.Add('And A.CodColigada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_coligada').AsString));
   Sql.Add('order by A.CodigoPrd');
   Open;
   end;
with QrPrd2 do
   begin
   Close;
   Sql.Clear;
   Sql.Add('Select A.CodigoPrd From Tprd A, TprdCompl B');
   Sql.Add('Where A.IDprd = B.IdPrd');
   Sql.Add('and UltimoNivel = 1 And A.CodColigada = B.CodColigada');
   Sql.Add('And A.CodColigada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_coligada').AsString));
   Sql.Add('order by A.CodigoPrd');
   Open;
   end;

end;

procedure TFormRelatorioMapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DtPrd.DataSet.Open;
  DtPrd2.DataSet.Open;
  Action := Cafree;
end;

end.
