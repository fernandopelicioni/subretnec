unit UnitRelatorioAbast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DB, DBCtrls, Gauges, ExtCtrls, RvLdCompiler;

type
  TFormRelatorioAbast = class(TForm)
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DtPadVei: TDataSource;
    DtSistema: TDataSource;
    DtModCha: TDataSource;
    Label1: TLabel;
    Dtveiculos: TDataSource;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    DtColigada: TDataSource;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Label11: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    CheckBox4: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAbast: TFormRelatorioAbast;

implementation

uses UnitRelatorio, UnitServerPai, UnitIniciaSistema;

{$R *.dfm}

procedure TFormRelatorioAbast.BitBtn1Click(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
with Relatorio.QrMovAbast do
    begin
        Close;
        Sql.Clear;
        Sql.Add('Select * from Tb_CbMovAbast A, Tb_Veiculos G, Tb_VeiModCha C, Tb_IndiceRevisao D, TB_VeiSistema E, Tb_PadVeic F');
        Sql.Add('Where G.Vei_Nun = A.Abast_Vei and G.Vei_ModCha = C.Mod_Cod And E.Vsi_cod = G.Vei_Vsi And F.Pad_Cod = G.Vei_Padrao');
        Sql.Add('And G.Vei_Coligada = ' + QuotedStr(Pai.QrColigadas.FieldByName('Cod_Coligada').AsString) + ' and G.Vei_nun = D.Tin_Vei');
        Sql.Add('And A.Abast_Data >= ' + QuotedStr((DateToStr(DateTimePicker2.Date))));
        Sql.Add('And A.Abast_Data <= ' + QuotedStr((DateToStr(DateTimePicker3.Date))));
        if DBLookupComboBox4.KeyValue <> null then
             Sql.Add('And G.Vei_Nun = ' + QuotedStr(DBLookupComboBox4.KeyValue));
        if DBLookupComboBox1.KeyValue <> null then
             Sql.Add('And F.Pad_Cod = ' + QuotedStr(DBLookupComboBox1.KeyValue));
        if DBLookupComboBox2.KeyValue <> null then
             Sql.Add('And E.VSI_Cod = ' + QuotedStr(DBLookupComboBox2.KeyValue));
        if DBLookupComboBox3.KeyValue <> null then
             Sql.Add('And C.Mod_Cod = ' + QuotedStr(DBLookupComboBox3.KeyValue));
        Sql.Add('order by G.Vei_Numero, A.Abast_Data');
        memo1.text:=sql.Text;
        Open;
        if not eof then
              Begin
                   Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker2.Date));
                   Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker3.Date));
                   Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                   Relatorio.Projeto.ExecuteReport('RvAbastPer');
              End
              Else
              begin
                   MessageBox(Handle,'N�o H� dados para serem Gerados','Dados n�o Encontrados',Mb_IconInformation+Mb_ok);
                   Close;
              end;
    end;
end;

procedure TFormRelatorioAbast.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormRelatorioAbast.BitBtn3Click(Sender: TObject);
begin
if CheckBox4.Checked=True then
     begin
            With Relatorio.QrAbastSintLinha do
                begin
                       Close;
                       Parameters.ParamByName('Coligada').value:= DtColigada.DataSet.FieldByName('Cod_Coligada').AsString;
                       Parameters.ParamByName('Dti').value:=DateToStr(DateTimePicker2.Date);
                       Parameters.ParamByName('DtF').value:=DateToStr(DateTimePicker3.Date);
                       Open;
                       if not eof then
                            begin
                                  Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker2.Date));
                                  Relatorio.Projeto.SetParam('TituloRelatorio','Abastecimento por linhas');
                                  Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker3.Date));
                                  Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                   Relatorio.Projeto.ExecuteReport('Rv_AbastSintLinha')

                            end;


                end;
                Abort;
     end;




