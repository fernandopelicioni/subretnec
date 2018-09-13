unit UnitImpRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFormImpRef = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    QrMovRef: TADOQuery;
    BitBtn1: TBitBtn;
    QrPneu: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpRef: TFormImpRef;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormImpRef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
