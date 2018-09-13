unit UnitRelEmitePrateleira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, RvLdCompiler;

type
  TFormRelatorioPrateleira = class(TForm)
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtColigada: TDataSource;
    CheckBox1: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPrateleira: TFormRelatorioPrateleira;

implementation

uses UnitRelatorio, UnitServerPai;

{$R *.dfm}

procedure TFormRelatorioPrateleira.BitBtn1Click(Sender: TObject);
begin
    WITH RELATORIO.QrProdutos do
         begin
               Close;
               Sql.Clear;
               Sql.Add('select A.NomeFantasia, A.CodigoPrd, A.CodigoAuxiliar, B.Prateleira from Tprd A, TPRdCompl B');
               Sql.Add('where B.IdPrd = A.IdPrd And B.CodColigada = A.CodColigada');
               Sql.Add('And UltimoNivel = '  + QuotedStr('1'));
               Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigada.Dataset.FieldbyName('Cod_Coligada').AsString));
               Sql.Add('And B.prateleira >= ' + QuotedStr(Edit1.Text) + ' and B.Prateleira <= ' + QuotedStr(Edit2.Text));
               if RadioGroup1.ItemIndex = 0 then
                      Sql.Add('Order By B.Prateleira');
               if RadioGroup1.ItemIndex = 1 then
                      Sql.Add('Order By A.CodigoPrd');
               if RadioGroup1.ItemIndex = 2 then
                      Sql.Add('Order By A.NomeFantasia');
               Open;
               if Not eof then
                    begin
                            if CheckBox1.Checked = true then
                                  Relatorio.Projeto.ExecuteReport('RvEtiquetaCodBarra')
                                  else
                                  Relatorio.Projeto.ExecuteReport('RvEtiquetaProduto');
                            Relatorio.Projeto.Close;
                    end
                    Else
                    begin
                            ShowMessage('Não há dados para geração de Relatórios');
                    end;

         end;
end;

procedure TFormRelatorioPrateleira.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelatorioPrateleira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
