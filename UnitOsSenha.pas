unit UnitOsSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, pngimage, ExtCtrls;

type
  TFormOsSenha = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOsSenha: TFormOsSenha;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormOsSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFormOsSenha.Image5Click(Sender: TObject);
begin
   PAI.VOS_AUTORIZA:='N';
   close;
end;

procedure TFormOsSenha.SpeedButton1Click(Sender: TObject);
begin
         if (EDIT1.Text = '28D2') OR (Edit1.Text = 'DB32') OR (Edit1.Text = 'CD2J') OR (Edit1.Text = '6204') OR (Edit1.Text = '1432') then
               BEGIN
                     PAI.VOS_AUTORIZA:='S';

               END
               else
               PAI.VOS_AUTORIZA:='N';

               CLOSE;

end;

end.