unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnColorMaps, ActnMan, XPMan, Menus, ComCtrls, CustomizeDlg,
  StdCtrls, jpeg, ExtCtrls, ActnMenus, ToolWin, ActnCtrls, Buttons,
  DB, ImgList, Ribbon, RibbonActnMenus, ActnList,
  RibbonLunaStyleActnCtrls, RibbonSilverStyleActnCtrls,
  RibbonObsidianStyleActnCtrls, pngimage, StdActns, TeCanvas, TeePenDlg,
  TeeEdiGrad, TeeProcs, TeeDraw3D, TeeFilters, MPlayer, System.ImageList,
  System.Actions;

type
  TFormEntrada = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Timer1: TTimer;
    ToolBar1: TToolBar;
    Cadastros1: TMenuItem;
    Bandeira: TImage;
    SpeedButton22: TSpeedButton;
    ToolButton1: TToolButton;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SpeedButton8: TSpeedButton;
    BalloonHint1: TBalloonHint;
    Operacional1: TMenuItem;
    Operacional2: TMenuItem;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    SobreGenomaSoftware1: TMenuItem;
    NotasdeVerso1: TMenuItem;
    ProgramadeQualidadeGenoma1: TMenuItem;
    Cadastros2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Reviso1: TMenuItem;
    ServiosFixos1: TMenuItem;
    Veculos1: TMenuItem;
    padres1: TMenuItem;
    Modelos1: TMenuItem;
    Veculos2: TMenuItem;
    Carrocerias1: TMenuItem;
    ServiosComponentesControlveis1: TMenuItem;
    Associar1: TMenuItem;
    SpeedButton4: TSpeedButton;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Ribbon1: TRibbon;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonPage3: TRibbonPage;
    RibbonGroup3: TRibbonGroup;
    Action9: TAction;
    AcSair: TAction;
    RibbonPage4: TRibbonPage;
    RibbonGroup5: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    Action11: TAction;
    EditCut1: TEditCut;
    AcDesenhoPneus: TAction;
    AcMarcaPneu: TAction;
    AcMedidaPneu: TAction;
    AcReformadoraPneu: TAction;
    AcMotivoRetiradaPneu: TAction;
    AcBorrachaReformaPneu: TAction;
    AcDesenhoReformaPneus: TAction;
    AcCadastroPneu: TAction;
    ImageList1: TImageList;
    RibbonGroup7: TRibbonGroup;
    AcItenFicha: TAction;
    AcSetores: TAction;
    Action10: TAction;
    Action12: TAction;
    acrelvei: TAction;
    RibbonGroup8: TRibbonGroup;
    RibbonPage6: TRibbonPage;
    RibbonGroup9: TRibbonGroup;
    AcInteTotvPrate: TAction;
    Action13: TAction;
    AcAteBalcao: TAction;
    AcMaoObra: TAction;
    acparametros: TAction;
    RibbonPage7: TRibbonPage;
    RibbonGroup12: TRibbonGroup;
    AcTerAtendimento: TAction;
    Base: TLabel;
    Base2: TLabel;
    AcRelAbast: TAction;
    AcPrdCont: TAction;
    AcCarSer: TAction;
    RibbonGroup10: TRibbonGroup;
    RibbonGroup11: TRibbonGroup;
    RibbonGroup13: TRibbonGroup;
    AcMovPrd: TAction;
    AcIntTorel: TAction;
    RibbonGroup14: TRibbonGroup;
    RibbonGroup15: TRibbonGroup;
    ImageList3: TImageList;
    RibbonGroup16: TRibbonGroup;
    RibbonGroup17: TRibbonGroup;
    Label4: TLabel;
    AcrelSerCont: TAction;
    Action14: TAction;
    Action15: TAction;
    RibbonGroup18: TRibbonGroup;
    Action16: TAction;
    Action17: TAction;
    Action18: TAction;
    Action19: TAction;
    Timer2: TTimer;
    AcAviso: TAction;
    Action20: TAction;
    RibbonGroup4: TRibbonGroup;
    AcFornecedir: TAction;
    AcPnMov: TAction;
    Action21: TAction;
    AcLocInsPrdGar: TAction;
    RibbonPage5: TRibbonPage;
    RibbonGroup19: TRibbonGroup;
    Action22: TAction;
    AcEnvRef: TAction;
    acestpn: TAction;
    Action23: TAction;
    Action24: TAction;
    Action25: TAction;
    AcAltInd: TAction;
    Action26: TAction;
    Action27: TAction;
    Action28: TAction;
    Action29: TAction;
    Action30: TAction;
    Action31: TAction;
    RibbonGroup20: TRibbonGroup;
    Action32: TAction;
    Action33: TAction;
    Action34: TAction;
    Action35: TAction;
    RibbonPage8: TRibbonPage;
    RibbonGroup22: TRibbonGroup;
    Action36: TAction;
    Action37: TAction;
    Action38: TAction;
    Action39: TAction;
    acGarantiaPosicoes: TAction;
    Action40: TAction;
    Label3: TLabel;
    AcNotaVersao: TAction;
    Action41: TAction;
    Action42: TAction;
    procedure Linhas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ServiosFixos1Click(Sender: TObject);
    procedure padres1Click(Sender: TObject);
    procedure Modelos1Click(Sender: TObject);
    procedure Veculos2Click(Sender: TObject);
    procedure Carrocerias1Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure Associar1Click(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure AcSairExecute(Sender: TObject);
    procedure AcMarcaPneuExecute(Sender: TObject);
    procedure AcItenFichaExecute(Sender: TObject);
    procedure AcSetoresExecute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure acrelveiExecute(Sender: TObject);
    procedure AcInteTotvPrateExecute(Sender: TObject);
    procedure Action13Execute(Sender: TObject);
    procedure AcAteBalcaoExecute(Sender: TObject);
    procedure acparametrosExecute(Sender: TObject);
    procedure AcTerAtendimentoExecute(Sender: TObject);
    procedure AcRelAbastExecute(Sender: TObject);
    procedure AcPrdContExecute(Sender: TObject);
    procedure AcCarSerExecute(Sender: TObject);
    procedure AcMovPrdExecute(Sender: TObject);
    procedure AcIntTorelExecute(Sender: TObject);
    procedure AcrelSerContExecute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure Action17Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AcAvisoExecute(Sender: TObject);
    procedure Action20Execute(Sender: TObject);
    procedure AcMedidaPneuExecute(Sender: TObject);
    procedure AcDesenhoPneusExecute(Sender: TObject);
    procedure AcReformadoraPneuExecute(Sender: TObject);
    procedure AcFornecedirExecute(Sender: TObject);
    procedure AcMotivoRetiradaPneuExecute(Sender: TObject);
    procedure AcCadPneuExecute(Sender: TObject);
    procedure AcPnMovExecute(Sender: TObject);
    procedure Action21Execute(Sender: TObject);
    procedure AcLocInsPrdGarExecute(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure AcEnvRefExecute(Sender: TObject);
    procedure acestpnExecute(Sender: TObject);
    procedure Action23Execute(Sender: TObject);
    procedure AcBorrachaReformaPneuExecute(Sender: TObject);
    procedure Action24Execute(Sender: TObject);
    procedure Action25Execute(Sender: TObject);
    procedure AcAltIndExecute(Sender: TObject);
    procedure Action26Execute(Sender: TObject);
    procedure Action28Execute(Sender: TObject);
    procedure Action29Execute(Sender: TObject);
    procedure Action30Execute(Sender: TObject);
    procedure Action31Execute(Sender: TObject);
    procedure Action32Execute(Sender: TObject);
    procedure Action33Execute(Sender: TObject);
    procedure Action34Execute(Sender: TObject);
    procedure AcCadastroPneuExecute(Sender: TObject);
    procedure Action36Execute(Sender: TObject);
    procedure Action37Execute(Sender: TObject);
    procedure Action38Execute(Sender: TObject);
    procedure Action39Execute(Sender: TObject);
    procedure acGarantiaPosicoesExecute(Sender: TObject);
    procedure Action40Execute(Sender: TObject);
    procedure AcNotaVersaoExecute(Sender: TObject);
    procedure Action41Execute(Sender: TObject);
    procedure Action42Execute(Sender: TObject);
  private
    { Private declarations }
  public
  usuario: string;
  versao : string;
  nivel  : integer;
    { Public declarations }
  end;

var
   FormEntrada: TFormEntrada;

implementation

uses UnitLancaServicosFixos, UnitlancaCombustivel, UnitLancaPadraoVeiculo,
  UnitCadastraModeloVeiculo, UnitCadastraVeiculo, UnitcadastraCarroceria,
  UnitCadastraServCont, UnitAssociaRevisaoVeiculo, UnittesteRibom,
  UnitCadastraAssociacao,
  UnitLancaItemFicha, UnitLancaSetorMan, UnitAssociaFichaContVei,
  UnitIniciaSistema, UnitServerPai, UnitRelatorioVeiculo, UnitIntegraPrateleira,
  UnitRelatorioMapa, UnitAplicaProdutoBalcao, UnitLancaMaoObra,
  UnitAbreCaixaBalcao, UnitlancaIntegracao, UnitTeste, UnitTerminalConsulta,
  UnitRelatorioAbast, UnitlancaPrdCont, UnitSerConCar, unitRelatorioMovPrd,
  UnitRelTotvs, UnitRelatorio, UnitCadastraGrupos, UnitMostraGraficoCusto,
  UnitMontaRelGrupo, UnitConsultaPMC, UnitLancaIteRec, UnitRelatorioSerVen,
  UnitLancaAviso, UnitRelEmitePrateleira, UnitPneuCadastroMedida,
  UnitPneuCadastroMarca, UnitPneuCadastroDesenho, UnitPneuCadastroReformadora,
  UnitPneuCadastroFornecedor, UnitPneuMotivoRetirada, UnitPneuCadastro,
  UnitPneuMovimento, UnitRelatorioCustoKm, UnitLancaPosicaoGarantia,
  UnitRelatorioIndiceRecl, UnitPneuEnviaReforma, UnitPneuGeraGrafico,
  UnitPneuRetornoReforma, UnitPneuCadastroBorracha, UnitpneuCentralRelatorio,
  UnitGraficoAcompanhamentoTipo, UnitIndiceAltera, UnitPneuLocal,
  UnitRelatorioReclamaVeiculo, UnitImportaPneuCadastro, UnitImpMovPn,
  UnitImpVeiPn, UnitPneuCadastroDesenhoRef, UnitImpRef, UnitPneuInfo,
  UnitCriaCampoPrd, UnitConsultaFCFO, UnitRelatorioComponente,
  UnitIndiceSocorro, UnitReclamacoesRegistradas, UnitGarantiaPosicoes,
  UnitGerencial, UnitNotasVersao, UnitCentralComponentes, UnitOsLista;


{$R *.dfm}

procedure TFormEntrada.Linhas1Click(Sender: TObject);
begin
//Application.CreateForm(TFormFuncao, FormFuncao);
//FormFUncao.show;
end;

procedure TFormEntrada.Modelos1Click(Sender: TObject);
begin
Application.CreateForm(tFormCadastraModVei, FormCadastraModVei);
FormCadastraModVei.ShowModal;

end;

procedure TFormEntrada.padres1Click(Sender: TObject);
begin
Application.CreateForm(tFormCadastraPadVei, FormCadastraPadVei);
FormCadastraPadVei.ShowModal;
end;

procedure TFormEntrada.FormShow(Sender: TObject);
begin
StatusBar1.Panels[0].text:='Usu�rio Atual : ' + usuario;
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);
bandeira.left:=Trunc((FormEntrada.width - bandeira.Width) / 2);
bandeira.top:=Trunc((FormEntrada.Height - bandeira.Height) / 2);

end;

procedure TFormEntrada.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);
end;

