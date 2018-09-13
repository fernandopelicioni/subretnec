unit UnitInfoMedidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DBCGrids, DB, ADODB, pngimage, ExtCtrls,
  ActnColorMaps, ActnMan, jpeg;

type
  TFormInfoMedidas = class(TForm)
    QrFichaMedidas: TADOQuery;
    DtMedidas: TDataSource;
    Panel2: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Image4: TImage;
    Image7: TImage;
    Image1: TImage;
    Timer1: TTimer;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    Image6: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Panel3: TPanel;
    Image8: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoMedidas: TFormInfoMedidas;

implementation

uses UnitDadosConsulta, UnitTerminalConsulta;

{$R *.dfm}

procedure TFormInfoMedidas.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if not DtMedidas.DataSet.Eof then
begin
    LABEL13.Caption:=IntToStr(FormterminalConsulta.DtVeiculos.DataSet.FieldByName('Tin_odo').AsInteger - DtMedidas.DataSet.FieldByName('Fcm_km').AsInteger);
end;

end;

procedure TFormInfoMedidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtMedidas.DataSet.Close;
Action:=cafree;
end;

procedure TFormInfoMedidas.Image1Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select top(1) * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('3'));
    Sql.Add('Order by Fcm_Data desc');
    Open;
  end;

end;

procedure TFormInfoMedidas.Image2Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
//    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('3'));
    Sql.Add('Order by Fcm_Data desc');
    Open;
  end;

end;

procedure TFormInfoMedidas.Image3Click(Sender: TObject);
begin
Close;
end;

procedure TFormInfoMedidas.Image4Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select top(1) * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('4'));
    Sql.Add('Order by Fcm_Data desc');
    Open;
  end;

end;

procedure TFormInfoMedidas.Image5Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select top(1) * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('2'));
    Sql.Add('Order by Fcm_Data desc');
    Open;
  end;

end;

procedure TFormInfoMedidas.Image6Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('10'));
    Sql.Add('Order by Fcm_Data desc');
    Open;
  end;

end;

procedure TFormInfoMedidas.Image7Click(Sender: TObject);
begin
Label13.Caption:='';
With QrFichaMedidas do
  begin
    Close;
    Sql.Clear;
    Sql.Add('Select top(1) * from tb_FicContMan A, TB_IteFicMan B');
    Sql.Add('where a.Fcm_Ifcm = B.Ifcm_Cod');
    Sql.Add('And A.Fcm_Vei = ' + quotedStr(FormTerminalConsulta.DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString));
    Sql.Add('And B.IFCM_Setor = ' + QuotedStr('1'));
    Sql.Add('Order by Fcm_Data desc');
    Open;

  end;

end;

procedure TFormInfoMedidas.Panel2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFormInfoMedidas.Timer1Timer(Sender: TObject);
begin
CLOSE;
end;

end.
