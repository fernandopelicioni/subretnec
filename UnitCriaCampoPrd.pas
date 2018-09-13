unit UnitCriaCampoPrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DBCGrids;

type
  TFormCriaCampoPrd = class(TForm)
    QrPrd: TADOQuery;
    QrPrdFil: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    qrprdfil2: TADOQuery;
    DataSource2: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox1: TDBCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCriaCampoPrd: TFormCriaCampoPrd;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormCriaCampoPrd.BitBtn1Click(Sender: TObject);
begin
     With QrPrd do
            begin
                   Open;
                   First;
                   while not eof do
                        begin
                              With QrPrdFil do
                                    begin
                                           Close;
                                           Sql.Clear;
                                           Sql.Add('Select * from tprdfil where codcoligada = 2 and idprd = '+quotedStr(QrPrd.FieldByName('idprd').AsString));
                                           Open;
                                           if eof then
                                                begin
                                                      insert;
                                                      qrprdfil.FieldByName('idprd').AsString:=QrPRd.FieldByName('idprd').AsString;
                                                      qrprdfil.FieldByName('codcoligada').AsString:='2';
                                                      qrprdfil.FieldByName('codfilial').AsString:='1';
                                                      qrprdfil.FieldByName('Estocavel').AsString:='1';
                                                      post;
                                                end;
                                    end;
                        next;
                        end;

            end;
end;

procedure TFormCriaCampoPrd.BitBtn2Click(Sender: TObject);
begin
qrprdfil2.Open;
end;

end.
