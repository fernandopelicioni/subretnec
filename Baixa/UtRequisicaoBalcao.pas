unit UtRequisicaoBalcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Vcl.Grids, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList, cxGraphics, Vcl.DBCtrls;

type
  TFormRequisicaoBalcao = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Panel1: TPanel;
    QrRequisicoes: TFDQuery;
    DtRequisicoes: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Button2: TButton;
    Button4: TButton;
    cxImageList1: TcxImageList;
    EditUsuario: TLabel;
    Q: TFDQuery;
    Timer1: TTimer;
    EditSenha: TEdit;
    Label1: TLabel;
    FDQuery1: TFDQuery;
    EditData: TEdit;
    Label2: TLabel;
    DtUsu: TDataSource;
    QrUsu: TFDQuery;
    DBText3: TDBText;
    procedure Image5Click(Sender: TObject);

    procedure atualizareq;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FechaRequisicao(idreq:integer; idmov:integer);
    PROCEDURE PASSAPARAMETROS(CODIGOPRD:STRING;QTD:STRING; CODCCUSTO:STRING;RESP:STRING);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    function TrataSenha(d:string): boolean;
    procedure StringGrid1Enter(Sender: TObject);
    function TestaSaldo(saldo:integer; qtd:integer): boolean;
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    IDREQATUAL:INTEGER;
    USUARIOBAIXA:STRING;
    //IdReq,idmov:integer;
  end;

var
  FormRequisicaoBalcao: TFormRequisicaoBalcao;

implementation

{$R *.dfm}

uses UnitServerPai, UtRequisicaoBaixa;
function TFormRequisicaoBalcao.TestaSaldo(saldo: Integer; qtd:integer): boolean;
begin
   //
         if qtd <= saldo then
            result:=true
            else
            result:=false;

end;

function TFormRequisicaoBalcao.TrataSenha(d: string): boolean;
begin
      //
        with QrUsu do
            begin
                  close;
                  ParamByName('coligada').Value:=pai.VCOLIGADA;
                  ParamByName('pass').Value:=d;
                  open;
                  if not eof then
                  BEGIN
                        USUARIOBAIXA:=FieldByName('TUB_ID').AsString;
                        result:=true
                  END
                  else
                  result:=false;
                  close;
            end;


end;



PROCEDURE  TFormRequisicaoBalcao.PASSAPARAMETROS(CODIGOPRD: string; QTD: string; CODCCUSTO: string; RESP: string);
begin
  //
       APPLICATION.CreateForm(tFormRequisicaoBaixa,FormRequisicaoBaixa);

       FormRequisicaoBaixa.VdataAtual:=StrToDate(EditData.Text);
       FormRequisicaoBaixa.EDitPrd.Text:=CODIGOPRD;
       FormRequisicaoBaixa.EXEC_PRD;

       FormRequisicaoBaixa.EditQt.Text:=QTD;
       FormRequisicaoBaixa.EXEC_QTD;

       FormRequisicaoBaixa.EditCCusto.Text:=CODCCUSTO;
       FormRequisicaoBaixa.EXEC_VEI;

       FormRequisicaoBaixa.EditPro.Text:=RESP;

       FormRequisicaoBaixa.EXEC_GRAVA;
       FechaRequisicao(IDREQATUAL,PAI.VIDMOVATUAL);

end;

procedure TFormRequisicaoBalcao.StringGrid1DblClick(Sender: TObject);
begin
     EditSenha.SetFocus;
end;

procedure TFormRequisicaoBalcao.StringGrid1Enter(Sender: TObject);
begin
    EditSenha.Text:='';
end;

procedure TFormRequisicaoBalcao.Timer1Timer(Sender: TObject);
begin
        atualizareq;
end;

procedure TFormRequisicaoBalcao.Button2Click(Sender: TObject);
var
VQTD, VCCUSTO, VCODIGO, VRESP, VUSUBAIXA:STRING;
begin


       if TrataSenha(EditSenha.Text) then
       begin
             if TestaSaldo(DtRequisicoes.DataSet.FieldByName('Saldo').AsInteger,DtRequisicoes.DataSet.FieldByName('Qtd').AsInteger ) then
                 begin
                             VQTD:=DtRequisicoes.DataSet.FieldByName('QTD').AsSTRING;
                             VCCUSTO:=DtRequisicoes.DataSet.FieldByName('MRQ_vei').AsSTRING;
                             VCODIGO:=DtRequisicoes.DataSet.FieldByName('CODIGOPRD').AsSTRING;
                             VRESP:=DtRequisicoes.DataSet.FieldByName('CODVEN').AsSTRING;

                             IDREQATUAL:= DtRequisicoes.DataSet.FieldByName('MRQ_id').AsInteger;
                             PASSAPARAMETROS(VCODIGO,VQTD,VCCUSTO,VRESP);
                 end
                 else
                    MessageBox(Handle,'Saldo do produto zerado ou � menor que a quantidade de retirada, informe ao setor de compras!','Erro de saldo',Mb_IconInformation + Mb_Ok);

       end
       else
        MessageBox(Handle,'Senha informada n�o confere, produto n�o foi baixado!','Erro de senha',Mb_IconInformation + Mb_Ok);
        atualizareq;
end;

procedure TFormRequisicaoBalcao.EditSenhaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
     begin
          key:=#0;
          with QrUsu do
              begin
                  close;
                  ParamByName('coligada').Value:=pai.VCOLIGADA;
                  ParamByName('pass').Value:=EditSenha.Text;
                  open;
              end;
     end;


end;

procedure TFormRequisicaoBalcao.FechaRequisicao(idreq:integer; idmov:integer);
begin
  // //
        with q do
             begin
                    Close;
                    Sql.Clear;
                    sql.Add('update TMOV_Requisicao set MRQ_idmov=:idmov, MRQ_status=''F'', MRQ_USUARIOBAIXA=:IDUSUBX, MRQ_DATAHORABAIXA=GETDATE() where mrq_id=:idreq');
                    ParamByName('idmov').value:=idmov;
                    ParamByName('idreq').value:=idreq;
                    ParamByName('idUSUBX').value:=USUARIOBAIXA;
                    execsql;
                    Close;

             end;


end;

procedure TFormRequisicaoBalcao.atualizareq;
begin
             with QrRequisicoes do
                 begin
                        close;
                        ParamByName('coligada').value:=pai.vcoligada;
                        open;
                 end;


end;

procedure TFormRequisicaoBalcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
         QrRequisicoes.Close;
         Action:=cafree;
end;

procedure TFormRequisicaoBalcao.FormShow(Sender: TObject);
begin
      Panel2.Caption:='                        Baixa em requisi��es de produtos - ' + DateToStr(now);
      EditUsuario.Caption:='Usu�rio: ' + pai.VUSUARIO;
      EditData.Text:= DateToStr(now);
      Atualizareq;
end;

procedure TFormRequisicaoBalcao.Image1Click(Sender: TObject);
begin
      AtualizaReq;
end;

procedure TFormRequisicaoBalcao.Image5Click(Sender: TObject);
begin
close;
end;

end.
