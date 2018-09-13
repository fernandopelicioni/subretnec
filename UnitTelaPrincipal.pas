unit UnitTelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnColorMaps, ActnMan, XPMan, Menus, ComCtrls, CustomizeDlg,
  StdCtrls, jpeg, ExtCtrls, ActnMenus, ToolWin, ActnCtrls, Buttons,
  DB, DBTables, ImgList;

type
  TFormEntrada = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    XPManifest1: TXPManifest;
    CustomizeDlg1: TCustomizeDlg;
    Timer1: TTimer;
    TwilightColorMap1: TTwilightColorMap;
    ToolBar1: TToolBar;
    Label3: TLabel;
    Cadastros1: TMenuItem;
    Profissionais1: TMenuItem;
    Medicina1: TMenuItem;
    Profissional1: TMenuItem;
    Funes1: TMenuItem;
    Departamentos1: TMenuItem;
    d1: TMenuItem;
    Mdicos1: TMenuItem;
    Doenas1: TMenuItem;
    RecursosHumanos1: TMenuItem;
    iposdeAtendimentos1: TMenuItem;
    Bandeira: TImage;
    iposdeExames1: TMenuItem;
    Laboratrios1: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton22: TSpeedButton;
    ToolButton1: TToolButton;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    ConsultarProfissionis1: TMenuItem;
    BalloonHint1: TBalloonHint;
    SpeedButton10: TSpeedButton;
    RecursosHumanos2: TMenuItem;
    Advertencias1: TMenuItem;
    Suspenses1: TMenuItem;
    Faltas1: TMenuItem;
    HistoricoparaAdvertencias1: TMenuItem;
    GerarAdvertncia1: TMenuItem;
    Operacional1: TMenuItem;
    MedicinadoTrabalho1: TMenuItem;
    Operacional2: TMenuItem;
    SolicitaodeExamesMdicos1: TMenuItem;
    AtendimentoMdico1: TMenuItem;
    RegistrarAvariasemVeculos1: TMenuItem;
    RegistrarAcidentesdeTrnsito1: TMenuItem;
    RegistratMultasdeTrnsito1: TMenuItem;
    ReclamaesDiversas1: TMenuItem;
    DbitosnaPrestaodeConta1: TMenuItem;
    MedicinadoTrabalho2: TMenuItem;
    ColaboradorescomexamesPendentes1: TMenuItem;
    SpeedButton1: TSpeedButton;
    AtendimentosPersonalizados1: TMenuItem;
    Aniversriantes1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    RegulamentaodeCNHs1: TMenuItem;
    BitBtn1: TBitBtn;
    MdiadeAtestadosporColaborador1: TMenuItem;
    ImportarRMFOLHALABORE1: TMenuItem;
    SpeedButton3: TSpeedButton;
    ConvocarColaborador1: TMenuItem;
    DepartamentoPessoal1: TMenuItem;
    RegistrodePonto1: TMenuItem;
    AtestadosMdicos1: TMenuItem;
    CIDCodigoInternacionaldeDoenas1: TMenuItem;
    Importaes1: TMenuItem;
    Advertencias2: TMenuItem;
    Faltas2: TMenuItem;
    Atestados1: TMenuItem;
    RecursosHumanos3: TMenuItem;
    PerfildoColaboradorFichaFuncional1: TMenuItem;
    CID1: TMenuItem;
    AtestadosMdicosporCID1: TMenuItem;
    PontoOperacional1: TMenuItem;
    PontoColaboradoresInternos1: TMenuItem;
    Reclamaes1: TMenuItem;
    Suspenses2: TMenuItem;
    Avarias1: TMenuItem;
    Eventos1: TMenuItem;
    Acidentes1: TMenuItem;
    SobreGenomaSoftware1: TMenuItem;
    NotasdeVerso1: TMenuItem;
    ProgramadeQualidadeGenoma1: TMenuItem;
    Cadastros2: TMenuItem;
    ColaboradoresCadastrados1: TMenuItem;
    Funes2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    procedure Linhas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure iposdeAtendimentos1Click(Sender: TObject);
    procedure iposdeExames1Click(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure Laboratrios1Click(Sender: TObject);
    procedure Mdicos1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure Funes1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ConsultarProfissionis1Click(Sender: TObject);
    procedure EmissodeExames1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure HistoricoparaAdvertencias1Click(Sender: TObject);
    procedure GerarAdvertncia1Click(Sender: TObject);
    procedure OcorrnciasdeOperao1Click(Sender: TObject);
    procedure RegistrarAvariasemVeculos1Click(Sender: TObject);
    procedure ColaboradorescomexamesPendentes1Click(Sender: TObject);
    procedure AtendimentosPersonalizados1Click(Sender: TObject);
    procedure Aniversriantes1Click(Sender: TObject);
    procedure RegulamentaodeCNHs1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MdiadeAtestadosporColaborador1Click(Sender: TObject);
    procedure ImportarRMFOLHALABORE1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ConvocarColaborador1Click(Sender: TObject);
    procedure CIDCodigoInternacionaldeDoenas1Click(Sender: TObject);
    procedure Advertencias2Click(Sender: TObject);
    procedure Faltas2Click(Sender: TObject);
    procedure Atestados1Click(Sender: TObject);
    procedure PerfildoColaboradorFichaFuncional1Click(Sender: TObject);
    procedure CID1Click(Sender: TObject);
    procedure AtestadosMdicosporCID1Click(Sender: TObject);
    procedure Reclamaes1Click(Sender: TObject);
    procedure Suspenses2Click(Sender: TObject);
    procedure Avarias1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure Acidentes1Click(Sender: TObject);
    procedure ProgramadeQualidadeGenoma1Click(Sender: TObject);
    procedure ColaboradoresCadastrados1Click(Sender: TObject);
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

uses UnitCadastroClinicas, UnitCadastroLaboratorios, UnitCadastroTipoExames,
  UnitCadastroTipoAtendimentoMedico, UnitCadastroMedico,
  UnitCadastroProfissional, UnitCadastroFuncoes, UnitCadastroDepto,
  UnitIniciaSistema, UnitConsultaCandidatos, UnitMae, UnitConsultaProfissionais,
  UnitGeraExameMedico, UnitCadastraAtestado, UnitCadastraMotivoAdvertencias,
  UnitCadastraAdvertencia, UnitCadastraOcorrencia, RelatorioEmiteExame,
  UnitAtendimentoPersonalizado, UnitAniversario, UnitCNH, UnitMediaAtestado,
  UnitImportaPro, UnitConvoca, UnitCadastraCid, UnitImportaADV,
  UnitImportaFalta, UnitImportaAtestado, UnitFichaFuncional, UnitImportaCid,
  UnitImportaRecl, UniImportaSuspensoes, UnitImportaAvarias, UnitImportaEventos,
  UnitImportaAcidentes,UnitSac, UnitRelatorioPro;


{$R *.dfm}

procedure TFormEntrada.Laboratrios1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroLaboratorios,FormCadastroLaboratorios);
FormCadastroLaboratorios.ShowModal;

