unit UnitTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCGrids, StdCtrls, DBCtrls, ExtCtrls;

type
  TFormTeste = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeste: TFormTeste;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormTeste.FormActivate(Sender: TObject);
begin
DataSource1.DataSet.Open;
end;

end.
