unit UnitIntegraPrateleira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ADODB, ExtCtrls, DBCtrls, Mask, Buttons;

type
  TFormIntegraprateleira = class(TForm)
    GroupBox1: TGroupBox;
    DtPrd: TDataSource;
    DtPrateleira: TDataSource;
    TbTprdCompl: TADOTable;
    DBLookupComboBox1: TDBLookupComboBox;
    RadioGroup1: TRadioGroup;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    DBText2: TDBText;
    QrPrd: TADOQuery;
    MaskEdit4: TMaskEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure MaskEdit4Enter(Sender: TObject);
    procedure MaskEdit4Exit(Sender: TObject);
    procedure MaskEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIntegraprateleira: TFormIntegraprateleira;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormIntegraprateleira.BitBtn1Click(Sender: TObject);
begin
if DtPrateleira.DataSet.State = DsEdit then
      begin
      DtPrateleira.DataSet.FieldByName('Prateleira').AsString:=MaskEdit1.Text;
      DtPrateleira.DataSet.Post;
      end;
BitBtn3.SetFocus;
end;

procedure TFormIntegraprateleira.BitBtn2Click(Sender: TObject);
begin
DtPrateleira.DataSet.Cancel;

end;

procedure TFormIntegraprateleira.BitBtn3Click(Sender: TObject);
begin
DtPrateleira.DataSet.Open;
//DtPrateleira.DataSet.Edit;
GroupBox1.Enabled:=true;
maskedit1.Text:='';
maskedit4.Text:='';


if RadioGroup2.ItemIndex = 1 then
  DBLookupComboBox1.SetFocus
  else
  MaskEdit4.SetFocus;
end;

procedure TFormIntegraprateleira.DBLookupComboBox1Exit(Sender: TObject);
begin
DtPrateleira.DataSet.Edit;

end;

procedure TFormIntegraprateleira.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then
  begin
    Key:=#0;
    MaskEdit1.SetFocus;
  end;
end;

procedure TFormIntegraprateleira.FormActivate(Sender: TObject);
begin
with QrPrd do
begin
  Close;
  Sql.Clear;
  Sql.Add('select A.CodColigada, A.CodigoPRd, A.CodigoReduzido, A.IDPrd, A.UltimoNivel, A.NomeFantasia, B.Prateleira, B.IdPRd, B.CodColigada ');
  Sql.Add('From TPRD A, TPRDCompl B') ;
  Sql.Add('Where A.CodColigada = B.CodColigada and A.IDprd = B.IdPrd');
  Sql.Add('and UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
  Sql.Add('Order by A.CodigoPrd');
  Open;

end;
DtPrateleira.DataSet.Open;
end;

procedure TFormIntegraprateleira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPrateleira.DataSet.Cancel;
DtPrd.DataSet.Close;

DtPrateleira.DataSet.Close;
end;

procedure TFormIntegraprateleira.MaskEdit1Enter(Sender: TObject);
begin
MaskEdit1.Text:=DBText1.Caption;
end;

procedure TFormIntegraprateleira.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
Begin
  key:=#0;
  BitBtn1.SetFocus;

End;
end;

procedure TFormIntegraprateleira.MaskEdit2Exit(Sender: TObject);
begin
DtPrateleira.DataSet.Edit;
end;

procedure TFormIntegraprateleira.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key  = #13  then
begin
  key:=#0;
  with QrPrd do
     begin
      Close;
      Sql.Clear;
      Sql.Add('select A.CodColigada, A.CodigoPRd, A.CodigoReduzido, A.IDPrd, A.UltimoNivel, A.NomeFantasia, B.Prateleira, B.IdPRd, B.CodColigada ');
      Sql.Add('From TPRD A, TPRDCompl B') ;
      Sql.Add('Where A.CodColigada = B.CodColigada and A.IDprd = B.IdPrd');
      Sql.Add('and UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
      Sql.Add('and CodigoPrd = ' + quotedStr(MaskEdit4.Text));
      Open;
      if not eof then
        begin
        Maskedit1.SetFocus;
        end
        else begin
          MessageBox(Handle,'N�o h� produto com este Numero de Identifica��o, Verifique !!','Produto n�o encontrado',MB_IconInformation+mb_ok);
          MaskEdit4.SetFocus;
        end;
    end;
end;
end;

procedure TFormIntegraprateleira.MaskEdit4Enter(Sender: TObject);
begin
//MaskEdit4.EditMask:=MaskEdit2.Text;
end;

procedure TFormIntegraprateleira.MaskEdit4Exit(Sender: TObject);
begin
DtPrateleira.DataSet.Edit;

end;

procedure TFormIntegraprateleira.MaskEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key  = #13  then
begin
  key:=#0;
  with QrPrd do
     begin
      Close;
      Sql.Clear;
      Sql.Add('select A.CodColigada, A.CodigoPRd, A.CodigoReduzido, A.IDPrd, A.UltimoNivel, A.NomeFantasia, B.Prateleira, B.IdPRd, B.CodColigada ');
      Sql.Add('From TPRD A, TPRDCompl B') ;
      Sql.Add('Where A.CodColigada = B.CodColigada and A.IDprd = B.IdPrd');
      Sql.Add('and UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
      Sql.Add('and CodigoPrd like ' + quotedStr('%'+MaskEdit4.Text));
      Open;
      if not eof then
        begin
        Maskedit1.SetFocus;
        end
        else begin
          MessageBox(Handle,'N�o h� produto com este Numero de Identifica��o, Verifique !!','Produto n�o encontrado',MB_IconInformation+mb_ok);
          MaskEdit4.SetFocus;
        end;
    end;
end;

end;

procedure TFormIntegraprateleira.RadioGroup1Click(Sender: TObject);
begin
  with QrPrd do
     begin
      Close;
      Sql.Clear;
      Sql.Add('select A.CodColigada, A.CodigoPRd, A.CodigoReduzido, A.IDPrd, A.UltimoNivel, A.NomeFantasia, B.Prateleira, B.IdPRd, B.CodColigada ');
      Sql.Add('From TPRD A, TPRDCompl B') ;
      Sql.Add('Where A.CodColigada = B.CodColigada and A.IDprd = B.IdPrd');
      Sql.Add('and UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
  if RadioGroup1.ItemIndex = 0 then
    Begin
       DBLookupComboBox1.ListField:='CodigoPrd';
       label2.Caption:='Codigo com Mascara:';
       Sql.Add('Order by A.CodigoPrd');
     End;
   if RadioGroup1.ItemIndex = 1 then
      Begin
        DBLookupComboBox1.ListField:='NomeFantasia';
        label2.Caption:='Nome Fantasia:';
        Sql.Add('Order by A.NomeFantasia');
       End;
    if RadioGroup1.ItemIndex = 2 then
       Begin
        DBLookupComboBox1.ListField:='IDPrd';
        label2.Caption:='Codigo Reduzido:';
        Sql.Add('Order by A.IdPRd');

       End;
  Open;
  end;
  DBLookupComboBox1.Enabled:=true;
  DBLookupComboBox1.SetFocus;

end;

procedure TFormIntegraprateleira.RadioGroup2Click(Sender: TObject);
begin
if radiogroup2.ItemIndex = 1 then
  begin
    RadioGroup1.Enabled:=true;
    MaskEdit4.Enabled:=false;
  end
  else begin
    RadioGroup1.Enabled:=False;
    MaskEdit4.Enabled:=true;
    MaskEdit4.SetFocus;

  end;

end;

end.
