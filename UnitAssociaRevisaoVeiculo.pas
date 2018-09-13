unit UnitAssociaRevisaoVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, RibbonLunaStyleActnCtrls, Ribbon,
  Grids, DBGrids, Buttons, ScreenTips, ActnList, PlatformDefaultStyleActnCtrls,
  ActnMan;

type
  TFormAssociaRevisaoVeiculo = class(TForm)
    GroupBox1: TGroupBox;
    DtVeiculo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBText1: TDBText;
    QrVeiculos: TADOQuery;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    SpeedButton1: TSpeedButton;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    ScreenTipsManager1: TScreenTipsManager;
    ActionManager1: TActionManager;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssociaRevisaoVeiculo: TFormAssociaRevisaoVeiculo;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormAssociaRevisaoVeiculo.FormActivate(Sender: TObject);
begin
DtVeiculo.DataSet.Open;
end;

procedure TFormAssociaRevisaoVeiculo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtVeiculo.DataSet.Open;
Action:=cafree;
end;

end.
