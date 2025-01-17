unit UtRequisitaProdutosBusca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormRequisitaProdutosBusca = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    DtBusca: TDataSource;
    QrPrd: TFDQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
      Busca: string;
  end;

var
  FormRequisitaProdutosBusca: TFormRequisitaProdutosBusca;

implementation

{$R *.dfm}

uses UnitServerPai, UtRequisitaProdutos;

procedure TFormRequisitaProdutosBusca.BitBtn1Click(Sender: TObject);
begin
if Busca = '1' then
       begin
             with QrPrd do
                  begin
                       Close;
                       Sql.Clear;
                       Sql.Add('Select CodigoPrd, NomeFantasia, IdPrd, CodigoAuxiliar from tprd');
                       if ComboBox1.ItemIndex = 0 then
                                Sql.Add('where CodigoPrd like ' + QuotedStr('%'+Edit1.Text+'%'));

                       if ComboBox1.ItemIndex = 1 then
                                Sql.Add('where NomeFantasia like ' + QuotedStr('%'+Edit1.Text+'%'));
                       if ComboBox1.ItemIndex = 2 then
                                Sql.Add('where CodigoAuxiliar like ' + QuotedStr('%'+Edit1.Text+'%'));
                       Sql.Add('and ultimonivel = '+ quotedstr('1'));
                       SQL.Add('AND SUBSTRING(CODIGOPRD,1,3) <> ''016''');
                       Sql.Add('And CodColigada = ' + IntToStr(Pai.vcoligada));
                       Sql.Add('ORDER by CodIGOPRD');
                       Open;
                  end;
       end;

end;

procedure TFormRequisitaProdutosBusca.Button1Click(Sender: TObject);
begin
if not DtBusca.DataSet.eof then
       FormRequisitaProdutos.VPrdAtual:=DtBusca.DataSet.FieldByName('IdPrd').AsString;
Close;

end;

procedure TFormRequisitaProdutosBusca.Button2Click(Sender: TObject);
begin
       FormRequisitaProdutos.VPrdAtual:='';

   Close;
end;

procedure TFormRequisitaProdutosBusca.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key =#13 then
    begin
          key:=#0;
          Button1.SetFocus;
    end;

end;

procedure TFormRequisitaProdutosBusca.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 BitBtn1.Click;
 if key =#13 then
    begin
          key:=#0;
          DBGrid1.SetFocus;
    end;
end;

procedure TFormRequisitaProdutosBusca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
