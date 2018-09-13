unit UnitImportaPneuCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons;

type
  TFormImportaCadPn = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    QrPneus: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaCadPn: TFormImportaCadPn;

implementation

uses UnitServerPai;

{$R *.dfm}

end.
