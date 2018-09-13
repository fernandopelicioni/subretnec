unit UnitConsultaPMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, Buttons, DBCtrls, pngimage, ExtCtrls,
  DBCGrids, ADODB;

type
  TFormConsultaPMC = class(TForm)
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Dtveiculo: TDataSource;
    DtColigada: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    DBMemo1: TDBMemo;
    DtPmc: TDataSource;
    QrPmc: TADOQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText4: TDBText;
    Label9: TLabel;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaPMC: TFormConsultaPMC;

implementation

uses UnitServerPai, UnitLancaFechaPmc;

{$R *.dfm}

procedure TFormConsultaPMC.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if DtPmc.DataSet.FieldByName('Pmc_Status').AsString = 'A' then
           Image2.Visible:=true
      else
           Image2.Visible:=false;

end;

procedure TFormConsultaPMC.FormActivate(Sender: TObject);
begin
With Pai.QrVeiculosCompletos do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D, TB_VeiSistema E, Tb_PadVeic F');
    Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod and E.Vsi_Cod = A.Vei_Vsi and F.Pad_Cod = A.Vei_padrao');
    Sql.Add('and A.Vei_Nun = D.Tin_Vei and A.Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
    Open;
  End;
DateTimePicker1.Date:=now;

end;

procedure TFormConsultaPMC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtVeiculo.DataSet.Close;
DtPmc.DataSet.Close;
Action:=cafree;
end;

procedure TFormConsultaPMC.Image2Click(Sender: TObject);
begin
if MESSAGEdlg('Deseja marcar esta tarefa como executada ?',MTConfirmation,[mbyes,mbno],0) = Mryes then
    begin
          // dTpMC.Edit;
           Application.CreateForm(TFormLancaFechaPmc,FormLancaFechaPmc);
           FormLancaFechaPmc.ShowModal;
           DBCtrlGrid1.Repaint;
    end;
end;

procedure TFormConsultaPMC.SpeedButton1Click(Sender: TObject);
begin
With QrPmc do
   begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Tb_CbPmc A, Tb_CbIteRec B');
        Sql.Add('Where A.Pmc_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
        Sql.Add('And B.TID_Cod = A.PMC_Item');
        Sql.Add('and A.PMC_Status = ' + QuotedStr('A'));
        Sql.Add('And A.Pmc_Data <= ' + QuotedStr(DateToStr(DateTimePicker1.DateTime)));
        if DBLookupComboBox1.KeyValue <> null then
                Sql.Add('And A.Pmc_Vei = ' + QuotedStr(DBLookupComboBox1.KeyValue));
        Sql.Add('Order by A.Pmc_Data');
        Open;
        if eof then
            Begin
                  ShowMessage('Não há registro para esta consulta');
                  DateTimePicker1.SetFocus;
            End;

   end;

end;

end.



