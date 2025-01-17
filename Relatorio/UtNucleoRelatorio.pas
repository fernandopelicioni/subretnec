unit UtNucleoRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvJanTreeView,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.TabNotBk, Vcl.Tabs, JvExComCtrls, JvDateTimePicker,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons, DateUtils, JvComponentBase,
  JvDBGridExport, Vcl.Grids, Vcl.DBGrids, Vcl.Samples.Gauges;

type
  TFormNucleoRelatorios = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    TreeView1: TTreeView;
    ImageList1: TImageList;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    tabEntradagrupo: TTabSheet;
    TabEntradaProduto: TTabSheet;
    TabSaidaGrupo: TTabSheet;
    TabSaidaProduto: TTabSheet;
    TabOrcamentoEntrada: TTabSheet;
    TabAbastecimento: TTabSheet;
    Button1: TButton;
    Label3: TLabel;
    QrContasOrcamentarias: TFDQuery;
    CheckNome: TCheckBox;
    DtContasOrcamentarias: TDataSource;
    TabOrcadoRealizado: TTabSheet;
    DBLookupComboBox1: TDBLookupComboBox;
    Button2: TButton;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button3: TButton;
    TabVisoOrc1: TTabSheet;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    CheckBox2: TCheckBox;
    Button4: TButton;
    Ano: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Mes: TEdit;
    Tab1: TTabSheet;
    EditVeiTab1: TEdit;
    Label8: TLabel;
    QrTab1SCO: TFDQuery;
    DtTab1Sco: TDataSource;
    Label9: TLabel;
    Button5: TButton;
    DbTab1: TDBLookupComboBox;
    Button6: TButton;
    TabSerExec: TTabSheet;
    QrTabServExec1: TFDQuery;
    DtTabServExec1: TDataSource;
    QrTabServExec2: TFDQuery;
    DttabServExec2: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    EdittabServExecVei: TEdit;
    Button7: TButton;
    QrtabServExec3: TFDQuery;
    DttabServExec3: TDataSource;
    Label13: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Memo1: TMemo;
    TabAbast1: TTabSheet;
    CheckBox3: TCheckBox;
    GBData: TGroupBox;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox2: TListBox;
    Button8: TButton;
    Button9: TButton;
    GroupBox1: TGroupBox;
    CheckBox4: TCheckBox;
    RadioGroup1: TRadioGroup;
    Button10: TButton;
    SaveDialog: TSaveDialog;
    ExpAbast1: TJvDBGridExcelExport;
    DbAbast: TDBGrid;
    DtAbast: TDataSource;
    Gauge1: TGauge;
    Memo2: TMemo;
    procedure Image1Click(Sender: TObject);
    Procedure FechaTab;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckNomeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Tab1Exit(Sender: TObject);
    procedure Tab1Show(Sender: TObject);
    procedure TabSerExecShow(Sender: TObject);
    procedure TabSerExecExit(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure TabSerExecHide(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox1DblClick(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure listadatas;
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataI,DataF:tdate;
    Datas:String;
    mediapdgrupo, qtdpd: real;
    MediaPonderadaC, MediaPonderadaL :string;
  end;

var
  FormNucleoRelatorios: TFormNucleoRelatorios;

implementation

{$R *.dfm}

uses UnitServerPai, UtRelatorio, UnitIniciaSistema, UtVisaoOrcamento1,
  UtAnaliseOrcamento1;

procedure TFormNucleoRelatorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         Action:=Cafree;
end;

procedure TFormNucleoRelatorios.FormCreate(Sender: TObject);
begin
          FechaTab;
          DateTimePicker1.Date:=now;
          DateTimePicker2.Date:=now;
end;

procedure TFormNucleoRelatorios.Image1Click(Sender: TObject);
begin
close;
end;

procedure TFormNucleoRelatorios.ListBox1DblClick(Sender: TObject);
begin
BitBtn1.Click;
//showmessage(IntToStr(ListBox1.ItemIndex));
end;

procedure TFormNucleoRelatorios.ListBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);

var

  DropIndex: Integer;

  TempStr: string;

begin

  with TListBox(Sender) do

  begin

    DropIndex := ItemAtPos(Point(X,Y), True);

    if (DropIndex > -1) and (DropIndex <> ItemIndex) then

    begin

      TempStr := Items[DropIndex];

      Items[DropIndex] := Items[ItemIndex];

      Items[ItemIndex] := TempStr;

      ItemIndex := DropIndex;

    end;

  end;

end;

procedure TFormNucleoRelatorios.ListBox2DblClick(Sender: TObject);
begin
BitBtn2.Click;
end;

procedure TFormNucleoRelatorios.ListBox2DragDrop(Sender, Source: TObject; X,
  Y: Integer);

var

  DropIndex: Integer;

begin

  DropIndex := TListBox(Sender).ItemAtPos(Point(X,Y),False);

  with TListBox(Source) do

  begin

    TListBox(Sender).Items.Insert(DropIndex, Items[ItemIndex]);

    Items.Delete(ItemIndex);

  end;
end;

procedure TFormNucleoRelatorios.BitBtn1Click(Sender: TObject);
var
 i,J: Integer;

begin
           ListBox1.MoveSelection(ListBox2);



//  J:=ListBox1.Items.Count;
//  while  i < J do
//  begin
//    if ListBox1.Selected[i] then
//          begin
//                      ListBox1.MoveSelection(ListBox2);
//                      Refresh;
//                      showmessage(ListBox1.Items[i]);
////                      ListBox2.Items.Add(ListBox1.Items[i]);
////                      ListBox1.Items.Delete(i);
//
//          end;
//  end;
//
//    ListBox1.Refresh;


end;

procedure TFormNucleoRelatorios.BitBtn2Click(Sender: TObject);
begin
           ListBox2.MoveSelection(ListBox1);

end;

procedure TFormNucleoRelatorios.Button10Click(Sender: TObject);
      var i:integer;
      v:string;

begin
screen.Cursor:=crHourGlass;
      Datas:='';
      for I := 0 to ListBox2.Items.Count-1 do
          begin
                 if I<ListBox2.Items.Count-1 then v:=',' else v:='';
                 datas:= datas+  quotedStr(copy(ListBox2.Items.Strings[i],1,5)) +v;


          end;

        with Relatorio2.QrAbastDias do
              begin
                      close;
                      sql.Clear;
                      if RadioGroup1.ItemIndex =0 then
                      sql.Add('SELECT Lay.VLAY_DES as Quebra2, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_des quebra1, c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,')
                      else
                      sql.Add('SELECT Lay.VLAY_DES as Quebra1, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_des quebra2, c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,');
//                      sql.Add('count(*) qtd, (count(*) * (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel))) as mediapd');
                      sql.Add('Sum(B.Abast_Om) As Om,SUM(B.Abast_Arla) as Arla,(SUM(B.Abast_Arla)*100/SUM(b.Abast_combustivel)) as MediaArla,(Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) as Media from Tb_Veiculos A');
                      sql.Add('Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha');
                      sql.Add('Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT');
                      sql.Add('Where Vei_Coligada =:coligada');
                      sql.Add('and B.Abast_Coligada = A.Vei_Coligada');
                      sql.Add('and vei_status=''1''');
                      if CheckBox3.Checked = true then
                          begin
                                  sql.Add('And convert(varchar(5),B.Abast_Data,103) in ('+ datas+')');
                                  sql.Add('And year(B.Abast_Data) in (:ano)');
                          end
                          ELSE
                          BEGIN
                                  sql.Add('And Abast_Data>='+QuotedStr(DateToStr(DateTimePicker1.Date)) + ' And Abast_Data<= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                          END;

                      sql.Add('        Group by lay.VLAY_DES, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_Des,c.MOD_MEDCOMBUSTIVEL');
                      if CheckBox4.Checked = true then
                            sql.Add('        having (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_MEDCOMBUSTIVEL');

                      sql.Add('        order by lay.VLAY_DES, A.Vei_numero');
                      ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;

                      if CheckBox3.Checked = true then  ParamByName('ano').value:= yearOf(DateTimePicker1.Date);
                      Open;
                      if Not Eof then
                                  begin
                                           Gauge1.Show;
                                           SaveDialog.Title := 'Exportar a Microsoft Excel...';
                                           SaveDialog.Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
                                           SaveDialog.FilterIndex := 1;
                                           SaveDialog.DefaultExt := '*.xlsx';
                                           if SaveDialog.Execute Then
                                           begin
                                             ExpAbast1.FileName := SaveDialog.FileName;
                                           //DBGridExcelExport.UseFieldGetText := true;
                                             ExpAbast1.Grid := DbAbast;
                                             Gauge1.Progress := 0;
                                             Gauge1.MaxValue := DbAbast.DataSource.DataSet.RecordCount-1;
                                             Gauge1.Show;
                                             ExpAbast1.ExportGrid;
                                             Gauge1.Hide;


                                           end;

                                  end
                                  ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                      close;



              end;
 Relatorio2.QrAbastDias.Close;
 screen.Cursor:=crDefault;

end;

procedure TFormNucleoRelatorios.Button1Click(Sender: TObject);
begin
           with relatorio2.QrEntradaContaOrcamentaria do
                 begin
                           Close;
                           ParamByName('DataI').AsString:=DateToStr(DateTimePicker1.Date);
                           ParamByName('DataF').AsString:=DateToStr(DateTimePicker2.Date);
                           ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                           Open;
                           if not eof then
                                        begin
                                            Relatorio2.FtEntradaContaOrcamentaria.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtEntradaContaOrcamentaria.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtEntradaContaOrcamentaria.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtEntradaContaOrcamentaria.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;

                 end;
end;

procedure TFormNucleoRelatorios.Button2Click(Sender: TObject);
begin
           with relatorio2.QrOrcadoXReal do
                 begin
                           Close;
                           ParamByName('DataI').AsString:=DateToStr(DateTimePicker1.Date);
                           ParamByName('DataF').AsString:=DateToStr(DateTimePicker2.Date);
                           ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                           Open;
                           if not eof then
                                        begin
                                            Relatorio2.FtORcadoXRealMes.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtORcadoXRealMes.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtORcadoXRealMes.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtORcadoXRealMes.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;

                 end;

end;

procedure TFormNucleoRelatorios.Button3Click(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=Null;
end;

procedure TFormNucleoRelatorios.Button4Click(Sender: TObject);
begin
  MessageBox(0, 'Espero que voc� entenda o que irei fazer aqui, isso consumira processamento e pode demorar uns instantes!', 'Que trabalh�o', MB_ICONINFORMATION or MB_OK);
  Application.CreateForm(TFormVisaoOrcamento1,FormVisaoOrcamento1);
  With FormVisaoOrcamento1.QrJan do
       begin
               Open;
       end;
  FormVisaoOrcamento1.showmodal;
end;

procedure TFormNucleoRelatorios.Button5Click(Sender: TObject);
begin
           with relatorio2.QrRPV do
                 begin
                           Close;
                           ParamByName('DataI').AsString:=DateToStr(DateTimePicker1.Date);
                           ParamByName('DataF').AsString:=DateToStr(DateTimePicker2.Date);
                           ParamByName('vei').AsString:=EditVeiTab1.Text;
                           if DbTab1.KeyValue <> NULL then
                                  begin
                                           ParamByName('IdI').AsString:=DbTab1.KeyValue;
                                           ParamByName('IDf').AsString:=DbTab1.KeyValue;
                                  end
                                  else
                                  begin
                                           ParamByName('IdI').AsString:='1';
                                           ParamByName('IDf').AsString:='9999';
                                  end;
                           ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                           Open;
                           if not eof then
                                        begin
                                            Relatorio2.FTRPV.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FTRPV.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FTRPV.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FTRPV.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;
                 end;

end;

procedure TFormNucleoRelatorios.Button6Click(Sender: TObject);
begin
     DbTab1.KeyValue:=NULL;
end;

procedure TFormNucleoRelatorios.Button7Click(Sender: TObject);
begin
                  With Relatorio2.QrServExec1 do
                            begin
                                   close;
                                   Sql.Clear;
                                   sql.Add(' select SER.SCO_DES AS SERVICO, CHA.MOD_DES AS MODCHA,  CAR.CSC_DES AS CARACTERISTICA,	  MOV.RPR_ROD AS RODAGEM,	  VEI.VEI_NUMERO AS VEICULO,  (MOV.RPR_DTFEC - RPR_DIASROD) AS ABERTURA_OS,');
                                   sql.Add(' MOV.RPR_DTFEC AS FECHAMENTO_OS,	  MOV.RPR_DIASROD  from TB_MOVREVPRE MOV');
                                   sql.Add(' JOIN TB_VEICULOS VEI ON VEI.VEI_NUN = MOV.RPR_VEI');
                                   sql.Add(' JOIN TB_SERVICOSCONTROLADOS SER ON SER.SCO_COD = MOV.RPR_SCO');
                                   sql.Add(' JOIN TB_SERCONCAR CAR ON CAR.CSC_COD = MOV.RPR_CSC');
                                   sql.Add(' JOIN TB_VEIMODCHA CHA ON CHA.MOD_COD = VEI.VEI_MODCHA');

                                   sql.Add(' WHERE MOV.RPR_DTFEC >=' + QuotedStr(DateToStr(DateTimePicker1.Date)) + ' AND MOV.RPR_DTFEC <= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                                   sql.Add(' AND RPR_STATUS = ''F''');
                                   sql.Add(' and Vei.VEI_coligada = ' + Pai.QrColigadas.FieldByName('cod_coligada').AsString);
                                   sql.Add(' AND RPR_ROD > 0');
                                   Sql.Add(' And Vei.Vei_Status = ''1''');
                                   if DBLookupComboBox4.KeyValue <> NULL then
                                          sql.Add('AND SER.SCO_COD = ' + QuotedStr(DBLookupComboBox4.KeyValue));
                                   if DBLookupComboBox6.KeyValue <> NULL then
                                          sql.Add('AND CAR.CSC_COD = ' + QuotedStr(DBLookupComboBox6.KeyValue));
                                   sql.Add(' AND RPR_EXEC = ''S''');
                                   if DBLookupComboBox5.KeyValue <> NULL then
                                          sql.Add('AND CHA.MOD_COD =  ' + QuotedStr(DBLookupComboBox5.KeyValue));
                                   if EdittabServExecVei.Text <> '' then
                                        sql.add('and vei.vei_numero = ' + quotedStr(EdittabServExecVei.Text));
                                   sql.Add('ORDER BY SERVICO, CARACTERISTICA, VEICULO ');

                                   memo1.Text:=sql.Text;
                                   open;
                                   if Not Eof then
                                        begin
                                            Relatorio2.FtServExec1.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtServExec1.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
                                            Relatorio2.FtServExec1.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtServExec1.ShowReport();
                                        end
                                        ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;
                            end;



end;

procedure TFormNucleoRelatorios.Button8Click(Sender: TObject);
      var i:integer;
      v:string;
begin

//      I:=ListBox2.Items.Count-1;
      Datas:='';
      for I := 0 to ListBox2.Items.Count-1 do
          begin
                 if I<ListBox2.Items.Count-1 then v:=',' else v:='';
                 datas:= datas+  quotedStr(copy(ListBox2.Items.Strings[i],1,5)) +v;


          end;



//--edit1.Text:=ListBox2.Items.Text;

//  J:=ListBox1.Items.Count;
//  while  i < J do
//  begin
//    if ListBox1.Selected[i] then
//          begin
//                      ListBox1.MoveSelection(ListBox2);
//                      Refresh;
//                      showmessage(ListBox1.Items[i]);
////                      ListBox2.Items.Add(ListBox1.Items[i]);
////                      ListBox1.Items.Delete(i);
//
//          end;
//  end;
//
//    ListBox1.Refresh;


end;

procedure TFormNucleoRelatorios.Button9Click(Sender: TObject);
      var i:integer;
      v:string;

begin
      Datas:='';
      if CheckBox3.Checked = true then
          begin
                  for I := 0 to ListBox2.Items.Count-1 do
                      begin
                             if I<ListBox2.Items.Count-1 then v:=',' else v:='';
                             datas:= datas+  quotedStr(copy(ListBox2.Items.Strings[i],1,5)) + v;
                      end;
          end
          else datas:=DateTostr(DateTimePicker1.Date) + ' a ' +  DateTostr(DateTimePicker1.Date);
        mediapdgrupo:=0;
        with Relatorio2.QrAbastMedPdC do
              begin
                      close;
                      sql.Clear;
                      sql.Add('SELECT C.Mod_des as Quebra1, c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,');

                      sql.Add('count( distinct(a.vei_nun)) qtd, (count( distinct(a.vei_nun))* (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel))) as mediapd from Tb_Veiculos A');
                      sql.Add('Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha');
                      sql.Add('Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT');
                      sql.Add('Where Vei_Coligada =:coligada');
                      sql.Add('and B.Abast_Coligada = A.Vei_Coligada');
                      sql.Add('and vei_status=''1''');
                      if CheckBox3.Checked = true then
                          begin
                                  sql.Add('And convert(varchar(5),B.Abast_Data,103) in ('+ datas+')');
                                  sql.Add('And year(B.Abast_Data) in (:ano)');
                          end
                          ELSE
                          BEGIN
                                  sql.Add('And Abast_Data>='+QuotedStr(DateToStr(DateTimePicker1.Date)) + ' And Abast_Data<= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                          END;
                           sql.Add('Group by C.Mod_Des,c.MOD_MEDCOMBUSTIVEL');

                      if CheckBox4.Checked = true then
                            sql.Add('having (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_MEDCOMBUSTIVEL');
                      ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                      if CheckBox3.Checked = true then  ParamByName('ano').value:= yearOf(DateTimePicker1.Date);
                      memo2.Text:=sql.Text;
                      Open;
                      qtdpd:=0;
                      while not eof do
                          begin
                              mediapdgrupo:=mediapdgrupo + FieldByName('mediapd').AsFloat;
                              qtdpd:= qtdpd+FieldByName('qtd').AsFloat;
                              next;
                          end;
                      if CheckBox4.Checked = true then
                          begin
                              MediaPonderadaC:='0';
                          end
                          else
                          begin
                              MediaPonderadaC:=FormatFloat('0.00', mediapdgrupo/qtdPd);
                          end;
              end;
// media layout
        with Relatorio2.QrAbastMedPdC do
              begin
                      close;
                      sql.Clear;
                      sql.Add('SELECT Lay.VLAY_DES as Quebra1,c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,');

                      sql.Add('count( distinct(a.vei_nun)) qtd, (count( distinct(a.vei_nun))* (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel))) as mediapd from Tb_Veiculos A');
                      sql.Add('Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha');
                      sql.Add('Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT');
                      sql.Add('Where Vei_Coligada =:coligada');
                      sql.Add('and B.Abast_Coligada = A.Vei_Coligada');
                      sql.Add('and vei_status=''1''');
                      if CheckBox3.Checked = true then
                          begin
                                  sql.Add('And convert(varchar(5),B.Abast_Data,103) in ('+ datas+')');
                                  sql.Add('And year(B.Abast_Data) in (:ano)');
                          end
                          ELSE
                          BEGIN
                                  sql.Add('And Abast_Data>='+QuotedStr(DateToStr(DateTimePicker1.Date)) + ' And Abast_Data<= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                          END;
                       sql.Add('Group by lay.VLAY_DES, c.MOD_MEDCOMBUSTIVEL');
                      if CheckBox4.Checked = true then
                            sql.Add('having (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_MEDCOMBUSTIVEL');

//                      sql.Add('order by lay.VLAY_DES, A.Vei_numero');
                      ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                      if CheckBox3.Checked = true then  ParamByName('ano').value:= yearOf(DateTimePicker1.Date);
                      memo2.Text:=sql.Text;
                      Open;
                      mediapdgrupo:=0;
                      qtdpd:=0;
                      while not eof do
                          begin
                              mediapdgrupo:=mediapdgrupo+ FieldByName('mediapd').AsFloat;
                              qtdpd:= qtdpd+FieldByName('qtd').AsFloat;
                              next;
                          end;
                      if CheckBox4.Checked = true then
                          begin
                              MediaPonderadaL:='0';
                          end
                          else
                          begin
                              MediaPonderadaL:=FormatFloat('0.00', mediapdgrupo/qtdPd);
                          end;
              end;



        with Relatorio2.QrAbastDias do
              begin
                      close;
                      sql.Clear;
                      if RadioGroup1.ItemIndex =0 then
                      sql.Add('SELECT Lay.VLAY_DES as Quebra2, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_des quebra1, c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,')
                      else
                      sql.Add('SELECT Lay.VLAY_DES as Quebra1, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_des quebra2, c.MOD_MEDCOMBUSTIVEL,sum(B.abast_Rodagem) As Km, Sum(B.Abast_Combustivel) As Diesel,');
                     // sql.Add('count(*) qtd, (count(*) * (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel))) as mediapd');

                      sql.Add('Sum(B.Abast_Om) As Om,SUM(B.Abast_Arla) as Arla,(SUM(B.Abast_Arla)*100/SUM(b.Abast_combustivel)) as MediaArla,(Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) as Media from Tb_Veiculos A');
                      sql.Add('Join tB_CbMovAbast B On B.Abast_Vei = A.Vei_Nun Join Tb_VeiModCha C On C.MOD_COD = A.Vei_ModCha');
                      sql.Add('Join TB_VEILAYOUT Lay On Lay.VLAY_ID = A.VEI_LAYOUT');
                      sql.Add('Where Vei_Coligada =:coligada');
                      sql.Add('and B.Abast_Coligada = A.Vei_Coligada');
                      sql.Add('and vei_status=''1''');
                      if CheckBox3.Checked = true then
                          begin
                                  sql.Add('And convert(varchar(5),B.Abast_Data,103) in ('+ datas+')');
                                  sql.Add('And year(B.Abast_Data) in (:ano)');
                          end
                          ELSE
                          BEGIN
                                  sql.Add('And Abast_Data>='+QuotedStr(DateToStr(DateTimePicker1.Date)) + ' And Abast_Data<= ' + QuotedStr(DateToStr(DateTimePicker2.Date)));
                          END;
                      sql.Add('        Group by lay.VLAY_DES, A.Vei_Numero, A.Vei_ChassiAno, C.Mod_Des,c.MOD_MEDCOMBUSTIVEL');
                      if CheckBox4.Checked = true then
                            sql.Add('        having (Sum(B.Abast_Rodagem)/ sum(B.Abast_Combustivel)) < c.MOD_MEDCOMBUSTIVEL');

                      sql.Add('        order by lay.VLAY_DES, A.Vei_numero');
                      ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                      if CheckBox3.Checked = true then  ParamByName('ano').value:= yearOf(DateTimePicker1.Date);
                      Open;
                      if Not Eof then
                                  begin
                                            Relatorio2.FTAbastDias.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FTAbastDias.Variables['datas']:=QUOTEDSTR(datas);
                                            Relatorio2.FTAbastDias.Variables['MediaponderadaC']:=QuotedStr(MediaPonderadaC);
                                            Relatorio2.FTAbastDias.Variables['MediaponderadaL']:=QuotedStr(MediaPonderadaL);

                                            Relatorio2.FTAbastDias.Variables['usuario']:=QUOTEDSTR(Pai.QrUsuarios.FieldByName('usu_nome').AsString);
                                            Relatorio2.FTAbastDias.ShowReport();
                                  end
                                  ELSE
                                            MessageBox(0, 'Redefina sua consulta e tente novamente!', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);
                                        close;
              end;
 Relatorio2.QrAbastDias.Close;

end;

procedure TFormNucleoRelatorios.CheckBox3Click(Sender: TObject);
begin
      GBData.Enabled:=CheckBox3.Checked;

end;

procedure TFormNucleoRelatorios.CheckNomeClick(Sender: TObject);
begin
      if CheckNome.Checked = False then
             DBLookupComboBox1.KeyField:='DESCRICAO'
             else
             DBLookupComboBox1.KeyField:='CODTBORCAMENTO';


end;

procedure TFormNucleoRelatorios.DateTimePicker1Change(Sender: TObject);
begin
       if DateTimePicker2.Date > DateTimePicker1.Date then
           listadatas;

end;

procedure TFormNucleoRelatorios.DateTimePicker2Change(Sender: TObject);
begin
       if DateTimePicker2.Date > DateTimePicker1.Date then
           listadatas;
end;

procedure TFormNucleoRelatorios.Tab1Exit(Sender: TObject);
begin
       QrTab1SCO.Close;
end;

procedure TFormNucleoRelatorios.Tab1Show(Sender: TObject);
begin
                 With QrTab1SCO do
                      begin
                             Close;
                             Open;
                      end;


end;

procedure TFormNucleoRelatorios.TabSerExecExit(Sender: TObject);
begin
//      with  QrTabServExec1 do
//          begin
//               Close;
//          end;
//      with  QrTabServExec2 do
//          begin
//               Close;
//          end;
//      with  QrTabServExec3 do
//          begin
//               Close;
//          end;

end;

procedure TFormNucleoRelatorios.TabSerExecHide(Sender: TObject);
begin
      with  QrTabServExec1 do
          begin
               Close;
          end;
      with  QrTabServExec2 do
          begin
               Close;
          end;
      with  QrTabServExec3 do
          begin
               Close;
          end;
//

end;

procedure TFormNucleoRelatorios.TabSerExecShow(Sender: TObject);
begin
      with  QrTabServExec1 do
          begin
               open;
          end;
      with  QrTabServExec2 do
          begin
               open;
          end;
      with  QrTabServExec3 do
          begin
               open;
          end;
end;

procedure TFormNucleoRelatorios.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
//ShowMessage(IntToStr(treeview1.Selected.AbsoluteIndex));
// PageControl1.ActivePageIndex := TreeView1.Selected.Index;
// fecha

    FechaTab; // Fecha todas as tab

    // abastecimentio
    if treeview1.Selected.AbsoluteIndex = 10 then
          begin
                 TabAbast1.TabVisible:=true;
          end;
    if treeview1.Selected.AbsoluteIndex = 13 then
          begin
                 TabOrcamentoEntrada.TabVisible:=true;
                 With QrContasOrcamentarias do
                      begin
                             Close;
                             ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                             Open;
                      end;
          end;
     // Or�ado x Realizado
    if treeview1.Selected.AbsoluteIndex = 14 then
          begin
                 TabOrcadoRealizado.TabVisible:=true;
                 With QrContasOrcamentarias do
                      begin
                             Close;
                             ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                             Open;
                      end;
          end;
    if treeview1.Selected.AbsoluteIndex = 15 then
          begin
                 TabVisoOrc1.TabVisible:=true;
                 With QrContasOrcamentarias do
                      begin
                             Close;
                             ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                             Open;
                      end;
          end;
    if treeview1.Selected.AbsoluteIndex = 17 then
          begin
                 Tab1.TabVisible:=true;
                 With QrTab1SCO do
                      begin
                             Close;
                             Open;
//                          ParamByName('vei').AsString:=EditVeiTab1.Text;
//                             if DbTab1.KeyValue <> NULL then
//                                  begin
//                                           ParamByName('IdI').AsString:=DbTab1.KeyValue;
//                                           ParamByName('IDf').AsString:=DbTab1.KeyValue;
//                                  end
//                                  else
//                                  begin
//                                           ParamByName('IdI').AsString:='1';
//                                           ParamByName('IDf').AsString:='9999';
//                                  end;
//                             Open;
                      end;
          end;
    if treeview1.Selected.AbsoluteIndex = 18 then
          begin
                 FormAnaliseOrcamento1.showmodal;
          end;

    if treeview1.Selected.AbsoluteIndex = 19 then
          begin
                 TabSerExec.TabVisible:=true;
                 TabSerExec.Show;
                 //FormAnaliseOrcamento1.showmodal;
          end;


end;

procedure TFormNucleoRelatorios.TreeView1Click(Sender: TObject);
begin
// if TreeView1.Items[5].Selected then
end;

Procedure TformNucleoRelatorios.FechaTab;
begin
  //    fecha todas as tabs

                tabEntradagrupo.TabVisible:=false;
                TabEntradaProduto.TabVisible:=false;
                TabSaidaGrupo.TabVisible:=false;
                TabSaidaProduto.TabVisible:=false;
                TabOrcamentoEntrada.TabVisible:=false;
                TabAbastecimento.TabVisible:=false;
                TabOrcadoRealizado.TabVisible:=false;
                TabVisoOrc1.TabVisible:=false;
                Tab1.TabVisible:=false;
                TabSerExec.TabVisible:=false;
                TabAbast1.TabVisible:=false;



end;
Procedure TFormNucleoRelatorios.listadatas;
var Semana, Vdia:string;
begin
  //
       ListBox1.Clear;
       ListBox2.Clear;
       DataI:=DateTimePicker1.Date;
       DataF:=DateTimePicker2.Date;
       while DataI <= DataF do
            begin
                      case DayOfWeek(DataI) of
                      1 : semana := 'Domingo';
                      2 : semana := 'Segunda';
                      3 : semana := 'Ter�a';
                      4 : semana := 'Quarta';
                      5 : semana := 'Quinta';
                      6 : semana := 'Sexta';
                      7 : semana := 'S�bado';
                      end;
                      Vdia:=FormatFloat('00',DayOf(DataI))+'/'+FormatFloat('00',MonthOf(DataI)) +' - ' +semana;
                      ListBox2.Items.add(Vdia);
                      DataI:=DataI+1;


            end;




end;


end.
