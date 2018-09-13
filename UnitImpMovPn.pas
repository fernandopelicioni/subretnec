unit UnitImpMovPn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ADODB, DB;

type
  TFormImpMovPn = class(TForm)
    DataSource1: TDataSource;
    QrMovPneus: TADOQuery;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    QrPneu: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpMovPn: TFormImpMovPn;

implementation

uses UnitServerPai;

{$R *.dfm}

end.
