unit UtEstilo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls , Vcl.Themes, Data.DB, Data.Win.ADODB;

type
  TFormStilo = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    ListBox1: TListBox;
    Btsalva: TButton;
    Button2: TButton;
    Q: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BtsalvaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStilo: TFormStilo;

implementation

{$R *.dfm}

uses UnitServerPai;

procedure TFormStilo.BtsalvaClick(Sender: TObject);
begin
//        if ListBox1.ItemIndex = 0 then TStyleManager.TrySetStyle('Windows');
//        if ListBox1.ItemIndex = 0 then TStyleManager.TrySetStyle('Windows');
//        if ListBox1.ItemIndex = 0 then TStyleManager.TrySetStyle();
   ShowMessage('Voc� precisa logar novamente no sistema para que as altera��es surtam efeito!');
   TStyleManager.TrySetStyle(ListBox1.Items[ListBox1.ItemIndex]);
//                              ShowMessage(ListBox1.Items[ListBox1.ItemIndex]);
   With Q do
       Begin
            Close;
            Sql.Clear;
            Sql.Add('Update tb_usuarios set Usu_Stilo=:estilo where usu_login=:login');
            Parameters.ParamByName('Estilo').value:= ListBox1.Items[ListBox1.ItemIndex];
            Parameters.ParamByName('Login').value:= Pai.QrUsuarios.FieldByName('Usu_Login').AsString;
            ExecSql;
            Close;

       End;



end;

procedure TFormStilo.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormStilo.Image1Click(Sender: TObject);
begin
Close;
end;

end.