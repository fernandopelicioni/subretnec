program CenterBus_XE8;

uses
  Forms,
  Principal in 'Principal.pas' {FormEntrada},
  UnitLancaServicosFixos in 'UnitLancaServicosFixos.pas' {FormLancaServicosFixos},
  UnitlancaCombustivel in 'UnitlancaCombustivel.pas' {FormLancaCombustivel},
  UnitRelatorio in 'UnitRelatorio.pas' {Relatorio},
  UnitLancaPadraoVeiculo in 'UnitLancaPadraoVeiculo.pas' {FormCadastraPadVei},
  UnitCadastraModeloVeiculo in 'UnitCadastraModeloVeiculo.pas' {FormCadastraModVei},
  UnitCadastraVeiculo in 'UnitCadastraVeiculo.pas' {FormCadastraVeiculo},
  UnitcadastraCarroceria in 'UnitcadastraCarroceria.pas' {FormCadastraModCar},
  UnitCadastraServCont in 'UnitCadastraServCont.pas' {FormCadastraServCont},
  UnitLancaAssociacao in 'UnitLancaAssociacao.pas' {FormLancaAssociacao},
  UnitCadastraAssociacao in 'UnitCadastraAssociacao.pas' {FormCadastraAssociacao},
  UnitLancaNovaRevisao in 'UnitLancaNovaRevisao.pas' {FormLancaNovaRevisao},
  UnitIniciaSistema in 'UnitIniciaSistema.pas' {FormIniciaSistema},
  UnitServerPai in 'UnitServerPai.pas' {pai: TDataModule},
  UnitLancaItemFicha in 'UnitLancaItemFicha.pas' {FormLancaItemFicha},
  UnitLancaSetorMan in 'UnitLancaSetorMan.pas' {FormLancaSetorMan},
  UnitAssociaFichaContVei in 'UnitAssociaFichaContVei.pas' {FormAssociaFichaContVei},
  UnitRelatorioVeiculo in 'UnitRelatorioVeiculo.pas' {FormRelatorioVeiculo},
  UnitIntegraPrateleira in 'UnitIntegraPrateleira.pas' {FormIntegraprateleira},
  UnitRelatorioMapa in 'UnitRelatorioMapa.pas' {FormRelatorioMapa},
  UnitAplicaProdutoBalcao in 'UnitAplicaProdutoBalcao.pas' {FormAplicaProdutoBalcao},
  UnitLancaMaoObra in 'UnitLancaMaoObra.pas' {FormLancaMaoObra},
  UnitlancaIntegracao in 'UnitlancaIntegracao.pas' {FormParametros},
  UnitAbreCaixaBalcao in 'UnitAbreCaixaBalcao.pas' {FormAbreCaixaBalcao},
  UnitTerminalConsulta in 'UnitTerminalConsulta.pas' {FormTerminalConsulta},
  UnitDadosConsulta in 'UnitDadosConsulta.pas' {FormDadosConsultas},
  UnitLancaInfoVeiculo in 'UnitLancaInfoVeiculo.pas' {FormLancaInfoVeiculo},
  UnitInfoMedidas in 'UnitInfoMedidas.pas' {FormInfoMedidas},
  UnitInfoBaseRevisao in 'UnitInfoBaseRevisao.pas' {FormInfoBaseRevisao},
  UnitBuscaProduto in 'UnitBuscaProduto.pas' {FormBuscaProduto},
  UnitRelatorioAbast in 'UnitRelatorioAbast.pas' {FormRelatorioAbast},
  UnitlancaPrdCont in 'UnitlancaPrdCont.pas' {FormLancaPrdCont},
  UnitSerConCar in 'UnitSerConCar.pas' {FormLancaSerConCar},
  unitRelatorioMovPrd in 'unitRelatorioMovPrd.pas' {FormRelatorioMovPrd},
  UnitRelTotvs in 'UnitRelTotvs.pas' {FormRelTotvs},
  UnitInfoPrdUti in 'UnitInfoPrdUti.pas' {FormInfoPrdUti},
  UnitInfoCarac in 'UnitInfoCarac.pas' {FormInfoCarac},
  UnitInfoRev in 'UnitInfoRev.pas' {FormInfoRev},
  UnitCadastraGrupos in 'UnitCadastraGrupos.pas' {FormCadastraGrupos},
  UnitMostraGraficoCusto in 'UnitMostraGraficoCusto.pas' {FormMostraGraficoCusto},
  UnitMontaRelGrupo in 'UnitMontaRelGrupo.pas' {FormMontaRelGrupo},
  UnitLancaOSCorretiva in 'UnitLancaOSCorretiva.pas' {FormLancaOSCorretiva},
  UnitInfoPMC in 'UnitInfoPMC.pas' {FormInfoPMC},
  UnitInfoAtendimento in 'UnitInfoAtendimento.pas' {FormInfoAtendimento},
  UnitConsultaPMC in 'UnitConsultaPMC.pas' {FormConsultaPMC},
  UnitLancaFechaPmc in 'UnitLancaFechaPmc.pas' {FormLancaFechaPmc},
  UnitInfoManCorretivas in 'UnitInfoManCorretivas.pas' {FormInfoManCorretivas},
  UnitLancaIteRec in 'UnitLancaIteRec.pas' {FormLancaIteRec},
  UnitLancaCorrigePMC in 'UnitLancaCorrigePMC.pas' {FormLancaCorrigePMC},
  UnitRelatorioSerVen in 'UnitRelatorioSerVen.pas' {FormRelatorioSerVen},
  UnitInfoGeraCusto in 'UnitInfoGeraCusto.pas' {FormInfoGeraCusto},
  UnitLancaAviso in 'UnitLancaAviso.pas' {FormLancaAviso},
  UnitRelEmitePrateleira in 'UnitRelEmitePrateleira.pas' {FormRelatorioPrateleira},
  UnitPneuCadastroMarca in 'UnitPneuCadastroMarca.pas' {FormPneuCadastroMarcas},
  UnitPneuCadastroMedida in 'UnitPneuCadastroMedida.pas' {FormPneuCadastroMedida},
  UnitPneuCadastroDesenho in 'UnitPneuCadastroDesenho.pas' {FormPneuCaadstroDesenho},
  UnitPneuCadastroReformadora in 'UnitPneuCadastroReformadora.pas' {FormPneuCadastroReformadora},
  UnitPneuCadastroFornecedor in 'UnitPneuCadastroFornecedor.pas' {FormPneuCadastroFornecedor},
  UnitPneuMotivoRetirada in 'UnitPneuMotivoRetirada.pas' {FormPneuMotivoRetirada},
  UnitPneuBorracha in 'UnitPneuBorracha.pas' {FormPneuBorracha},
  UnitPneuInclusao in 'UnitPneuInclusao.pas' {FormPneuInclusao},
  UnitPneuMovimento in 'UnitPneuMovimento.pas' {FormPneuMovimento},
  UnitPneuCadastro in 'UnitPneuCadastro.pas' {FormPneuCadastro},
  UnitRelatorioCustoKm in 'UnitRelatorioCustoKm.pas' {FormRelatorioCustoKM},
  UnitPneuOpcaoRetirada in 'UnitPneuOpcaoRetirada.pas' {FormPneuOpcaoRetirada},
  UnitPneuRetirada in 'UnitPneuRetirada.pas' {FormPneuRetirada},
  UnitBuscaPrd in 'UnitBuscaPrd.pas' {FormBuscaPrd},
  UnitLancaPosicaoGarantia in 'UnitLancaPosicaoGarantia.pas' {FormLancaPosicaoGarantia},
  UnitRelatorioIndiceRecl in 'UnitRelatorioIndiceRecl.pas' {FormRelatorioIndiceRecl},
  UnitPneuEnviaReforma in 'UnitPneuEnviaReforma.pas' {FormPneuEnviaReforma},
  UnitPneuGraficoMarca in 'UnitPneuGraficoMarca.pas' {FormPneuGraficoMarcas},
  UnitPneuGeraGrafico in 'UnitPneuGeraGrafico.pas' {FormPneuGeraGrafico},
  UnitPneuRetornoReforma in 'UnitPneuRetornoReforma.pas' {FormPneusRetornoReforma},
  UnitPneuCadastroBorracha in 'UnitPneuCadastroBorracha.pas' {FormPneuCadastroBorracha},
  UnitAplicaBuscaPrd in 'UnitAplicaBuscaPrd.pas' {FormAplicaBuscaPrd},
  UnitpneuCentralRelatorio in 'UnitpneuCentralRelatorio.pas' {FormPneuCentralRelatorio},
  UnitInfoLancaAgendamento in 'UnitInfoLancaAgendamento.pas' {FormInfoLancaAgendamento},
  UnitInfoOpcaoAgendamento in 'UnitInfoOpcaoAgendamento.pas' {FormInfoOpcaoAgendamento},
  UnitGraficoAcompanhamento in 'UnitGraficoAcompanhamento.pas' {FormGraficoAcompanhamento},
  UnitGraficoAcompanhamentoTipo in 'UnitGraficoAcompanhamentoTipo.pas' {FormGraficoAcompanhamentoTipo},
  UnitIndiceAltera in 'UnitIndiceAltera.pas' {FormIndiceAltera},
  UnitPneuLocal in 'UnitPneuLocal.pas' {FormPneuLocal},
  Utraducao in 'Utraducao.pas',
  UnitRelatorioReclamaVeiculo in 'UnitRelatorioReclamaVeiculo.pas' {FormRelatorioReclamaVeiculos},
  UnitPneuCadastroDesenhoRef in 'UnitPneuCadastroDesenhoRef.pas' {FormPneuCaadstroDesenhoRef},
  UnitPneuInfo in 'UnitPneuInfo.pas' {FormPneuInfo},
  UnitInfoPneus in 'UnitInfoPneus.pas' {FormInfoPneus},
  UnitPneuAlteraMotivoRetirada in 'UnitPneuAlteraMotivoRetirada.pas' {FormPneuAlteraMotivoRetirada},
  UnitConsultaFCFO in 'UnitConsultaFCFO.pas' {FormConsultaFCFO},
  UnitRelatorioComponente in 'UnitRelatorioComponente.pas' {FormRelatorioComponentes},
  UnitBuscar in 'UnitBuscar.pas' {FormBuscar},
  UnitIndiceSocorro in 'UnitIndiceSocorro.pas' {FormIndiceSocorro},
  UnitReclamacoesRegistradas in 'UnitReclamacoesRegistradas.pas' {FormReclamacoesRegistradas},
  UnitGarantiaPosicoes in 'UnitGarantiaPosicoes.pas' {FormGarantiaPosicoes},
  UnitProdutosLocaisInstalacao in 'UnitProdutosLocaisInstalacao.pas' {FormProdutosLocaisInstalacao},
  UnitGerencial in 'UnitGerencial.pas' {FormGerencial},
  UnitNotasVersao in 'UnitNotasVersao.pas' {FormNotasVersao},
  UnitCentralComponentes in 'UnitCentralComponentes.pas' {FormCentralComponentes},
  UnitOS in 'UnitOS.pas' {FormOS},
  UnitInfoComponentes in 'UnitInfoComponentes.pas' {FormInfoComponentes},
  UnitInfoDetalheComponente in 'UnitInfoDetalheComponente.pas' {FormInfoDetalhesComponentes},
  UnitOsLista in 'UnitOsLista.pas' {FormOsLista},
  UnitOsSenha in 'UnitOsSenha.pas' {FormOsSenha},
  UtDadosListaSocorro in 'UtDadosListaSocorro.pas' {FormInfoListaSocorro},
  UtCentralRelatorios in 'UtCentralRelatorios.pas' {FormCentralRelatorios},
  Vcl.Themes,
  Vcl.Styles,
  UtNucleo in 'UtNucleo.pas' {FormNucleo},
  UtDm in 'UtDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Light');
  Application.Title := 'Center Bus - Revis�o de Frotas';
  Application.CreateForm(TFormNucleo, FormNucleo);
  Application.CreateForm(Tpai, pai);
  Application.CreateForm(TFormIniciaSistema, FormIniciaSistema);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.CreateForm(TFormBuscar, FormBuscar);
  Application.CreateForm(TFormNotasVersao, FormNotasVersao);
  Application.CreateForm(TFormCentralRelatorios, FormCentralRelatorios);
  Application.CreateForm(TDM, DM);
  TTraducao.ChangeValues;
  Application.Run;
end.
