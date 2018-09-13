unit UnitRelatorioVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, pngimage, ExtCtrls;

type
  TFormRelatorioVeiculo = class(TForm)
    DtSistema: TDataSource;
    DtPadVei: TDataSource;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    DtModCha: TDataSource;
    DtModCar: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label5: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DtStatus: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVeiculo: TFormRelatorioVeiculo;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioVeiculo.FormActivate(Sender: TObject);
begin
      DtSistema.DataSet.Open;
      DtPadVei.DataSet.Open;
      DtModCha.DataSet.Open;
      DtModCar.DataSet.Open;
      DtStatus.DataSet.Open;
end;


procedure TFormRelatorioVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      DtSistema.DataSet.close;
      DtPadVei.DataSet.close;
      DtModCha.DataSet.close;
      DtModCar.DataSet.close;
      DtStatus.DataSet.Close;
      Action:=Cafree;
end;

procedure TFormRelatorioVeiculo.Image1Click(Sender: TObject);
begin
With Relatorio.QrVeiculos do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D, TB_VeiSistema E, Tb_PadVeic F');
    Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod And E.Vsi_cod = A.Vei_Vsi And F.Pad_Cod = A.Vei_Padrao');
    Sql.Add('and A.Vei_Nun = D.Tin_Vei');
    Sql.Add('And Vei_Coligada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
    if DBLookupComboBox5.KeyValue <> Null Then
         Sql.Add('And A.Vei_Status = ' + QuotedStr(DBLookupComboBox5.KeyValue));
    if DBLookupComboBox1.KeyValue <> Null Then
         Sql.Add('And A.Vei_Padrao = ' + QuotedStr(DBLookupComboBox1.KeyValue));
    if DBLookupComboBox2.KeyValue <> Null Then
         Sql.Add('And A.Vei_Vsi = ' + QuotedStr(DBLookupComboBox2.KeyValue));
    if DBLookupComboBox3.KeyValue <> Null Then
         Sql.Add('And A.Vei_CarMod = ' + QuotedStr(DBLookupComboBox3.KeyValue));
    if DBLookupComboBox4.KeyValue <> Null Then
         Sql.Add('And A.Vei_ModCha = ' + QuotedStr(DBLookupComboBox4.KeyValue));
    Sql.Add('Order by Vei_nun');
//      Memo1.text:=Sql.Text;
    Open;

  End;
//      Relatorio.Projeto.SetParam('Dt1',FormIniciaSistema.EditVersao.Caption);
      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
      Relatorio.Projeto.ExecuteReport('RvVeiculos');
//      Relatorio.Projeto.close;

end;

procedure TFormRelatorioVeiculo.Image2Click(Sender: TObject);
begin
Close;
end;

end.