end;

procedure TFormEntrada.Linhas1Click(Sender: TObject);
begin
//Application.CreateForm(TFormFuncao, FormFuncao);
//FormFUncao.show;
end;

procedure TFormEntrada.MdiadeAtestadosporColaborador1Click(Sender: TObject);
begin
Application.CreateForm(TFormMediaAtestado,FormMediaAtestado);
FormMediaAtestado.Show;
end;

procedure TFormEntrada.Mdicos1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroMedico,FormCadastroMedico);
FormCadastroMedico.ShowModal;

end;

procedure TFormEntrada.OcorrnciasdeOperao1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraOcorrencias,FormCadastraOcorrencias);
FormCadastraOcorrencias.ShowModal;

end;

procedure TFormEntrada.PerfildoColaboradorFichaFuncional1Click(Sender: TObject);
begin
Application.CreateForm(TFormFichaFuncional, FormFichaFuncional);
FormFichaFuncional.ShowModal;
end;

procedure TFormEntrada.ProgramadeQualidadeGenoma1Click(Sender: TObject);
begin
Application.CreateForm(TFormSac,FormSac);
FormSac.ShowModal;

end;

procedure TFormEntrada.Reclamaes1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaRecl,FormImportaRecl);
FormImportaRecl.showmodal;

end;

