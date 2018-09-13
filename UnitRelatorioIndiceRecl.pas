unit UnitRelatorioIndiceRecl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, DB, RvLdCompiler;

type
  TFormRelatorioIndiceRecl = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DtColigada: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioIndiceRecl: TFormRelatorioIndiceRecl;

implementation

uses UnitRelatorio, UnitServerPai, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioIndiceRecl.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=(now-30);
DateTimePicker2.Date:=(now);

end;

procedure TFormRelatorioIndiceRecl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Relatorio.QrIndiceRecl.close;
Action:=cafree;
end;

procedure TFormRelatorioIndiceRecl.SpeedButton1Click(Sender: TObject);
begin
   with relatorio.QrIndiceRecl do
         begin
               Close;
               Sql.Clear;
               sql.Add('set language brazilian');
               Sql.Add('select C.Grm_des, A.Tid_des, Count(*) as qt from Tb_CbIteRec A, Tb_CbPmc B, Tb_CbGruMan C, tb_veiculos D');
               Sql.Add('where B.Pmc_Item = A.Tid_cod and C.Grm_id = A.Tid_Grupo');
               Sql.Add('and d.vei_nun = b.pmc_vei');
               Sql.Add('And B.Pmc_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
               Sql.Add('And Pmc_data >= ' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' and Pmc_data <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
               Sql.Add('group by C.Grm_des,A.Tid_des');
               Sql.Add('Order by C.Grm_des,qt');
               Open;
               if Not Eof then
                     begin
                            Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker1.Date));
                            Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker2.Date));
                            Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                            Relatorio.Projeto.ExecuteReport('RvIndiceRecl');
//                            Relatorio.Projeto.Close;
                      end
                      else begin
                             ShowMessage('Não há dados para geração de Relatórios');
                      end;



         end;
end;

procedure TFormRelatorioIndiceRecl.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
