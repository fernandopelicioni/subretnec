unit UtRelIndicadorRevisaoKm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormRelIndicadorRevisaoKm = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    EditKm: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelIndicadorRevisaoKm: TFormRelIndicadorRevisaoKm;

implementation

{$R *.dfm}

uses UtRelatorio, UnitServerPai;

procedure TFormRelIndicadorRevisaoKm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormRelIndicadorRevisaoKm.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormRelIndicadorRevisaoKm.SpeedButton1Click(Sender: TObject);
var kmMinimo : integer;
begin
                 if RadioGroup1.ItemIndex = 0 then kmMinimo:=0 else kmMinimo:=StrToInt(EditKm.Text);

                 with relatorio2.qrKMRodRev do
                     begin
                          Close;
                          ParamByName('COLIGADA').AsSTRING:=IntToStr(PAI.VCOLIGADA);
                          ParamByName('Km').AsInteger:=kmMinimo;
                          open;
                     end;
//                                  Relatorio2.FtKMRodRev.Variables['DataI']:=QUOTEDSTR(EditCardexI.Text);
                                  Relatorio2.FtKMRodRev.Variables['Km']:=QUOTEDSTR(EditKm.Text);
                                  Relatorio2.FtKMRodRev.ShowReport();


end;

end.