procedure TFormEntrada.RegistrarAvariasemVeculos1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraOcorrencias,FormCadastraOcorrencias);
//FormCadastraOcorrencias.PageControl1.ActivePage:=TabSheet6;
FormCadastraOcorrencias.ShowModal;

end;

procedure TFormEntrada.RegulamentaodeCNHs1Click(Sender: TObject);
begin
Application.CreateForm(TFormCNH, FormCNH);
FormCNH.showModal;
end;

procedure TFormEntrada.FormShow(Sender: TObject);
begin
StatusBar1.Panels[0].text:='Usuário Atual : ' + usuario;
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);

end;

procedure TFormEntrada.Funes1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroFuncao,FormCadastroFuncao);
FormCadastroFuncao.show;

end;

procedure TFormEntrada.GerarAdvertncia1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraAdvertencia,FormCadastraAdvertencia);
FormCadastraAdvertencia.showmodal;

end;

procedure TFormEntrada.HistoricoparaAdvertencias1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraHistoricoAdvertencia,FormCadastraHistoricoAdvertencia);
FormCadastraHistoricoAdvertencia.showmodal;

end;

procedure TFormEntrada.ImportarRMFOLHALABORE1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaPro, FormImportaPro);
FormImportaPro.ShowModal;
end;

procedure TFormEntrada.iposdeAtendimentos1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroTipoAtendimentoMedico,FormCadastroTipoAtendimentoMedico);
FormCadastroTipoAtendimentoMedico.showmodal;

// Tabela: Tipo de atendimentos: Ambulatorial, Periodico, Demissional, Admissional, Entrega de exames
end;

procedure TFormEntrada.iposdeExames1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroTipoExames,FormCadastroTipoExames);
FormCadastroTipoExames.showmodal;
//Exames: Gama GT, Audiometria, RX Coluna, Colesterol, Etc;
end;

procedure TFormEntrada.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[2].text:=Copy(TimeToStr(now),1,5);
end;

procedure TFormEntrada.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFormEntrada.SpeedButton3Click(Sender: TObject);
begin
Hide;
FormIniciaSistema.Show;
end;

procedure TFormEntrada.SpeedButton8Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    Application.CreateForm(TFormCadastroProfissional,FormCadastroProfissional);
    FormCadastroProfissional.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usuário não Autorizado para este Módulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.SpeedButton9Click(Sender: TObject);
Var
EmpresaAtual : String;
begin
EmpresaAtual:=mae.TbCadastroColigadaDES_COLIGADA.Text;
ShowMessage('Este atendimento esta direcionado à profissionais da Coligada : ' + EmpresaAtual+'                     '+#13+#13+#13+#13+#13+#13+#13+#13 );
end;

procedure TFormEntrada.Suspenses2Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaSus,FormImportaSus);
FormImportaSus.Show;

end;

procedure TFormEntrada.SpeedButton10Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    Application.CreateForm(TFormGeraExameMedico,FormGeraExameMedico);
    FormGeraExameMedico.showModal;
    end
    Else
    MessageBox(Handle,'Classe de Usuário não Autorizado para este Módulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.SpeedButton1Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    Application.CreateForm(TFormCadastraAtestado,FormCadastraAtestado);
    FormCadastraAtestado.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usuário não Autorizado para este Módulo','Aviso !!',MB_IconInformation + MB_Ok);
//      MessageBox(handle,'Usuário não Cadastrado !','Problema encontrado', MB_ICONINFORMATION + MB_OK);

end;

procedure TFormEntrada.SpeedButton22Click(Sender: TObject);
begin
Application.CreateForm(TFormConsultaCandidatos,FormConsultaCandidatos);
FormConsultaCandidatos.showModal;

end;

procedure TFormEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
application.terminate;
ACTION:=CAFREE;
end;

procedure TFormEntrada.Acidentes1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaAcidente,FormImportaAcidente);
FormImportaAcidente.ShowModal;

