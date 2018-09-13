unit UtOrcamentoContaDetalhada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormOrcamentoContaDetalhada = class(TForm)
    QrDetalamento: TFDQuery;
    Panel1: TPanel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    DtContasOrcamentarias: TDataSource;
    FDQuery1: TFDQuery;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrcamentoContaDetalhada: TFormOrcamentoContaDetalhada;

implementation

{$R *.dfm}

procedure TFormOrcamentoContaDetalhada.Image1Click(Sender: TObject);
begin
close;
end;

end.
