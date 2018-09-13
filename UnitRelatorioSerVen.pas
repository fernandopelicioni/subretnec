unit UnitRelatorioSerVen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCGrids, Buttons, DBCtrls, RvLdCompiler, ExtCtrls;

type
  TFormRelatorioSerVen = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    DtSco: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DtColigada: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioSerVen: TFormRelatorioSerVen;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema, UtGeraPlanilha;

{$R *.dfm}

procedure TFormRelatorioSerVen.Button1Click(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;
Application.CreateForm(TFormGeraPlanilha,FormGeraPlanilha);
if DtSco.DataSet.State = DsEdit then
      DtSco.DataSet.Post;

 with FormGeraPlanilha.Query do
     begin
           Close;
           Sql.Clear;
           Sql.Add('select SCO_COD, SCO_DES, CSC_DES, VEI_NUMERO, SCO_ACAO, BRE_ODO, BRE_DAT, TIN_ODO, (TIN_ODO - BRE_ODO) AS RODADOS');
           Sql.Add(' from tb_baserevisao A, tb_ServicosControlados B, Tb_IndiceRevisao C, Tb_Veiculos D, Tb_serConCar E');
           Sql.Add('where A.bre_sco = B.Sco_Cod and A.Bre_Vei = C.Tin_vei And C.Tin_Vei = A.bre_Vei and D.Vei_Nun = A.Bre_Vei');
           Sql.Add('and D.Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('And E.Csc_Cod = A.Bre_Csc');
           SQL.Add('And D.vei_status < 5');
           Sql.Add('and (A.bre_odo + A.Bre_Rod - ' + Edit1.Text + ') < Tin_odo');
           Sql.Add('and B.Sco_Status = ' + QuotedStr('1'));
           Sql.Add('order by B.Sco_des, A.Bre_Vei');
          // memo1.Text:=sql.Text;
           Open;
                            if Not Eof then
                                        begin
                                           FormGeraPlanilha.SaveDialog.Title := 'Exportar a Microsoft Excel...';
                                           FormGeraPlanilha.SaveDialog.Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
                                           FormGeraPlanilha.SaveDialog.FilterIndex := 1;
                                           FormGeraPlanilha.SaveDialog.DefaultExt := '*.xlsx';
                                           if FormGeraPlanilha.SaveDialog.Execute Then
                                           begin
                                             FormGeraPlanilha.ExpAbast1.FileName := FormGeraPlanilha.SaveDialog.FileName;
                                             FormGeraPlanilha.ExpAbast1.Grid := FormGeraPlanilha.DbAbast;
                                             FormGeraPlanilha.ExpAbast1.ExportGrid;
                                           end;

                                  end
                                  ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'Não há dados', MB_ICONINFORMATION or MB_OK);
                      close;

     end;
Screen.Cursor:=crDefault;
end;

procedure TFormRelatorioSerVen.DBCtrlGrid1Click(Sender: TObject);
begin
if DtSco.DataSet.State = DsEdit then
      DtSco.DataSet.Post;

end;

procedure TFormRelatorioSerVen.DBCtrlGrid1Exit(Sender: TObject);
begin
if DtSco.DataSet.State = DsEdit then
      DtSco.DataSet.Post;
end;

procedure TFormRelatorioSerVen.FormActivate(Sender: TObject);
begin
DtSco.DataSet.Open;
end;

procedure TFormRelatorioSerVen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DtSco.DataSet.close;
action:=cafree;
end;

procedure TFormRelatorioSerVen.SpeedButton1Click(Sender: TObject);
begin
Screen.Cursor:=crHourGlass;

if DtSco.DataSet.State = DsEdit then
      DtSco.DataSet.Post;

with Relatorio.QrRevVen do
     begin
           Close;
           Sql.Clear;
           Sql.Add('select SCO_COD, SCO_DES, CSC_DES, VEI_NUMERO, SCO_ACAO, BRE_ODO, BRE_DAT, TIN_ODO');
           Sql.Add(' from tb_baserevisao A, tb_ServicosControlados B, Tb_IndiceRevisao C, Tb_Veiculos D, Tb_serConCar E');
           Sql.Add('where A.bre_sco = B.Sco_Cod and A.Bre_Vei = C.Tin_vei And C.Tin_Vei = A.bre_Vei and D.Vei_Nun = A.Bre_Vei');
           Sql.Add('and D.Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('And E.Csc_Cod = A.Bre_Csc');
           SQL.Add('And D.vei_status < 5');
           Sql.Add('and (A.bre_odo + A.Bre_Rod - ' + Edit1.Text + ') < Tin_odo');
           Sql.Add('and B.Sco_Status = ' + QuotedStr('1'));
           Sql.Add('order by B.Sco_des, A.Bre_Vei');
           memo1.Text:=sql.Text;
           Open;
                  if not eof then
                        begin
                              Relatorio.Projeto.SetParam('Dt1',DateToStr(now));
                              Relatorio.Projeto.SetParam('TITULORELATORIO','Antecipação de : ' + Edit1.Text);
                              Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                              Relatorio.Projeto.ExecuteReport('RvRevVen');
//                              Relatorio.Projeto.Close;
                        end
                        Else begin
                              ShowMessage('Não há dados para geração de Relatórios');
                        end;

     end;
Screen.Cursor:=crDefault;


end;

procedure TFormRelatorioSerVen.SpeedButton2Click(Sender: TObject);
begin
close;
end;

end.
