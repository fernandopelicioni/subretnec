unit UnitLancaCorrigePMC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, DBCtrls, Buttons, Mask, DB;

type
  TFormLancaCorrigePMC = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText4: TDBText;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DtPmc: TDataSource;
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaCorrigePMC: TFormLancaCorrigePMC;

implementation

uses UnitInfoPMC;

{$R *.dfm}

procedure TFormLancaCorrigePMC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormLancaCorrigePMC.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormLancaCorrigePMC.SpeedButton1Click(Sender: TObject);
begin
if DtPmc.DataSet.State = DsEdit then
    Begin
          if (DbMemo1.Text <> '') and (DbEdit1.Text <> '')  then
                 begin
                        DtPmc.DataSet.FieldByName('Pmc_DtFec').AsString:=DateTimeToStr(now);
                        DtPmc.DataSet.FieldByName('Pmc_Status').AsString:='F';
                        DtPmc.DataSet.Post;
                        beep;
                        Close;
                 end
                 else begin
                   beep;
                   ShowMessage('Você não pode concluir esta solicitação sem informar um historico para reclamação e quem a Executou !');
                   DBMemo1.SetFocus;
                 end;
    end;

end;

procedure TFormLancaCorrigePMC.SpeedButton2Click(Sender: TObject);
begin
DtPmc.DataSet.Cancel;
close;
end;

end.
