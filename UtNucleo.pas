unit UtNucleo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Styles, Vcl.Themes,
  dxGDIPlusClasses;

type
  TFormNucleo = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Image13: TImage;
    Label12: TLabel;
    BtAgenda: TImage;
    Image14: TImage;
    Label14: TLabel;
    BtFichaFuncional: TImage;
    Label15: TLabel;
    Label19: TLabel;
    Image30: TImage;
    Label33: TLabel;
    TabSheet1: TTabSheet;
    TabPonto: TTabSheet;
    Image42: TImage;
    Label45: TLabel;
    TabSheet3: TTabSheet;
    Image4: TImage;
    Label3: TLabel;
    Image19: TImage;
    Label21: TLabel;
    Image21: TImage;
    Label24: TLabel;
    Image22: TImage;
    Label25: TLabel;
    Label26: TLabel;
    Image23: TImage;
    Image24: TImage;
    Label27: TLabel;
    Label32: TLabel;
    Image29: TImage;
    Label34: TLabel;
    Image31: TImage;
    Image37: TImage;
    Label40: TLabel;
    Image39: TImage;
    Label42: TLabel;
    Image44: TImage;
    Label49: TLabel;
    TabSheet4: TTabSheet;
    Image2: TImage;
    Label2: TLabel;
    Image1: TImage;
    Label8: TLabel;
    Label41: TLabel;
    Image38: TImage;
    ImageList1: TImageList;
    PanelAvisos: TPanel;
    Image45: TImage;
    Label18: TLabel;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image6: TImage;
    Label5: TLabel;
    Image7: TImage;
    Label6: TLabel;
    Image8: TImage;
    Label7: TLabel;
    PageCadastros: TPageControl;
    TabSheet8: TTabSheet;
    Label52: TLabel;
    Label53: TLabel;
    TabSheet9: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet7: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Image9: TImage;
    Label35: TLabel;
    Label36: TLabel;
    Image10: TImage;
    Label37: TLabel;
    Label38: TLabel;
    Image11: TImage;
    Image12: TImage;
    Label39: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Image16: TImage;
    Label44: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Image17: TImage;
    Label60: TLabel;
    Image25: TImage;
    Label61: TLabel;
    Image32: TImage;
    Label62: TLabel;
    Image33: TImage;
    Label63: TLabel;
    Label64: TLabel;
    Image34: TImage;
    Label66: TLabel;
    Image35: TImage;
    Label67: TLabel;
    Label68: TLabel;
    Image36: TImage;
    Label69: TLabel;
    Image41: TImage;
    Label70: TLabel;
    Image46: TImage;
    Label71: TLabel;
    Image47: TImage;
    Label72: TLabel;
    Image48: TImage;
    Image43: TImage;
    Label50: TLabel;
    Image15: TImage;
    Label16: TLabel;
    Image18: TImage;
    Label20: TLabel;
    Label23: TLabel;
    Memo1: TMemo;
    Label29: TLabel;
    Image20: TImage;
    TabManutencao: TTabSheet;
    Image26: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Image27: TImage;
    Label43: TLabel;
    Image28: TImage;
    Label65: TLabel;
    Image40: TImage;
    Button1: TButton;
    Label74: TLabel;
    Image50: TImage;
    Label76: TLabel;
    Image51: TImage;
    Label73: TLabel;
    Image49: TImage;
    Label75: TLabel;
    Image52: TImage;
    Label77: TLabel;
    Image53: TImage;
    Label78: TLabel;
    Label79: TLabel;
    Image84: TImage;
    Image54: TImage;
    Label80: TLabel;
    Image55: TImage;
    Label81: TLabel;
    procedure Image5Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure BtAgendaClick(Sender: TObject);
    procedure BtFichaFuncionalClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label52Click(Sender: TObject);
    procedure Label53Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label36Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure Label47Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure Label51Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Label57Click(Sender: TObject);
    procedure Label58Click(Sender: TObject);
    procedure Label56Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image33Click(Sender: TObject);
    procedure Image32Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Label63Click(Sender: TObject);
    procedure Label64Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image2Click(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure Image35Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image48Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure AjustaClick(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image49Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image84Click(Sender: TObject);
    procedure Image55Click(Sender: TObject);
  private
    { Private declarations }
  public
    usuario: string;
  versao : string;
  nivel  : integer;

    { Public declarations }
  end;

var
  FormNucleo: TFormNucleo;

implementation

{$R *.dfm}

uses UnitAssociaFichaContVei, UnitPneuMovimento, Principal, UnitIniciaSistema,
  UnitServerPai, UnitConsultaPMC, UnitTerminalConsulta, UnitCadastraAssociacao,
  UnitlancaCombustivel, UnitOsLista, UnitAbreCaixaBalcao, UnitIntegraPrateleira,
  UnitLancaServicosFixos, UnitCadastraServCont, UnitSerConCar, UnitLancaIteRec,
  UnitLancaItemFicha, UnitCadastraVeiculo, UnitCadastraModeloVeiculo,
  UnitcadastraCarroceria, UnitLancaPadraoVeiculo, UnitLancaSetorMan,
  UnitCadastraGrupos, UnitLancaAviso, UnitPneuEnviaReforma, UnitPneuInfo,
  UnitPneuRetornoReforma, UnitPneuCadastroMarca, UnitPneuCadastroDesenho,
  UnitPneuCadastroFornecedor, UnitPneuLocal, UnitPneuMotivoRetirada,
  UnitPneuCadastroMedida, UnitPneuCadastroReformadora,
  UnitPneuCadastroDesenhoRef, UnitPneuCadastroBorracha, UnitPneuCadastro,
  UnitpneuCentralRelatorio, UnitPneuGeraGrafico, UnitRelatorioAbast,
  UnitRelatorioSerVen, UnitCentralComponentes, UnitRelatorioReclamaVeiculo,
  UnitRelatorioMapa, UnitGerencial, UnitRelatorioVeiculo, UnitRelTotvs,
  UnitRelatorioCustoKm, UnitIndiceSocorro, UnitMontaRelGrupo,
  UnitGraficoAcompanhamentoTipo, UnitRelatorioIndiceRecl, UnitRelatorio,
  UnitRelEmitePrateleira, UtRltPneuDecisao, UtEntradaSaidaSubGrupo,
  UtCadastroProdutos, UtCroqui, UtSobre, UtFormRelatorioCurvaSaidaPrd, UtEstilo,
  UnitlancaIntegracao, UnitIndiceAltera, UtCi, UtRelSocorro, UtRelOcoVeiculos,
  UtSubstituicaoVeiculos, UtRevisaoHistorico, UtNucleoRelatorio,
  UtAnaliseOrcamento1, UtAtualizaBaseRevisaoComKm, UtRequisitaProdutos,
  UtrelDefRecleSoc, UtRequisicaoBalcao, UtTotvsInventario, UtAvariaMov,
  UtRelatorio, UtRelIndicadorRevisaoKm;

procedure TFormNucleo.BtAgendaClick(Sender: TObject);
begin
Application.CreateForm(TFormConsultaPMC,FormConsultaPMC);
FormConsultaPMC.ShowModal;

end;

procedure TFormNucleo.BtFichaFuncionalClick(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
      TStyleManager.TrySetStyle('Windows');
      Application.CreateForm(TFormTerminalConsulta,FormTerminalConsulta);
      Hide;
Screen.Cursor:=CrDefault;
      FormTerminalConsulta.ShowModal;
      ShowModal;

end;

procedure TFormNucleo.Button1Click(Sender: TObject);
begin
     Application.CreateForm(TFormAtualizaBaseRevisaoComKm,FormAtualizaBaseRevisaoComKm);
     FormAtualizaBaseRevisaoComKm.showmodal;


end;

procedure TFormNucleo.AjustaClick(Sender: TObject);
begin
     Application.CreateForm(TFormNucleoRelatorios,FormNucleoRelatorios);
     FormNucleoRelatorios.showmodal;
end;

procedure TFormNucleo.FormActivate(Sender: TObject);
begin
          panel2.Caption:='Center Bus - Oficina Inteligente - Genoma Software - '+ FormIniciaSistema.editversao.Caption;
          if pai.QrColigadas.Active = true then
                 Panel3.Caption:='  Logado em : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString + '   |   Usu�rio : ' + Pai.QrUsuarios.FieldByName('usu_Nome').AsString
                 else
                 Panel3.Caption:=' Deslogado';

end;

procedure TFormNucleo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          Pai.ConectCorpore.Close;
          pai.ConctPai.Close;
          Pai.FDConectGenoma.Close;
          Pai.FdCorpore.Close;
          Application.Terminate;
end;

procedure TFormNucleo.FormCreate(Sender: TObject);
begin
          PageControl1.ActivePageIndex:=0;
//          pai.FDConectGenoma.Open;
//          Pai.FdCorpore.Open;
          Application.CreateForm(TFormIniciaSistema,FormIniciaSistema);
          Application.CreateForm(TRelatorio,Relatorio);
          FormIniciaSistema.Show;
end;

procedure TFormNucleo.FormShow(Sender: TObject);
begin
//  PageControl1.ActivePageIndex:=0;
  //      if pai.QrUsuarios.active = True then
//                Panel3.Caption:= 'Usu�rio : ' + Pai.QrUsuarios.FieldByName('Usu_Nome').AsString + ' - ' + FormIniciaSistema.editversao.Caption + ' | Coligada : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;

end;

procedure TFormNucleo.Image10Click(Sender: TObject);
begin
    Application.CreateForm(TFormPneuInfo,FormPneuInfo);
    FormPneuInfo.ShowModal;

end;

procedure TFormNucleo.Image11Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuEnviaReforma,FormPneuEnviaReforma);
    FormPneuEnviaReforma.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image12Click(Sender: TObject);
begin
        if nivel > 9 then
            begin
                  Application.CreateForm(TFormPneusRetornoReforma,FormPneusRetornoReforma);
                  FormPneusRetornoReforma.ShowModal;
            end
            Else
                  MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image13Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormAssociaFichaContVei,FormAssociaFichaContVei);
    FormAssociaFichaContVei.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image14Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuMovimento,FormPneuMovimento);
    FormPneuMovimento.showmodal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image15Click(Sender: TObject);
