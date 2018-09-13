unit UnitlancaPrdCont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Mask, ComCtrls, DBCtrls, Grids, DBGrids,
  pngimage, ExtCtrls, DBCGrids;

type
  TFormLancaPrdCont = class(TForm)
    PageControl1: TPageControl;
    QrPrd: TADOQuery;
    DtColigada: TDataSource;
    DtPrd: TDataSource;
    QrPrdIDPRD: TIntegerField;
    QrPrdCodigoPrd: TStringField;
    QrPrdNomefantasia: TStringField;
    QrPrdPrdsubTro: TWideStringField;
    TabSheet3: TTabSheet;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBCheckBox3: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaPrdCont: TFormLancaPrdCont;

implementation

uses UnitServerPai, UnitBuscaPrd;

{$R *.dfm}

procedure TFormLancaPrdCont.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
  key:=#0;

end;
end;

procedure TFormLancaPrdCont.FormActivate(Sender: TObject);
begin
        With QrPrd do
             begin
                   Close;
                   Parameters.ParamByName('coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                   Open;
             end;
end;

procedure TFormLancaPrdCont.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
QrPrd.Close;
Action:=cafree;
end;

end.
