unit UnitServerPai;

interface

uses
  SysUtils, Classes, DB, Controls, ADODB, System.ImageList, Vcl.ImgList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tpai = class(TDataModule)
    ConctPai: TADOConnection;
    QrSRVFIX: TADOQuery;
    BalloonHint1: TBalloonHint;
    ConectCorpore: TADOConnection;
    QrModCha: TADOQuery;
    QrPadVei: TADOQuery;
    QrVeiculo: TADOQuery;
    QrVeiculoVEI_NUN: TWideStringField;
    QrVeiculoVEI_PLACA: TWideStringField;
    QrVeiculoVEI_AQUISICAO: TDateTimeField;
    QrVeiculoVEI_PADRAO: TSmallintField;
    QrVeiculoVEI_GRUPO: TSmallintField;
    QrVeiculoVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculoVEI_CENTROCUSTO: TStringField;
    QrVeiculoVEI_CHASSINUM: TWideStringField;
    QrVeiculoVEI_CHASSIANO: TWideStringField;
    QrVeiculoVEI_MODCHA: TSmallintField;
    QrVeiculoVEI_CARMOD: TSmallintField;
    QrVeiculoVEI_CARANO: TWideStringField;
    QrVeiculoVEI_OPERADOR: TWideStringField;
    QrVeiculoVEI_COLIGADA: TWordField;
    QrVeiculoVEI_CARNUM: TStringField;
    QrVeiculoVEI_STATUS: TWordField;
    QrVeiculoVEI_RENAVAN: TStringField;
    QrModCar: TADOQuery;
    QrIndiceRevisao: TADOQuery;
    QrServCont: TADOQuery;
    QrBaseRevisao: TADOQuery;
    QrMovRevisao: TADOQuery;
    QrRevGer: TADOQuery;
    QrPrd: TADOQuery;
    QrStatusVei: TADOQuery;
    QrColigadas: TADOQuery;
    QrColigadasCOD_COLIGADA: TWordField;
    QrColigadasDES_COLIGADA: TWideStringField;
    QrColigadasCGC_COLIGADA: TWideStringField;
    QrColigadasLOGO: TBlobField;
    QrUsuarios: TADOQuery;
    QrUsuariosUSU_CODIGO: TWordField;
    QrUsuariosUSU_LOGIN: TWideStringField;
    QrUsuariosUSU_SENHA: TWideStringField;
    QrUsuariosUSU_PERFIL: TWideStringField;
    QrUsuariosUSU_NIVEL: TWordField;
    QrVeiSistema: TADOQuery;
    QrVeiculoVEI_VSI: TWordField;
    QrColigadasPERFIL: TWideStringField;
    QrItemFichaManut: TADOQuery;
    QrFicContMan: TADOQuery;
    QrSetorMan: TADOQuery;
    QrVeiculosCompletos: TADOQuery;
    QrVeiculosCompletosVEI_NUN: TWideStringField;
    QrVeiculosCompletosVEI_PLACA: TWideStringField;
    QrVeiculosCompletosVEI_AQUISICAO: TDateTimeField;
    QrVeiculosCompletosVEI_PADRAO: TSmallintField;
    QrVeiculosCompletosVEI_GRUPO: TSmallintField;
    QrVeiculosCompletosVEI_CAMPOLIVRE: TWideStringField;
    QrVeiculosCompletosVEI_CENTROCUSTO: TStringField;
    QrVeiculosCompletosVEI_CHASSINUM: TWideStringField;
    QrVeiculosCompletosVEI_CHASSIANO: TWideStringField;
    QrVeiculosCompletosVEI_MODCHA: TSmallintField;
    QrVeiculosCompletosVEI_CARMOD: TSmallintField;
    QrVeiculosCompletosVEI_CARANO: TWideStringField;
    QrVeiculosCompletosVEI_OPERADOR: TWideStringField;
    QrVeiculosCompletosVEI_COLIGADA: TWordField;
    QrVeiculosCompletosCAR_COD: TSmallintField;
    QrVeiculosCompletosCAR_DES: TWideStringField;
    QrVeiculosCompletosMOD_COD: TSmallintField;
    QrVeiculosCompletosMOD_DES: TWideStringField;
    QrVeiculosCompletosMOD_MEDCOMBUSTIVEL: TBCDField;
    QrVeiculosCompletosMOD_MEDKM: TIntegerField;
    QrVeiculosCompletosMOD_EIXOS: TWordField;
    QrVeiculosCompletosMOD_MEDCOMMAX: TBCDField;
    QrVeiculosCompletosTIN_VEI: TWideStringField;
    QrVeiculosCompletosTIN_ULTCOL: TDateTimeField;
    QrVeiculosCompletosTIN_ODO: TIntegerField;
    QrVeiculosCompletosTIN_ULTMED: TBCDField;
    QrTMov: TADOQuery;
    QrPro: TADOQuery;
    QrPrdCODCOLIGADA: TSmallintField;
    QrPrdIDPRD: TIntegerField;
    QrPrdCODIGOPRD: TStringField;
    QrPrdNOMEFANTASIA: TStringField;
    QrPrdCODIGOREDUZIDO: TStringField;
    QrPrdCODFAB: TStringField;
    QrPrdNUMNOFABRIC: TStringField;
    QrPrdREPASSEFABRIC: TBCDField;
    QrPrdULTIMONIVEL: TSmallintField;
    QrPrdTIPO: TStringField;
    QrPrdDESCRICAO: TStringField;
    QrPrdDESCRICAOAUX: TStringField;
    QrPrdCODIGOAUXILIAR: TStringField;
    QrPrdPRECO1: TBCDField;
    QrPrdPRECO2: TBCDField;
    QrPrdPRECO3: TBCDField;
    QrPrdPRECO4: TBCDField;
    QrPrdPRECO5: TBCDField;
    QrPrdDATABASEPRECO1: TDateTimeField;
    QrPrdDATABASEPRECO2: TDateTimeField;
    QrPrdDATABASEPRECO3: TDateTimeField;
    QrPrdDATABASEPRECO4: TDateTimeField;
    QrPrdDATABASEPRECO5: TDateTimeField;
    QrPrdCODMOEPRECO1: TStringField;
    QrPrdCODMOEPRECO2: TStringField;
    QrPrdCODMOEPRECO3: TStringField;
    QrPrdCODMOEPRECO4: TStringField;
    QrPrdCODMOEPRECO5: TStringField;
    QrPrdREFERENCIACCF: TStringField;
    QrPrdNUMEROCCF: TStringField;
    QrPrdREFERENCIACP: TSmallintField;
    QrPrdDESCRICAOCP: TStringField;
    QrPrdNUMEROTRIBUTOS: TSmallintField;
    QrPrdPESOLIQUIDO: TBCDField;
    QrPrdPESOBRUTO: TBCDField;
    QrPrdCOMPRIMENTO: TBCDField;
    QrPrdESPESSURA: TBCDField;
    QrPrdLARGURA: TBCDField;
    QrPrdCOR: TStringField;
    QrPrdOBSERVACAO: TStringField;
    QrPrdCODUNDCONTROLE: TStringField;
    QrPrdCODCPG: TStringField;
    QrPrdMARGEMLUCROFISC: TBCDField;
    QrPrdFATORREDUCAOICMS: TBCDField;
    QrPrdCONCEITOABC: TStringField;
    QrPrdESTOQUEMINIMO1: TBCDField;
    QrPrdESTOQUEMAXIMO1: TBCDField;
    QrPrdESTOQUEMINIMO2: TBCDField;
    QrPrdESTOQUEMAXIMO2: TBCDField;
    QrPrdESTOQUEMINIMO3: TBCDField;
    QrPrdESTOQUEMAXIMO3: TBCDField;
    QrPrdPONTODEPEDIDO1: TBCDField;
    QrPrdPONTODEPEDIDO2: TBCDField;
    QrPrdPONTODEPEDIDO3: TBCDField;
    QrPrdDTCADASTRAMENTO: TDateTimeField;
    QrPrdDTULTIMOREAJUSTE: TDateTimeField;
    QrPrdPERCENTCOMISSAO: TBCDField;
    QrPrdDESCONTOCOMPRA: TBCDField;
    QrPrdDESCONTOVENDA: TBCDField;
    QrPrdCUSTOUNITARIO: TBCDField;
    QrPrdDTCUSTOUNITARIO: TDateTimeField;
    QrPrdCODTIP: TStringField;
    QrPrdCODTB1FAT: TStringField;
    QrPrdCODTB2FAT: TStringField;
    QrPrdCODTB3FAT: TStringField;
    QrPrdCODTB4FAT: TStringField;
    QrPrdCODTB5FAT: TStringField;
    QrPrdMARGEMBRUTALUCRO: TBCDField;
    QrPrdSALDOGERALFISICO: TBCDField;
    QrPrdPERCENTCOMISSAO2: TBCDField;
    QrPrdCODUNDCOMPRA: TStringField;
    QrPrdCODUNDVENDA: TStringField;
    QrPrdDTULTIMAVENDAA: TDateTimeField;
    QrPrdDTULTIMAVENDAB: TDateTimeField;
    QrPrdRECALCCUSTOMEDIO: TSmallintField;
    QrPrdEPERIODICO: TSmallintField;
    QrPrdCAMPOLIVRE: TIntegerField;
    QrPrdCAMPOLIVRE2: TStringField;
    QrPrdCAMPOLIVRE3: TStringField;
    QrPrdIDPRODUTORELAC: TIntegerField;
    QrPrdCUSTOMEDIO: TBCDField;
    QrPrdDATACUSTOMEDIO: TDateTimeField;
    QrPrdIDPRDRELAC2: TIntegerField;
    QrPrdDTULTIMACOMPRA: TDateTimeField;
    QrPrdCUSTOREPOSICAO: TBCDField;
    QrPrdSALDOGERALFINANC: TBCDField;
    QrPrdDTULTIMACOMPRAB: TDateTimeField;
    QrPrdCUSTOREPOSICAOB: TBCDField;
    QrPrdCLCONTABIL: TStringField;
    QrPrdPERCENTCOMISSAO3: TBCDField;
    QrPrdCODGRD: TStringField;
    QrPrdTIPOCONTA: TStringField;
    QrPrdLOCALDESCARGA: TStringField;
    QrPrdCODCOLCONTAGER: TSmallintField;
    QrPrdCODCONTAGER: TStringField;
    QrPrdUSANUMDECPRECO: TSmallintField;
    QrPrdNUMDECPRECO: TSmallintField;
    QrPrdTEMPO: TBCDField;
    QrPrdCODAREA: TIntegerField;
    QrPrdBLOCK: TSmallintField;
    QrPrdCLASSEFISCALECF: TSmallintField;
    QrPrdMULTIPLOPRD: TBCDField;
    QrPrdINATIVO: TSmallintField;
    QrPrdCODTIPOAPL: TStringField;
    QrPrdIDFORMA: TIntegerField;
    QrPrdPERCENTIMPORTADO: TBCDField;
    QrPrdDATAEXTRA1: TDateTimeField;
    QrPrdDATAEXTRA2: TDateTimeField;
    QrPrdPESAVEL: TSmallintField;
    QrPrdTOLERANCIASUP: TBCDField;
    QrPrdTOLERANCIAINF: TBCDField;
    QrPrdCODGRUPO: TStringField;
    QrPrdDATAULTALTERACAO: TDateTimeField;
    QrPrdIDIMAGEM: TIntegerField;
    QrPrdDATAPRIMEIRAALT: TDateTimeField;
    QrPrdCODDIEF: TStringField;
    QrPrdDIAMETRO: TBCDField;
    QrPrdTRIBUTACAOECF: TStringField;
    QrPrdCONTROLADOPORLOTE: TIntegerField;
    QrPrdTIPOCALCULOCUSTO: TSmallintField;
    QrPrdMASCARANUMSERIE: TStringField;
    QrPrdUSANUMSERIE: TIntegerField;
    QrPrdCUSTOPADRAO: TIntegerField;
    QrPrdCODUSUARIO: TStringField;
    QrPrdTEMPOVALIDADE: TIntegerField;
    QrPrdUSUARIOCRIACAO: TStringField;
    QrPrdINVENTARIOFISCAL: TSmallintField;
    QrPrdCODGRUPOBEM: TStringField;
    QrPrdVALIDADEMINIMA: TIntegerField;
    QrPrdCODIGOIRRF: TStringField;
    QrPrdDEDUCAOIRRF: TBCDField;
    QrPrdISSDEVIDOMUNICIPIOCLIENTE: TSmallintField;
    QrPrdQTDEVOLUME: TSmallintField;
    QrPrdPERCENTBASEINSS: TBCDField;
    QrPrdPERCBASEINSSEMPREGADO: TBCDField;
    QrPrdGRPFATURAMENTO: TStringField;
    QrPrdTOLINFPRECO: TBCDField;
    QrPrdTOLSUPPRECO: TBCDField;
    QrPrdINCENTIVOFISCALMS: TStringField;
    QrPrdCODAPURACAO: TStringField;
    QrPrdINDESPECIAL: TStringField;
    QrPrdCODAPURACAOE: TStringField;
    QrPrdIDGRD: TIntegerField;
    QrPrdCODCOLUNA: TStringField;
    QrPrdCODLINHA: TStringField;
    QrPrdPRODUTOBASE: TSmallintField;
    QrPrdMULTIPLOQTDECOMPRADA: TBCDField;
    QrPrdSERVICOPRODUTORMOFFICINA: TSmallintField;
    QrPrdPRODUTOEPI: TSmallintField;
    QrPrdMULTIPLOPRDVENDA: TBCDField;
    QrPrdCODIGOSERVICOFEDERAL: TStringField;
    QrPrdCODIGOEX: TStringField;
    QrPrdCODTBORCAMENTO: TStringField;
    QrPrdRECALCSALDO1: TSmallintField;
    QrPrdRECALCSALDO2: TSmallintField;
    QrPrdRECALCSALDO3: TSmallintField;
    QrPrdRECALCSALDO4: TSmallintField;
    QrPrdRECALCSALDO5: TSmallintField;
    QrPrdRECALCSALDO6: TSmallintField;
    QrPrdRECALCSALDO7: TSmallintField;
    QrPrdRECALCSALDO8: TSmallintField;
    QrPrdRECALCSALDO9: TSmallintField;
    QrPrdRECALCSALDO10: TSmallintField;
    QrPrdIDPRDFISCALS: TIntegerField;
    QrPrdIDPRDFISCALE: TIntegerField;
    QrPrdCODCOLIGADA_1: TSmallintField;
    QrPrdIDPRD_1: TIntegerField;
    QrPrdPRATELEIRA: TStringField;
    QrPrdGARANTIA: TStringField;
    QrPrdQUANTGARANTIA: TBCDField;
    QrPrdTPLOCAL: TStringField;
    QrPrdTPLOCAL2: TStringField;
    QrPrdTPLOCAL3: TStringField;
    QrPrdTPLOCAL4: TStringField;
    QrPrdTPLOCAL5: TStringField;
    QrPrdTPLOCAL6: TStringField;
    QrPrdTPLOCAL7: TStringField;
    QrPrdTPLOCAL8: TStringField;
    QrPrdTPLOCAL9: TStringField;
    QrPrdTPLOCAL10: TStringField;
    QrPrdTPLOCAL11: TStringField;
    QrPrdTPLOCAL12: TStringField;
    QrPrdTPLOCAL13: TStringField;
    QrPrdTPLOCAL14: TStringField;
    QrPrdTPLOCAL15: TStringField;
    QrPrdTPLOCAL16: TStringField;
    QrPrdTPLOCAL17: TStringField;
    QrIntegra: TADOQuery;
    QrAlmoxarifados: TADOQuery;
    QrCCusto: TADOQuery;
    QrCC: TADOQuery;
    QrClassificacao: TADOQuery;
    QrVeiculosCompletosVEI_CARNUM: TStringField;
    QrVeiculosCompletosVEI_STATUS: TWordField;
    QrVeiculosCompletosVEI_RENAVAN: TStringField;
    QrVeiculosCompletosVEI_VSI: TWordField;
    QrTitMov: TADOQuery;
    QrEveCont: TADOQuery;
    QrVeiculosCompletosVSI_COD: TWordField;
    QrVeiculosCompletosVSI_DES: TWideStringField;
    QrVeiInfo: TADOQuery;
    QrAbastVei: TADOQuery;
    QrMovAbast: TADOQuery;
    QrSerConCar: TADOQuery;
    QrMovPrd: TADOQuery;
    QrSaiPrd: TADOQuery;
    QrVeiculosCompletosPAD_COD: TSmallintField;
    QrVeiculosCompletosPAD_DES: TWideStringField;
    QrVeiculosCompletosPAD_COR: TStringField;
    QrVeiculosCompletosPAD_HIS: TStringField;
    QrVeiculosCompletosVEI_INTMON: TWideStringField;
    QrVeiculoVEI_INTMON: TWideStringField;
    QrCliFo: TADOQuery;
    QrGrupos: TADOQuery;
    QrCbGru: TADOQuery;
    QrCbSbg: TADOQuery;
    QrRelGru: TADOQuery;
    QrSos: TADOQuery;
    QrPmc: TADOQuery;
    QrIteRec: TADOQuery;
    QrRelGruTTG_ID: TWideStringField;
    QrRelGruTTG_DES: TWideStringField;
    QrRelGruTTG_VALOR: TBCDField;
    QrRelGruTTG_KM: TIntegerField;
    QrRelGruTTG_QTVEI: TSmallintField;
    QrRelGruTTG_MDKM: TBCDField;
    QrRelGruTTG_MDVEI: TBCDField;
    QrAviso: TADOQuery;
    QrPublica: TADOQuery;
    QrPnMarca: TADOQuery;
    QrPnDesenho: TADOQuery;
    QrPnMedidas: TADOQuery;
    QrReformadora: TADOQuery;
    QrPnFornecedor: TADOQuery;
    QrPnMotRet: TADOQuery;
    QrPnBorracha: TADOQuery;
    QrVeiPn: TADOQuery;
    QrPneusCompletos: TADOQuery;
    QrPnVida: TADOQuery;
    QrLocal: TADOQuery;
    QrPnMov: TADOQuery;
    QrPosicao: TADOQuery;
    QrPnRefMov: TADOQuery;
    QrVeiDispo: TADOQuery;
    QrItensMov: TADOQuery;
    QrItensMovSaida: TADOQuery;
    QrItensMovEntrada: TADOQuery;
    QrPnDesenhoReforma: TADOQuery;
    Qrtemp: TADOQuery;
    QrPneus: TADOQuery;
    QrVeiPnCompleto: TADOQuery;
    QrFcFo: TADOQuery;
    QrVeiculoVEI_SUSTENTAVEL: TWideStringField;
    QrVeiculoVEI_PMM: TWordField;
    QrVeiculoVEI_NUMMOTOR: TWideStringField;
    QrModMotor: TADOQuery;
    QrVeiculoVEI_NUMERO: TWideStringField;
    QrVeiculosCompletosVEI_SUSTENTAVEL: TWideStringField;
    QrVeiculosCompletosVEI_PMM: TWordField;
    QrVeiculosCompletosVEI_NUMMOTOR: TWideStringField;
    QrVeiculosCompletosVEI_NUMERO: TWideStringField;
    QrParams: TADOQuery;
    QrVeiculoVEI_RENAVAM: TWideStringField;
    QRVEILAYOUT: TADOQuery;
    QrVeiculoVEI_TIPO: TWideStringField;
    QrVeiculoVEI_LAYOUT: TWordField;
    QrVeiculoVEI_INIOPER: TWideStringField;
    QrVeiculoVEI_NFCOMPRA: TStringField;
    QrAplicacoes: TADOQuery;
    QrListaMotivoOS: TADOQuery;
    QrOsMov: TADOQuery;
    QrOSMovCompleto: TADOQuery;
    QrVWListaOsAberta: TADOQuery;
    QrUsuariosUSU_MODULO: TWideStringField;
    QrUsuariosUSU_STILO: TWideStringField;
    QrUsuariosUSU_NOME: TWideStringField;
    QrUsuariosUSU_LEVELWORK: TWordField;
    ImageList1: TImageList;
    FDConectGenoma: TFDConnection;
    QrPneuCustoKmTodasVidas: TFDQuery;
    QrPneuCustoKmTodasVidasID: TSmallintField;
    QrPneuCustoKmTodasVidasFog: TIntegerField;
    QrPneuCustoKmTodasVidasMarca: TWideStringField;
    QrPneuCustoKmTodasVidasDesenho: TWideStringField;
    QrPneuCustoKmTodasVidasMedida: TWideStringField;
    QrPneuCustoKmTodasVidasKM_VIDA_N: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_COMPRA_NOVO: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_NOVO: TCurrencyField;
    QrPneuCustoKmTodasVidasKM_VIDA_1: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_REF1: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_1REF: TCurrencyField;
    QrPneuCustoKmTodasVidasKM_VIDA_2: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_REF2: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_2REF: TCurrencyField;
    QrPneuCustoKmTodasVidasKM_VIDA_3: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_REF3: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_3REF: TCurrencyField;
    QrPneuCustoKmTodasVidasKM_VIDA_4: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_REF4: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_4REF: TCurrencyField;
    QrPneuCustoKmTodasVidasKM_VIDA_5: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_REF5: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTOKM_5REF: TCurrencyField;
    QrPneuCustoKmTodasVidasVALOR_TOTAL_REF: TCurrencyField;
    QrPneuCustoKmTodasVidasKMTOTAL: TIntegerField;
    QrPneuCustoKmTodasVidasVALOR_TOTAL: TCurrencyField;
    QrPneuCustoKmTodasVidasCUSTO_KM_TOTAL: TCurrencyField;
    QrPneuCustoKmTodasVidasCK: TStringField;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QrPneuMarcas: TFDQuery;
    QrPneuDesenhos: TFDQuery;
    QrPneuMedidas: TFDQuery;
    FdCorpore: TFDConnection;
    QrProdutos: TFDQuery;
    QrProdutosIDPRD: TIntegerField;
    QrProdutosCODIGOPRD: TStringField;
    QrProdutosNOMEFANTASIA: TStringField;
    QrProdutosCODIGOAUXILIAR: TStringField;
    QrProdutosPRATELEIRA: TStringField;
    QrProdutosNCM: TStringField;
    QrProdutosFORMULACALCULO: TWideStringField;
    QrProdutosDIAS: TSmallintField;
    QrProdutosKM: TIntegerField;
    QrProdutosSALDO: TBCDField;
    QrGarantiaFcalc: TFDQuery;
    QrSCA: TFDQuery;
    QrMovGar: TFDQuery;
    QrEntradaSaidaGrupoSubGrupo: TFDQuery;
    QrEntradaSaidaGSSintetitico: TFDQuery;
    QrColigadasTELEFONES: TWideStringField;
    QrColigadasCOL_END: TWideStringField;
    QrColigadasCOL_BAIRRO: TWideStringField;
    QrColigadasCOL_CIDADE: TWideStringField;
    QrVeiculoVEI_LINHA: TIntegerField;
    Q: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    WideStringField1: TWideStringField;
    SmallintField1: TSmallintField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    Q2: TFDQuery;
    IntegerField3: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    WideStringField2: TWideStringField;
    SmallintField2: TSmallintField;
    IntegerField4: TIntegerField;
    BCDField2: TBCDField;
    QrRequisicao: TFDQuery;
    QrTemp2: TFDQuery;
    IntegerField5: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    WideStringField3: TWideStringField;
    SmallintField3: TSmallintField;
    IntegerField6: TIntegerField;
    BCDField3: TBCDField;
    Procedure CriaOS;
    PROCEDURE FechaOS;
    Procedure MarcaOsPrint;
    Procedure CriaAcesso;
  private
    { Private declarations }
  public
    { Public declarations }
      VOS_DTABE, VOS_DTFEC, VOS_DTPRAZO, VOS_DTVIGINI, VOS_DTVIGFIM:TDATE;
      VOS_VEI, vos_veiculo:STRING;
      VOS_HIS:STRING;
      VCOLIGADA,VOS_CODMTV:WORD;
      VOS_HRABE, VOS_HRFEC:TTIME;
      VOS_USUABE, VOS_USUFEC, VOS_STATUS, VUSUARIO:STRING;
      VIDMOVATUAL,VOS_ID:INTEGER;
      VOS_AUTORIZA:STRING;
  end;

