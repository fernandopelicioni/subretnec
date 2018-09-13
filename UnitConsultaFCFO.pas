unit UnitConsultaFCFO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Grids, DBGrids;

type
  TFormConsultaFCFO = class(TForm)
    GroupBox1: TGroupBox;
    DtFcfo: TDataSource;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText6: TDBText;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaFCFO: TFormConsultaFCFO;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormConsultaFCFO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