procedure TFormEntrada.Timer2Timer(Sender: TObject);
begin
IF PAI.ConctPai.Connected = fALSE THEN PAI.ConctPai.Connected:=TRUE;
IF PAI.ConectCorpore.Connected = fALSE THEN PAI.ConectCorpore.Connected:=TRUE;
end;

procedure TFormEntrada.Timer3Timer(Sender: TObject);
begin
showmessage(Timetostr(now));
end;

procedure TFormEntrada.Veculos2Click(Sender: TObject);
begin
if nivel > 9 then
    begin
      Application.CreateForm(tFormCadastraVeiculo, FormCadastraVeiculo);
      FormCadastraVeiculo.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.SpeedButton22Click(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TformCadastraServCont,FormCadastraServCont);
    FormCadastraServCont.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormEntrada.SpeedButton8Click(Sender: TObject);
begin
//if nivel >= 5 then
//    begin
    Application.CreateForm(TFormLancaCombustivel,FormLancaCombustivel);
    FormLancaCombustivel.ShowModal;
//    end
//    Else
//    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.ServiosFixos1Click(Sender: TObject);
begin
Application.CreateForm(TFormLancaServicosFixos,FormLancaServicosFixos);
FormLancaServicosFixos.ShowModal;
end;

procedure TFormEntrada.SpeedButton10Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
application.terminate;
ACTION:=CAFREE;
end;

