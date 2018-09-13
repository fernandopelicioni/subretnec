unit UnitAplicaBuscaPrd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFormAplicaBuscaPrd = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DtBusca: TDataSource;
    QrBusca: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    procedure ComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
       Busca: string;
      { Public declarations }
  end;

var
  FormAplicaBuscaPrd: TFormAplicaBuscaPrd;

implementation

uses UnitServerPai, UnitAplicaProdutoBalcao;

{$R *.dfm}

procedure TFormAplicaBuscaPrd.BitBtn1Click(Sender: TObject);
begin
if Busca = '1' then
       begin
             with QrBusca do
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
                       Sql.Add('And CodColigada = ' + QuotedStr(FormAplicaProdutoBalcao.DtColigada.DataSet.FieldByName('cod_coligada').AsString));
                       Sql.Add('ORDER by CodIGOPRD');
                       Open;
                  end;
       end;

end;

procedure TFormAplicaBuscaPrd.ComboBox1Click(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFormAplicaBuscaPrd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      BitBtn1.Click;
end;

procedure TFormAplicaBuscaPrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
qrbusca.Free;
Action:=cafree;
end;

procedure TFormAplicaBuscaPrd.SpeedButton1Click(Sender: TObject);
begin
if not DtBusca.DataSet.eof then
       FormAplicaProdutobalcao.EDitPrd.Text:=DtBusca.DataSet.FieldByName('CodigoPrd').AsString;
Close;
end;

procedure TFormAplicaBuscaPrd.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
