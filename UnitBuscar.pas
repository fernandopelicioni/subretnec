unit UnitBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormBuscar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscar: TFormBuscar;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormBuscar.BitBtn1Click(Sender: TObject);
begin
     with Pai.QrVeiculo do
          begin
               Close;
               Sql.Clear;
               Sql.Add('Select * from TB_Veiculos');
               Sql.Add('Where vei_coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
               if ComboBox1.ItemIndex = 0 then
                      Sql.Add('and Vei_Nun = ' + QuotedStr(Edit1.text));
               if ComboBox1.ItemIndex = 1 then
                      Sql.Add('and Vei_ChaSSInum = ' + QuotedStr(Edit1.text));
               if ComboBox1.ItemIndex = 2 then
                      Sql.Add('and Vei_Placa = ' + QuotedStr(Edit1.text));
               if ComboBox1.ItemIndex = 3 then
                      Sql.Add('and Vei_Renavan = ' + QuotedStr(Edit1.text));
                      Open;
          end;
          CLOSE;
end;

procedure TFormBuscar.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormBuscar.ComboBox1Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TFormBuscar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

end.