procedure TFormEntrada.AcAltIndExecute(Sender: TObject);
begin
if (nivel > 9) then
    begin
    MessageBox(Handle,'O Que voc� esta prestes a fazer � perigoso, tenha aten��o aos �ndices que ir� alterar','Aten��o !!',MB_IconInformation + MB_Ok);
    Application.CreateForm(TFormIndiceAltera,FormIndiceAltera);
    FormIndiceAltera.ShowModal;
    end
    Else
    MessageBox(Handle,'Desculpe, Mas essa opera��o requer eleva��o para ser executada','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.AcAteBalcaoExecute(Sender: TObject);
begin
Application.CreateForm(TFormAbreCaixaBalcao,FormAbreCaixaBalcao);
FormAbreCaixaBalcao.Showmodal;
end;

procedure TFormEntrada.AcAvisoExecute(Sender: TObject);
begin
Application.CreateForm(TFormlancaAviso,FormLancaAviso);
FormLancaAviso.ShowModal;
end;

procedure TFormEntrada.AcBorrachaReformaPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroBorracha,FormPneuCadastroBorracha);
    FormPneuCadastroBorracha.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcCadastroPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastro,FormPneuCadastro);
    FormPneuCadastro.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcCadPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastro,FormPneuCadastro);
    FormPneuCadastro.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcCarSerExecute(Sender: TObject);
