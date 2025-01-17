unit UnitRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, RpRenderCanvas, RpRenderPrinter,
  RpRenderText, RpRender, RpRenderPDF, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave, RpRenderJPEG, RpRenderHTML, RpShell, RpTable, RpDBTabl,
  RpRenderRTF;

type
  TRelatorio = class(TForm)
    QrSRVFIX: TADOQuery;
    ConectSerFix: TRvDataSetConnection;
    QrSRVFIXSFX_CODIGO: TSmallintField;
    QrSRVFIXSFX_DES: TWideStringField;
    QrSRVFIXSFX_CONTROLE: TWideStringField;
    QrSRVFIXSFX_HIS: TWideStringField;
    QrColigada: TADOQuery;
    ConeColigada: TRvDataSetConnection;
    ConeServCont: TRvDataSetConnection;
    QrServCont: TADOQuery;
    QrBaseRev: TADOQuery;
    ConcBaseRev: TRvDataSetConnection;
    QrVeiculos: TADOQuery;
    ConectVeiculos: TRvDataSetConnection;
    QrSRVFIXSFX_SETOR: TWordField;
    QrSRVFIXSFX_COLIGADA: TWordField;
    Conectprateleira: TRvDataSetConnection;
    QrPrdPrat: TADOQuery;
    ConctPrdPrat: TRvDataSetConnection;
    QrMovAbast: TADOQuery;
    ConecMovAbast: TRvDataSetConnection;
    QrAvarias: TADOQuery;
    ConeAvaria: TRvDataSetConnection;
    QrMovPrd: TADOQuery;
    ConeMovPrd: TRvDataSetConnection;
    QrSaiPrd: TADOQuery;
    ConeSaiPrd: TRvDataSetConnection;
    ConeCadSerCon: TRvDataSetConnection;
    QrCadSerCon: TADOQuery;
    QrSaiGru: TADOQuery;
    QrNotEnt: TADOQuery;
    ConecNotEnt: TRvDataSetConnection;
    QrEntPrd: TADOQuery;
    ConecEntPRd: TRvDataSetConnection;
    CtSaidaGrupos: TRvDataSetConnection;
    QrRelGru: TADOQuery;
    QrGruVei: TADOQuery;
    CnGruVei: TRvDataSetConnection;
    QrRevVen: TADOQuery;
    CnRevVen: TRvDataSetConnection;
    QrSaidaProdutoGrupo: TADOQuery;
    CnSaidaProdutoGrupo: TRvDataSetConnection;
    QrAbastSintetico: TADOQuery;
    CnAbastSintetico: TRvDataSetConnection;
    QrCustoKm: TADOQuery;
    CnCustoKm: TRvDataSetConnection;
    QrProdutos: TADOQuery;
    CnProdutos: TRvDataSetConnection;
    QrDadosCustoKm: TADOQuery;
    CnDadosCustoKm: TRvDataSetConnection;
    QrEntGru: TADOQuery;
    CnEntGru: TRvDataSetConnection;
    QrPosicaoEstoque: TADOQuery;
    CnPosicaoEstoque: TRvDataSetConnection;
    QrIndiceRecl: TADOQuery;
    CnIndiceRecl: TRvDataSetConnection;
    QrPneuCusto1: TADOQuery;
    CnPneuCusto1: TRvDataSetConnection;
    QrPneuCusto2: TADOQuery;
    DnPneuCusto2: TRvDataSetConnection;
    QrAbaSis: TADOQuery;
    CnAbaSis: TRvDataSetConnection;
    ADOQuery1: TADOQuery;
    RvDataSetConnection1: TRvDataSetConnection;
    CnCadPrd: TRvDataSetConnection;
    QrCadPrd: TADOQuery;
    QrPmcAberto: TADOQuery;
    CnPmcAberto: TRvDataSetConnection;
    CnEnvPnRef: TRvDataSetConnection;
    QrEnvPnRef: TADOQuery;
    CnPnInventario: TRvDataSetConnection;
    QrPnInventerio: TADOQuery;
    QrPneuNovo: TADOQuery;
    CnPneuNovo: TRvDataSetConnection;
    QrPneuRef1: TADOQuery;
    DnPneuRef1: TRvDataSetConnection;
    QrCadastroPneu: TADOQuery;
    CnCadastroPneu: TRvDataSetConnection;
    QrCadastroPnRef: TADOQuery;
    CnCadastroPnRef: TRvDataSetConnection;
    QrVeiPn: TADOQuery;
    CnVeiPn: TRvDataSetConnection;
    QrComponentes: TADOQuery;
    CnComponentes: TRvDataSetConnection;
    QrIndRecl: TADOQuery;
    CnIndRecDetail: TRvDataSetConnection;
    QrPrdPratCodigoPrd: TStringField;
    QrPrdPratCodigoAuxiliar: TStringField;
    QrPrdPratDescricao: TStringField;
    QrPrdPratSaldoFisico2: TBCDField;
    QrPrdPratPrateleira: TStringField;
    QrPrateleiras: TADOQuery;
    CnPrateleiras: TRvDataSetConnection;
    QrPneuHis: TADOQuery;
    CnPneuHis: TRvDataSetConnection;
    QrCardex: TADOQuery;
    CnCardex: TRvDataSetConnection;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    GERENCIALGRUPOS: TADOQuery;
    CNGERENCIALGRUPOS: TRvDataSetConnection;
    GERENCIALDIESEL: TADOQuery;
    CNGERENCIALDIESEL: TRvDataSetConnection;
    GERENCIALPNEUS: TADOQuery;
    CNGERENCIALPNEUS: TRvDataSetConnection;
    RvDataSetConnection2: TRvDataSetConnection;
    Panel2: TPanel;
    CNGERENCIALDESPESAS: TRvDataSetConnection;
    GERENCIALDESPESAS: TADOQuery;
    GERENCIALCONSUMODIESEL: TADOQuery;
    CNGERENCIALCONSUMODIESEL: TRvDataSetConnection;
    GERENCIALTOTAISP3: TADOQuery;
    CNGERENCIAISTOTAISP3: TRvDataSetConnection;
    QrTotalVeiculos: TADOQuery;
    CNTOTALVEICULOS: TRvDataSetConnection;
    ADOQuery4: TADOQuery;
    GERENCIALPLANILHALUB: TADOQuery;
    CnGerencialplanilhaLub: TRvDataSetConnection;
    GerencialSubGrupos: TADOQuery;
    CnGerencialSubGrupo: TRvDataSetConnection;
    QrIncidenciaTroca: TADOQuery;
    DtIncidenciaTroca: TRvDataSetConnection;
    Label1: TLabel;
    QrCustoKm2: TADOQuery;
    CnCustoKm2: TRvDataSetConnection;
    QrAbastSinLayOut: TADOQuery;
    CnAbastSintLayOut: TRvDataSetConnection;
    QrInventarioDiario: TADOQuery;
    CnInventarioDiario: TRvDataSetConnection;
    QrInvPneu: TADOQuery;
    CnInvPneu: TRvDataSetConnection;
    QrResumoEntradaSaida: TADOQuery;
    CnResumoEntradaSaida: TRvDataSetConnection;
    QrServicosComponentes: TADOQuery;
    CnServicosComponentes: TRvDataSetConnection;
    QrOsMov: TADOQuery;
    CnOSMov: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    Projeto: TRvProject;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderJpeg1: TRvRenderJpeg;
    QrCustoKm_ChaAno: TADOQuery;
    CnCustoKm_ChaANo: TRvDataSetConnection;
    QrAbastSintLinha: TADOQuery;
    CNAbastSintLinha: TRvDataSetConnection;
    Label2: TLabel;
    RvRenderText1: TRvRenderText;
    RvRenderRTF1: TRvRenderRTF;
    DBTablePrinter1: TDBTablePrinter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

uses UnitPai, UnitServerPai;

{$R *.dfm}

end.