begin
    Application.CreateForm(TFormStilo,FormStilo);
    FormStilo.ShowModal;


end;

procedure TFormNucleo.Image16Click(Sender: TObject);
begin
    if (nivel = 10) or (nivel > 21) then
          begin
                Application.CreateForm(TFormPneuCadastro,FormPneuCadastro);
                FormPneuCadastro.ShowModal;
          end
          Else
                MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image17Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormPneuCentralRelatorio,FormPneuCentralRelatorio);
    FormPneuCentralRelatorio.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image18Click(Sender: TObject);
begin
if nivel > 39 then
    begin
    Application.CreateForm(TFormParametros,FormParametros);
    FormParametros.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image19Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormRelatorioReclamaVeiculos,FormRelatorioReclamaVeiculos);
    FormRelatorioReclamaVeiculos.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image1Click(Sender: TObject);
begin
     Application.CreateForm(TFormSobre,FormSobre);
     FormSobre.ShowModal;

end;

procedure TFormNucleo.Image20Click(Sender: TObject);
begin
        Application.CreateForm(TFormCI,FormCI);
        FormCI.ShowModal;

end;

procedure TFormNucleo.Image21Click(Sender: TObject);
begin
        Application.CreateForm(TFormRelatorioAbast,FormRelatorioAbast);
        FormRelatorioAbast.ShowModal

