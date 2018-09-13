unit UtFluxograma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormFluxoGarantia = class(TForm)
    Image9: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFluxoGarantia: TFormFluxoGarantia;

implementation

{$R *.dfm}

procedure TFormFluxoGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:=Cafree;
end;

end.
