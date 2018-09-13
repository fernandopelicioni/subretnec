unit UnitIndiceSocorro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, DBCtrls, DBCGrids, pngimage,
  ExtCtrls, ComCtrls, Buttons;

type
  TFormIndiceSocorro = class(TForm)
    QrIndicador: TADOQuery;
    DtIndicador: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Image1: TImage;
    DBCtrlGrid1: TDBCtrlGrid;
    QrDetalhes: TADOQuery;
    DtDetalhes: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    DtIni: TDateTimePicker;
    DtFim: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    BitBtn1: TBitBtn;
    DBText3: TDBText;
    Memo1: TMemo;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndiceSocorro: TFormIndiceSocorro;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormIndiceSocorro.BitBtn1Click(Sender: TObject);
begin
     DtDetalhes.DataSet.Close;
     with QrIndicador do
          begin
                 Close;
//                 QrDetalhes.Parameters.ParamByName('Veiculo').Value:=DtIndicador.DataSet.FieldByName('Veiculo').AsString;
//                 QrDetalhes.Parameters.ParamByName(')
//                   Sql.Clear;
//                   Sql.Add('Select Pmc_Vei as Veiculo, Count(*) as Qt from tb_CbPmc');
//                   Sql.Add('Where Pmc_Data > = ' + QuotedStr(DateToStr(DtIni.Date)) + ' And Pmc_Data <= ' + QuotedStr(DateToStr(DtFim.Date)));
//                   Sql.Add('And Pmc_coligada = ' + QuotedStr(pai.QrColigadas.FieldByName('Cod_coligada').AsString));
//                   Sql.Add('Group By Pmc_vei order By Qt Desc');
//                   memo1.Text:=sql.Text;
                   Parameters.ParamByName('DataI').Value:=(DateToStr(DtIni.Date));
                   Parameters.ParamByName('DataF').Value:=(DateToStr(DtFim.Date));
                   Parameters.ParamByName('Coligada').Value:=pai.QrColigadas.FieldByName('Cod_coligada').AsString;
                   Open;
          end;


end;

procedure TFormIndiceSocorro.DBGrid1DblClick(Sender: TObject);
begin
     with QrDetalhes do
          begin
                 Close;
//                 QrDetalhes.Parameters.ParamByName('Veiculo').Value:=DtIndicador.DataSet.FieldByName('Veiculo').AsString;
//                 QrDetalhes.Parameters.ParamByName(')
                   Sql.Clear;
                   Sql.Add('Select * from tb_CbPMc');
                   Sql.Add('Where Pmc_Data > = ' + QuotedStr(DateToStr(DtIni.Date)) + ' And Pmc_Data <= ' + QuotedStr(DateToStr(DtFim.Date)));
                   Sql.Add('And Pmc_vei = ' + QuotedStr(DtIndicador.DataSet.FieldByName('Pmc_vei').AsString));
                   Sql.Add('Order By Pmc_data Desc');
                   Open;
          end;
end;

procedure TFormIndiceSocorro.FormActivate(Sender: TObject);
begin
DtIni.Date:=now-365;
DtFim.Date:=now;
BitBtn1.Click;
end;

procedure TFormIndiceSocorro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtIndicador.DataSet.Close;
DtDetalhes.DataSet.Close;
action:=cafree;
end;

procedure TFormIndiceSocorro.Image2Click(Sender: TObject);
begin
close;
end;

end.
