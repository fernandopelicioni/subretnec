unit UnitRelatorioPrateleiras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnCtrls, ToolWin, ActnMan, ActnMenus,
  ImgList, DBCGrids, DB, StdCtrls,
  Mask, Buttons;

type
  TFormRelatorioPrateleiras = class(TForm)
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormRelatorioClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPrateleiras: TFormRelatorioPrateleiras;

implementation

uses UnitPai, UnitServerPai, UnitRelatorio;

{$R *.dfm}

procedure TFormRelatorioPrateleiras.BitBtn1Click(Sender: TObject);
begin
with pai.QrPrd do
  begin
     Close;
     Sql.Clear;
     Sql.Add('select * from TPRD A, TPRDCompl B Where A.CodColigada = B.CodColigada and A.IDprd = B.IdPrd');
     Sql.Add('and UltimoNivel = 1 and A.CodColigada = ' + Pai.QrColigadas.FieldByName('Cod_Coligada').AsString);
     Sql.Add('and B.prateleira >= ' + QuotedStr(MaskEdit1.Text) + ' And B.Prateleira <= ' + QuotedStr(MaskEdit2.Text));
     Sql.Add('Order by A.CodigoPrd');
     Open;
   end;
Relatorio.Projeto.ExecuteReport('RvMapaBalanco');
Relatorio.Projeto.Close;
end;

procedure TFormRelatorioPrateleiras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFormRelatorioPrateleiras.FormRelatorioClick(Sender: TObject);
begin
Close;
end;


end.
