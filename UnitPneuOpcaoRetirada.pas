unit UnitPneuOpcaoRetirada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, jpeg, DB, ADODB;

type
  TFormPneuOpcaoRetirada = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image7: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Image8: TImage;
    QrMotRet: TADOQuery;
    Image9: TImage;
    Label9: TLabel;
    Image10: TImage;
    Label10: TLabel;
    Panel2: TPanel;
    Image11: TImage;
    Image12: TImage;
    Label11: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPneuOpcaoRetirada: TFormPneuOpcaoRetirada;

implementation

uses UnitPneuRetirada, UnitServerPai;

{$R *.dfm}

procedure TFormPneuOpcaoRetirada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFormPneuOpcaoRetirada.Image10Click(Sender: TObject);
begin
// Estorado
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='T';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image11Click(Sender: TObject);
begin
Close;
end;

procedure TFormPneuOpcaoRetirada.Image12Click(Sender: TObject);
begin
// Descalibrado
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='Y';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image1Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='F';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image2Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='S';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;
end;

procedure TFormPneuOpcaoRetirada.Image3Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='E';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image4Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='C';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image5Click(Sender: TObject);
begin

Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='R';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image6Click(Sender: TObject);
begin
// talao trincado
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='Z';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image7Click(Sender: TObject);
begin
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='M';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image8Click(Sender: TObject);
begin
 Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='V';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

procedure TFormPneuOpcaoRetirada.Image9Click(Sender: TObject);
begin
// estourado � acidente
Application.CreateForm(TFormPneuRetirada,FormPneuRetirada);
QrMotRet.close;
QrMotRet.Parameters.ParamByName('cod').Value:='X';
QrMotRet.Open;
FormPneuRetirada.LocalDestino:=QrMotRet.FieldByName('Tmrp_Local').AsString;
FormPneuRetirada.ShowModal;

end;

end.