begin
Application.CreateForm(TFormLancaSerConCar,FormLancaSerConCar);
FormLancaSerConCar.ShowModal;
end;

procedure TFormEntrada.AcDesenhoPneusExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCaadstroDesenho,FormPneuCaadstroDesenho);
    FormPneuCaadstroDesenho.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcEnvRefExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuEnviaReforma,FormPneuEnviaReforma);
    FormPneuEnviaReforma.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.acestpnExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuGeraGrafico,FormPneuGeraGrafico);
    FormPneuGeraGrafico.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.AcFornecedirExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroFornecedor,FormPneuCadastroFornecedor);
    FormPneuCadastroFornecedor.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.acGarantiaPosicoesExecute(Sender: TObject);
begin
            Application.CreateForm(TFormGarantiaPosicoes,FormGarantiaPosicoes);
            FormGarantiaPosicoes.showmodal;
end;

procedure TFormEntrada.AcInteTotvPrateExecute(Sender: TObject);
begin
Application.CreateForm(TFormIntegraPrateleira,FormIntegraPrateleira);
FormIntegraPrateleira.ShowModal;

end;

procedure TFormEntrada.AcIntTorelExecute(Sender: TObject);
begin
    Application.CreateForm(TFormRelTotvs,FormRelTotvs);
    FormRelTotvs.ShowModal;

end;

procedure TFormEntrada.AcItenFichaExecute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormLancaItemFicha,FormlancaItemFicha);
    FormlancaItemFicha.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.AcLocInsPrdGarExecute(Sender: TObject);
begin
Application.CreateForm(TFormLancaPosicaoGarantia,FormLancaPosicaoGarantia);
FormLancaPosicaoGarantia.ShowModal;
end;

procedure TFormEntrada.AcMarcaPneuExecute(Sender: TObject);
begin
Application.CreateForm(TFormPneuCadastroMarcas,FormPneuCadastroMarcas);
FormPneuCadastroMarcas.ShowModal;
end;

procedure TFormEntrada.AcMedidaPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroMedida,FormPneuCadastroMedida);
    FormPneuCadastroMedida.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcMotivoRetiradaPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuMotivoRetirada,FormPneuMotivoRetirada);
    FormPneuMotivoRetirada.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcMovPrdExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcNotaVersaoExecute(Sender: TObject);
begin
             FormNotasversao.showModal;
end;

procedure TFormEntrada.acparametrosExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormParametros,FormParametros);
    FormParametros.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
end;

procedure TFormEntrada.AcPnMovExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuMovimento,FormPneuMovimento);
    FormPneuMovimento.showmodal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcPrdContExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormLancaPrdCont,FormLancaPrdCont);
    FormLancaPrdCont.showmodal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcReformadoraPneuExecute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuCadastroReformadora,FormPneuCadastroReformadora);
    FormPneuCadastroReformadora.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AcRelAbastExecute(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioAbast,FormRelatorioAbast);
FormRelatorioAbast.ShowModal
end;

procedure TFormEntrada.AcrelSerContExecute(Sender: TObject);
begin
      Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
      Relatorio.Projeto.ExecuteReport('RvCadSerCon');
      Relatorio.Projeto.close;
