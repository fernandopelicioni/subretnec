unit UnitImpVeiPn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TFormImpVeiPn = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    QrMovPneus: TADOQuery;
    BitBtn1: TBitBtn;
    QrVeiPn: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpVeiPn: TFormImpVeiPn;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormImpVeiPn.BitBtn1Click(Sender: TObject);
begin
With QrMovPneus do
    Begin
        Open;
        First;
        Repeat
        if not eof then
              begin
                   WITH QrVeiPn do
                        begin
                             Close;
                             Sql.Clear;
                             Sql.Add('Select * from tb_pnVeiPn');
                             Sql.Add('where Tvp_vei = ' + QuotedStr(QrMOvPneus.FieldByName('Pmov_vei').AsString));
                             Open;
                             if eof then
                                   begin
                                      QrVeiPn.Insert;
                                      QrVeiPn.FieldByName('Tvp_Vei').AsString:=QrMovPneus.FieldByName('Pmov_Vei').AsString;
                                      QrVeiPn.Post;
                                   end;
                             QrVeiPn.Edit;
                             QrVeiPn.FieldByName('Tvp_' + QrMovPneus.FieldByName('Pmov_Posicao').AsString ).AsString:=QrMovPneus.FieldByName('PMOv_Pneu').AsString;
                             QrVeiPn.Post;
                        end;
              end;
        Next;
        Until eof ;
    End;
end;

end.
