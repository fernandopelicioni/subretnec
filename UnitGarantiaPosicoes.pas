unit UnitGarantiaPosicoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, Grids, DBGrids, DB, ADODB;

type
  TFormGarantiaPosicoes = class(TForm)
    Panel1: TPanel;
    DtPos: TDataSource;
    QrPos: TADOQuery;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGarantiaPosicoes: TFormGarantiaPosicoes;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormGarantiaPosicoes.BitBtn1Click(Sender: TObject);
begin
          if (QrPos.State = Dsinsert) or (QrPos.State = DsEdit) then
                 begin
                       DtPos.DataSet.FieldByName('Tpos_Coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                       DtPos.DataSet.Post;

                 end;

end;

procedure TFormGarantiaPosicoes.BitBtn2Click(Sender: TObject);
begin
         DtPos.DataSet.Insert;
         DBEdit1.SetFocus;
end;

procedure TFormGarantiaPosicoes.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFormGarantiaPosicoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      action:=cafree;
end;

procedure TFormGarantiaPosicoes.FormShow(Sender: TObject);
begin
          With QrPos do
              begin
                    close;
                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    open;
              end;
end;

end.
