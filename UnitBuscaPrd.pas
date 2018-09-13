unit UnitBuscaPrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, Mask, ExtCtrls;

type
  TFormBuscaPrd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EDitPrd: TMaskEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscaPrd: TFormBuscaPrd;

implementation

uses UnitlancaPrdCont;

{$R *.dfm}

procedure TFormBuscaPrd.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFormBuscaPrd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormBuscaPrd.SpeedButton1Click(Sender: TObject);
begin
    with FormLancaPrdCont.QrPrd do
        begin
             Close;
             Sql.Clear;
             Sql.Add('Select A.IdPrd, A.CampoLivre3, A.UltimoNivel, A.CodigoAuxiliar, A.CodigoReduzido, A.NomeFantasia, A.CodigoPRd, B.IdPrd, B.Prateleira, B.Garantia, B.TpLocal, B.CodColigada');
             Sql.Add('From Tprd A, TprdCompl B');
             Sql.Add('Where A.IDPrd = B.IDPrd');
             Sql.Add('and A.CodColigada = ' + QuotedStr(FormLancaPrdCont.DtColigada.DataSet.FieldByName('cod_coligada').AsString));
             Sql.Add('And UltimoNivel = 1 And A.CodColigada = B.CodColigada');
             Open;
             if eof then
                   begin
                         Showmessage('o produto não exite ou pertence a outra coligada');
                   end;

        end;
                         Close;
end;

end.
