unit UtRelatorio;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportPDF,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportText, frxExportCSV, JvComponentBase,
  JvDBGridExport, frxExportHTML, frxExportRTF, JvgExportComponents;

type
  TRelatorio2 = class(TDataModule)
    FtPneuCustoKM: TfrxReport;
    CnPneuCustoKm: TfrxDBDataset;
    CnColigada: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    FtRequisitaGarantia: TfrxReport;
    CnSca: TfrxDBDataset;
    FtEntradaSaidagrupoSubgrupo: TfrxReport;
    FtEntradaSaidagrupoSubgrupo2: TfrxDBDataset;
    FtProdGrupoSubSintetico: TfrxReport;
    CnProGrupoSubSintetico: TfrxDBDataset;
    QrCurvaSaiPrd: TFDQuery;
    CnCurvaSaiPrd: TfrxDBDataset;
    FtCurvaSaiPrd: TfrxReport;
    QrCi: TFDQuery;
    CnCI: TfrxDBDataset;
    FTCI: TfrxReport;
    QrListaSocorroAnalitico: TFDQuery;
    CnListaSocorroAnalitico: TfrxDBDataset;
    FtListaSocAnal: TfrxReport;
    CnIndicePM: TfrxDBDataset;
    FtIndiceDefeitoVeiculos: TfrxReport;
    QrIndicePM: TFDQuery;
    CnIndiceQuebra: TfrxDBDataset;
    QrIndiceQuebra: TFDQuery;
    QrQtdQuebras: TFDQuery;
    CnQtdQuebras: TfrxDBDataset;
    CnSocTop5: TfrxDBDataset;
    QrSocTop5: TFDQuery;
    QrDefTop5: TFDQuery;
    CnDefTop5: TfrxDBDataset;
    CnKmPreventivas: TfrxDBDataset;
    FtKmPreventivas: TfrxReport;
    QrKmPreventivas: TFDQuery;
    CnSocGrupos: TfrxDBDataset;
    QrSocGrupos: TFDQuery;
    FtSocGrupos: TfrxReport;
    QrEntradaContaOrcamentaria: TFDQuery;
    CnEntradaContaOrcamentaria: TfrxDBDataset;
    FtEntradaContaOrcamentaria: TfrxReport;
    QrOrcadoXReal: TFDQuery;
    CnorcadoXReal: TfrxDBDataset;
    FtORcadoXRealMes: TfrxReport;
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    QrRPV: TFDQuery;
    CNRPV: TfrxDBDataset;
    FTRPV: TfrxReport;
    QrServExec1: TFDQuery;
    CNServExec1: TfrxDBDataset;
    FtServExec1: TfrxReport;
    QrAbastDias: TFDQuery;
    CnAbastDias: TfrxDBDataset;
    FTAbastDias: TfrxReport;
    QrAbastMedPdC: TFDQuery;
    QrAbastMedPdL: TFDQuery;
    QrDefeitoseSocorro: TFDQuery;
    CnDefeitoseSocorro: TfrxDBDataset;
    FtDefeitoseSocorro: TfrxReport;
    QrInventario: TFDQuery;
    CnInventario: TfrxDBDataset;
    FtInventario: TfrxReport;
    QrEntradaProdutos: TFDQuery;
    CnEntradaProdutos: TfrxDBDataset;
    FtEntradaProdutos: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    JvgExportExcel1: TJvgExportExcel;
    QrAvaria: TFDQuery;
    CnAvaria: TfrxDBDataset;
    FtAvaria: TfrxReport;
    QrAvariaTodas: TFDQuery;
    CnAvariaTodas: TfrxDBDataset;
    FtAvariaTodas: TfrxReport;
    QrKMRodRev: TFDQuery;
    CnKMRodRev: TfrxDBDataset;
    FtKMRodRev: TfrxReport;
    QrInventarioValorUn: TfrxReport;
    QrAvariaExecutada: TFDQuery;
    CnAvariaExecutada: TfrxDBDataset;
    FtAvariaExecutada: TfrxReport;
    QrAbastDiario: TFDQuery;
    CnAbastDiario: TfrxDBDataset;
    FtAbastDiario: TfrxReport;
  private
    { Private declarations }
  public
    //{ Public declarations }

  end;

var
  Relatorio2: TRelatorio2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitPai, UnitServerPai;

{$R *.dfm}

end.