end;

procedure TFormNucleo.Image22Click(Sender: TObject);
begin
      Application.CreateForm(TFormRelatorioSerVen,FormRelatorioSerVen);
      FormRelatorioSerVen.showmodal;

end;

procedure TFormNucleo.Image23Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormCentralComponentes, FormCentralComponentes);
    FormCentralComponentes.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image24Click(Sender: TObject);
begin
       Application.CreateForm(TFormGerencial,FormGerencial);
       FormGerencial.showmodal;

end;

procedure TFormNucleo.Image25Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuGeraGrafico,FormPneuGeraGrafico);
    FormPneuGeraGrafico.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image26Click(Sender: TObject);
begin

Application.Createform(TFormSubstituicaoVeiculos,FormSubstituicaoVeiculos);
FormSubstituicaoVeiculos.ShowModal;

end;

procedure TFormNucleo.Image27Click(Sender: TObject);
begin
if (nivel > 21) then
    begin
     Application.CreateForm(TFormNucleoRelatorios,FormNucleoRelatorios);
     FormNucleoRelatorios.showmodal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image28Click(Sender: TObject);
begin
    Screen.Cursor:=crHourGlass;
      Application.CreateForm(TFormAnaliseOrcamento1,FormAnaliseOrcamento1);
      FormAnaliseOrcamento1.ShowModal;

end;

procedure TFormNucleo.Image29Click(Sender: TObject);
begin
Application.Createform(TFormRelatorioVeiculo,FormRelatorioVeiculo);
FormRelatorioVeiculo.ShowModal;

end;

procedure TFormNucleo.Image2Click(Sender: TObject);
begin
    Application.Terminate;
    Close;

end;

procedure TFormNucleo.Image30Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormCadastraAssociacao,FormCadastraAssociacao);
    FormCadastraAssociacao.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image31Click(Sender: TObject);
begin
    Application.CreateForm(TFormRelTotvs,FormRelTotvs);
    FormRelTotvs.ShowModal;

end;

procedure TFormNucleo.Image32Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormIndiceSocorro,FormIndiceSocorro);
    FormIndiceSocorro.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image33Click(Sender: TObject);
