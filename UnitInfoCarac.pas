unit UnitInfoCarac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls, DBCtrls;

type
  TFormInfoCarac = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBText5: TDBText;
    DBText6: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Image4: TImage;
    Label5: TLabel;
    DBText7: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
    Timer1: TTimer;
    GroupBox3: TGroupBox;
    DBText9: TDBText;
    DBText10: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    Label10: TLabel;
    DBText13: TDBText;
    Label11: TLabel;
    Panel2: TPanel;
    Image5: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoCarac: TFormInfoCarac;

implementation

uses UnitTerminalConsulta, UnitServerPai;

{$R *.dfm}

procedure TFormInfoCarac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormInfoCarac.Image3Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoCarac.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoCarac.Timer1Timer(Sender: TObject);
begin
close;
end;

end.