end;

procedure TFormEntrada.Advertencias2Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaADV,FormImportaADV);
FormImportaADV.showmodal;
end;

procedure TFormEntrada.Aniversriantes1Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    Application.CreateForm(TFormAniversariantes,FormAniversariantes);
    FormAniversariantes.showModal;
    end
    Else
    MessageBox(Handle,'Classe de Usuário não Autorizado para este Módulo','Aviso !!',MB_IconInformation + MB_Ok);

end;

procedure TFormEntrada.AtendimentosPersonalizados1Click(Sender: TObject);
begin
if nivel >= 5 then
    begin
    Application.CreateForm(TFormCadastraAtendimentoPersonalizado,FormCadastraAtendimentoPersonalizado);
    FormCadastraAtendimentoPersonalizado.ShowModal;
    end
    Else
    MessageBox(Handle,'Classe de Usuário não Autorizado para este Módulo','Aviso !!',MB_IconInformation + MB_Ok);


end;

procedure TFormEntrada.Atestados1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaAtestado,FormImportaAtestado);
FormImportaAtestado.showmodal;

end;

procedure TFormEntrada.AtestadosMdicosporCID1Click(Sender: TObject);
begin
      FormGeraRelatorios.Projeto1.ExecuteReport('RvAtestadoCId');
      FormGeraRelatorios.Projeto1.close;

end;

procedure TFormEntrada.Avarias1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaAvarias,FormImportaAvarias);
FormImportaAvarias.ShowModal;

end;

procedure TFormEntrada.BitBtn1Click(Sender: TObject);
var
dataAtual:string;
begin
DataAtual:=DateToStr(now);
with mae.QrPublica do
 Begin
 Close;
 Sql.Clear;
 Sql.Add('Select * from TB_Profissionais');
 Sql.Add('Where CNH_Val_Pro < ' + QuotedStr(DataAtual) + ' AND COD_COLIGADA = ' + Mae.TbCadastroColigada.FieldByName('Cod_Coligada').AsString + ';');
 Open;
 if not eof then
     begin
       Panel1.Visible:=true;
       Image2.Visible:=True;
     end
     Else
     begin
       Panel1.Visible:=False;
       Image2.Visible:=False;
     end;
 End;
With Mae.QrPublica do
    begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from TB_MovimentoAso A, Tb_Profissionais B');
    Sql.Add('Where B.Cod_Pro = A.Aso_Chapa and Aso_Entrega = ' + QuotedStr('N') +' And Aso_DataEntregaPrevista < ' + QuotedStr(DataAtual) + ' AND B.COD_COLIGADA = ' + Mae.TbCadastroColigada.FieldByName('Cod_Coligada').AsString + ';');
    Open;
    if not eof then
        begin
         Panel1.Visible:=true;
         Image1.Visible:=True;
         end
         Else
         begin
           Image1.Visible:=False;
         end;

    end;
Mae.QrPublica.Close;


end;

procedure TFormEntrada.CID1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaCid, FormImportaCid);
FormImportaCid.ShowModal;

end;

procedure TFormEntrada.CIDCodigoInternacionaldeDoenas1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraCid, FormCadastraCid);
FormCadastraCid.ShowModal;
end;

procedure TFormEntrada.ColaboradoresCadastrados1Click(Sender: TObject);
begin
Application.CreateForm(TFormRelatorioPro, FormRelatorioPro);
FormrelatorioPro.ShowModal;

end;