begin
Application.CreateForm(TFormMontaRelGrupo,FormMontaRelGrupo);
FormMontaRelGrupo.showmodal;

end;

procedure TFormNucleo.Image34Click(Sender: TObject);
begin
          Application.CreateForm(TFormRltPneuDecisao, FormRltPneuDecisao);
          FormRltPneuDecisao.ShowModal;

end;

procedure TFormNucleo.Image35Click(Sender: TObject);
begin
          Application.CreateForm(TFormEntradaSaidaSubGrupo,FormEntradaSaidaSubGrupo);
          FormEntradaSaidaSubGrupo.showmodal;

end;

procedure TFormNucleo.Image36Click(Sender: TObject);
begin
    Application.CreateForm(TFormRelatorioCurvaSaidaProdutos,FormRelatorioCurvaSaidaProdutos);
    FormRelatorioCurvaSaidaProdutos.ShowModal;

end;

procedure TFormNucleo.Image37Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormRelatorioCustoKM,FormRelatorioCustoKM);
    FormRelatorioCustoKM.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image38Click(Sender: TObject);
begin
      Application.CreateForm(TFormlancaAviso,FormLancaAviso);
      FormLancaAviso.ShowModal;

end;

procedure TFormNucleo.Image39Click(Sender: TObject);
begin
        Application.CreateForm(TFormGraficoAcompanhamentoTipo,FormGraficoAcompanhamentoTipo);
        FormGraficoAcompanhamentoTipo.ShowModal;

end;

procedure TFormNucleo.Image3Click(Sender: TObject);
begin
if nivel > 9 then
    begin
//        TStyleManager.TrySetStyle('Windows');
        Application.CreateForm(TFormLancaCombustivel,FormLancaCombustivel);
        FormLancaCombustivel.ShowModal;
        //TStyleManager.TrySetStyle('Turquoise Gray');

    end
    Else
        MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image41Click(Sender: TObject);
begin


Application.CreateForm(TFormRelOcorVeiculos,FormRelOcorVeiculos);
FormRelOcorVeiculos.showmodal;
//  relatorio anterior
//Application.CreateForm(TFormRelSocorro,FormRelSocorro);
//FormRelSocorro.showmodal;
end;

procedure TFormNucleo.Image44Click(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioIndiceRecl,FormRelatorioIndiceRecl);
FormRelatorioIndiceRecl.showmodal;

end;

procedure TFormNucleo.Image47Click(Sender: TObject);
begin
if (nivel > 21) then
    begin
     Application.CreateForm(TFormCadastroProdutos,FormCadastroProdutos);
     FormCadastroProdutos.showmodal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image48Click(Sender: TObject);
begin
          Application.CreateForm(TFormCroqui, FormCroqui);
          FormCroqui.show;

end;

procedure TFormNucleo.Image49Click(Sender: TObject);
begin
 if nivel > 9 then
    begin
    Application.CreateForm(TFormRequisitaProdutos,FormRequisitaProdutos);
    FormRequisitaProdutos.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Image4Click(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioMapa,FormRelatorioMapa);
FormRelatorioMapa.ShowModal;

end;

procedure TFormNucleo.Image50Click(Sender: TObject);
begin
      Application.CreateForm(TFormRelDefeitosReclamadoseSocorro, FormRelDefeitosReclamadoseSocorro);
      FormRelDefeitosReclamadoseSocorro.ShowModal;

end;

procedure TFormNucleo.Image51Click(Sender: TObject);
begin
      Application.CreateForm(TFormRequisicaoBalcao, FormRequisicaoBalcao);
      FormRequisicaoBalcao.ShowModal;

end;

procedure TFormNucleo.Image52Click(Sender: TObject);
begin
      Application.CreateForm(TFormTotvsInventario, FormTotvsInventario);
      FormTotvsInventario.ShowModal;

end;

procedure TFormNucleo.Image55Click(Sender: TObject);
begin
      Application.CreateForm(TFormRelIndicadorRevisaoKm, FormRelIndicadorRevisaoKm);
      FormRelIndicadorRevisaoKm.ShowModal;

end;

procedure TFormNucleo.Image5Click(Sender: TObject);
begin
      Close;
end;

procedure TFormNucleo.Image6Click(Sender: TObject);
begin
      Application.CreateForm(TFormOsLista, FormOsLista);
      FormOsLista.ShowModal;
end;

procedure TFormNucleo.Image7Click(Sender: TObject);
begin
      Application.CreateForm(TFormAbreCaixaBalcao,FormAbreCaixaBalcao);
      FormAbreCaixaBalcao.Showmodal;
end;

