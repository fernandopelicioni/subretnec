unit UnitInfoManCorretivas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCGrids, ExtCtrls, DB, ADODB, pngimage, StdCtrls, DBCtrls;

type
  TFormInfoManCorretivas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Timer1: TTimer;
    QrPmc: TADOQuery;
    DtPmc: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    DBText5: TDBText;
    Label5: TLabel;
    DBText6: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Image5: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoManCorretivas: TFormInfoManCorretivas;

implementation

{$R *.dfm}

procedure TFormInfoManCorretivas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtPmc.DataSet.Close;
action:=cafree;
end;

procedure TFormInfoManCorretivas.Image1Click(Sender: TObject);
begin
Close;
end;

procedure TFormInfoManCorretivas.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoManCorretivas.Panel1Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoManCorretivas.Timer1Timer(Sender: TObject);
begin
close;
end;

end.