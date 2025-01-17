unit UnitAbreCaixaBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBCtrls, Buttons, pngimage, ExtCtrls,
  Data.Win.ADODB;

type
  TFormAbreCaixaBalcao = class(TForm)
    GroupBox1: TGroupBox;
    EditData: TDateTimePicker;
    Label1: TLabel;
    DtAlmoxarifado: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DtColigada: TDataSource;
    DBText1: TDBText;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Image1: TImage;
    QrPar: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbreCaixaBalcao: TFormAbreCaixaBalcao;

implementation

uses UnitServerPai, UnitAplicaProdutoBalcao;

{$R *.dfm}

procedure TFormAbreCaixaBalcao.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) or (Key = #9) then
Begin
  Key:=#0;
//
End;

end;

procedure TFormAbreCaixaBalcao.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) or (Key = #9) then
Begin
  Key:=#0;
  DBLookupComboBox1.SetFocus;
End;

end;

procedure TFormAbreCaixaBalcao.FormActivate(Sender: TObject);
begin
With Pai.QrAlmoxarifados do
Begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tloc where CodColigada = ' + quotedStr(Pai.QrColigadas.FieldByName('Cod_coligada').AsString));
  Open;

End;
EditData.Date:=now;
DtAlmoxarifado.DataSet.Open;
if pai.QrUsuarios.FieldByName('Usu_nivel').AsInteger > 9 then
begin
   EditData.Enabled:=true;
   end else
   EditData.Enabled:=False;

end;

procedure TFormAbreCaixaBalcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtAlmoxarifado.DataSet.Close;
Action:=cafree;
end;

procedure TFormAbreCaixaBalcao.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormAbreCaixaBalcao.SpeedButton1Click(Sender: TObject);
begin
     With QrPar do
         begin
                close;
                Parameters.ParamByName('coligada').value:=Pai.QrColigadas.FieldByName('Cod_coligada').AsString;
                open;
                if (EditData.date)<= StrToDate(FieldByName('DataFechamentoEstoque').AsString) then
                     begin
                            ShowMessage('Data de estoque est� fechada para esse per�odo, informe a controladoria!');
                            Abort;
                            Close;
                     end
                     else
                     begin
                            Hide;
                            Screen.Cursor:=CrHourGlass;
                            Application.CreateForm(TFormAplicaProdutoBalcao,FormAplicaProdutoBalcao);
                            Screen.Cursor:=CrDefault;
                            FormAplicaProdutoBalcao.ShowModal;
                     end;
         end;
end;

procedure TFormAbreCaixaBalcao.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.