procedure TFormEntrada.ColaboradorescomexamesPendentes1Click(Sender: TObject);
begin
with FormGeraRelatorios.QrMovimentoAso do
    begin
    Close;
    Sql.Clear;
    Sql.Add('Select * from TB_MovimentoAso A, TB_PROFISSIONAIS B, TB_LABORATORIOS C, TB_TIPOEXAMES D, TB_FUNCAO E, TB_COLIGADAS F, TB_ATE_MEDICO G');
    Sql.Add('WHERE B.cod_PRO = A.ASO_CHAPA AND C.COD_LABORATORIOS = A.ASO_LABORATORIO');
    Sql.Add('AND D.COD_TIPOEXAME = A.ASO_COD_EXAME AND B.FUN_PRO = E.COD_FUNCAO AND A.ASO_MODALIDADE = G.COD_ATE_MEDICO AND B.COD_COLIGADA = F.COD_COLIGADA and Aso_Entrega = '+quotedStr('N'));
    Sql.Add('Order By B.NOM_PRO;');
    Open;
    end;
      FormGeraRelatorios.Projeto1.ExecuteReport('RvExamePendente');
      FormGeraRelatorios.Projeto1.close;
end;


procedure TFormEntrada.ConsultarProfissionis1Click(Sender: TObject);
begin
Application.CreateForm(TFormConsultaProfissionais,FormConsultaProfissionais);
FormConsultaProfissionais.showModal;
end;


procedure TFormEntrada.ConvocarColaborador1Click(Sender: TObject);
begin
Application.CreateForm(TFormConvoca, FormConvoca);
FormConvoca.ShowModal;
end;

procedure TFormEntrada.d1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroClinicas,FormCadastroClinicas);
FormCadastroClinicas.ShowModal;
end;


procedure TFormEntrada.Departamentos1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastroDepto,FormCadastroDepto);
FormCadastroDepto.showmodal;
end;


procedure TFormEntrada.EmissodeExames1Click(Sender: TObject);
begin
Application.CreateForm(TFormCadastraAtestado,FormCadastraAtestado);
FormCadastraAtestado.Show;
end;


procedure TFormEntrada.Eventos1Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaEventos,FormImportaEventos);
FormImportaEventos.ShowModal;

end;

procedure TFormEntrada.Faltas2Click(Sender: TObject);
begin
Application.CreateForm(TFormImportaFalta,FormImportaFalta);
FormImportaFalta.showmodal;

end;

procedure TFormEntrada.FormActivate(Sender: TObject);
begin
label1.Caption:=IntToStr(Width);
label2.Caption:=IntToStr(Height);
if StrToInt(label1.Caption) > 1250  then
      begin
        bandeira.Top:=290;
        bandeira.LEFT:=750;
      end;

Statusbar1.Panels[0].Text:='Usuário : ' + Mae.QrUsuarios.FieldByName('usu_Login').Text;
label3.Caption:=FormIniciaSistema.editversao.Caption;
caption:='People - Gestão de Profissionais - Ver. '+Label3.Caption + '  - Coligada : ' + Mae.TbCadastroColigadaDES_COLIGADA.text;
versao:=label3.caption;
BitBtn1.Click;
With Mae.QrProfissionais do
  begin
  Close;
  sql.Clear;
  Sql.Add('Select * From TB_Profissionais A, TB_Funcao B');
  Sql.Add('Where a.Fun_Pro = B.Cod_Funcao and A.Cod_Coligada = ' + Mae.TbCadastroColigada.FieldByName('Cod_Coligada').AsString );
  Sql.Add('order By Nom_PRO');
  End;
With Mae.QrPro do
  begin
  Close;
  sql.Clear;
  Sql.Add('Select * From TB_Profissionais');
  Sql.Add('Where Cod_Coligada = ' + Mae.TbCadastroColigada.FieldByName('Cod_Coligada').AsString );
  Sql.Add('order By Nom_PRO');
   end;


end;

End.
