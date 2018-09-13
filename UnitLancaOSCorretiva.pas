unit UnitLancaOSCorretiva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, DBCGrids, Buttons, ExtCtrls, pngimage;

type
  TFormLancaOSCorretiva = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DtBaseRevisao: TDataSource;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText3: TDBText;
    DBText4: TDBText;
    Bevel1: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaOSCorretiva: TFormLancaOSCorretiva;

implementation

uses UnitCadastraAssociacao;

{$R *.dfm}

procedure TFormLancaOSCorretiva.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormLancaOSCorretiva.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormLancaOSCorretiva.SpeedButton1Click(Sender: TObject);
begin
if DtBaseRevisao.DataSet.State = DsEdit then
          DtBaseRevisao.DataSet.Post;
close;
end;

procedure TFormLancaOSCorretiva.SpeedButton2Click(Sender: TObject);
begin
DtbaseRevisao.DataSet.Cancel;
Close;

end;

end.