var
  pai: Tpai;

implementation

uses Principal, UnitIniciaSistema;

{$R *.dfm}
Procedure Tpai.CriaOS;
  var Q: tadoquery;
begin
            Q:=tadoquery.create(nil);
            Q.Connection:=ConctPai;
            Q.CLOSE;
            Q.SQL.Clear;
            Q.SQL.ADD('INSERT INTO TB_OSMOV (TOS_COLIGADA, TOS_STATUS, TOS_DTABE, TOS_VEI, TOS_DTFEC, TOS_HIS, TOS_CODMTV, TOS_DTPRAZO, TOS_DTVIGINI, TOS_DTVIGFIM, TOS_HRABE, TOS_HRFEC, TOS_USUABE, TOS_USUFEC ) ');
            Q.SQL.Add('VALUES (');
            Q.SQL.Add(quotedstr(pai.QrColigadas.FieldByName('Cod_COLIGADA').AsString) + ',' +
                      quotedStr(VOS_STATUS)                                + ',' +
                      QuotedStr(DATETOSTR(VOS_DTABE))                      + ',' +
                      QuotedStr(VOS_VEI)                                   + ',' +
                      quotedstr(DATETOSTR(VOS_DTFEC))                      + ',' +
                      QuotedStr(VOS_HIS)                                   + ',' +
                      QuotedStr(INTTOSTR(VOS_CODMTV))                      + ',' +
                      quotedstr(DATETOSTR(VOS_DTPRAZO))                    + ',' +
                      quotedstr(DATETOSTR(VOS_DTVIGINI))                   + ',' +
                      quotedstr(DATETOSTR(VOS_DTVIGFIM))                   + ',' +
                      quotedStr(DATETOSTR(VOS_HRABE))                      + ',' +
                      QuotedStr(DATETOSTR(VOS_HRFEC))                      + ',' +
                      QuotedStr((VOS_USUABE))                              + ',' +
                      QuotedStr((VOS_USUFEC) )                             + ')');
