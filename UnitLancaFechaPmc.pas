unit UnitLancaFechaPmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons;

type
  TFormLancaFechaPmc = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaFechaPmc: TFormLancaFechaPmc;

implementation

uses UnitConsultaPMC;

{$R *.dfm}

procedure TFormLancaFechaPmc.BitBtn1Click(Sender: TObject);
begin

      FormConsultaPMC.DtPmc.DataSet.FieldByName('PMC_Status').AsString:='F';
      FormConsultaPMC.DtPmc.DataSet.FieldByName('PMC_DtFec').AsString:=DateTimeToStr(now);
      FormConsultaPMC.DtPmc.DataSet.post;
Close;
end;

procedure TFormLancaFechaPmc.BitBtn2Click(Sender: TObject);
begin
      FormConsultaPMC.DtPmc.DataSet.cancel;
      close;

end;

procedure TFormLancaFechaPmc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