procedure TFormNucleo.Image84Click(Sender: TObject);
begin
      Application.CreateForm(TFormAvariaMov,FormAvariaMov);
      FormAvariaMov.ShowModal;

end;

procedure TFormNucleo.Image8Click(Sender: TObject);
begin
      Application.CreateForm(TFormIntegraPrateleira,FormIntegraPrateleira);
      FormIntegraPrateleira.ShowModal;
end;

procedure TFormNucleo.Image9Click(Sender: TObject);
begin
if nivel > 9 then
    begin
      Application.CreateForm(tFormCadastraVeiculo, FormCadastraVeiculo);
      FormCadastraVeiculo.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label10Click(Sender: TObject);
begin
          Application.CreateForm(TFormLancaServicosFixos,FormLancaServicosFixos);
          FormLancaServicosFixos.ShowModal;

end;

procedure TFormNucleo.Label11Click(Sender: TObject);
begin
        Application.CreateForm(TFormLancaSerConCar,FormLancaSerConCar);
        FormLancaSerConCar.ShowModal;

end;

procedure TFormNucleo.Label13Click(Sender: TObject);
begin
        Application.CreateForm(TFormLancaIteRec,FormLancaIteRec);
        FormLancaIteRec.ShowModal;

end;

procedure TFormNucleo.Label17Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormLancaItemFicha,FormlancaItemFicha);
    FormlancaItemFicha.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label22Click(Sender: TObject);
begin
        Application.CreateForm(tFormCadastraModVei, FormCadastraModVei);
        FormCadastraModVei.ShowModal;

end;

procedure TFormNucleo.Label23Click(Sender: TObject);
begin

        Application.CreateForm(TFormIndiceAltera,FormIndiceAltera);
        FormIndiceAltera.ShowModal;

end;

procedure TFormNucleo.Label28Click(Sender: TObject);
begin
        Application.CreateForm(TFormCadastraModCar,FormCadastraModCar);
        FormCadastraModCar.ShowModal;

end;

procedure TFormNucleo.Label31Click(Sender: TObject);
begin
      Application.CreateForm(TFormRevisaoHistorico,FormRevisaoHistorico);
      FormRevisaoHistorico.ShowModal;

end;

procedure TFormNucleo.Label36Click(Sender: TObject);
begin
      Application.CreateForm(TFormCadastraGrupos,FormCadastragrupos);
      FormCadastraGrupos.ShowModal;

end;

procedure TFormNucleo.Label46Click(Sender: TObject);
begin
        Application.CreateForm(TFormPneuCadastroMarcas,FormPneuCadastroMarcas);
        FormPneuCadastroMarcas.ShowModal;

end;

procedure TFormNucleo.Label47Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCaadstroDesenho,FormPneuCaadstroDesenho);
    FormPneuCaadstroDesenho.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label48Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroFornecedor,FormPneuCadastroFornecedor);
    FormPneuCadastroFornecedor.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label51Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuLocal,FormPneuLocal);
    FormPneuLocal.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label52Click(Sender: TObject);
begin
        Application.CreateForm(tFormCadastraPadVei, FormCadastraPadVei);
        FormCadastraPadVei.ShowModal;

end;

procedure TFormNucleo.Label53Click(Sender: TObject);
begin
      Application.CreateForm(TFormLancaSetorMan,FormLancaSetorMan);
      FormLancaSetorMan.ShowModal;

end;

procedure TFormNucleo.Label54Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuMotivoRetirada,FormPneuMotivoRetirada);
    FormPneuMotivoRetirada.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label55Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroReformadora,FormPneuCadastroReformadora);
    FormPneuCadastroReformadora.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormNucleo.Label56Click(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroMedida,FormPneuCadastroMedida);
    FormPneuCadastroMedida.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label57Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormPneuCaadstroDesenhoRef,FormPneuCaadstroDesenhoRef);
    FormPneuCaadstroDesenhoRef.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
    end;

procedure TFormNucleo.Label58Click(Sender: TObject);
begin
      if (nivel = 10) or (nivel > 21) then
          begin
                Application.CreateForm(TFormPneuCadastroBorracha,FormPneuCadastroBorracha);
                FormPneuCadastroBorracha.ShowModal;
          end
          Else
                MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormNucleo.Label63Click(Sender: TObject);
begin
      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
      Relatorio.Projeto.ExecuteReport('RvCadSerCon');
      Relatorio.Projeto.close;

end;

procedure TFormNucleo.Label64Click(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioPrateleira,FormRelatorioPrateleira);
FormRelatorioPrateleira.showmodal;

end;

procedure TFormNucleo.Label9Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TformCadastraServCont,FormCadastraServCont);
    FormCadastraServCont.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

end.
