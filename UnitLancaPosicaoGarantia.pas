unit UnitLancaPosicaoGarantia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, Mask;

type
  TFormLancaPosicaoGarantia = class(TForm)
    Panel1: TPanel;
    DtPosicao: TDataSource;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaPosicaoGarantia: TFormLancaPosicaoGarantia;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormLancaPosicaoGarantia.BitBtn1Click(Sender: TObject);
begin
DtPosicao.DataSet.Post;
end;

procedure TFormLancaPosicaoGarantia.BitBtn2Click(Sender: TObject);
begin
           DtPosicao.DataSet.Insert;
           DBEdit1.SetFocus;
end;

procedure TFormLancaPosicaoGarantia.FormActivate(Sender: TObject);
begin
DtPosicao.DataSet.Open;
end;

procedure TFormLancaPosicaoGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtPosicao.DataSet.close;
action:=cafree;
end;

end.