//            FormEntrada.memo1.text:=q.sql.text;
            Q.ExecSQL;
           // Vos_Id:=Q.FieldByName('Tos_Id').AsInteger;
            Q.Free;


end;

procedure Tpai.FechaOS;
  var Q: tadoquery;
begin
            Q:=tadoquery.create(nil);
            Q.Connection:=ConctPai;
            Q.CLOSE;
            Q.SQL.Clear;
            Q.SQL.ADD('UPDATE TB_OSMOV SET ');
            Q.SQL.Add('TOS_DTFEC = ' + QUOTEDSTR(DATETOSTR(NOW)) + ', ');
            Q.SQL.Add('TOS_STATUS = ' + QUOTEDSTR('F')           + ', ');
            Q.SQL.Add('TOS_USUFEC = ' + QUOTEDSTR(PAI.QrUsuarios.FieldByName('USU_LOGIN').AsString));
            Q.SQL.Add('WHERE TOS_ID = ' + QUOTEDSTR(INTTOSTR(VOS_ID)));
//            formentrada.:memo1.text:=q.SQL.Text;
            Q.ExecSQL;
            Q.Free;



end;
procedure Tpai.MarcaOsPrint;
  var Q: tadoquery;
begin
            Q:=tadoquery.create(nil);
            Q.Connection:=ConctPai;
            Q.CLOSE;
            Q.SQL.Clear;
            Q.SQL.ADD('UPDATE TB_OSMOV SET ');
            Q.SQL.Add('TOS_PRINT = ''1''');
            Q.SQL.Add('WHERE TOS_ID = ' + QUOTEDSTR(INTTOSTR(VOS_ID)));
            Q.ExecSQL;
            Q.Free;



end;

Procedure Tpai.CriaAcesso;
begin
       With Q2 do
           begin
                    Close;
                    Sql.Clear;
                    Sql.Add('Insert into Tb_GMovs (MOVS_USUARIO, MOVS_DATAHORA, MOVS_MODULO, MOVS_VERSAO) VALUES (');
                    Sql.Add(QuotedStr(Pai.QrUsuarios.FieldByName('Usu_login').AsString) + ',' +
                            QuotedStr(DateTimeToStr(Now)) + ',' +
                            QuotedStr('CenterBus')         + ',' +
                            QuotedStr(FormIniciaSistema.editversao.caption)+')');
                            Execsql;
                            Close;
           end;

end;

end.
