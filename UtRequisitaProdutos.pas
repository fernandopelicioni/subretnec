unit UtRequisitaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExExtCtrls,
  JvExtComponent, JvCaptionPanel, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, System.ImageList,
  Vcl.ImgList, cxMemo, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, dxWheelPicker, dxGDIPlusClasses;

type
  TFormRequisitaProdutos = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    QrVei: TFDQuery;
    DtVei: TDataSource;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    JvCaptionPanel2: TJvCaptionPanel;
    StringGrid1: TStringGrid;
    JvCaptionPanel4: TJvCaptionPanel;
    StringGrid3: TStringGrid;
    Panel3: TPanel;
    PnTipoOS: TJvCaptionPanel;
    PnVei: TJvCaptionPanel;
    DBText5: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    EditCcusto: TEdit;
    JvCaptionPanel6: TJvCaptionPanel;
    StringGrid4: TStringGrid;
    QrPro: TFDQuery;
    DtPro: TDataSource;
    PnPro: TJvCaptionPanel;
    DBText2: TDBText;
    Label2: TLabel;
    EditResp: TEdit;
    PnPrd: TJvCaptionPanel;
    EditPrd: TEdit;
    EditOs: TcxComboBox;
    QrPrd: TFDQuery;
    DtPrd: TDataSource;
    Button1: TButton;
    cxImageList1: TcxImageList;
    EditHis: TcxMemo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EditQtd: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText4: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    QrConsumo: TFDQuery;
    DtConsumo: TDataSource;
    DtRevisao: TDataSource;
    QrRevisao: TFDQuery;
    DtSocorro: TDataSource;
    QrSocorro: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    PnSalvar: TJvCaptionPanel;
    Button2: TButton;
    BtNovo: TButton;
    Button4: TButton;
    Button5: TButton;
    PnColaborador: TJvCaptionPanel;
    EditSenha: TEdit;
    QrUsu: TFDQuery;
    DtUsu: TDataSource;
    DBText3: TDBText;
    procedure EditCCustoExit(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure EditRespKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditCcustoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrdKeyPress(Sender: TObject; var Key: Char);
    procedure EditQtdKeyPress(Sender: TObject; var Key: Char);
    procedure LoadDefeitos;
    procedure BtNovoClick(Sender: TObject);
    procedure FechaConsultas;
    procedure LoadRevisao;
    Procedure LoadProdutos;
    procedure Button5Click(Sender: TObject);
    procedure EditOsKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure EditQtdExit(Sender: TObject);
    function ConfereSaldo(saldo:integer; qtd:integer): boolean;
    procedure EditSenhaKeyPress(Sender: TObject; var Key: Char);
    function TestaSenha(pass:string) : boolean;
    procedure EditPrdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
  public
    { Public declarations }
    VdataAtual:Tdate;
    USUARIOAUTORIZA,VPrdAtual, VCodCCusto:String;


  end;

var
  FormRequisitaProdutos: TFormRequisitaProdutos;
  //Requisicao: TRequisicao;
implementation

{$R *.dfm}

uses UnitServerPai,  ClasseRequisicao, UtRequisitaProdutosBusca;
function TFormRequisitaProdutos.TestaSenha(pass: string) : boolean;
begin
        with QrUsu do
            begin
                  close;
                  ParamByName('coligada').Value:=pai.VCOLIGADA;
                  ParamByName('pass').Value:=pass;
                  open;
                  if not eof then
                  BEGIN
                        USUARIOAUTORIZA:=FIELDBYNAME('TUB_ID').AsString;
                        result:=true
                  END
                  else
                  result:=false;
                  close;

            end;


end;
function TFormRequisitaProdutos.ConfereSaldo(saldo: Integer; qtd:integer): boolean;
begin
//
      if qtd > saldo then
          result:=true
          else
          result:=false;


end;

procedure TFormRequisitaProdutos.FechaConsultas;
begin
         EditCCusto.Text:='';
         EditSenha.Text:='';
         EditResp.Text:='';
         EditHis.Text:='';
         EditPrd.Text:='';
         VprdAtual:='';
         PnVei.Enabled:=true;
         QrPro.Close;
         QrPrd.Close;
         QrSocorro.Close;
         QrVei.Close;
         QrConsumo.Close;
         QrRevisao.Close;

end;

Procedure TFormRequisitaProdutos.LoadProdutos;
begin
              with QrConsumo do
                 begin
                       close;
                               ParamByName('CodCCusto').AsString:=VCodCCusto;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;
                 end;

end;

procedure TformRequisitaProdutos.LoadRevisao;
begin
            with QrRevisao do
                 begin
                       close;
                               ParamByName('veiculo').AsString:=editCCusto.text;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;
                 end;

end;

procedure TFormRequisitaProdutos.Button1Click(Sender: TObject);
begin
          Application.CreateForm(TFormRequisitaProdutosBusca,FormRequisitaProdutosBusca);
          FormRequisitaProdutosBusca.busca:='1';
          FormRequisitaProdutosBusca.showmodal;
          EditPrd.Text:=VPrdAtual;
          Button5.Click;
          //EditPrd.SetFocus;

//          Application.CreateForm(TFormAplicaBuscaPrd,FormAplicaBuscaPrd);
//          FormAplicaBuscaPrd.BUSCA:='1';
//          FormAplicaBuscaPrd.ShowModal;

end;

procedure TFormRequisitaProdutos.LoadDefeitos;
begin
            with QrSocorro do
                 begin
                       close;
                               ParamByName('veiculo').AsString:=editCCusto.text;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;


                 end;
end;

procedure TFormRequisitaProdutos.Button2Click(Sender: TObject);
var Req : TRequisicao;
begin
          if TestaSenha(editsenha.Text) = FALSE then
          begin
                 MessageBox(Handle,'Senha informada n�o foi encontrada, sem autoriza��o n�o ser� poss�vel concluir a opera��o!','Senha incorreta!',Mb_IconInformation + Mb_Ok);
                 EditSenha.Text:='';
                 EditSenha.SetFocus;
                 abort;
          end;

        if ConfereSaldo(DtPrd.DataSet.FieldByName('saldofisico2').AsInteger,StrToInt(EditQtd.Text)) then
            begin
                 MessageBox(Handle,'Saldo do produto zerado ou � menor que a quantidade de retirada, o setor de compras ser� acionado!','Saldo insuficiente!',Mb_IconInformation + Mb_Ok);
            end;

         try
                 Req.Create;
                 Req.CARREGADADOS(DateToStr(VdataAtual),EditCcusto.Text,'A',EditPrd.Text,EditQtd.text,IntToStr(Pai.Vcoligada),EditHis.Text,IntToStr((EditOs.ItemIndex+1)),DateTimetostr(now),Pai.Vusuario,VCodCCusto,EditResp.Text,USUARIOAUTORIZA);
                 BtNovo.Click;
         except
                 ShowMessage('Verifique o preenchimento dos campos e tente novamente');
                 EditCcusto.SetFocus;
         end;


end;

procedure TFormRequisitaProdutos.BtNovoClick(Sender: TObject);
begin
       FechaConsultas;
       EditQtd.Text:='1';
       EditCcusto.SetFocus;
end;

procedure TFormRequisitaProdutos.Button4Click(Sender: TObject);
begin
      Close;
end;

procedure TFormRequisitaProdutos.Button5Click(Sender: TObject);
begin
                    With QrPrd do
                         begin
                               close;
                               ParamByName('IdPrd').AsString:=EditPrd.text;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;
                               if eof then
                                   begin
                                        ShowMessage('Produto n�o encontrado!');
                                        abort;
                                        // abre proximo panel
                                        // abre consultas
                                   end;

                                  // LoadDefeitos;
                                   EditQtd.Text:='';
                                   EditQtd.SetFocus;
                         end;

end;

procedure TFormRequisitaProdutos.EditPrdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = vK_f2 then
         begin
              Button1Click(nil);
         end;

end;

procedure TFormRequisitaProdutos.EditPrdKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
         begin
              key:=#0;
              Button5.Click;
         end;


end;

procedure TFormRequisitaProdutos.EditQtdExit(Sender: TObject);
begin
if EditQtd.Text='0' then EditQtd.Text:='1';

end;

procedure TFormRequisitaProdutos.EditQtdKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
         begin
              key:=#0;
              if EditQtd.Text='' then
                  editQtd.Text:='1';
              PnTipoOS.Enabled:=true;
              EditOs.SetFocus;
         end;

end;

procedure TFormRequisitaProdutos.EditCCustoExit(Sender: TObject);
begin
      With QrVei do
           begin
                 close;
                 ParamByName('veiculo').AsString:=editCCusto.text;
                 ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                 open;
                 if eof then
                 ///

           end;
end;

procedure TFormRequisitaProdutos.EditCcustoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
         begin
              key:=#0;
                    With QrVei do
                         begin
                               close;
                               ParamByName('veiculo').AsString:=editCCusto.text;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;
                               if eof then
                                   begin
                                        ShowMessage('Ve�culo n�o existe!');
                                        abort;
                                        // abre proximo panel
                                        // abre consultas
                                   end;
                                   VCodCCusto:=FieldbyName('vei_centrocusto').AsString;
                                   //ShowMessage(Vcodccusto);
                                   PnPro.Enabled:=true;
                                   LoadProdutos;
                                   LoadRevisao;
                                   LoadDefeitos;
                                   PnVei.enabled:=false;
                                   EditResp.Text:='';
                                   EditResp.SetFocus;
                         end;
         end;

end;

procedure TFormRequisitaProdutos.EditOsKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
         begin
              key:=#0;
              EditHis.SetFocus;
         end;

end;

procedure TFormRequisitaProdutos.EditRespKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
         begin
              key:=#0;
                    With QrPro do
                         begin
                               close;
                               ParamByName('chapa').AsString:=EditResp.text;
                               ParamByName('coligada').AsInteger:=Pai.VCOLIGADA;
                               open;
                               if eof then
                                   begin
                                        ShowMessage('N�o encontre este colaborador!');
                                        abort;
                                        PnPrd.Enabled:=false;

                                        // abre consultas
                                   end;
                                   PnPrd.Enabled:=true;
                                   EditPrd.Text:='';
                                   EditPrd.SetFocus;
                         end;
         end;

end;

procedure TFormRequisitaProdutos.EditSenhaKeyPress(Sender: TObject;
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

procedure TFormRequisitaProdutos.FormShow(Sender: TObject);
begin
   VdataAtual:=(now);
   Panel2.Caption:='            Requisi��o de produtos - '+DateToStr(VdataAtual);
end;

procedure TFormRequisitaProdutos.Image5Click(Sender: TObject);
begin
close;
end;

end.