end;

procedure TFormEntrada.acrelveiExecute(Sender: TObject);
begin
Application.Createform(TFormRelatorioVeiculo,FormRelatorioVeiculo);
FormRelatorioVeiculo.ShowModal;
end;

procedure TFormEntrada.AcSairExecute(Sender: TObject);
begin
Application.Terminate;
Close;
end;

procedure TFormEntrada.AcSetoresExecute(Sender: TObject);
begin
Application.CreateForm(TFormLancaSetorMan,FormLancaSetorMan);
FormLancaSetorMan.ShowModal;
end;

procedure TFormEntrada.AcTerAtendimentoExecute(Sender: TObject);
begin
Application.CreateForm(TFormTerminalConsulta,FormTerminalConsulta);
FormTerminalConsulta.ShowModal;

end;

procedure TFormEntrada.Action10Execute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormAssociaFichaContVei,FormAssociaFichaContVei);
    FormAssociaFichaContVei.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action12Execute(Sender: TObject);
begin
Hide;
FormIniciaSistema.Show;
end;

procedure TFormEntrada.Action13Execute(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioMapa,FormRelatorioMapa);
FormRelatorioMapa.ShowModal;
end;

procedure TFormEntrada.Action14Execute(Sender: TObject);
begin
Application.CreateForm(TFormMontaRelGrupo,FormMontaRelGrupo);
FormMontaRelGrupo.showmodal;
end;

procedure TFormEntrada.Action15Execute(Sender: TObject);
begin
Application.CreateForm(TFormCadastraGrupos,FormCadastragrupos);
FormCadastraGrupos.ShowModal;
end;

procedure TFormEntrada.Action16Execute(Sender: TObject);
begin
Application.CreateForm(TFormMostraGraficoCusto,FormMostraGraficoCusto);
//FormMostraGraficoCusto.gra.Series[1].Add(0,[fernando],[clred]);
FormMostraGraficoCusto.ShowModal;

end;

procedure TFormEntrada.Action17Execute(Sender: TObject);
begin
Application.CreateForm(TFormConsultaPMC,FormConsultaPMC);
FormConsultaPMC.ShowModal;
end;

procedure TFormEntrada.Action18Execute(Sender: TObject);
begin
Application.CreateForm(TFormLancaIteRec,FormLancaIteRec);
FormLancaIteRec.ShowModal;
end;

procedure TFormEntrada.Action19Execute(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioSerVen,FormRelatorioSerVen);
FormRelatorioSerVen.showmodal;
end;

procedure TFormEntrada.Action20Execute(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioPrateleira,FormRelatorioPrateleira);
FormRelatorioPrateleira.showmodal;
end;

procedure TFormEntrada.Action21Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormRelatorioCustoKM,FormRelatorioCustoKM);
    FormRelatorioCustoKM.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action22Execute(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioIndiceRecl,FormRelatorioIndiceRecl);
FormRelatorioIndiceRecl.showmodal;

end;

procedure TFormEntrada.Action23Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormPneusRetornoReforma,FormPneusRetornoReforma);
    FormPneusRetornoReforma.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
end;

procedure TFormEntrada.Action24Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormPneuCentralRelatorio,FormPneuCentralRelatorio);
    FormPneuCentralRelatorio.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.Action25Execute(Sender: TObject);
begin
        Application.CreateForm(TFormGraficoAcompanhamentoTipo,FormGraficoAcompanhamentoTipo);
        FormGraficoAcompanhamentoTipo.ShowModal;
end;

procedure TFormEntrada.Action26Execute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormPneuLocal,FormPneuLocal);
    FormPneuLocal.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action28Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormRelatorioReclamaVeiculos,FormRelatorioReclamaVeiculos);
    FormRelatorioReclamaVeiculos.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action29Execute(Sender: TObject);
begin
if nivel > 49 then
    begin
    Application.CreateForm(TFormImportaCadPn,FormImportaCadPn);
    FormImportaCadPn.ShowModal;
    end
    Else
    MessageBox(Handle,'Opera��o requer n�vel Alfa','Aviso !!',MB_IconStop + MB_Ok);


end;

procedure TFormEntrada.Action30Execute(Sender: TObject);
begin
if nivel > 49 then
    begin
    Application.CreateForm(TFormImpMovPn,FormImpMovPn);
    FormImpMovPn.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.Action31Execute(Sender: TObject);
