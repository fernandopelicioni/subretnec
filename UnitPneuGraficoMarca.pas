unit UnitPneuGraficoMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart;

type
  TFormPneuGraficoMarcas = class(TForm)
    Qrtemp: TADOQuery;
    DtColigada: TDataSource;
    Grafico: TDBChart;
    Series1: TPieSeries;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    A: string;
    { Public declarations }
  end;

var
  FormPneuGraficoMarcas: TFormPneuGraficoMarcas;

implementation

uses UnitServerPai, UnitPneuGeraGrafico;

{$R *.dfm}

procedure TFormPneuGraficoMarcas.FormActivate(Sender: TObject);
begin
     With QrTemp do
         begin
               Close;
               Sql.Clear;
               Sql.Add('select A.Tpm_des as Marca, count(*) as Qt from Tb_PnMarcas A, Tb_PnPneus B');
               Sql.Add('where B.Tcp_Marca = A.Tpm_Cod');
               if A <> 'R' THEN
                       Sql.Add('And B.Tcp_Local = ' + QuotedStr(A))
                       ELSE
                       Sql.Add('And B.Tcp_vIDA <> ' + QuotedStr('N'));
               Sql.Add('And B.Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
               Sql.Add('group by A.Tpm_Des');
               Open;

         end;




end;

procedure TFormPneuGraficoMarcas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormPneuGeraGrafico.close;
Qrtemp.ClOSE;
aCTION:=CAFREE;
end;

end.
