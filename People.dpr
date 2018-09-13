program People;

uses
  Forms,
  UnitTelaPrincipal in 'UnitTelaPrincipal.pas' {FormEntrada},
  UnitCadastroClinicas in 'UnitCadastroClinicas.pas' {FormCadastroClinicas},
  UnitMae in 'UnitMae.pas' {Mae: TDataModule},
  UnitCadastroLaboratorios in 'UnitCadastroLaboratorios.pas' {FormCadastroLaboratorios},
  UnitCadastroTipoAtendimentoMedico in 'UnitCadastroTipoAtendimentoMedico.pas' {FormCadastroTipoAtendimentoMedico},
  UnitCadastroTipoExames in 'UnitCadastroTipoExames.pas' {FormCadastroTipoExames},
  UnitCadastroMedico in 'UnitCadastroMedico.pas' {FormCadastroMedico},
  UnitCadastroProfissional in 'UnitCadastroProfissional.pas' {FormCadastroProfissional},
  UnitCadastroFuncoes in 'UnitCadastroFuncoes.pas' {FormCadastroFuncao},
  UnitCadastroDepto in 'UnitCadastroDepto.pas' {FormCadastroDepto},
  UnitIniciaSistema in 'UnitIniciaSistema.pas' {FormIniciaSistema},
  UnitConsultaCandidatos in 'UnitConsultaCandidatos.pas' {FormConsultaCandidatos},
  UnitConsultaProfissionais in 'UnitConsultaProfissionais.pas' {FormConsultaProfissionais},
  UnitGeraExameMedico in 'UnitGeraExameMedico.pas' {FormGeraExameMedico},
  RelatorioEmiteExame in 'RelatorioEmiteExame.pas' {FormGeraRelatorios},
  UnitCadastraAtestado in 'UnitCadastraAtestado.pas' {FormCadastraAtestado},
  UnitLancaAtestado in 'UnitLancaAtestado.pas' {FormLancaAtestado},
  UnitLancaPeriodico in 'UnitLancaPeriodico.pas' {FormLancaPeriodico},
  UnitLancaFichaClinica in 'UnitLancaFichaClinica.pas' {FormLancaFichaClinica},
  UnitCadastraAdvertencia in 'UnitCadastraAdvertencia.pas' {FormCadastraAdvertencia},
  UnitCadastraMotivoAdvertencias in 'UnitCadastraMotivoAdvertencias.pas' {FormCadastraHistoricoAdvertencia},
  UnitLancaAdvertencia in 'UnitLancaAdvertencia.pas' {FormLancaAdvertencias},
  UnitLancaSuspensoes in 'UnitLancaSuspensoes.pas' {FormLancaSuspensoes},
  UnitLancaFalta in 'UnitLancaFalta.pas' {FormLancaFalta},
  UnitCadastraOcorrencia in 'UnitCadastraOcorrencia.pas' {FormCadastraOcorrencias},
  UnitLancaReclamacao in 'UnitLancaReclamacao.pas' {FormLancaReclamacao},
  UnitLancaDebito in 'UnitLancaDebito.pas' {FormLancaDebito},
  UnitLancaAvaria in 'UnitLancaAvaria.pas' {FormLancaAvaria},
  UnitAtendimentoPersonalizado in 'UnitAtendimentoPersonalizado.pas' {FormCadastraAtendimentoPersonalizado},
  UnitLancaElogio in 'UnitLancaElogio.pas' {FormLancaElogio},
  UnitlancaVisita in 'UnitlancaVisita.pas' {FormLancaVisita},
  UnitAniversario in 'UnitAniversario.pas' {FormAniversariantes},
  UnitCNH in 'UnitCNH.pas' {FormCNH},
  UnitMediaAtestado in 'UnitMediaAtestado.pas' {FormMediaAtestado},
  UnitImportaPro in 'UnitImportaPro.pas' {FormImportaPro},
  UnitLancaEventos in 'UnitLancaEventos.pas' {FormLancaEventos},
  UnitConvoca in 'UnitConvoca.pas' {FormConvoca},
  UnitLancaEmprestimo in 'UnitLancaEmprestimo.pas' {FormLancaEmprestimo},
  UnitLancaCarreira in 'UnitLancaCarreira.pas' {FormLancaCarreira},
  UnitLancaMultas in 'UnitLancaMultas.pas' {FormLancaMulta},
  UnitCadastraCid in 'UnitCadastraCid.pas' {FormCadastraCid},
  UnitImportaADV in 'UnitImportaADV.pas' {FormImportaADV},
  UnitImportaFalta in 'UnitImportaFalta.pas' {FormImportaFalta},
  UnitImportaAtestado in 'UnitImportaAtestado.pas' {FormImportaAtestado},
  UnitFichaFuncional in 'UnitFichaFuncional.pas' {FormFichaFuncional},
  UnitImportaCid in 'UnitImportaCid.pas' {FormImportaCid},
  UnitLancaAcidentes in 'UnitLancaAcidentes.pas' {FormLancaAcidentes},
  UnitLancaAutos in 'UnitLancaAutos.pas' {FormLancaAutos},
  UnitImportaRecl in 'UnitImportaRecl.pas' {FormImportaRecl},
  UniImportaSuspensoes in 'UniImportaSuspensoes.pas' {FormImportaSus},
  UnitImportaAvarias in 'UnitImportaAvarias.pas' {FormImportaAvarias},
  UnitImportaEventos in 'UnitImportaEventos.pas' {FormImportaEventos},
  UnitImportaAcidentes in 'UnitImportaAcidentes.pas' {FormImportaAcidente},
  UnitSac in 'UnitSac.pas' {FormSac},
  UnitRelatorioPro in 'UnitRelatorioPro.pas' {FormRelatorioPro};

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestão de Pessoal';
  Application.CreateForm(TMae, Mae);
  Application.CreateForm(TFormIniciaSistema, FormIniciaSistema);
  Application.CreateForm(TFormGeraRelatorios, FormGeraRelatorios);
  Application.CreateForm(TFormCadastraHistoricoAdvertencia, FormCadastraHistoricoAdvertencia);
  //  Application.CreateForm(TMae, Mae);
  Application.Run;
end.