begin
if nivel > 49 then
    begin
    Application.CreateForm(TFormImpVeiPn,FormImpVeiPn);
    FormImpVeiPn.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action32Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormPneuCaadstroDesenhoRef,FormPneuCaadstroDesenhoRef);
    FormPneuCaadstroDesenhoRef.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
    end;

procedure TFormEntrada.Action33Execute(Sender: TObject);
begin
if nivel > 49 then
    begin
    Application.CreateForm(TFormImpRef,FormImpRef);
    FormImpRef.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
end;

procedure TFormEntrada.Action34Execute(Sender: TObject);
begin
    Application.CreateForm(TFormPneuInfo,FormPneuInfo);
    FormPneuInfo.ShowModal;
end;

procedure TFormEntrada.Action36Execute(Sender: TObject);
begin
    Application.CreateForm(TFormConsultaFCFO,FormConsultaFcfo);
    FormConsultaFcfo.ShowModal;
end;

procedure TFormEntrada.Action37Execute(Sender: TObject);
begin
    Application.CreateForm(TFormRelatorioComponentes,FormRelatorioComponentes);
    FormRelatorioComponentes.showmodal;
end;

procedure TFormEntrada.Action38Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormIndiceSocorro,FormIndiceSocorro);
    FormIndiceSocorro.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action39Execute(Sender: TObject);
begin
Application.CreateForm(TFormReclamacoesRegistradas,FormReclamacoesRegistradas);
FormReclamacoesRegistradas.showmodal;
end;

procedure TFormEntrada.Action40Execute(Sender: TObject);
begin
       Application.CreateForm(TFormGerencial,FormGerencial);
       FormGerencial.showmodal;
end;

procedure TFormEntrada.Action41Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormCentralComponentes, FormCentralComponentes);
    FormCentralComponentes.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.Action42Execute(Sender: TObject);
begin
      Application.CreateForm(TFormOsLista, FormOsLista);
      FormOsLista.ShowModal;
end;

procedure TFormEntrada.Action4Execute(Sender: TObject);
begin
if nivel > 9 then
    begin
    Application.CreateForm(TFormLancaCombustivel,FormLancaCombustivel);
    FormLancaCombustivel.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);
end;

procedure TFormEntrada.Action5Execute(Sender: TObject);
begin
if (nivel = 10) or (nivel > 21) then
    begin
    Application.CreateForm(TFormCadastraAssociacao,FormCadastraAssociacao);
    FormCadastraAssociacao.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usu�rio n�o Autorizado para este M�dulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.Action6Execute(Sender: TObject);
begin
Application.CreateForm(tFormCadastraPadVei, FormCadastraPadVei);
FormCadastraPadVei.ShowModal;

end;

procedure TFormEntrada.Action7Execute(Sender: TObject);
begin
Application.CreateForm(tFormCadastraModVei, FormCadastraModVei);
FormCadastraModVei.ShowModal;

end;

procedure TFormEntrada.Action8Execute(Sender: TObject);
begin
Application.CreateForm(TFormCadastraModCar,FormCadastraModCar);
FormCadastraModCar.ShowModal;

end;

procedure TFormEntrada.Associar1Click(Sender: TObject);
begin
Application.CreateForm(TFormAssociaRevisaoVeiculo,FormAssociaRevisaoVeiculo);
FormAssociaRevisaoVeiculo.ShowModal;
end;

procedure TFormEntrada.Carrocerias1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraModCar,FormCadastraModCar);
FormCadastraModCar.ShowModal;

end;

procedure TFormEntrada.FormActivate(Sender: TObject);
begin
label1.Caption:=IntToStr(Width);
label2.Caption:=IntToStr(Height);
bandeira.left:=Trunc((FormEntrada.width - bandeira.Width) / 2);
bandeira.top:=Trunc((FormEntrada.Height - bandeira.Height) / 2);

base.Caption:='DB Genoma : ' + Pai.ConctPai.DefaultDatabase;
base2.Caption:='DB Totvs : ' + Pai.ConectCorpore.DefaultDatabase;

Statusbar1.Panels[0].Text:='   Usu�rio : ' + FormIniciaSistema.Dtusuarios.DataSet.FieldByName('Usu_login').asString;
//versao:=label3.caption;
Ribbon1.Caption:='CenterBus - Oficina Inteligente - ' + FormIniciaSistema.editversao.Caption + ' - Coligada : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
label4.Caption:='Voc� est� logado em : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;


end;

End.
