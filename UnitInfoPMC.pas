unit UnitInfoPMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DB, ADODB, StdCtrls, DBCtrls, DBCGrids;

type
  TFormInfoPMC = class(TForm)
    Panel2: TPanel;
    QrPmc: TADOQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DtPmc: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Timer1: TTimer;
    Image2: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image5: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoPMC: TFormInfoPMC;

implementation

uses UnitServerPai, UnitLancaFechaPmc, UnitLancaCorrigePMC;

{$R *.dfm}

procedure TFormInfoPMC.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if DtPmc.DataSet.FieldByName('Pmc_Status').AsString = 'A' then
    Begin
           Image2.Visible:=true;
           Label6.Visible:=true;
    End
    else begin
           Image2.Visible:=false;
           Label6.Visible:=False;
    end;

end;

procedure TFormInfoPMC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtPmc.DataSet.Close;
Action:=cafree;
end;

procedure TFormInfoPMC.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoPMC.Image2Click(Sender: TObject);
begin
//if MESSAGEdlg('Deseja marcar esta tarefa como executada ?',MTConfirmation,[mbyes,mbno],0) = Mryes then
//    begin
          // dTpMC.Edit;
           Application.CreateForm(TFormLancaCorrigePmc,FormLancaCorrigePmc);
           FormLancaCorrigePmc.ShowModal;
           DBCtrlGrid1.Repaint;
//    end;

end;

procedure TFormInfoPMC.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoPMC.Timer1Timer(Sender: TObject);
begin
close;
end;

end.
