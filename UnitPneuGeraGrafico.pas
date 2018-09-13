unit UnitPneuGeraGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, pngimage, ExtCtrls;

type
  TFormPneuGeraGrafico = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image5: TImage;
    Label5: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuGeraGrafico: TFormPneuGeraGrafico;

implementation

uses UnitPneuGraficoMarca;

{$R *.dfm}

procedure TFormPneuGeraGrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION:=CAFREE;
end;

procedure TFormPneuGeraGrafico.Image1Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuGraficoMarcas,FormPneuGraficoMarcas);
FormPneuGraficoMarcas.caption:='Estatística de Pneus : Reformados';
FormPneuGraficoMarcas.A:='S';
FormPneuGraficoMarcas.showModal;

end;

procedure TFormPneuGeraGrafico.Image2Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuGraficoMarcas,FormPneuGraficoMarcas);
FormPneuGraficoMarcas.A:='S';
FormPneuGraficoMarcas.caption:='Estatística de Pneus : Sucateados';
FormPneuGraficoMarcas.showModal;

end;

procedure TFormPneuGeraGrafico.Image3Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuGraficoMarcas,FormPneuGraficoMarcas);
FormPneuGraficoMarcas.A:='E';
FormPneuGraficoMarcas.caption:='Estatística de Pneus : Estocados';
FormPneuGraficoMarcas.showModal;

end;

procedure TFormPneuGeraGrafico.Image5Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuGraficoMarcas,FormPneuGraficoMarcas);
FormPneuGraficoMarcas.caption:='Estatística de Pneus : Instalados nos Veículos';
FormPneuGraficoMarcas.A:='I';
FormPneuGraficoMarcas.showModal;

end;

end.
