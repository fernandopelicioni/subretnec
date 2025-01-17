{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit UnitPneuEnviaReforma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,  Grids, DBGrids,
  XPMan, Buttons, ActnMan, ActnColorMaps,
  ComCtrls, DBCGrids;

type
  TFormPneuEnviaReforma = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    EditReformadora: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    Label9: TLabel;
    DtReformadora: TDataSource;
    DtColigada: TDataSource;
    DtPnRef: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    DBCheckBox1: TDBCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DtMovRef: TDataSource;
    DBText6: TDBText;
    procedure EditDataKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditReformadoraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBCtrlGrid1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
     numeropneu:string;
    { Public declarations }
  end;

var
  FormPneuEnviaReforma: TFormPneuEnviaReforma;
  x:integer;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;




{$R *.dfm}

procedure TFormPneuEnviaReforma.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFormPneuEnviaReforma.DBCtrlGrid1Exit(Sender: TObject);
begin
if DtPnRef.DataSet.State = DsEdit then
          DtPnRef.DataSet.post;

end;

procedure TFormPneuEnviaReforma.DBGrid1Exit(Sender: TObject);
begin
if DtPnRef.DataSet.State = DsEdit then
          DtPnRef.DataSet.post;

end;

procedure TFormPneuEnviaReforma.EditDataKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
    begin
    key:=#0;

    end;

end;

procedure TFormPneuEnviaReforma.FormShow(Sender: TObject);
begin
AlphaBlendValue := 210;
AlphaBlend := True;

end;

procedure TFormPneuEnviaReforma.SpeedButton1Click(Sender: TObject);
var x:word;
begin
     with pai.QrPneusCompletos do
           begin
              Close;
               Sql.Clear;
                Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnLocal E');
                 Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                  Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                   Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                    Sql.Add('and E.TPl_Cod = A.Tcp_Local');
                     Sql.Add('And (A.TCP_Local =  '+ QuotedStr('F') + ' or A.Tcp_Local = ' + QuotedStr('C'));
                      Sql.Add(') And A.Tcp_CpLivre1 = ' + QuotedStr('S'));
                       Sql.Add('And Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                        Open;
                        if not eof then
                              begin
                                       First;
                                       while not eof do
                                            begin
                                                  DtMovRef.DataSet.Open;
                                                   DtMovRef.DataSet.Insert;
                                                    DtMovRef.DataSet.FieldByName('RMov_Pneu').AsString:= DtPnRef.DataSet.FieldByName('Tcp_Cod').AsString;
                                                     DtMovRef.DataSet.FieldByName('RMov_Vida').AsString:= DtPnRef.DataSet.FieldByName('Tcp_Vida').AsString;
                                                     DtMovRef.DataSet.FieldByName('RMov_Coligada').AsString:= DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                                                      DtMovRef.DataSet.FieldByName('RMov_Ref').AsString:= EditReformadora.KeyValue;
                                                       DtMovRef.DataSet.FieldByName('RMov_DtEnv').AsString:= DateToStr(DateTimePicker1.Date);
                                                        DtMovRef.DataSet.FieldByName('RMov_Fog').AsString:= DtPnRef.DataSet.FieldByName('Tcp_Fog').AsString;
                                                         DtPnRef.DataSet.Edit;
                                                          DtPnRef.DataSet.FieldByName('Tcp_Local').AsString:='A';
                                                           DtPnRef.DataSet.POST;
                                                            DtMovRef.DataSet.Post;
                                                             Inc(x);
                                                              NExt;
                                            end;
                                       ShowMessage('Voc� enviou : ' + IntToStr(X) + ' para a Reformadora, Relat�rio ser� impresso a seguir!');
                                        Relatorio.QrEnvPnRef.Parameters.ParamByName('Coligada').Value:=DtColigada.DataSet.FieldByName('cod_coligada').AsString;
                                        Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                        Relatorio.Projeto.SetParam('TITULORELATORIO',DtReformadora.DataSet.FieldByName('TPR_DES').AsString);
                                        Relatorio.Projeto.ExecuteReport('RvEnvioPneuReforma');
                                        Relatorio.Projeto.Close;


                              end
                              else
                              begin
                                        ShowMessage('N�o existe pneus para serem enviados');
                              end;


           end;
     Close;
end;

procedure TFormPneuEnviaReforma.FormActivate(Sender: TObject);
begin
        with Pai.QrTemp do
              begin
                    Active := False;
                    Sql.Add('update tb_pnPneus set TCP_CPLIVRE1 = '+QUOTEDSTR('N')+' where TCP_CPLIVRE1 = ' + QUOTEDSTR('S')+ ' and Tcp_Coligada = ' + QuotedStr(DtColigada.dataset.fieldByName('Cod_coligada').AsString));
                    ExecSql;
                    Close;
              end;
DtReformadora.DataSet.Open;
DateTimePicker1.Date:=now;
     with pai.QrPneusCompletos do
           begin
                 Close;
                  Sql.Clear;
                   Sql.Add('Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_PnVida C, Tb_PnLocal E');
                    Sql.Add('Where B.TPM_Cod = A.TCP_marca');
                     Sql.Add('and C.Tpv_Cod = A.TCP_Vida');
                      Sql.Add('and D.TPM_Cod = A.Tcp_Medida');
                       Sql.Add('and E.TPl_Cod = A.Tcp_Local');
                        Sql.Add('And (A.TCP_Local =  '+ QuotedStr('F') + ' or A.Tcp_Local = ' + QuotedStr('C'));
                         Sql.Add(') And Tcp_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
//                         memo1.text:=sql.Text;
                         Open;
           end;
end;

procedure TFormPneuEnviaReforma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DtReformadora.DataSet.Close;
        DtPnRef.DataSet.Close;
         DtMovRef.DataSet.Close;
          action:=cafree;
end;

procedure TFormPneuEnviaReforma.EditReformadoraKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
end;

procedure TFormPneuEnviaReforma.BitBtn1Click(Sender: TObject);
begin
x:=0;
End;

end.
