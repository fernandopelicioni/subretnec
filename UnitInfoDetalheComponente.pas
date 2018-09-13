unit UnitInfoDetalheComponente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, UnitInfoComponentes, DB, Grids, DBGrids;

type
  TFormInfoDetalhesComponentes = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    DtAplicacoes: TDataSource;
    DBGrid1: TDBGrid;
    procedure Panel2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoDetalhesComponentes: TFormInfoDetalhesComponentes;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormInfoDetalhesComponentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtAplicacoes.DataSet.Close;
Action:=Cafree;
end;

procedure TFormInfoDetalhesComponentes.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoDetalhesComponentes.Panel2Click(Sender: TObject);
begin
close;
end;

end.
