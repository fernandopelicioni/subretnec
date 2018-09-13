unit UnitInfoOpcaoAgendamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, Buttons;

type
  TFormInfoOpcaoAgendamento = class(TForm)
    Panel1: TPanel;
    Image3: TImage;
    Label2: TLabel;
    Image2: TImage;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoOpcaoAgendamento: TFormInfoOpcaoAgendamento;

implementation

uses UnitInfoLancaAgendamento;

{$R *.dfm}

procedure TFormInfoOpcaoAgendamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormInfoOpcaoAgendamento.Image2Click(Sender: TObject);
begin
application.CreateForm(TFormInfoLancaAgendamento,FormInfoLancaAgendamento);
FormInfoLancaAgendamento.TabSheet2.Enabled:=true;
FormInfoLancaAgendamento.PageControl1.ActivePageIndex:=1;

FormInfoLancaAgendamento.ShowModal;
close;
end;

procedure TFormInfoOpcaoAgendamento.Image3Click(Sender: TObject);
begin
application.CreateForm(TFormInfoLancaAgendamento,FormInfoLancaAgendamento);
FormInfoLancaAgendamento.TabSheet1.Enabled:=true;
FormInfoLancaAgendamento.PageControl1.ActivePageIndex:=0;

FormInfoLancaAgendamento.ShowModal;
close;
end;

procedure TFormInfoOpcaoAgendamento.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
