unit UnitE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, ADODB;

type
  TFormIntegraprateleira = class(TForm)
    GroupBox1: TGroupBox;
    DtPrd: TDataSource;
    DtPrateleira: TDataSource;
    TbTprdCompl: TADOTable;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFormIntegraprateleira.FormActivate(Sender: TObject);
begin
DtPrd.DataSet.Open;
DtPrateleira.DataSet.Open;
end;

procedure TFormIntegraprateleira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPrd.DataSet.Close;
DtPrateleira.DataSet.Close;
end;

end.
