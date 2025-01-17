unit UnitlancaCombustivel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls,
  RibbonLunaStyleActnCtrls, Ribbon, pngimage;

type
  TFormLancaCombustivel = class(TForm)
    QrProdutos: TADOQuery;
    DtMovAbast: TDataSource;
    QrCentroCusto: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DtVeiculo: TDataSource;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    DBText1: TDBText;
    EditLt: TMaskEdit;
    Label2: TLabel;
    EditKM: TMaskEdit;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    QrVeiculos: TADOQuery;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText8: TDBText;
    Label10: TLabel;
    DBText9: TDBText;
    Label11: TLabel;
    Label12: TLabel;
    DtIndiceRevisao: TDataSource;
    DtPrd: TDataSource;
    EditData: TMaskEdit;
    Label13: TLabel;
    Datar: TCheckBox;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    QrVeiculosVEI_NUN: TWideStringField;
    QrVeiculosVEI_PLACA: TWideStringField;
    QrVeiculosVEI_AQUISICAO: TDateTimeField;
    QrVeiculosVEI_PADRAO: TSmallintField;
    QrVeiculosVEI_GRUPO: TSmallintField;
    QrVeiculosVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculosVEI_CENTROCUSTO: TStringField;
    QrVeiculosVEI_CHASSINUM: TWideStringField;
    QrVeiculosVEI_CHASSIANO: TWideStringField;
    QrVeiculosVEI_MODCHA: TSmallintField;
    QrVeiculosVEI_CARMOD: TSmallintField;
    QrVeiculosVEI_CARANO: TWideStringField;
    QrVeiculosVEI_OPERADOR: TWideStringField;
    QrVeiculosVEI_COLIGADA: TWordField;
    QrVeiculosCAR_COD: TSmallintField;
    QrVeiculosCAR_DES: TWideStringField;
    QrVeiculosMOD_COD: TSmallintField;
    QrVeiculosMOD_DES: TWideStringField;
    QrVeiculosMOD_MEDCOMBUSTIVEL: TBCDField;
    QrVeiculosMOD_MEDKM: TIntegerField;
    QrVeiculosMOD_EIXOS: TWordField;
    QrVeiculosMOD_MEDCOMMAX: TBCDField;
    QrVeiculosTIN_VEI: TWideStringField;
    QrVeiculosTIN_ULTCOL: TDateTimeField;
    QrVeiculosTIN_ODO: TIntegerField;
    QrVeiculosTIN_ULTMED: TBCDField;
    DBLookupComboBox1: TEdit;
    DtColigada: TDataSource;
    EditOM: TEdit;
    Busca: TBitBtn;
    disrod: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    QrIndiceRevisao: TADOQuery;
    EditKmAnterior: TLabel;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    DBText11: TDBText;
    EditDataAnterior: TLabel;
    DBText12: TDBText;
    Label16: TLabel;
    Label21: TLabel;
    SpeedButton3: TSpeedButton;
    Label22: TLabel;
    EditArla: TEdit;
    Label23: TLabel;
    QrVeiculosVEI_STATUS: TWordField;
    QrVeiculosVEI_INTMON: TWideStringField;
    QrVeiculosVEI_SUSTENTAVEL: TWideStringField;
    QrVeiculosVEI_CARNUM: TStringField;
    QrVeiculosVEI_RENAVAN: TStringField;
    QrVeiculosVEI_VSI: TWordField;
    QrVeiculosVEI_PMM: TWordField;
    QrVeiculosVEI_NUMMOTOR: TWideStringField;
    QrVeiculosVEI_NUMERO: TWideStringField;
    DBText10: TDBText;
    Label24: TLabel;
    Panel2: TPanel;
    Image5: TImage;
    BitBtn1: TButton;
    BitBtn2: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure EditKMKeyPress(Sender: TObject; var Key: Char);
    procedure EditLtKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DatarClick(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure EditOMKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaClick(Sender: TObject);
    procedure EditKMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditLtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditOMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditArlaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditArlaKeyPress(Sender: TObject; var Key: Char);
    procedure Image5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaCombustivel: TFormLancaCombustivel;
  KmRodado, KmAnterior: integer;
  troca:String[1];
implementation

uses UnitPai, UnitServerPai;

{$R *.dfm}

procedure TFormLancaCombustivel.BitBtn1Click(Sender: TObject);
begin

DtMovAbast.DataSet.FieldByName('ABAST_Rodagem').AsString:= IntToStr(KmRodado); //IntToStr(StrToInt(EditKm.Text) - StrToInt(DtVeiculo.DataSet.FieldByName('TIn_ODO').AsString));
DtMovAbast.DataSet.FieldByName('ABAST_OM').AsString:=EditOm.Text;
DtMovAbast.DataSet.FieldByName('ABAST_Vei').AsString:=DtVeiculo.DataSet.FieldByName('Vei_Nun').asstring;
DtMovAbast.DataSet.FieldByName('ABAST_DATA').AsString:=EditData.Text;
DtMovAbast.DataSet.FieldByName('ABAST_COMBUSTIVEL').AsString:=EditLt.Text;
DtMovAbast.DataSet.FieldByName('ABAST_ARLA').AsString:=EditArla.Text;
DtMovAbast.DataSet.FieldByName('ABAST_KM').AsString:=EditKM.Text;
DtMovAbast.DataSet.FieldByName('ABAST_Coligada').AsString:= DtVeiculo.DataSet.FieldByName('Vei_coligada').AsString;
    DtIndiceRevisao.DataSet.Post;
DtMovAbast.DataSet.Post;
DtMovAbast.DataSet.Close;
Label18.Caption:=DtVeiculo.DataSet.FieldByName('Vei_Nun').asstring;
GroupBox1.Enabled:=False;
EditKmanterior.Caption:='0';
EditDataAnterior.Caption:='';
BitBtn1.Enabled:=false;
DtVeiculo.DataSet.Close;
DtIndicerevisao.DataSet.Close;
disrod.Caption:='0,00';
Troca:='';
BitBtn1.Enabled:=false;
BitBtn2.SetFocus;
end;

procedure TFormLancaCombustivel.BitBtn2Click(Sender: TObject);
begin
Troca:='';
Editlt.Text:='';
EditKm.Text:='';
EditArla.Text:='';
EditDataAnterior.Caption:='';
EditKmanterior.Caption:='0';
GroupBox3.Visible:=false;
DtMovAbast.DataSet.Cancel;
GroupBox1.Enabled:=true;
EditOm.Text:='0';
DBLookupComboBox1.TEXT:='';
DtMovAbast.DataSet.Open;

if datar.Checked = true then
  begin
   DBLookupComboBox1.SetFocus;
  end
  else
  Editdata.SetFocus;

end;

procedure TFormLancaCombustivel.BuscaClick(Sender: TObject);
begin
With Pai.QrMovAbast do
  Begin
  Close;
  Sql.Clear;
  Sql.Add('Select * from Tb_CBMovAbast');
  Sql.Add('Where Abast_Data = ' + QuotedStr(EditData.Text));
  Sql.Add('And Abast_Vei = '    + QuotedStr(DtVeiculo.DataSet.FieldByName('Vei_Nun').asstring));
  Open;
  if eof then
    begin
    DtMovAbast.DataSet.Insert;
    end
    else begin
    ShowMessage('J� existe um lan�amento para este ve�culo !, Se Deseja alterar, apague o lan�amento');
    DBLookupComboBox1.Setfocus;
    //EditKm.Text:=DtMovAbast.DataSet.FieldByName('Abast_Km').AsString;
    //EditLt.Text:=DtMovAbast.DataSet.FieldByName('Abast_Combustivel').AsString;
    //EditOm.Text:=DtMovAbast.DataSet.FieldByName('Abast_Om').AsString;
    //DtMovAbast.DataSet.Edit;
    end;
  End;
  DtIndiceRevisao.DataSet.Open;

end;

procedure TFormLancaCombustivel.Button1Click(Sender: TObject);
begin
Editlt.Text:='';
EditKm.Text:='';
EditDataAnterior.Caption:='';
GroupBox3.Visible:=false;
DtMovAbast.DataSet.Cancel;
//DtVeiculo.DataSet.Close;
//DtVeiculo.DataSet.Open;
//DtVeiculo.DataSet.refresh;
EditOm.Text:='0';
DBLookupComboBox1.TEXT:='';

GroupBox1.Enabled:=False;
BitBtn1.Enabled:=false;

end;

procedure TFormLancaCombustivel.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormLancaCombustivel.DatarClick(Sender: TObject);
begin
if datar.Checked = false then
   Begin
   EditData.Enabled:=true;
   EditData.SetFocus;
//   Datar.Checked:=False;
   End
   Else
   begin
   EditData.Enabled:=False;
   DBLookupComboBox1.SetFocus;
//   Datar.Checked:=true;
   end;
end;

procedure TFormLancaCombustivel.DBLookupComboBox1Enter(Sender: TObject);
begin
DtIndiceRevisao.DataSet.cancel;
Editlt.Text:='';
EditKm.Text:='';
EditOm.Text:='0';

end;

procedure TFormLancaCombustivel.DBLookupComboBox1Exit(Sender: TObject);
begin
if DBLookupComboBox1.text <> '' then
   GroupBox3.Visible:=true
;
end;

procedure TFormLancaCombustivel.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
//  DtIndiceRevisao.DataSet.Edit;
  With QrVeiculos do
  Begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_IndiceRevisao D');
    Sql.Add('Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod');
    Sql.Add('And A.Vei_Nun = D.Tin_Vei');
    Sql.Add('And A.Vei_Coligada = ' + DtColigada.DataSet.FieldByName('Cod_Coligada').AsString);
    Sql.Add('And A.Vei_Numero = ' + QuotedStr(DBLookupComboBox1.Text));
    Open;
    if Not Eof then
       Begin
          With QrIndiceRevisao do
               Begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from Tb_IndiceRevisao where Tin_Vei = ' + QuotedStr(DtVeiculo.DataSet.FieldByName('Vei_Nun').asstring));
                   Open;
                   if not eof then QrIndiceRevisao.Edit;
               End;
               With pai.Qrtemp do
              begin
                    Close;
                    Sql.Clear;
                    Sql.Add('select A.Abast_Km, A.Abast_Data from tb_CbMovAbast A');
                    Sql.Add('where A.Abast_data = (select max(B.Abast_Data) from tb_CbMovAbast B Where B.Abast_Vei = A.Abast_Vei and B.Abast_Data < '+ QuotedStr(EditData.Text));
                    Sql.Add(') and A.Abast_Vei = ' + QuotedStr(DtVeiculo.DataSet.FieldByName('Vei_nun').AsString));
                    Open;
                    if not eof then
                           begin
                           KmAnterior:=Pai.Qrtemp.Fields[0].AsInteger;
                           EditDataAnterior.Caption:=Pai.Qrtemp.Fields[1].AsString;
                           end
                           else
                           begin
                           KmAnterior:=DtVeiculo.DataSet.FieldByName('tin_odo').AsInteger;
                           EditDataAnterior.Caption:=DtVeiculo.DataSet.FieldByName('tin_ultcol').Asstring;
                           end;
                    EditKmAnterior.Caption:=FormatFloat('###,##0',KmAnterior);
                    Close;
              end;


        With Pai.QrMovAbast do
            Begin
            Close;
            Sql.Clear;
            Sql.Add('Select * from Tb_CBMovAbast');
            Sql.Add('Where Abast_Data = ' + QuotedStr(EditData.Text));
            Sql.Add('And Abast_Vei = '    + QuotedStr(DtVeiculo.DataSet.FieldByName('Vei_Nun').asstring));
            Open;
            if eof then
                begin
                DtIndiceRevisao.DataSet.Open;
                DtMovAbast.DataSet.Insert;
                Dtindicerevisao.DataSet.Edit;
                EditKm.Enabled:=true;
                EditKm.SetFocus;
                end
                else begin
                 // caso haja lan�amento
                 EditKm.Text:=DtMovAbast.DataSet.FieldByName('Abast_Km').AsString;
                 EditLt.Text:=DtMovAbast.DataSet.FieldByName('Abast_Combustivel').AsString;
                 EditOm.Text:=DtMovAbast.DataSet.FieldByName('Abast_Om').AsString;
                 EditArla.Text:=DtMovAbast.DataSet.FieldByName('Abast_Arla').AsString;
                 DtMovAbast.DataSet.Edit;
                 EditKm.Enabled:=true;
                 EditKM.SetFocus;
//                ShowMessage('J� existe um lan�amento para este ve�culo !, Se Deseja alterar, apague o lan�amento');
//                DBLookupComboBox1.Setfocus;
                end;
              End;
       End
       Else
       Begin
         MessageBox(Handle,'Ve�culo N�o Encontrado','N�o Achei',Mb_IconInformation+MB_Ok);
         DBLookupComboBox1.SetFocus;
       End;


  End;

  end;
end;

procedure TFormLancaCombustivel.EditArlaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
  begin
  EditKm.SetFocus;
  end;

end;

procedure TFormLancaCombustivel.EditArlaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
          Key:=#0;
          BitBtn1.Enabled:=true;
          BitBtn1.SetFocus;
    end;


end;

procedure TFormLancaCombustivel.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  DBLookupComboBox1.SetFocus;
  end;

end;

procedure TFormLancaCombustivel.EditKMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
begin
  DBLookupComboBox1.SetFocus;
end;

end;

procedure TFormLancaCombustivel.EditKMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
//  ShowMessage(DtMovAbast.DataSet.State);
   KmRodado:=StrToInt(EditKm.Text)-KmAnterior;
  if DtMovAbast.DataSet.State = DsInsert then
       begin
//           SHOWMESSAGE(IntToStr(KmRodado)+', rodados, '+IntToStr(KmAnterior)+' Anterior');
            if StrtoInt(EditKm.Text) < KmAnterior then
                  begin
                        MessageBox(handle,'Odometro informado � menor do que o anterior, verifique','Erro Encontrado',Mb_IconInformation + Mb_ok);
                        EditKm.Text:='';
                        DBLookupComboBox1.Setfocus;
                  end
                  else
                  begin
                        if KmRodado > DtVeiculo.DataSet.FieldByName('Mod_medKm').AsInteger then
                             begin
                                     ShowMessage('Quantidade de Quilometros rodados do dia excede Limete dos Par�metros'+#13+
                                     IntToStr(Kmrodado) + ', Limete � de: ' + DtVeiculo.DataSet.FieldByName('Mod_medKm').AsString);
                                     EditKm.SetFocus;
                              end
                              else
                              begin
                                     DtMovAbast.DataSet.FieldByName('ABAST_KMANT').AsString:=IntToStr(KmAnterior);
                                     DisRod.Caption:=IntToStr(kmRodado);
                                     EditLt.Enabled:=true;
                                     EditLt.SetFocus;
                              end;
                  end;
       end;
  if DtMovAbast.DataSet.State = DsEdit then
       begin
              DtMovAbast.DataSet.FieldByName('ABAST_KMANT').AsString:=IntToStr(KmAnterior);
              if StrToInt(EditKm.Text) < KmAnterior then
                     begin
                          MessageBox(handle,'Odometro informado � menor do que o anterior, verifique','Erro Encontrado',Mb_IconInformation + Mb_ok);
                          EditKm.Text:='';
                          DBLookupComboBox1.Setfocus;
                     end
                     else
                     begin
                          If KmRodado > DtVeiculo.DataSet.FieldByName('Mod_medKm').AsInteger then
                                begin
                                     ShowMessage('Quantidade de Quilometros rodados do dia excede Limete dos Par�metros'+#13+
                                             IntToStr(Kmrodado) + ', Limete � de: ' + DtVeiculo.DataSet.FieldByName('Mod_medKm').AsString);
                                     EditKm.SetFocus;
                                end
                                else
                                begin
                                      DtMovAbast.DataSet.FieldByName('ABAST_KMANT').AsString:=IntToStr(KmAnterior);
                                      DisRod.Caption:=IntToStr(kmRodado);
                                      EditLt.Enabled:=true;
                                      EditLt.SetFocus;
                                end;
                      end;
       end;
end;

end;

procedure TFormLancaCombustivel.EditLtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
  begin
  EditKm.SetFocus;
  end;
end;

procedure TFormLancaCombustivel.EditLtKeyPress(Sender: TObject; var Key: Char);
var media: real;
begin
//showmessage(key);
if key = #13 then
begin
  key:=#0;
  if DtMovAbast.DataSet.State = Dsinsert then
     begin  //
        Media:=kmrodado / StrtoFloat(editLt.Text);
        Label15.Caption:=FormatFloat('##0.00',Media);
         // Verifica entre m�dias
         if (Media >= StrtoFloat(DtVeiculo.DataSet.FieldByName('Mod_MedCombustivel').AsString)) and  (Media <= StrtoFloat(DtVeiculo.DataSet.FieldByName('Mod_MedComMax').AsString)) then
            Begin  //
                    if (StrToInt(EditKm.Text) > StrToInt(DtVeiculo.DataSet.FieldByName('TIn_Odo').AsString)) or (troca = 'S') then
                        begin //
                                DtIndiceRevisao.DataSet.FieldByName('TIN_ODo').AsString:=EditKm.Text;
                                DtIndiceRevisao.DataSet.FieldByName('TIN_UltCol').AsString:=Editdata.Text;
                        end;    //
               DtIndiceRevisao.DataSet.FieldByName('TIN_UltMed').AsString:=FormatFloat('##0.00',Media);
               EditOm.Enabled:=true;
               EditOm.SetFocus;
            End          //
            Else
              begin //
                 if MessageDlg('M�dia esta fora dos limites estabelecidos pelo controlador'+#13+#13+ FormatFloat('##0.00',Media) + #13+ 'Foi erro de Lan�amento ?',MtInformation,[mbYes,MbNo], 0) = Mrno then
                     begin  //
                    if(StrToInt(EditKm.Text) > StrToInt(DtVeiculo.DataSet.FieldByName('TIn_Odo').AsString)) or (troca = 'S') then
                        begin //
                                DtIndiceRevisao.DataSet.FieldByName('TIN_ODo').AsString:=EditKm.Text;
                                DtIndiceRevisao.DataSet.FieldByName('TIN_UltCol').AsString:=Editdata.Text;
                        end;    //
                         DtIndiceRevisao.DataSet.FieldByName('TIN_UltMed').AsString:=FormatFloat('##0.0',Media);
                         EditOm.Enabled:=true;
                         EditOm.SetFocus;
                      end else
                      begin          //
                         DtIndiceRevisao.DataSet.Cancel;
                         DBLookupComboBox1.SetFocus;
                      end;         //
              end;  //
           end;  //
         // Se tiver atualizando a tabela
     if DtMovAbast.DataSet.State = DsEdit then
        begin
           Media:=kmrodado / StrtoFloat(editLt.Text);
           Label15.Caption:=FormatFloat('##0.00',Media);
           if (Media >= StrtoFloat(DtVeiculo.DataSet.FieldByName('Mod_MedCombustivel').AsString)) and  (Media <= StrtoFloat(DtVeiculo.DataSet.FieldByName('Mod_MedComMax').AsString)) then
                 Begin  //
                    if (StrToInt(EditKm.Text) > StrToInt(DtVeiculo.DataSet.FieldByName('TIn_Odo').AsString)) or (troca = 'S') then
                        begin //
                                DtIndiceRevisao.DataSet.FieldByName('TIN_ODo').AsString:=EditKm.Text;
                                DtIndiceRevisao.DataSet.FieldByName('TIN_UltCol').AsString:=Editdata.Text;
                        end;    //
                        DtIndiceRevisao.DataSet.FieldByName('TIN_UltMed').AsString:=FormatFloat('##0.00',Media);
                        EditOm.Enabled:=true;
                        Editom.SetFocus;
                   End //
                   Else
                   begin
                      if MessageDlg('M�dia esta fora dos limites estabelecidos pelo controlador'+#13+#13+ FormatFloat('##0.00',Media) + #13+ 'Foi erro de Lan�amento ?',MtInformation,[mbYes,MbNo], 0) = Mrno then
                          begin  //
                              if (StrToInt(EditKm.Text) > StrToInt(DtVeiculo.DataSet.FieldByName('TIn_Odo').AsString)) or (troca = 'S') then
                                    begin  //
                                          DtIndiceRevisao.DataSet.FieldByName('TIN_ODo').AsString:=EditKm.Text;
                                          DtIndiceRevisao.DataSet.FieldByName('TIN_UltCol').AsString:=Editdata.Text;
                                    end;  //
                               DtIndiceRevisao.DataSet.FieldByName('TIN_UltMed').AsString:=FormatFloat('##0.00',Media);
                               EditOm.Enabled:=true;
                               Editom.SetFocus;
                          end
                          else
                          begin          //
                               DtIndiceRevisao.DataSet.Cancel;
                               DBLookupComboBox1.SetFocus;
                          end;  //
                    end;
        end;  // if DsEdit
end;    // key press
end;

procedure TFormLancaCombustivel.EditOMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 38 then
begin
  EditLt.SetFocus;

end;

end;

procedure TFormLancaCombustivel.EditOMKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  if DtVeiculo.DataSet.FieldByName('Vei_Sustentavel').AsString = '1' then
      begin
            EditArla.Enabled:=true;
            EditArla.SetFocus;
      end
      else
      begin
            BitBtn1.Enabled:=true;
            BitBtn1.SetFocus;
      end;

end;

end;

procedure TFormLancaCombustivel.FormActivate(Sender: TObject);
begin
//DtVeiculo.DataSet.Open;
DtPrd.DataSet.Open;
//DtMovAbast.DataSet.Open;
//DtIndiceRevisao.DataSet.Open;
EditData.Text:=DateTostr(now);
DBEdit1.Color:=$00C68F00;
end;

procedure TFormLancaCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtPrd.DataSet.Close;
DtVeiculo.DataSet.Close;
DtIndiceRevisao.DataSet.Close;
DtMovAbast.DataSet.Close;

Action:=cafree;

end;

procedure TFormLancaCombustivel.FormPaint(Sender: TObject);
begin
DBEdit1.Color:=$00C68F00;

end;

procedure TFormLancaCombustivel.FormShow(Sender: TObject);
begin
DBEdit1.Color:=$00C68F00;

end;

procedure TFormLancaCombustivel.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormLancaCombustivel.SpeedButton1Click(Sender: TObject);
begin
Editlt.Text:='';
EditKm.Text:='';
EditDataAnterior.Caption:='';
GroupBox3.Visible:=false;
DtMovAbast.DataSet.Cancel;
//DtVeiculo.DataSet.Close;
//DtVeiculo.DataSet.Open;
//DtVeiculo.DataSet.refresh;
EditOm.Text:='0';
DBLookupComboBox1.TEXT:='';

GroupBox1.Enabled:=False;
BitBtn1.Enabled:=false;

end;

procedure TFormLancaCombustivel.SpeedButton2Click(Sender: TObject);
begin
      Close;
end;

procedure TFormLancaCombustivel.SpeedButton3Click(Sender: TObject);
//var KmDigitado:integer;
//Dg:string;
begin
Kmanterior:=StrtoInt(InputBox('Altera��o de Odometro','Digite o Novo Odometro: ',''));
      try
            Troca:='S';
      except
           ShowMessage('Valor Digitado n�o � valido');
           Troca:='';

      end;

end;

end.
