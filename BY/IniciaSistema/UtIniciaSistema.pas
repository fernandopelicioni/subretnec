unit UtIniciaSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.DBCtrls;

type
  TFormIniciaSistema = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Label1: TLabel;
    Editusuario: TEdit;
    EditSenha: TEdit;
    Label2: TLabel;
    EditVersao: TLabel;
    DtColigada: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Image2: TImage;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIniciaSistema: TFormIniciaSistema;

implementation

{$R *.dfm}

uses UtPai, UtNucleo;

procedure TFormIniciaSistema.FormActivate(Sender: TObject);
begin
           DtColigada.DataSet.Open;
           Panel2.Caption:='Genoma Software - Vers�o do Produto : ' + EditVersao.caption + '   ';
end;

procedure TFormIniciaSistema.SpeedButton1Click(Sender: TObject);
begin
              with Pai.QrUsuarios do
                     begin
                            Close;
                            ParamByName('usuario').Value:=Editusuario.Text;
                            ParamByName('senha').Value:=EditSenha.Text;
                            Open;
                            if Eof then
                                 begin
                                         ShowMessage('Dados Informados n�o foram encontrados. Tente novamente!');
                                         Editusuario.SetFocus;
                                 end
                                 else
                                 begin
                                         if DBLookupComboBox1.KeyValue = NULL then
                                               begin
                                                     ShowMessage('� ncess�rio selecionar uma empresa!');
                                                     DBLookupComboBox1.SetFocus;

                                               end
                                               else
                                               begin
                                                     FormNucleo.show;
                                                     FormIniciaSistema.hide;
                                               end;

                                 end;
                     end;


end;

procedure TFormIniciaSistema.SpeedButton2Click(Sender: TObject);
begin
DtColigada.DataSet.Close;
Application.Terminate;
end;

end.
