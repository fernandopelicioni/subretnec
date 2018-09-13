unit UnitPneuAlteraMotivoRetirada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Buttons, StdCtrls, DBCtrls;

type
  TFormPneuAlteraMotivoRetirada = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DtMotRet: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuAlteraMotivoRetirada: TFormPneuAlteraMotivoRetirada;

implementation

uses UnitPneuInfo, UnitServerPai;

{$R *.dfm}

procedure TFormPneuAlteraMotivoRetirada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
FormPneuInfo.DtPneus.DataSet.Cancel;
DtMotRet.DataSet.Close;
Action:=Cafree;
end;

procedure TFormPneuAlteraMotivoRetirada.FormCreate(Sender: TObject);
begin
DtMotRet.DataSet.Open;
end;

procedure TFormPneuAlteraMotivoRetirada.SpeedButton1Click(Sender: TObject);
begin
if FormPneuInfo.DtPneus.DataSet.State = DsEdit then
      begin
            FormPneuInfo.DtPneus.DataSet.FieldByName('Tcp_Local').AsString:=DtMotRet.DataSet.FieldByName('TMrp_Local').AsString;
            FormPneuInfo.DtPneus.DataSet.post;

      end;
Close;
end;

procedure TFormPneuAlteraMotivoRetirada.SpeedButton2Click(Sender: TObject);
begin
FormPneuInfo.DtPneus.DataSet.Cancel;
close;
end;

end.
