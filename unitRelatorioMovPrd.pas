unit unitRelatorioMovPrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, Mask, DB, RvLdCompiler;

type
  TFormRelatorioMovPrd = class(TForm)
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtColigadas: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMovPrd: TFormRelatorioMovPrd;

implementation

uses UnitRelatorio, UnitIniciaSistema, UnitServerPai;

{$R *.dfm}

procedure TFormRelatorioMovPrd.BitBtn1Click(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
        With Relatorio.QrProdutos do
            begin
               Close;
               Sql.Clear;
               Sql.Add('Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CampoLivre3, B.IdPrd, B.Quantidade, B.DataEmissao, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.CodCCusto from Tprd A, TitmMov B, TMov C');
               Sql.Add('where B.IdPrd = A.IdPrd and C.idMov = B.IdMov And C.Serie = ' + QuotedStr('BE'));
               Sql.Add('And A.CampoLivre3 = ' + QuotedStr('1'));
               Sql.Add('And C.CodColigada = A.CodColigada and B.CodColigada = A.CodColigada');
               Sql.Add('And A.CodColigada = ' + QuotedStr(DtColigadas.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('Order by B.DataEmissao, A.NomeFantasia');
               Open;
               if eof then
                   begin
                     MessageBox(Handle,'Não Há dados para a pesquisa','Atenção',Mb_iconInformation+mb_ok);
                   end
                   else
                   begin
                         Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                         Relatorio.Projeto.ExecuteReport('RvMovPrd');
                         Relatorio.Projeto.Close;

                   end;
            end;
Screen.Cursor:=CrDefault;
end;

procedure TFormRelatorioMovPrd.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFormRelatorioMovPrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
