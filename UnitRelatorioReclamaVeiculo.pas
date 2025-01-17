unit UnitRelatorioReclamaVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, ComCtrls, Buttons, DBCtrls, RvLdCompiler;

type
  TFormRelatorioReclamaVeiculos = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    DtGrupos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioReclamaVeiculos: TFormRelatorioReclamaVeiculos;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioReclamaVeiculos.BitBtn1Click(Sender: TObject);
begin
           With Relatorio.QrPmcAberto do
                 begin
                       Close;
                       Sql.Clear;
                       Sql.Add('Set language brazilian');
                       Sql.Add('select * from tb_CbPmc A, TB_CbGruman B, Tb_CbIteRec C, Tb_Veiculos D');
                       Sql.Add('where A.Pmc_item = C.Tid_Cod and C.tid_Grupo = B.GRM_Id');
                       Sql.Add('and D.Vei_Nun = a.pmc_vei');
                       if DBLookupComboBox1.KeyValue <> null then Sql.Add('And B.Grm_Id = ' + QUotedStr(DBLookupComboBox1.KeyValue));
                       if RadioGroup1.ItemIndex = 1 then Sql.Add('And A.Pmc_Data = ' + QuotedStr(DateToStr(DateTimePicker1.Date)));
                       Sql.Add('and Pmc_Status = ' + QuotedStr('A') +' and A.pmc_coligada = ' + QuotedStr(pai.QrColigadas.FieldByName('cod_Coligada').AsString));
                       Sql.Add('order by B.Grm_des, A.Pmc_Data, A.Pmc_Vei');
                       Open;
                       if not eof then
                             begin
                                          Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                          Relatorio.Projeto.ExecuteReport('RvPMcAberto');
//                                          Relatorio.Projeto.close;
                             end
                             else
                                         ShowMessage('N�o h� dados para gera��o do Relat�rio !');

                 end;
end;

procedure TFormRelatorioReclamaVeiculos.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormRelatorioReclamaVeiculos.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DtGrupos.DataSet.Open;
end;

end.
