unit UnitLancaAssociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DBCtrls, RibbonLunaStyleActnCtrls, Ribbon,
  Grids, DBGrids, Buttons, ScreenTips, ActnList, PlatformDefaultStyleActnCtrls,
  ActnMan, ComCtrls;

type
  TFormLancaAssociacao = class(TForm)
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    GroupBox2: TGroupBox;
    EditData: TDateTimePicker;
    Label1: TLabel;
    EditKm: TEdit;
    Label2: TLabel;
    DtBaseRevisao: TDataSource;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    EditRevisao: TDBLookupComboBox;
    DtServCont: TDataSource;
    Label3: TLabel;
    DtSerConCar: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    EditIdentificador: TEdit;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditKmKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure EditRevisaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataExit(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancaAssociacao: TFormLancaAssociacao;

implementation

uses UnitCadastraAssociacao, UnitPai, UnitServerPai;

{$R *.dfm}

procedure TFormLancaAssociacao.BitBtn1Click(Sender: TObject);
begin
if messageDlg('Confirme a Gravação dos dados Informados',MtConfirmation,[mbyes,mbno],0)= mryes  then
   begin
         DtBaseRevisao.DataSet.FieldByName('Bre_Dat').AsString:=DateToStr(EditData.Date);
         DtBaseRevisao.DataSet.FieldByName('Bre_Odo').AsString:=EditKm.Text;
         DtBaseRevisao.DataSet.FieldByName('Bre_Rod').AsString:=DtServCont.DataSet.FieldByName('Sco_Validade').AsString;
         DtBaseRevisao.DataSet.FieldByName('Bre_Identificador').AsString:=EditIdentificador.Text;
         DtBaseRevisao.DataSet.Post;
         FormCadastraAssociacao.BitBtn1.Click;
         Close;
   end;
end;

procedure TFormLancaAssociacao.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  EditData.SetFocus;

end;

end;

procedure TFormLancaAssociacao.EditDataExit(Sender: TObject);
begin
Editkm.Text:=FormCadastraAssociacao.DtVeiculos.DataSet.FieldByName('Tin_Odo').AsString;

end;

procedure TFormLancaAssociacao.EditDataKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  EditKm.SetFocus;

end;
end;

procedure TFormLancaAssociacao.EditKmKeyPress(Sender: TObject; var Key: Char);
begin
//if Not (Key in['0'..'9', #8, #44, #46]) then
//     Key := #0;
if key = #13 then
begin
  key:=#0;
  BitBtn1.SetFocus;

end;

end;

procedure TFormLancaAssociacao.EditRevisaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
begin
  key:=#0;
  DBLookupComboBox1.SetFocus;

end;

end;

procedure TFormLancaAssociacao.FormActivate(Sender: TObject);
begin
Editdata.Date:=now;
DtServCont.DataSet.Open;
DtSerConCar.DataSet.open;
end;

procedure TFormLancaAssociacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSerConCar.DataSet.close;
DtServCont.DataSet.Close;
DtBaseRevisao.DataSet.Close;

Action:=cafree;
end;

procedure TFormLancaAssociacao.SpeedButton1Click(Sender: TObject);
begin
   FormlancaAssociacao.DtBaseRevisao.DataSet.Cancel;
   Close;

end;

procedure TFormLancaAssociacao.SpeedButton2Click(Sender: TObject);
begin
   FormlancaAssociacao.DtBaseRevisao.DataSet.Cancel;
   Close;

end;

end.
