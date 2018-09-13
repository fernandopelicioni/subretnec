unit UnitIndiceAltera;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  TFormIndiceAltera = class(TForm)
    Panel1: TPanel;
    DtIndice: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIndiceAltera: TFormIndiceAltera;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormIndiceAltera.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
      begin
               DtIndice.DataSet.Edit;
               Edit1.SetFocus;
      end;

end;

procedure TFormIndiceAltera.FormActivate(Sender: TObject);
begin
DtIndice.DataSet.Open;
end;

procedure TFormIndiceAltera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtIndice.DataSet.cancel;
DtIndice.DataSet.close;
action:=cafree;
end;

procedure TFormIndiceAltera.SpeedButton1Click(Sender: TObject);
begin
DtIndice.DataSet.Cancel;
close;
end;

procedure TFormIndiceAltera.SpeedButton2Click(Sender: TObject);
begin
if DtIndice.DataSet.State = DsEdit then
      Begin
             DtIndice.DataSet.FieldByName('Tin_Odo').AsString:=Edit1.Text;
             DtIndice.DataSet.Post;
             Edit1.Text:='0';
             DBLookupComboBox1.SetFocus;
      End;
end;

end.