with Relatorio.QrAbastSinLayOut do
     begin
           Close;
           Sql.Clear;
           if CheckBox1.Checked then
                 Sql.Add('SELECT Lay.VLAY_DES as LayOut,')
                 else
                 Sql.Add('SELECT ');
           sql.Add('A.Vei_Numero, A.Vei_ChassiAno, C.Mod_des, sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,');
           sql.Add('Sum(B.Abast_Om) As Om,SUM(B.Abast_Arla) as Arla,(SUM(B.Abast_Arla)*100/SUM(b.Abast_combustivel)) as MediaArla,');
           Sql.Add('(Sum(B.Abast_Rodagem)/Sum(B.Abast_Combustivel)) as Media');
           Sql.Add('from Tb_Veiculos A');
           Sql.Add('Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun');
           Sql.Add('Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha');
           Sql.Add('Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT');

           Sql.Add('Where Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
           Sql.Add('and B.Abast_Coligada = A.Vei_Coligada');
           if DBLookupComboBox7.KeyValue <> null then
                    Sql.Add('And A.Vei_Nun = ' + QuotedStr(DBLookupComboBox7.KeyValue));
           if DBLookupComboBox8.KeyValue <> null then
                    Sql.Add('And A.Vei_Padrao = ' + QuotedStr(DBLookupComboBox8.KeyValue));
           if DBLookupComboBox6.KeyValue <> null then
                    Sql.Add('And A.Vei_Vsi = ' + QuotedStr(DBLookupComboBox6.KeyValue));
           if DBLookupComboBox5.KeyValue <> null then
                    Sql.Add('And A.Vei_ModCha = ' + QuotedStr(DBLookupComboBox5.KeyValue));
           Sql.Add('And B.Abast_Data >= ' + QuotedStr((DateToStr(DateTimePicker2.Date))));
           Sql.Add('And B.Abast_Data <= ' + QuotedStr((DateToStr(DateTimePicker3.Date))));
           if CheckBox3.Checked = True then
                 begin
                      //Parameters.ParamByName('sustentavel').Value:='1';
                      Sql.Add('And A.vei_sustentavel=''1''');
                 end;
           if CheckBox1.Checked = True then
                 begin
                       Sql.Add('Group by lay.VLAY_DES, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_Des');
                       Sql.Add('order by lay.VLAY_DES, A.Vei_numero');
                 end
                 else begin
                       Sql.Add('Group By Vei_Numero, A.Vei_ChassiAno, C.MOD_DES');
                       Sql.Add('order by A.Vei_numero');
                 end;


           memo1.text:=sql.Text;
           Open;
           if not eof then
                 Begin
                        Relatorio.Projeto.SetParam('Dt1',DateToStr(DateTimePicker2.Date));
                        Relatorio.Projeto.SetParam('TituloRelatorio',DtSistema.DataSet.FieldByName('vSI_dES').AsString);
                        Relatorio.Projeto.SetParam('Dt2',DateToStr(DateTimePicker3.Date));
                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                        if CheckBox1.Checked = True then
                              Relatorio.Projeto.ExecuteReport('Rv_AbastSintLayOut')
                              else
                              Relatorio.Projeto.ExecuteReport('RvAbastSintetico');
                  End
                  else begin
                        MessageBox(Handle,'N�o H� dados para serem Gerados','Dados n�o Encontrados',Mb_IconInformation+Mb_ok);
                        Close;
                  end;
     end;
end;

procedure TFormRelatorioAbast.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
   begin
    CheckBox4.Checked:=false;
    CheckBox2.Checked:=false;

   end;

end;

procedure TFormRelatorioAbast.CheckBox2Click(Sender: TObject);
begin
if CheckBox2.Checked=true then
   begin
    CheckBox4.Checked:=false;
    CheckBox1.Checked:=false;

   end;

end;

procedure TFormRelatorioAbast.CheckBox4Click(Sender: TObject);
begin
if CheckBox4.Checked=true then
   begin
    CheckBox1.Checked:=false;
    CheckBox2.Checked:=false;

   end;

end;

procedure TFormRelatorioAbast.FormActivate(Sender: TObject);
begin
DtPadVei.DataSet.open;
DtSistema.DataSet.Open;
DtModCha.DataSet.Open;
DtVeiculos.DataSet.Open;
end;

procedure TFormRelatorioAbast.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtPadVei.DataSet.CLOSE;
DtSistema.DataSet.CLOSE;
DtModCha.DataSet.CLOSE;
Dtveiculos.DataSet.Close;
Action:=Cafree;
end;

procedure TFormRelatorioAbast.FormShow(Sender: TObject);
begin
DateTimePicker3.Date:=now;
DateTimePicker2.Date:=now-30;

end;

end.
