unit UnitInfoComponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, jpeg, Buttons, StdCtrls;

type
  TFormInfoComponentes = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    SpeedButton10: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Image6: TImage;
    EditVei: TLabel;
    procedure Image5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoComponentes: TFormInfoComponentes;

implementation

uses UnitServerPai, UnitInfoDetalheComponente;

{$R *.dfm}

procedure TFormInfoComponentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

      Action:=Cafree;
end;

procedure TFormInfoComponentes.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoComponentes.Panel2Click(Sender: TObject);
begin
close;
end;

procedure TFormInfoComponentes.SpeedButton10Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='008';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton1Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='007';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton2Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='003';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton3Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='010';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;



end;

procedure TFormInfoComponentes.SpeedButton4Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='002';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton5Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='011';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton6Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='005';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton7Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='001';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton8Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='004';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

procedure TFormInfoComponentes.SpeedButton9Click(Sender: TObject);
begin
         with pai.QrAplicacoes do
                begin
                         Close;
                         Parameters.ParamByName('setor').Value:='012';
                         Parameters.ParamByName('data').Value:=Now-365;
                         Parameters.ParamByName('vei').Value:=pai.VOS_VEI;
                         Open;
                         Application.CreateForm(TFormInfoDetalhesComponentes,FormInfoDetalhesComponentes);
                         FormInfoDetalhesComponentes.ShowModal;

                end;

end;

end.
