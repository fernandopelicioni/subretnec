unit UnitRelatorioComponente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Buttons, DBCtrls, RvLdCompiler;

type
  TFormRelatorioComponentes = class(TForm)
    Panel1: TPanel;
    DtVeiculos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioComponentes: TFormRelatorioComponentes;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioComponentes.BitBtn1Click(Sender: TObject);
begin
    if DBLookupComboBox1.KeyValue <> '' then
        begin
         With Relatorio.QrComponentes do
                begin
                      Close;
                      Parameters.ParamByName('veiculo').Value:=DtVeiculos.DataSet.FieldByName('Vei_Nun').AsString;
                      Open;
                      if not eof then
                             begin
                                  Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                  Relatorio.Projeto.ExecuteReport('RvComponentes');
//                                  Relatorio.Projeto.close;
                             end
                             else
                             MessageBox(0, 'Não Há dados para Geração da consulta!', 'Atenção', MB_ICONSTOP or MB_OK);

                end;
        end;

end;

procedure TFormRelatorioComponentes.BitBtn2Click(Sender: TObject);
begin
Close;

end;

procedure TFormRelatorioComponentes.FormActivate(Sender: TObject);
begin
DtVeiculos.DataSet.Open;
end;

procedure TFormRelatorioComponentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
