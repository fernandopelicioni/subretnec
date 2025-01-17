object pai: Tpai
  OldCreateOrder = False
  Height = 1082
  Width = 1076
  object ConctPai: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=14132;Persist Security Info=True;Us' +
      'er ID=GENSOFT;Initial Catalog=People;Data Source=10.10.10.5,1433' +
      ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=409' +
      '6;Workstation ID=FERNANDO;Use Encryption for Data=False;Tag with' +
      ' column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 304
    Top = 8
  end
  object QrSRVFIX: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_SerFIxo;')
    Left = 192
    Top = 56
  end
  object BalloonHint1: TBalloonHint
    Left = 240
    Top = 8
  end
  object ConectCorpore: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=14132;Persist Security Info=True;Us' +
      'er ID=GENSOFT;Initial Catalog=CorporeRM;Data Source=10.10.10.5\s' +
      'qlserver;Use Procedure for Prepare=1;Auto Translate=True;Packet ' +
      'Size=4096;Workstation ID=FERNANDO;Use Encryption for Data=False;' +
      'Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 368
    Top = 8
  end
  object QrModCha: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_VeiModCha')
    Top = 56
  end
  object QrPadVei: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_PadVeic')
    Left = 56
    Top = 56
  end
  object QrVeiculo: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_Veiculos'
      'order by vei_numero')
    Top = 56
    object QrVeiculoVEI_NUN: TWideStringField
      FieldName = 'VEI_NUN'
      Size = 6
    end
    object QrVeiculoVEI_PLACA: TWideStringField
      FieldName = 'VEI_PLACA'
      Size = 8
    end
    object QrVeiculoVEI_AQUISICAO: TDateTimeField
      FieldName = 'VEI_AQUISICAO'
      EditMask = '!00/00/0000;1;_'
    end
    object QrVeiculoVEI_INIOPER: TWideStringField
      FieldName = 'VEI_INIOPER'
      Size = 10
    end
    object QrVeiculoVEI_PADRAO: TSmallintField
      FieldName = 'VEI_PADRAO'
    end
    object QrVeiculoVEI_GRUPO: TSmallintField
      FieldName = 'VEI_GRUPO'
    end
    object QrVeiculoVEI_CAMPOLIVRE: TWideStringField
      FieldName = 'VEI_CAMPOLIVRE'
    end
    object QrVeiculoVEI_CENTROCUSTO: TStringField
      FieldName = 'VEI_CENTROCUSTO'
      Size = 60
    end
    object QrVeiculoVEI_CHASSINUM: TWideStringField
      FieldName = 'VEI_CHASSINUM'
      FixedChar = True
      Size = 17
    end
    object QrVeiculoVEI_CHASSIANO: TWideStringField
      FieldName = 'VEI_CHASSIANO'
      FixedChar = True
      Size = 4
    end
    object QrVeiculoVEI_MODCHA: TSmallintField
      FieldName = 'VEI_MODCHA'
    end
    object QrVeiculoVEI_CARMOD: TSmallintField
      FieldName = 'VEI_CARMOD'
    end
    object QrVeiculoVEI_CARANO: TWideStringField
      FieldName = 'VEI_CARANO'
      FixedChar = True
      Size = 4
    end
    object QrVeiculoVEI_OPERADOR: TWideStringField
      FieldName = 'VEI_OPERADOR'
      FixedChar = True
      Size = 1
    end
    object QrVeiculoVEI_COLIGADA: TWordField
      FieldName = 'VEI_COLIGADA'
    end
    object QrVeiculoVEI_CARNUM: TStringField
      FieldName = 'VEI_CARNUM'
    end
    object QrVeiculoVEI_STATUS: TWordField
      FieldName = 'VEI_STATUS'
    end
    object QrVeiculoVEI_RENAVAN: TStringField
      FieldName = 'VEI_RENAVAN'
      Size = 9
    end
    object QrVeiculoVEI_VSI: TWordField
      FieldName = 'VEI_VSI'
    end
    object QrVeiculoVEI_INTMON: TWideStringField
      FieldName = 'VEI_INTMON'
      FixedChar = True
      Size = 1
    end
    object QrVeiculoVEI_SUSTENTAVEL: TWideStringField
      FieldName = 'VEI_SUSTENTAVEL'
      FixedChar = True
      Size = 1
    end
    object QrVeiculoVEI_PMM: TWordField
      FieldName = 'VEI_PMM'
    end
    object QrVeiculoVEI_NUMMOTOR: TWideStringField
      FieldName = 'VEI_NUMMOTOR'
    end
    object QrVeiculoVEI_NUMERO: TWideStringField
      FieldName = 'VEI_NUMERO'
      Size = 6
    end
    object QrVeiculoVEI_RENAVAM: TWideStringField
      FieldName = 'VEI_RENAVAM'
      FixedChar = True
      Size = 15
    end
    object QrVeiculoVEI_TIPO: TWideStringField
      FieldName = 'VEI_TIPO'
      FixedChar = True
      Size = 1
    end
    object QrVeiculoVEI_LAYOUT: TWordField
      FieldName = 'VEI_LAYOUT'
    end
    object QrVeiculoVEI_NFCOMPRA: TStringField
      FieldName = 'VEI_NFCOMPRA'
    end
    object QrVeiculoVEI_LINHA: TIntegerField
      FieldName = 'VEI_LINHA'
    end
  end
  object QrModCar: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_VeiModCar')
    Left = 56
    Top = 56
  end
  object QrIndiceRevisao: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_IndiceRevisao')
    Left = 56
    Top = 352
  end
  object QrServCont: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_ServicosControlados'
      'order by Sco_des')
    Left = 120
    Top = 56
  end
  object QrBaseRevisao: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_BaseRevisao')
    Top = 352
  end
  object QrMovRevisao: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from Tb_MovRevPre A, Tb_ServicosControlados B, Tb_SerCo' +
        'nCar C'
      'Where B.Sco_Cod = A.RPR_Sco and C.Csc_Cod = A.RPR_CSC')
    Left = 56
    Top = 304
  end
  object QrRevGer: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_Revger')
    Top = 304
  end
  object QrPrd: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TPRD A, TPRDCompl B'
      'Where A.IDprd = B.IdPrd'
      'and UltimoNivel =1')
    Left = 448
    Top = 56
    object QrPrdCODCOLIGADA: TSmallintField
      FieldName = 'CODCOLIGADA'
    end
    object QrPrdIDPRD: TIntegerField
      FieldName = 'IDPRD'
    end
    object QrPrdCODIGOPRD: TStringField
      FieldName = 'CODIGOPRD'
      Size = 30
    end
    object QrPrdNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 100
    end
    object QrPrdCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 10
    end
    object QrPrdCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 15
    end
    object QrPrdNUMNOFABRIC: TStringField
      FieldName = 'NUMNOFABRIC'
      Size = 100
    end
    object QrPrdREPASSEFABRIC: TBCDField
      FieldName = 'REPASSEFABRIC'
      Precision = 15
    end
    object QrPrdULTIMONIVEL: TSmallintField
      FieldName = 'ULTIMONIVEL'
    end
    object QrPrdTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QrPrdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 240
    end
    object QrPrdDESCRICAOAUX: TStringField
      FieldName = 'DESCRICAOAUX'
      Size = 240
    end
    object QrPrdCODIGOAUXILIAR: TStringField
      FieldName = 'CODIGOAUXILIAR'
    end
    object QrPrdPRECO1: TBCDField
      FieldName = 'PRECO1'
      Precision = 15
    end
    object QrPrdPRECO2: TBCDField
      FieldName = 'PRECO2'
      DisplayFormat = '#0,00'
      Precision = 15
    end
    object QrPrdPRECO3: TBCDField
      FieldName = 'PRECO3'
      Precision = 15
    end
    object QrPrdPRECO4: TBCDField
      FieldName = 'PRECO4'
      Precision = 15
    end
    object QrPrdPRECO5: TBCDField
      FieldName = 'PRECO5'
      Precision = 15
    end
    object QrPrdDATABASEPRECO1: TDateTimeField
      FieldName = 'DATABASEPRECO1'
    end
    object QrPrdDATABASEPRECO2: TDateTimeField
      FieldName = 'DATABASEPRECO2'
    end
    object QrPrdDATABASEPRECO3: TDateTimeField
      FieldName = 'DATABASEPRECO3'
    end
    object QrPrdDATABASEPRECO4: TDateTimeField
      FieldName = 'DATABASEPRECO4'
    end
    object QrPrdDATABASEPRECO5: TDateTimeField
      FieldName = 'DATABASEPRECO5'
    end
    object QrPrdCODMOEPRECO1: TStringField
      FieldName = 'CODMOEPRECO1'
      Size = 10
    end
    object QrPrdCODMOEPRECO2: TStringField
      FieldName = 'CODMOEPRECO2'
      Size = 10
    end
    object QrPrdCODMOEPRECO3: TStringField
      FieldName = 'CODMOEPRECO3'
      Size = 10
    end
    object QrPrdCODMOEPRECO4: TStringField
      FieldName = 'CODMOEPRECO4'
      Size = 10
    end
    object QrPrdCODMOEPRECO5: TStringField
      FieldName = 'CODMOEPRECO5'
      Size = 10
    end
    object QrPrdREFERENCIACCF: TStringField
      FieldName = 'REFERENCIACCF'
      Size = 1
    end
    object QrPrdNUMEROCCF: TStringField
      FieldName = 'NUMEROCCF'
      Size = 14
    end
    object QrPrdREFERENCIACP: TSmallintField
      FieldName = 'REFERENCIACP'
    end
    object QrPrdDESCRICAOCP: TStringField
      FieldName = 'DESCRICAOCP'
      Size = 40
    end
    object QrPrdNUMEROTRIBUTOS: TSmallintField
      FieldName = 'NUMEROTRIBUTOS'
    end
    object QrPrdPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 15
    end
    object QrPrdPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 15
    end
    object QrPrdCOMPRIMENTO: TBCDField
      FieldName = 'COMPRIMENTO'
      Precision = 15
    end
    object QrPrdESPESSURA: TBCDField
      FieldName = 'ESPESSURA'
      Precision = 15
    end
    object QrPrdLARGURA: TBCDField
      FieldName = 'LARGURA'
      Precision = 15
    end
    object QrPrdCOR: TStringField
      FieldName = 'COR'
      Size = 15
    end
    object QrPrdOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 10
    end
    object QrPrdCODUNDCONTROLE: TStringField
      FieldName = 'CODUNDCONTROLE'
      Size = 5
    end
    object QrPrdCODCPG: TStringField
      FieldName = 'CODCPG'
      Size = 5
    end
    object QrPrdMARGEMLUCROFISC: TBCDField
      FieldName = 'MARGEMLUCROFISC'
      Precision = 15
    end
    object QrPrdFATORREDUCAOICMS: TBCDField
      FieldName = 'FATORREDUCAOICMS'
      Precision = 15
    end
    object QrPrdCONCEITOABC: TStringField
      FieldName = 'CONCEITOABC'
      Size = 1
    end
    object QrPrdESTOQUEMINIMO1: TBCDField
      FieldName = 'ESTOQUEMINIMO1'
      Precision = 15
    end
    object QrPrdESTOQUEMAXIMO1: TBCDField
      FieldName = 'ESTOQUEMAXIMO1'
      Precision = 15
    end
    object QrPrdESTOQUEMINIMO2: TBCDField
      FieldName = 'ESTOQUEMINIMO2'
      Precision = 15
    end
    object QrPrdESTOQUEMAXIMO2: TBCDField
      FieldName = 'ESTOQUEMAXIMO2'
      Precision = 15
    end
    object QrPrdESTOQUEMINIMO3: TBCDField
      FieldName = 'ESTOQUEMINIMO3'
      Precision = 15
    end
    object QrPrdESTOQUEMAXIMO3: TBCDField
      FieldName = 'ESTOQUEMAXIMO3'
      Precision = 15
    end
    object QrPrdPONTODEPEDIDO1: TBCDField
      FieldName = 'PONTODEPEDIDO1'
      Precision = 15
    end
    object QrPrdPONTODEPEDIDO2: TBCDField
      FieldName = 'PONTODEPEDIDO2'
      Precision = 15
    end
    object QrPrdPONTODEPEDIDO3: TBCDField
      FieldName = 'PONTODEPEDIDO3'
      Precision = 15
    end
    object QrPrdDTCADASTRAMENTO: TDateTimeField
      FieldName = 'DTCADASTRAMENTO'
    end
    object QrPrdDTULTIMOREAJUSTE: TDateTimeField
      FieldName = 'DTULTIMOREAJUSTE'
    end
    object QrPrdPERCENTCOMISSAO: TBCDField
      FieldName = 'PERCENTCOMISSAO'
      Precision = 15
    end
    object QrPrdDESCONTOCOMPRA: TBCDField
      FieldName = 'DESCONTOCOMPRA'
      Precision = 15
    end
    object QrPrdDESCONTOVENDA: TBCDField
      FieldName = 'DESCONTOVENDA'
      Precision = 15
    end
    object QrPrdCUSTOUNITARIO: TBCDField
      FieldName = 'CUSTOUNITARIO'
      DisplayFormat = '#0,00'
      Precision = 15
    end
    object QrPrdDTCUSTOUNITARIO: TDateTimeField
      FieldName = 'DTCUSTOUNITARIO'
    end
    object QrPrdCODTIP: TStringField
      FieldName = 'CODTIP'
      Size = 10
    end
    object QrPrdCODTB1FAT: TStringField
      FieldName = 'CODTB1FAT'
      Size = 10
    end
    object QrPrdCODTB2FAT: TStringField
      FieldName = 'CODTB2FAT'
      Size = 10
    end
    object QrPrdCODTB3FAT: TStringField
      FieldName = 'CODTB3FAT'
      Size = 10
    end
    object QrPrdCODTB4FAT: TStringField
      FieldName = 'CODTB4FAT'
      Size = 10
    end
    object QrPrdCODTB5FAT: TStringField
      FieldName = 'CODTB5FAT'
      Size = 10
    end
    object QrPrdMARGEMBRUTALUCRO: TBCDField
      FieldName = 'MARGEMBRUTALUCRO'
      Precision = 15
    end
    object QrPrdSALDOGERALFISICO: TBCDField
      FieldName = 'SALDOGERALFISICO'
      Precision = 15
    end
    object QrPrdPERCENTCOMISSAO2: TBCDField
      FieldName = 'PERCENTCOMISSAO2'
      Precision = 15
    end
    object QrPrdCODUNDCOMPRA: TStringField
      FieldName = 'CODUNDCOMPRA'
      Size = 5
    end
    object QrPrdCODUNDVENDA: TStringField
      FieldName = 'CODUNDVENDA'
      Size = 5
    end
    object QrPrdDTULTIMAVENDAA: TDateTimeField
      FieldName = 'DTULTIMAVENDAA'
    end
    object QrPrdDTULTIMAVENDAB: TDateTimeField
      FieldName = 'DTULTIMAVENDAB'
    end
    object QrPrdRECALCCUSTOMEDIO: TSmallintField
      FieldName = 'RECALCCUSTOMEDIO'
    end
    object QrPrdEPERIODICO: TSmallintField
      FieldName = 'EPERIODICO'
    end
    object QrPrdCAMPOLIVRE: TIntegerField
      FieldName = 'CAMPOLIVRE'
    end
    object QrPrdCAMPOLIVRE2: TStringField
      FieldName = 'CAMPOLIVRE2'
      Size = 5
    end
    object QrPrdCAMPOLIVRE3: TStringField
      FieldName = 'CAMPOLIVRE3'
      Size = 15
    end
    object QrPrdIDPRODUTORELAC: TIntegerField
      FieldName = 'IDPRODUTORELAC'
    end
    object QrPrdCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 15
    end
    object QrPrdDATACUSTOMEDIO: TDateTimeField
      FieldName = 'DATACUSTOMEDIO'
    end
    object QrPrdIDPRDRELAC2: TIntegerField
      FieldName = 'IDPRDRELAC2'
    end
    object QrPrdDTULTIMACOMPRA: TDateTimeField
      FieldName = 'DTULTIMACOMPRA'
    end
    object QrPrdCUSTOREPOSICAO: TBCDField
      FieldName = 'CUSTOREPOSICAO'
      Precision = 15
    end
    object QrPrdSALDOGERALFINANC: TBCDField
      FieldName = 'SALDOGERALFINANC'
      Precision = 15
    end
    object QrPrdDTULTIMACOMPRAB: TDateTimeField
      FieldName = 'DTULTIMACOMPRAB'
    end
    object QrPrdCUSTOREPOSICAOB: TBCDField
      FieldName = 'CUSTOREPOSICAOB'
      Precision = 15
    end
    object QrPrdCLCONTABIL: TStringField
      FieldName = 'CLCONTABIL'
      Size = 15
    end
    object QrPrdPERCENTCOMISSAO3: TBCDField
      FieldName = 'PERCENTCOMISSAO3'
      Precision = 15
    end
    object QrPrdCODGRD: TStringField
      FieldName = 'CODGRD'
    end
    object QrPrdTIPOCONTA: TStringField
      FieldName = 'TIPOCONTA'
      Size = 1
    end
    object QrPrdLOCALDESCARGA: TStringField
      FieldName = 'LOCALDESCARGA'
      Size = 30
    end
    object QrPrdCODCOLCONTAGER: TSmallintField
      FieldName = 'CODCOLCONTAGER'
    end
    object QrPrdCODCONTAGER: TStringField
      FieldName = 'CODCONTAGER'
      Size = 40
    end
    object QrPrdUSANUMDECPRECO: TSmallintField
      FieldName = 'USANUMDECPRECO'
    end
    object QrPrdNUMDECPRECO: TSmallintField
      FieldName = 'NUMDECPRECO'
    end
    object QrPrdTEMPO: TBCDField
      FieldName = 'TEMPO'
      Precision = 15
      Size = 2
    end
    object QrPrdCODAREA: TIntegerField
      FieldName = 'CODAREA'
    end
    object QrPrdBLOCK: TSmallintField
      FieldName = 'BLOCK'
    end
    object QrPrdCLASSEFISCALECF: TSmallintField
      FieldName = 'CLASSEFISCALECF'
    end
    object QrPrdMULTIPLOPRD: TBCDField
      FieldName = 'MULTIPLOPRD'
      Precision = 15
    end
    object QrPrdINATIVO: TSmallintField
      FieldName = 'INATIVO'
    end
    object QrPrdCODTIPOAPL: TStringField
      FieldName = 'CODTIPOAPL'
      Size = 10
    end
    object QrPrdIDFORMA: TIntegerField
      FieldName = 'IDFORMA'
    end
    object QrPrdPERCENTIMPORTADO: TBCDField
      FieldName = 'PERCENTIMPORTADO'
      Precision = 15
    end
    object QrPrdDATAEXTRA1: TDateTimeField
      FieldName = 'DATAEXTRA1'
    end
    object QrPrdDATAEXTRA2: TDateTimeField
      FieldName = 'DATAEXTRA2'
    end
    object QrPrdPESAVEL: TSmallintField
      FieldName = 'PESAVEL'
    end
    object QrPrdTOLERANCIASUP: TBCDField
      FieldName = 'TOLERANCIASUP'
      Precision = 15
    end
    object QrPrdTOLERANCIAINF: TBCDField
      FieldName = 'TOLERANCIAINF'
      Precision = 15
    end
    object QrPrdCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 10
    end
    object QrPrdDATAULTALTERACAO: TDateTimeField
      FieldName = 'DATAULTALTERACAO'
    end
    object QrPrdIDIMAGEM: TIntegerField
      FieldName = 'IDIMAGEM'
    end
    object QrPrdDATAPRIMEIRAALT: TDateTimeField
      FieldName = 'DATAPRIMEIRAALT'
    end
    object QrPrdCODDIEF: TStringField
      FieldName = 'CODDIEF'
      Size = 7
    end
    object QrPrdDIAMETRO: TBCDField
      FieldName = 'DIAMETRO'
      Precision = 15
    end
    object QrPrdTRIBUTACAOECF: TStringField
      FieldName = 'TRIBUTACAOECF'
      Size = 10
    end
    object QrPrdCONTROLADOPORLOTE: TIntegerField
      FieldName = 'CONTROLADOPORLOTE'
    end
    object QrPrdTIPOCALCULOCUSTO: TSmallintField
      FieldName = 'TIPOCALCULOCUSTO'
    end
    object QrPrdMASCARANUMSERIE: TStringField
      FieldName = 'MASCARANUMSERIE'
      Size = 30
    end
    object QrPrdUSANUMSERIE: TIntegerField
      FieldName = 'USANUMSERIE'
    end
    object QrPrdCUSTOPADRAO: TIntegerField
      FieldName = 'CUSTOPADRAO'
    end
    object QrPrdCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
    end
    object QrPrdTEMPOVALIDADE: TIntegerField
      FieldName = 'TEMPOVALIDADE'
    end
    object QrPrdUSUARIOCRIACAO: TStringField
      FieldName = 'USUARIOCRIACAO'
    end
    object QrPrdINVENTARIOFISCAL: TSmallintField
      FieldName = 'INVENTARIOFISCAL'
    end
    object QrPrdCODGRUPOBEM: TStringField
      FieldName = 'CODGRUPOBEM'
      Size = 25
    end
    object QrPrdVALIDADEMINIMA: TIntegerField
      FieldName = 'VALIDADEMINIMA'
    end
    object QrPrdCODIGOIRRF: TStringField
      FieldName = 'CODIGOIRRF'
      Size = 10
    end
    object QrPrdDEDUCAOIRRF: TBCDField
      FieldName = 'DEDUCAOIRRF'
      Precision = 15
    end
    object QrPrdISSDEVIDOMUNICIPIOCLIENTE: TSmallintField
      FieldName = 'ISSDEVIDOMUNICIPIOCLIENTE'
    end
    object QrPrdQTDEVOLUME: TSmallintField
      FieldName = 'QTDEVOLUME'
    end
    object QrPrdPERCENTBASEINSS: TBCDField
      FieldName = 'PERCENTBASEINSS'
      Precision = 15
    end
    object QrPrdPERCBASEINSSEMPREGADO: TBCDField
      FieldName = 'PERCBASEINSSEMPREGADO'
      Precision = 15
    end
    object QrPrdGRPFATURAMENTO: TStringField
      FieldName = 'GRPFATURAMENTO'
      Size = 10
    end
    object QrPrdTOLINFPRECO: TBCDField
      FieldName = 'TOLINFPRECO'
      Precision = 15
    end
    object QrPrdTOLSUPPRECO: TBCDField
      FieldName = 'TOLSUPPRECO'
      Precision = 15
    end
    object QrPrdINCENTIVOFISCALMS: TStringField
      FieldName = 'INCENTIVOFISCALMS'
      Size = 1
    end
    object QrPrdCODAPURACAO: TStringField
      FieldName = 'CODAPURACAO'
      Size = 2
    end
    object QrPrdINDESPECIAL: TStringField
      FieldName = 'INDESPECIAL'
      Size = 2
    end
    object QrPrdCODAPURACAOE: TStringField
      FieldName = 'CODAPURACAOE'
      Size = 2
    end
    object QrPrdIDGRD: TIntegerField
      FieldName = 'IDGRD'
    end
    object QrPrdCODCOLUNA: TStringField
      FieldName = 'CODCOLUNA'
      Size = 3
    end
    object QrPrdCODLINHA: TStringField
      FieldName = 'CODLINHA'
      Size = 3
    end
    object QrPrdPRODUTOBASE: TSmallintField
      FieldName = 'PRODUTOBASE'
    end
    object QrPrdMULTIPLOQTDECOMPRADA: TBCDField
      FieldName = 'MULTIPLOQTDECOMPRADA'
      Precision = 15
    end
    object QrPrdSERVICOPRODUTORMOFFICINA: TSmallintField
      FieldName = 'SERVICOPRODUTORMOFFICINA'
    end
    object QrPrdPRODUTOEPI: TSmallintField
      FieldName = 'PRODUTOEPI'
    end
    object QrPrdMULTIPLOPRDVENDA: TBCDField
      FieldName = 'MULTIPLOPRDVENDA'
      Precision = 15
    end
    object QrPrdCODIGOSERVICOFEDERAL: TStringField
      FieldName = 'CODIGOSERVICOFEDERAL'
      Size = 5
    end
    object QrPrdCODIGOEX: TStringField
      FieldName = 'CODIGOEX'
      Size = 2
    end
    object QrPrdCODTBORCAMENTO: TStringField
      FieldName = 'CODTBORCAMENTO'
      Size = 40
    end
    object QrPrdRECALCSALDO1: TSmallintField
      FieldName = 'RECALCSALDO1'
    end
    object QrPrdRECALCSALDO2: TSmallintField
      FieldName = 'RECALCSALDO2'
    end
    object QrPrdRECALCSALDO3: TSmallintField
      FieldName = 'RECALCSALDO3'
    end
    object QrPrdRECALCSALDO4: TSmallintField
      FieldName = 'RECALCSALDO4'
    end
    object QrPrdRECALCSALDO5: TSmallintField
      FieldName = 'RECALCSALDO5'
    end
    object QrPrdRECALCSALDO6: TSmallintField
      FieldName = 'RECALCSALDO6'
    end
    object QrPrdRECALCSALDO7: TSmallintField
      FieldName = 'RECALCSALDO7'
    end
    object QrPrdRECALCSALDO8: TSmallintField
      FieldName = 'RECALCSALDO8'
    end
    object QrPrdRECALCSALDO9: TSmallintField
      FieldName = 'RECALCSALDO9'
    end
    object QrPrdRECALCSALDO10: TSmallintField
      FieldName = 'RECALCSALDO10'
    end
    object QrPrdIDPRDFISCALS: TIntegerField
      FieldName = 'IDPRDFISCALS'
    end
    object QrPrdIDPRDFISCALE: TIntegerField
      FieldName = 'IDPRDFISCALE'
    end
    object QrPrdCODCOLIGADA_1: TSmallintField
      FieldName = 'CODCOLIGADA_1'
    end
    object QrPrdIDPRD_1: TIntegerField
      FieldName = 'IDPRD_1'
    end
    object QrPrdPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 10
    end
    object QrPrdGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Size = 3
    end
    object QrPrdQUANTGARANTIA: TBCDField
      FieldName = 'QUANTGARANTIA'
      Precision = 15
    end
    object QrPrdTPLOCAL: TStringField
      FieldName = 'TPLOCAL'
      Size = 3
    end
    object QrPrdTPLOCAL2: TStringField
      FieldName = 'TPLOCAL2'
      Size = 10
    end
    object QrPrdTPLOCAL3: TStringField
      FieldName = 'TPLOCAL3'
      Size = 10
    end
    object QrPrdTPLOCAL4: TStringField
      FieldName = 'TPLOCAL4'
      Size = 10
    end
    object QrPrdTPLOCAL5: TStringField
      FieldName = 'TPLOCAL5'
      Size = 10
    end
    object QrPrdTPLOCAL6: TStringField
      FieldName = 'TPLOCAL6'
      Size = 10
    end
    object QrPrdTPLOCAL7: TStringField
      FieldName = 'TPLOCAL7'
      Size = 10
    end
    object QrPrdTPLOCAL8: TStringField
      FieldName = 'TPLOCAL8'
      Size = 10
    end
    object QrPrdTPLOCAL9: TStringField
      FieldName = 'TPLOCAL9'
      Size = 10
    end
    object QrPrdTPLOCAL10: TStringField
      FieldName = 'TPLOCAL10'
      Size = 10
    end
    object QrPrdTPLOCAL11: TStringField
      FieldName = 'TPLOCAL11'
      Size = 10
    end
    object QrPrdTPLOCAL12: TStringField
      FieldName = 'TPLOCAL12'
      Size = 10
    end
    object QrPrdTPLOCAL13: TStringField
      FieldName = 'TPLOCAL13'
      Size = 10
    end
    object QrPrdTPLOCAL14: TStringField
      FieldName = 'TPLOCAL14'
      Size = 10
    end
    object QrPrdTPLOCAL15: TStringField
      FieldName = 'TPLOCAL15'
      Size = 10
    end
    object QrPrdTPLOCAL16: TStringField
      FieldName = 'TPLOCAL16'
      Size = 10
    end
    object QrPrdTPLOCAL17: TStringField
      FieldName = 'TPLOCAL17'
      Size = 10
    end
  end
  object QrStatusVei: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_VeiStatus')
    Left = 120
    Top = 352
  end
  object QrColigadas: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_Coligadas')
    Left = 56
    Top = 240
    object QrColigadasCOD_COLIGADA: TWordField
      FieldName = 'COD_COLIGADA'
    end
    object QrColigadasDES_COLIGADA: TWideStringField
      FieldName = 'DES_COLIGADA'
      FixedChar = True
      Size = 50
    end
    object QrColigadasCGC_COLIGADA: TWideStringField
      FieldName = 'CGC_COLIGADA'
      FixedChar = True
      Size = 18
    end
    object QrColigadasLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object QrColigadasPERFIL: TWideStringField
      FieldName = 'PERFIL'
      FixedChar = True
      Size = 1
    end
    object QrColigadasTELEFONES: TWideStringField
      FieldName = 'TELEFONES'
      Size = 50
    end
    object QrColigadasCOL_END: TWideStringField
      FieldName = 'COL_END'
      Size = 50
    end
    object QrColigadasCOL_BAIRRO: TWideStringField
      FieldName = 'COL_BAIRRO'
      Size = 30
    end
    object QrColigadasCOL_CIDADE: TWideStringField
      FieldName = 'COL_CIDADE'
      Size = 50
    end
  end
  object QrUsuarios: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_Usuarios')
    Top = 240
    object QrUsuariosUSU_CODIGO: TWordField
      FieldName = 'USU_CODIGO'
      ReadOnly = True
    end
    object QrUsuariosUSU_LOGIN: TWideStringField
      FieldName = 'USU_LOGIN'
    end
    object QrUsuariosUSU_SENHA: TWideStringField
      FieldName = 'USU_SENHA'
      Size = 50
    end
    object QrUsuariosUSU_PERFIL: TWideStringField
      FieldName = 'USU_PERFIL'
      Size = 5
    end
    object QrUsuariosUSU_NIVEL: TWordField
      FieldName = 'USU_NIVEL'
    end
    object QrUsuariosUSU_MODULO: TWideStringField
      FieldName = 'USU_MODULO'
      Size = 5
    end
    object QrUsuariosUSU_STILO: TWideStringField
      FieldName = 'USU_STILO'
      Size = 50
    end
    object QrUsuariosUSU_NOME: TWideStringField
      FieldName = 'USU_NOME'
      Size = 50
    end
    object QrUsuariosUSU_LEVELWORK: TWordField
      FieldName = 'USU_LEVELWORK'
    end
  end
  object QrVeiSistema: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_VeiSistema')
    Left = 56
    Top = 176
  end
  object QrItemFichaManut: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_IteFicMan')
    Top = 176
  end
  object QrFicContMan: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_FicContMan')
    Top = 112
  end
  object QrSetorMan: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_SetMan')
    Left = 56
    Top = 112
  end
  object QrVeiculosCompletos: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from Tb_Veiculos A, Tb_VeiModCar B, Tb_VeiModCha C, Tb_' +
        'IndiceRevisao D, TB_VeiSistema E, TB_PadVeic G'
      
        'Where A.Vei_ModCha = C.Mod_Cod and A.Vei_CarMod = B.Car_Cod and ' +
        'E.Vsi_Cod = A.Vei_Vsi and G.Pad_Cod = A.Vei_Padrao'
      'and A.Vei_Nun = D.Tin_Vei')
    Left = 120
    Top = 304
    object QrVeiculosCompletosVEI_NUN: TWideStringField
      FieldName = 'VEI_NUN'
      Size = 6
    end
    object QrVeiculosCompletosVEI_PLACA: TWideStringField
      FieldName = 'VEI_PLACA'
      Size = 8
    end
    object QrVeiculosCompletosVEI_AQUISICAO: TDateTimeField
      FieldName = 'VEI_AQUISICAO'
    end
    object QrVeiculosCompletosVEI_PADRAO: TSmallintField
      FieldName = 'VEI_PADRAO'
    end
    object QrVeiculosCompletosVEI_GRUPO: TSmallintField
      FieldName = 'VEI_GRUPO'
    end
    object QrVeiculosCompletosVEI_CAMPOLIVRE: TWideStringField
      FieldName = 'VEI_CAMPOLIVRE'
    end
    object QrVeiculosCompletosVEI_CENTROCUSTO: TStringField
      FieldName = 'VEI_CENTROCUSTO'
      Size = 60
    end
    object QrVeiculosCompletosVEI_CHASSINUM: TWideStringField
      FieldName = 'VEI_CHASSINUM'
      FixedChar = True
      Size = 17
    end
    object QrVeiculosCompletosVEI_CHASSIANO: TWideStringField
      FieldName = 'VEI_CHASSIANO'
      FixedChar = True
      Size = 4
    end
    object QrVeiculosCompletosVEI_MODCHA: TSmallintField
      FieldName = 'VEI_MODCHA'
    end
    object QrVeiculosCompletosVEI_CARMOD: TSmallintField
      FieldName = 'VEI_CARMOD'
    end
    object QrVeiculosCompletosVEI_CARANO: TWideStringField
      FieldName = 'VEI_CARANO'
      FixedChar = True
      Size = 4
    end
    object QrVeiculosCompletosVEI_OPERADOR: TWideStringField
      FieldName = 'VEI_OPERADOR'
      FixedChar = True
      Size = 1
    end
    object QrVeiculosCompletosVEI_COLIGADA: TWordField
      FieldName = 'VEI_COLIGADA'
    end
    object QrVeiculosCompletosCAR_COD: TSmallintField
      FieldName = 'CAR_COD'
      ReadOnly = True
    end
    object QrVeiculosCompletosCAR_DES: TWideStringField
      FieldName = 'CAR_DES'
      Size = 50
    end
    object QrVeiculosCompletosMOD_COD: TSmallintField
      FieldName = 'MOD_COD'
      ReadOnly = True
    end
    object QrVeiculosCompletosMOD_DES: TWideStringField
      FieldName = 'MOD_DES'
      Size = 30
    end
    object QrVeiculosCompletosMOD_MEDCOMBUSTIVEL: TBCDField
      FieldName = 'MOD_MEDCOMBUSTIVEL'
      Precision = 3
      Size = 2
    end
    object QrVeiculosCompletosMOD_MEDKM: TIntegerField
      FieldName = 'MOD_MEDKM'
    end
    object QrVeiculosCompletosMOD_EIXOS: TWordField
      FieldName = 'MOD_EIXOS'
    end
    object QrVeiculosCompletosMOD_MEDCOMMAX: TBCDField
      FieldName = 'MOD_MEDCOMMAX'
      Precision = 3
      Size = 2
    end
    object QrVeiculosCompletosTIN_VEI: TWideStringField
      FieldName = 'TIN_VEI'
      Size = 6
    end
    object QrVeiculosCompletosTIN_ULTCOL: TDateTimeField
      FieldName = 'TIN_ULTCOL'
    end
    object QrVeiculosCompletosTIN_ODO: TIntegerField
      FieldName = 'TIN_ODO'
      DisplayFormat = '000,000'
    end
    object QrVeiculosCompletosTIN_ULTMED: TBCDField
      FieldName = 'TIN_ULTMED'
      Precision = 3
      Size = 2
    end
    object QrVeiculosCompletosVEI_CARNUM: TStringField
      FieldName = 'VEI_CARNUM'
    end
    object QrVeiculosCompletosVEI_STATUS: TWordField
      FieldName = 'VEI_STATUS'
    end
    object QrVeiculosCompletosVEI_RENAVAN: TStringField
      FieldName = 'VEI_RENAVAN'
      Size = 9
    end
    object QrVeiculosCompletosVEI_VSI: TWordField
      FieldName = 'VEI_VSI'
    end
    object QrVeiculosCompletosVSI_COD: TWordField
      FieldName = 'VSI_COD'
      ReadOnly = True
    end
    object QrVeiculosCompletosVSI_DES: TWideStringField
      FieldName = 'VSI_DES'
      Size = 30
    end
    object QrVeiculosCompletosPAD_COD: TSmallintField
      FieldName = 'PAD_COD'
      ReadOnly = True
    end
    object QrVeiculosCompletosPAD_DES: TWideStringField
      FieldName = 'PAD_DES'
      Size = 50
    end
    object QrVeiculosCompletosPAD_COR: TStringField
      FieldName = 'PAD_COR'
    end
    object QrVeiculosCompletosPAD_HIS: TStringField
      FieldName = 'PAD_HIS'
      Size = 200
    end
    object QrVeiculosCompletosVEI_INTMON: TWideStringField
      FieldName = 'VEI_INTMON'
      FixedChar = True
      Size = 1
    end
    object QrVeiculosCompletosVEI_SUSTENTAVEL: TWideStringField
      FieldName = 'VEI_SUSTENTAVEL'
      FixedChar = True
      Size = 1
    end
    object QrVeiculosCompletosVEI_PMM: TWordField
      FieldName = 'VEI_PMM'
    end
    object QrVeiculosCompletosVEI_NUMMOTOR: TWideStringField
      FieldName = 'VEI_NUMMOTOR'
    end
    object QrVeiculosCompletosVEI_NUMERO: TWideStringField
      FieldName = 'VEI_NUMERO'
      Size = 6
    end
  end
  object QrTMov: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TMov')
    Left = 448
    Top = 112
  end
  object QrPro: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Tven')
    Left = 514
    Top = 304
  end
  object QrIntegra: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_CBINTEGRA'
      '')
    Left = 120
    Top = 176
  end
  object QrAlmoxarifados: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tloc')
    Left = 448
    Top = 176
  end
  object QrCCusto: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from GCCUSTO'
      'where Ativo = '#39'T'#39)
    Left = 448
    Top = 240
  end
  object QrCC: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TB_CBCC')
    Left = 120
    Top = 112
  end
  object QrClassificacao: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TTB1'
      'where InAtivo = 0')
    Left = 448
    Top = 304
  end
  object QrTitMov: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'CODCOLIGADA,IDMOV, NSeqItmMov,NumeroSequencial,IDPRD,QUANTIDADE,' +
        'PRECOUNITARIO,'
      'DATAEMISSAO,CODTB1FAT,CODUND,QuantidadeAReceber,FlagEfeitoSaldo,'
      
        'FlagReFaturamento,ValorUnitario,ValorFinanceiro,QuantidadeOrigin' +
        'al,CodFilial,'
      
        'PrecoEditado,PrecoTotalEditado,ValServicoNfe,QtDeVolumeUnitario,' +
        'CodLoc,'
      'ValorLiquido '
      'from TitMMov'
      'WHERE 0 > 1')
    Left = 448
    Top = 352
  end
  object QrEveCont: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TTMV A, TEventosCont B'
      'where A.CodEvento = B.CodEvento')
    Left = 448
    Top = 408
  end
  object QrVeiInfo: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_VeiInfo')
    Left = 192
    Top = 408
  end
  object QrAbastVei: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_CbAbastVei')
    Left = 192
    Top = 352
  end
  object QrMovAbast: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_CBMovAbast'
      'where 0>1')
    Left = 192
    Top = 304
  end
  object QrSerConCar: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_SerConCar')
    Left = 192
    Top = 240
  end
  object QrMovPrd: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CampoLivre3,  B.I' +
        'dPrd, B.Quantidade, B.DataEmissao, B.IdMov, C.IdMov, C.CodColiga' +
        'da, C.Serie, C.CodCCusto'
      'from Tprd A, TitmMov B, TMov C'
      'where A.IdPrd = B.IdPrd and C.idMov = B.IdMov'
      'And C.Serie = '#39'BE'#39
      'And A.CampoLivre3 = '#39'1'#39
      ''
      ''
      ''
      '')
    Left = 514
    Top = 56
  end
  object QrSaiPrd: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select A.IdPrd, A.NomeFantasia, A.CodigoPrd, A.CodColigada, B.Co' +
        'dColigada, B.IdPrd, B.Quantidade, B.ValorUnitario,B.ValorLiquido' +
        ', C.DataMovimento, B.IdMov, C.IdMov, C.CodColigada, C.Serie, C.C' +
        'odCCusto, D.CodCCusto, D.Nome'
      'from Tprd A, TitmMov B, TMov C, GCCusto D'
      
        'where C.Serie = '#39'BE'#39' and B.IdPrd = A.IdPrd and C.idMov = B.IdMov' +
        ' And D.CodCCusto = C.CodCCusto'
      
        'And B.CodColigada = A.CodColigada and C.CodColigada = B.CodColig' +
        'ada'
      '')
    Left = 568
    Top = 56
  end
  object QrCliFo: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select CodCFO, NomeFantasia, CGCCFO from FCFO'
      'order by nomefantasia')
    Left = 514
    Top = 112
  end
  object QrGrupos: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM ZGRUPOMAN')
    Left = 514
    Top = 176
  end
  object QrCbGru: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_CbGruMan')
    Left = 192
    Top = 176
  end
  object QrCbSbg: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_CbSBGMan')
    Left = 120
    Top = 408
  end
  object QrRelGru: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_TRELGRU')
    Left = 56
    Top = 408
    object QrRelGruTTG_ID: TWideStringField
      FieldName = 'TTG_ID'
      Size = 3
    end
    object QrRelGruTTG_DES: TWideStringField
      FieldName = 'TTG_DES'
      Size = 50
    end
    object QrRelGruTTG_VALOR: TBCDField
      FieldName = 'TTG_VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 19
    end
    object QrRelGruTTG_KM: TIntegerField
      FieldName = 'TTG_KM'
      DisplayFormat = '####,##0'
    end
    object QrRelGruTTG_QTVEI: TSmallintField
      FieldName = 'TTG_QTVEI'
      DisplayFormat = '##0'
    end
    object QrRelGruTTG_MDKM: TBCDField
      FieldName = 'TTG_MDKM'
      DisplayFormat = '0.0000'
      Precision = 19
    end
    object QrRelGruTTG_MDVEI: TBCDField
      FieldName = 'TTG_MDVEI'
      DisplayFormat = '###,##0.000'
      Precision = 19
    end
  end
  object QrSos: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_SosVei')
    Left = 192
    Top = 112
  end
  object QrPmc: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_CbPmc')
    Left = 120
    Top = 240
  end
  object QrIteRec: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_CbIteRec')
    Top = 409
  end
  object QrAviso: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_CbAviso')
    Left = 192
    Top = 464
  end
  object QrPublica: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM ZGRUPOMAN')
    Left = 514
    Top = 240
  end
  object QrPnMarca: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnMarcas')
    Left = 908
    Top = 8
  end
  object QrPnDesenho: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnDesenhos')
    Left = 908
    Top = 56
  end
  object QrPnMedidas: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnMedidas')
    Left = 908
    Top = 105
  end
  object QrReformadora: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnReformadora')
    Left = 908
    Top = 150
  end
  object QrPnFornecedor: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnFornecedor')
    Left = 908
    Top = 206
  end
  object QrPnMotRet: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnMotRet')
    Left = 908
    Top = 254
  end
  object QrPnBorracha: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnRefTipBorracha')
    Left = 908
    Top = 310
  end
  object QrVeiPn: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnVeiPn')
    Left = 908
    Top = 366
  end
  object QrPneusCompletos: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from Tb_pnPneus A, Tb_PnMarcas B, Tb_PnMedidas D, Tb_Pn' +
        'Vida C, Tb_PnLocal E'
      '                    Where B.TPM_Cod = A.TCP_marca'
      '                    and C.Tpv_Cod = A.TCP_Vida'
      '                    and D.TPM_Cod = A.Tcp_Medida'
      '                    And E.Tpl_Cod = A.Tcp_Local'
      '                    And A.TCP_Local =  '#39'E'#39)
    Left = 908
    Top = 422
  end
  object QrPnVida: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnVida')
    Left = 908
    Top = 534
  end
  object QrLocal: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnLocal')
    Left = 908
    Top = 478
  end
  object QrPnMov: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnMov')
    Left = 964
    Top = 6
  end
  object QrPosicao: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ZgarPosicao')
    Left = 514
    Top = 354
  end
  object QrPnRefMov: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnRefMov')
    Left = 964
    Top = 54
  end
  object QrVeiDispo: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_CbVeiDisposicao')
    Left = 128
    Top = 464
  end
  object QrItensMov: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select codtmv, nome, observacao from ttmv')
    Left = 520
    Top = 408
  end
  object QrItensMovSaida: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select codtmv, nome, MarcaSaida from ttmv'
      'where codcoligada =:Coligada')
    Left = 680
    Top = 96
  end
  object QrItensMovEntrada: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Coligada'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select codtmv, nome, MarcaEntrada from ttmv'
      'where codcoligada =:Coligada')
    Left = 680
    Top = 144
  end
  object QrPnDesenhoReforma: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnRefDesenho')
    Left = 964
    Top = 104
  end
  object Qrtemp: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    Left = 680
    Top = 48
  end
  object QrPneus: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'pneu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select A.Tcp_Fog as Fogo, E.Tpm_Des As Marca, F.Tpm_des as Medid' +
        'a,G.Tpd_Des As Desenho, '
      
        'D.Tpv_Des As Vida, B.Tpl_Des As Status, C.Pmov_Vei as Veiculo, C' +
        '.Pmov_DtEnt As Data from tb_Pnpneus A'
      'Left Join Tb_PnLocal B On A.Tcp_Local = b.Tpl_Cod '
      
        'Left Join Tb_PnMov C On C.Pmov_Pneu = A.Tcp_COd and B.Tpl_cod = ' +
        #39'I'#39' and C.Pmov_MotRet is null'
      'Left Join Tb_PnVida D on A.Tcp_Vida = D.Tpv_Cod'
      'Join Tb_PnMarcas E On A.Tcp_Marca = E.Tpm_Cod'
      'Join Tb_PnMedidas F On A.Tcp_Medida = F.Tpm_Cod'
      'Join Tb_PnDesenhos G On A.Tcp_Desenho = G.Tpd_Cod'
      'Where A.Tcp_Coligada =:coligada'
      'and Tcp_fog =:pneu')
    Left = 968
    Top = 160
  end
  object QrVeiPnCompleto: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Tb_PnVeiPn')
    Left = 964
    Top = 366
  end
  object QrFcFo: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from fcfo')
    Left = 569
    Top = 112
  end
  object QrModMotor: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TB_VeiModMotor')
    Left = 56
    Top = 16
  end
  object QrParams: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_params')
    Left = 680
    Top = 208
  end
  object QRVEILAYOUT: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_VEILAYOUT')
    Left = 448
    Top = 456
  end
  object QrAplicacoes: TADOQuery
    Connection = ConectCorpore
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'data'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 41640d
      end
      item
        Name = 'setor'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '003'
      end
      item
        Name = 'vei'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = '21165'
      end>
    SQL.Strings = (
      'SELECT '
      '      C.NOMEFANTASIA AS NOMEFANTASIA,'
      #9'  C.CODIGOPRD AS CODIGOPRD,'
      #9'  B.QUANTIDADE AS QTD,'
      #9'  CONVERT(VARCHAR(10),MOV.DATAMOVIMENTO,103) AS DATA'
      #9'  '
      #9'  '
      #9'   FROM TMOV MOV'
      ''
      
        'JOIN TITMMOV B ON B.IDMOV = MOV.IDMOV AND MOV.CODCOLIGADA = B.CO' +
        'DCOLIGADA'
      
        'JOIN TPRD C ON C.IDPRD = B.IDPRD AND C.CODCOLIGADA = MOV.CODCOLI' +
        'GADA'
      
        'JOIN GCCUSTO D ON D.CODCCUSTO = MOV.CODCCUSTO AND D.CODCOLIGADA ' +
        '= MOV.CODCOLIGADA'
      ''
      ''
      'WHERE'
      ''
      'MOV.DATAMOVIMENTO >=:data'
      'AND CONVERT(VARCHAR(3),C.CODIGOPRD) =:setor'
      'AND D.NOME LIKE :vei '
      ''
      'ORDER BY DATAMOVIMENTO DESC')
    Left = 904
    Top = 600
  end
  object QrListaMotivoOS: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codigo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'select * from tb_osMtv'
      'Where Tmtv_status = 1'
      'AND TMTV_CAT = '#39'1'#39
      'And Tmtv_id >=:codigo')
    Left = 904
    Top = 656
  end
  object QrOsMov: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from tb_OSMov'
      'Where Tos_coligada:coligada'
      'and 0>1')
    Left = 800
    Top = 656
  end
  object QrOSMovCompleto: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DtAbertura'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '03/02/2016'
      end
      item
        Name = 'DtFechamento'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '03/02/2016'
      end
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 1
      end>
    SQL.Strings = (
      'select '
      '     case when Tos_Print = '#39'1'#39' then '#39'OK'#39' else '#39#39' end as Prt,'
      'Convert(varchar(10),Tos_DtAbe,103) as Abertura,'
      #9'  Upper(Tos_his) as His,'
      #9'  Right('#39'00000000'#39'+ rtrim( Tos_Id),8) as ID,'
      '                  Tos_ID,'
      'Convert(varchar(10),Tos_DtVigIni,103) as InicioVig,'
      'Convert(varchar(10),Tos_DtVigFim,103) as FimVig,'#9'  '
      'B.Tmtv_Nome as TipoOS,'
      #9'  C.TIN_ODO as Km,'
      #9'  Vei.Vei_Numero as Veiculo'
      ''
      ' from tb_osmov A'
      'Join tb_OsMtv B On B.Tmtv_Id = A.Tos_CodMtv'
      'Join TB_VEICULOS Vei on Vei.VEI_NUN = A.Tos_Vei'
      'Left join TB_INDICEREVISAO C On C.TIN_VEI = A.Tos_vei'
      ''
      'where Tos_Status = '#39'A'#39
      'and (Tos_DtVigIni<=:DtAbertura and Tos_DtVigFim>=:DtFechamento)'
      'and Tos_Coligada=:coligada'
      'order by veiculo')
    Left = 803
    Top = 608
  end
  object QrVWListaOsAberta: TADOQuery
    Connection = ConctPai
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'coligada'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 1
      end>
    SQL.Strings = (
      'select * from VW_listaOsAberta'
      'Where coligada=:coligada'
      'order by veiculo')
    Left = 1000
    Top = 656
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 48
    Width = 48
    Left = 240
    Top = 560
    Bitmap = {
      494C01010E001800A40030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C0000000C000000001002000000000000040
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000506
      185010144E901E258AC01E258AC02E3BD7F03542F4FF2E3BD7F01E258AC01E25
      8AC010144E9003040F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0C09505B523FD08B7C5FFF5B523FD01A1812700000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040F40141A60A02E3BD7F03542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF2E3BD7F0141A60A003040F4000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0C09508B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF3630
      25A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000103201E258AC03542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1E258AC0000103200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B523FD08B7C5FFF8B7C5FFF3530259F3530259F8B7C5FFF8B7C
      5FFF363025A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010144E903542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1014
      4E90000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008B7C5FFF8B7C5FFF363025A00000000000000000363025A08B7C
      5FFF8B7C5FFF363025A00000000015232B6A70B4E1F080CCFFFF5487A9D00407
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      01101E258AC03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF1E258AC00000011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B523FD08B7C5FFF363025A00000000000000000363025A08B7C
      5FFF8B7C5FFF8B7C5FFF4B5E65C180CCFFFF80CCFFFF80CCFFFF80CCFFFF70B4
      E1F0000001100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010208302932
      BCE03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF232BA2D001020830000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A1812708B7C5FFF8B7C5FFF363025A0363025A08B7C5FFF8B7C
      5FFF8B7C5FFF616A65DA80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF0C1419500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000001102932BCE03542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF232BA2D0000001100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000363025A08B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF616A65DA80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF0B11164C487390C080CCFFFF80CCFFFF2033408000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E258AC03542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF1E258AC00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000231F18808B7C5FFF8B7C5FFF8B7C5FFF616A
      65DA80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF74BF
      FAFE64A1CAE380CCFFFF80CCFFFF80CCFFFF80CCFFFF20334080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010144E903542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF5C65F7FF8D91FAFFABAAFDFFC8C4FFFFD2CDFFFFC8C4FFFFABAAFDFF8D91
      FAFF525CF6FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144E9000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013110D608B7C5FFF616A65DA80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF73BFFBFF65AFF6FF59A2F2FF78C4
      FDFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF5487A9D0000000000000
      0000040709300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000103203542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF5C65F7FFABAA
      FDFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CD
      FFFFD2CDFFFFABAAFDFF5C65F7FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF00010320000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000374851A680CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF62ADF5FF59A2F2FF71BCFAFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF487390C0121C246080CC
      FFFF80CCFFFF70B4E1F00C141950000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E258AC03542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF8D91FAFFD2CDFFFFD2CD
      FFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CDFFFFD2CD
      FFFFD2CDFFFFD2CDFFFFD2CDFFFF8D91FAFF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF191F74B0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000121C246080CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF7AC6FEFF7AC6FEFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF7CC9FFFF395E7AB180CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF020304200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F403542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FFA1A1FCFFD2CDFFFFD2CDFFFFD2CD
      FFFFC7C4FFFF8D90FAFF656DF7FF3E4AF4FF3542F4FF3E4AF4FF656DF7FF8D90
      FAFFC7C4FFFFD2CDFFFFD2CDFFFFD2CDFFFF9899FBFF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF03040F400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121C246080CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF73BFFBFF65AFF6FF5A9DDCF180CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF182731700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000141A60A03542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF9899FBFFD2CDFFFFD2CDFFFFD2CDFFFF9799
      FBFF3E4AF4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF4953F5FFA1A1FCFFD2CDFFFFD2CDFFFFD2CDFFFF8D91FAFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF141A60A00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000407093080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF7CC9FFFF5BA4F2FF59A2F2FF67B2F7FF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF121C24600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E3BD7F03542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF5C65F7FFD2CDFFFFD2CDFFFFD2CDFFFF8487F9FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF9899FBFFD2CDFFFFD2CDFFFFD2CDFFFF5C65F7FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF2E3BD7F00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000629DC4E080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF62ADF5FF69B5F8FF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF619BC3DF000001100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050618503542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FFBEBCFEFFD2CDFFFFD2CDFFFF9799FBFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFA1A1FCFFD2CDFFFFD2CDFFFFABAAFDFF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF0304
      0F40000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000121C246080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF6EB3E3F13D637CB270B4E1F0629DC4E020334080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010144E903542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF666DF7FFD2CDFFFFD2CDFFFFC7C4FFFF3E4AF4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF4953F5FFC7C4FFFFD2CDFFFFD2CDFFFF525C
      F6FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1014
      4E90000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000325064A080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF7CC9FFFF71BC
      FAFF62ABF0FC5B96C3E080CCFFFF80CCFFFF80CCFFFF80CCFFFF203340800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E258AC03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF8D91FAFFD2CDFFFFD2CDFFFF8D91FAFF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF9899FBFFD2CDFFFFD2CDFFFF8D91
      FAFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1E25
      8AC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070B4E1F080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF6EB9F9FF59A2F2FF5BA4
      F2FF78C4FDFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF487390C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E258AC03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FFABAAFDFFD2CDFFFFD2CDFFFF5C65F7FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF666DF7FFD2CDFFFFD2CDFFFFABAA
      FDFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1E25
      8AC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF6CB7F8FF5BA4F2FF78C4
      FDFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF487390C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002E3BD7F03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3E4AF4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF4953F5FFD2CDFFFFD2CDFFFFBEBC
      FEFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF2E3B
      D7F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF121C24600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CD
      FFFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005487A9D080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF314E639F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002E39D5EF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3E4AF4FFD2CDFFFFD2CDFFFFBDBB
      FEFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF2E39
      D5EF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000325064A080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF314E639F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E258AC03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FFABAAFDFFD2CDFFFFD2CDFFFF5C65F7FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF666DF7FFD2CDFFFFD2CDFFFFABAA
      FDFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1E25
      8AC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C14195080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF314E639F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E258AC03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF8D91FAFFD2CDFFFFD2CDFFFF8D91FAFF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF9899FBFFD2CDFFFFD2CDFFFF8D91
      FAFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1E25
      8AC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000487390C080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF799FB2F5363025A0080706401A181270423B2DB04E46
      36C08B7C5FFF4E4636C02B271E90020201200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010144E903542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF5C65F7FFD2CDFFFFD2CDFFFFC8C4FFFF3E4AF4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3E4AF4FFD2CDFFFFD2CDFFFFD2CDFFFF525C
      F6FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1014
      4E90000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000407093080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF84AEC3FF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF7A6D54F00D0C095000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050618503542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FFB5B3FDFFD2CDFFFFD2CDFFFFA1A1FCFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFA1A1FCFFD2CDFFFFD2CDFFFFAAAAFCFF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF0304
      0F40000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000121C246080CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF84AEC3FF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF7A6D54F004040330000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E39D5EF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF666DF7FFD2CDFFFFD2CDFFFFB4B2FDFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3E4AF4FFB4B2FDFFD2CDFFFFD2CDFFFF5C65F7FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF2E39D5EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000121C246080CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF84AE
      C3FF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF5B523FD0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191F74B03542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF8D91FAFFB4B2FDFF3E4AF4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3E4AF4FFB4B2FDFF8488FAFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF141A60A00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121C246080CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF71BCFAFF7899
      AFFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF0D0C09500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F403542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3E4AF4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3E4AF4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF03040F400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121C246080CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF71BCFAFF65AFF6FF78AB
      CFFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF423B2DB00000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D2589BF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1D2589BF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000121C
      246080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF7AC6FEFF80CCFFFF86A4
      AFFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF695E
      49DF13110D5F0000001013110D608B7C5FFF8B7C5FFF8B7C5FFF4E4636C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000103203542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF00010320000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000121C246080CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF8891
      87FF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF4D4535BF0000
      001000000000000000000000000013110D608B7C5FFF8B7C5FFF8B7C5FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010144E903542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144E9000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004070930619BC3DF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF898C
      7CFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF695E49DF000000100000
      00000000000000000000000000000000000013110D608B7C5FFF695E49DF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D2589BF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFD2CDFFFFD2CDFFFFD2CDFFFF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF1D2589BF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000110283F508F70B3E0EF80CCFFFF80CCFFFF80CC
      FFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF80CCFFFF8A81
      68FF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF13110D60000000000000
      0000000000000000000000000000000000000000000013110D60423B2DB00000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000001102832BADF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF222BA0CF000001100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121C24601F323F7F4772
      8FBF70B3E0EF80CCFFFF80CCFFFF80CCFFFF5486A8CF3C6078AF1F323F7F5D59
      4BD38B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF00000010000000000000
      0000000000000000000000000000000000000000000000000000000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010208302832
      BADF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF2832BADF01020830000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000231F
      18808B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF13110D60000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      01101D2589BF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF1D2589BF0000011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010695E49DF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF13110D600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010144D8F3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1014
      4D8F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040403307A6D54EF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF1311
      0D60000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000103201D2589BF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF1D2589BF000103200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040403304D4535BF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF13110D600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040F4014195F9F2E39D5EF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF2E39D5EF14195F9F03040F4000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000013110D60403A2DAF7A6D54EF8B7C5FFF8B7C
      5FFF695E49DF0404033000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000406
      174F10144D8F1D2589BF1D2589BF2E39D5EF3542F4FF2E39D5EF1D2589BF1D25
      89BF10144D8F0406174F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020020563B
      14A0A87527E0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFC0852CEF0705013000000000000000000000
      0000000000000D090340684818B0563B14A00302002000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090340C2872DF0DB98
      33FFDB9833FFDB9833FFDB9833FF8F6321CF7B551DBF7B551DBF7B551DBF7B55
      1DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B55
      1DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B551DBF7B55
      1DBF7B551DBF7B551DBF7B551DBF070501300000000000000000000000000000
      0000150F0550DB9833FFDB9833FFDB9833FFC2872DF007050130000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003020020C2872DF0DB9833FFDB98
      33FFDB9833FFC0852CEF03020020000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340000000108F6321CFDB9833FFDB9833FFDB9833FFC2872DF0070501300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FFDB9833FF4530109000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FF1E150760000000108F6321CFDB9833FFDB9833FFDB9833FFC2872DF00705
      0130000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1D199C1F1D199C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003853
      53F02A4C50DC0E292F9200030420000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020420004277B0006B
      C1E0008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF006BC1E0004277B000020420000000000000000000000000000000000000
      000000000000000000000000000000000000A87527E0DB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000553B139FDB98
      33FFDB9833FF1E150760000000108F6321CFDB9833FFDB9833FFDB9833FF9164
      22D0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1D199C4E4636FF4E4636FF1F1D
      199C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A4C
      50DC494D42FF13A9D9FF06C1FFFF0594C4E001364C8B00000110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000020420007BDEF0008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF007BDEF0000204200000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A04530109000000000553B
      139FDB9833FFDB9833FF1E150760000000108F6321CFDB9833FFDB9833FFDB98
      33FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1D199C4E4636FF4E4636FF4E4636FF1F1D
      199C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E29
      2F9213A9D9FF06C1FFFF06C1FFFF0488B7D8008AE3F10064A9D0000001100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004277B0008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF004277B00000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FF1E1507600000
      0000553B139FDB9833FFDB9833FF1E150760000000108F6321CFDB9833FF7B55
      1DBF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1D199C4E4636FF4E4636FF4E4636FF1F1D199C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD9C8
      9EFF06C1FFFF06C1FFFF2AC0EEFF0D9DF9FF0098FFFF0098FFFF2DA1EBFFE9C7
      97FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007BDEF0008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF006BC1E00000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FF1E15
      076000000000553B139FDB9833FFDB9833FF1E15076000000010553B139F0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      0000000000001F1D199C4E4636FF4E4636FF4E4636FF1F1D199C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF24C2F2FF2AC0EEFF0D9DF9FF0098FFFF0098FFFF0098FFFF0098FFFF2DA1
      EBFFE9C797FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FF1E15076000000000553B139FDB9833FFDB9833FF1E150760000000000000
      00000000000000000000030200201E1507600000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      00001F1D199C4E4636FF4E4636FF4E4636FF1F1D199C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF73C1CCFF0D9DF9FF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF2DA1EBFFE9C797FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF1E15076000000000553B139FC0852CEF07050130000000000000
      00000000000000000010916422D0684818B00000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFEFC38DFFBFA27DFF90826FFF7C7369FF606060FF6060
      60FF7C7369FF90826FFFBFA27DFFEFC38DFF0000000000000000000000000D0D
      0D60514A3DFF4E4636FF4E4636FF1F1D199C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF2DA1EBFFE9C797FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF1E150760000000000302002000000000000000000000
      000000000010916422D0DB9833FFC2872DF00000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFEFC38DFFAC9577FF696663FF606060FF606060FF606060FF606060FF6060
      60FF606060FF606060FF606060FF696663FF18181880000000100D0D0D606060
      60FF5E5D5CFF514A3DFF1F1D199C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF0098FFFF2DA1EBFFE9C797FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFC0852CEF000000100000000000000000000000000000
      0000684818B0DB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC3
      8DFF7C7369FF606060FF606060FF877A6BFFC0A37DFFDCB587FFF9CA90FFF9CA
      90FFDCB587FFC0A37DFF877A6BFF606060FF606060FF434343D65F5F5FFF6060
      60FF606060FF0D0D0D6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098
      FFFF0098FFFF0098FFFF0098FFFF2DA1EBFFE9C797FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFC0852CEF0705013000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF6966
      63FF606060FF7C7368FFD2AF84FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFD2AF84FF484746D8606060FF595959F65F5F
      5FFF0D0D0D600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098
      FFFF0098FFFF0098FFFF0098FFFF0098FFFF2DA1EBFFE9C797FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037260D80DB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFC0852CEF07050130000000000000000000000000000000002A1D0970DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF7C7369FF6060
      60FF7C7368FFEFC38DFFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD4AE7DF1484746D8606060FF4343
      43D6000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098
      FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF2DA1EBFFE9C797FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008AF8FF0076D7FF006ECAFF006DC7FF0078DBFF008AF8FF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A87527E0DB9833FF8F6321CFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFC085
      2CEF07050130000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFAC9577FF606060FF7C73
      68FFEFC38DFFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD4AE7DF1484746D86060
      60FF181818800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFF0098
      FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF2DA1EBFFE9C7
      97FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF0076D7FF006DC7FF006DC7FF006DC7FF006DC7FF0078DBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003020020DB9833FF684818B0000000001E15
      075FC0852CEFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFC0852CEF0705
      013000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF696663FF606060FFD2AF
      84FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF867055D06060
      60FF555555F00000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFE9C797FF2EA1
      EAFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF2DA1
      EBFF000001100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF006DC7FF006DC7FF006DC7FF006DC7FF006DC7FF006ECAFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A1D0970DB9833FF2A1D0970000000000000
      00000D090340DB9833FFDB9833FFDB9833FFDB9833FFC0852CEF070501300000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFBFA27DFF606060FF877A6BFFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF4745
      42D0606060FF0D0D0D6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFE9C7
      97FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF0064A9D00000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF006DC7FF006DC7FF006DC7FF006DC7FF006DC7FF006FCAFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000684818B0DB9833FF03020020000000000000
      000000000000674717AFDB9833FFDB9833FFC0852CEF07050130000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF90826FFF606060FFBFA27DFFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF6658
      46C4606060FF2E2E2EB000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098FFFF0098FFFF0098
      FFFF5E6B70C4827E75D000000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF0076D7FF006DC7FF006DC7FF006DC7FF006DC7FF0078DBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000010DB9833FFC0852CEF00000000000000000000
      0010150F0550684818B0DB9833FFC0852CEF0705013000000000000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF7C7369FF606060FFDCB587FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF9B80
      5FD9606060FF404040D000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098FFFF0098FFFF0098FFFFB5BB
      B3FFC5BEB0FFC5BEB0FF827E75D0000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008AF8FF0078DBFF006FCAFF006DC7FF0078DBFF008AF8FF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000150F0550DB9833FFDB9833FF684818B07C551DC0DB98
      33FFDB9833FFDB9833FFC0852CEF0D0903400000000000000000000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF606060FF606060FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF606060FF606060FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFF0098FFFF0098FFFFB5BBB3FFC5BE
      B0FFC5BEB0FFC5BEB0FF8B8680D8474684C40000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FF8F63
      21CF442F108F0D09033F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF606060FF606060FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF606060FF606060FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFE9C797FF2EA1EAFFB5BBB3FFC5BEB0FFC5BE
      B0FFC5BEB0FF8B8680D86B6AC8F17272E5FF404081C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF37260D8000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FF674717AF291C096F030200200000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF7C7369FF606060FFDCB587FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF9A80
      5FD8606060FF3F3F3FCF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF6C992FFCFC0AAFFC5BEB0FFC5BE
      B0FF8B8680D86B6AC8F17272E5FF7272E5FF4B4B97CF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF563B14A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF90826FFF606060FFBFA27DFFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF6658
      46C4606060FF2E2E2EB000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF6C992FFCFC0AAFFCABD
      ADFF6B6AC8F17272E5FF7272E5FF6363C8EF0404083000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFC2872DF00D090340000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090340C2872DF0DB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFBFA27DFF606060FF877A6CFFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF4745
      42D0606060FF0D0D0D6000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF6C992FF978B
      CEFF7272E5FF7272E5FF6363C8EF040408300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF696662FF606060FFD2AF
      84FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF846F54CF6060
      60FF545454EF0000001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF0C4
      96FF4B4B97CF5757AFDF04040830000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFAC9577FF606060FF7C73
      69FFEFC38DFFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD2AC7CF0494847D96060
      60FF181818800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007BDEF0008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF006ABFDF0000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF7C7368FF6060
      60FF7C7369FFEFC38DFFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD2AC7CF0494847D9606060FF3F3F
      3FCF000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004277B0008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF004277B00000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC38DFF6966
      62FF606060FF7C7369FFD2AF84FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFD2AF84FF494847D9606060FF545454EF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000020420007BDCEF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF007BDCEF000204200000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFEFC3
      8DFF7C7368FF606060FF606060FF877A6CFFBFA27DFFDCB687FFF9CA90FFF9CA
      90FFDCB687FFBFA27DFF877A6CFF606060FF606060FF3F3F3FCF000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020420004176AF006A
      BFDF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008CFBFF008C
      FBFF006ABFDF004176AF00020420000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF674717AF3625
      0C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F3625
      0C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F3625
      0C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F553B
      139FDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFEFC38DFFAD9577FF696662FF606060FF606060FF606060FF606060FF6060
      60FF606060FF606060FF606060FF696662FF1717177F00000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF37260D80000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E150760DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFEFC38DFFC0A37DFF90816EFF7C7368FF606060FF6060
      60FF7C7368FF90816EFFC0A37DFFEFC38DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000302
      002037260D8037260D8037260D8037260D8037260D8003020020000000000000
      000000000010DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141FF414141FF414141FF414141FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA
      90FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002B2B2BD0414141FF414141FF414141FF020202300000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020230414141FF414141FF414141FF2A2A2ACF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E
      379F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919A0414141FF414141FF414141FF191919A00000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000191919A0414141FF414141FF414141FF191919A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5
      E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060650414141FF414141FF414141FF414141FF0202
      0230000000000000000000000000000000000000000000000000000000000000
      000002020230414141FF414141FF414141FF414141FF06060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2
      DBFFFAD2A0FFF9CA90FF604E379F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000323232E0414141FF414141FF414141FF3A3A
      3AF0020202300000000000000000000000000000000000000000000000000202
      02303A3A3AF0414141FF414141FF414141FF313131DF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FF7B551DBF0000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2
      A0FFF9CA90FF604E379F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060650414141FF414141FF414141FF4141
      41FF414141FF191919A002020230000000000000000002020230191919A04141
      41FF414141FF414141FF414141FF414141FF0606065000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FF0D0903400000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA
      90FF604E379F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF5
      E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141490414141FF414141FF4141
      41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
      41FF414141FF414141FF414141FF141414900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF37260D80000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E
      379F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF5E1FFFEF2
      DBFFFAD2A0FFF9CA90FF604E379F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141490414141FF4141
      41FF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
      41FF414141FF414141FF1414148F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF553B139F00000000000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF5E1FFFEF2DBFFFAD2A0FFF9CA90FF604E379F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFEF2DCFFFAD2
      A0FFF9CA90FF604E379F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606503131
      31DF414141FF414141FF414141FF414141FF414141FF414141FF414141FF4141
      41FF313131DF0606065000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFEF2DCFFFAD2A0FFF9CA90FF604E379F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFFAD2A0FFF9CA
      90FF604E379F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606501919199F2A2A2ACF414141FF414141FF2A2A2ACF1919199F0606
      064F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0852CEFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      000000000000DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF553B
      139F000000000000000000000000000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFFAD2A0FFF9CA90FF604E379F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF604E
      379F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D090340000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00100D09033F0D09033F0D09033F0D09033F0D09033F00000010000000000000
      000003020020DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF553B139F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FF604E379F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003020020C0852CEFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF684818B0000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FFDB9833FF553B139F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090340C0852CEFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF7C55
      1DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C55
      1DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C55
      1DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC0C287
      2DF0DB9833FFDB9833FFDB9833FFDB9833FF36250C7F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020020553B
      139FC0852CEFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF7B551DBF0D0903400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B0E0260000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C201C60869885D0C9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FF869885D01C201C60000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0802404832
      0FA0694816C0120C035000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B0E0260C06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010869885D0C9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FF869885D00000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A120560B98028FFB980
      28FFB98028FFB98028FF2E200A80000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B0E0260C06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000869885D0C9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF869885D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A120560B98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FF0B0802400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000302002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B0E0260C06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000262C2670C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF1C201C60000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A120560B98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FF8E621FE00000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000010916422D0563B
      14A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0C2872DF007050130000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B0E0260C06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000869885D0C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF869885D0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A120560B98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FF3A280C9000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000010916422D0DB9833FFDB98
      33FF563B14A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFC2872DF0030200200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B0E0260C06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A120560B98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FF0B080240000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF563B14A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF553B139F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000030100205B2F09B0934D
      0FE0C06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A120560B98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FF8E621FE0000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF563B14A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF553B139F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003010020A95911F0C06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A12
      0560B98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF3A280C900000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF563B14A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B2F09B0C06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FF9BD199FF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A120560B980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF0B08
      0240000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FF563B14A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FFDB9833FF553B
      139F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A95911F0C06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD1
      99FF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A120560B98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFA470
      23F0000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FF563B14A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FF553B139F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F3A0CA0000000000000000000000000000000000000
      000000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A120560B98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FF573C13B00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FF563B14A00000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FF553B139F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FF5F3A0CA00000000000000000000000000000
      000000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A120560B98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF7A541ACF1A12
      0560B98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FF120C035000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FFDB9833FF563B
      14A0000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FF553B139F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FF5F3A0CA000000000000000000000
      000000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A120560B98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FF7A541ACF000000100000
      0000563C13AFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFA47023F000000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FF563B14A0000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF553B139F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FF5F3A0CA0000000000000
      000000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020020B98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FF7A541ACF00000010000000000000
      000000000010A27023EFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FF573C13B0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF563B14A000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF553B139F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FF5F3A0CA00000
      000000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF9BD199FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD1
      99FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B080240B98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FF7A541ACF0000001000000000000000000000
      000000000000120C0350B98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FF120C03500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF563B14A00000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF553B139F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FF5F3A
      0CA000000000000000000000000000000000C06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD1
      99FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000107A541ACFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FF7A541ACF000000100000000000000000000000000000
      00000000000000000000563C13AFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFA47023F00000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF563B14A0563B14A0DB9833FFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFED8F1EFFE4861BFFC76A15FFC06414FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFAAD8A9FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000107A541ACFB98028FFB98028FFB98028FFB980
      28FFB98028FF7A541ACF00000010000000000000000000000000000000000000
      0000000000000000000000000010A27023EFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FF573C13B000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF553B
      139F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF0931FFFC76A15FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FF7CC479FF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000107A541ACFB98028FFB98028FFB980
      28FF7A541ACF0000001000000000000000000000000000000000000000000000
      0000000000000000000000000000120C0350B98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FF23180770000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FF553B139F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFE4861BFFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FF7CC479FF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000107A541ACFB98028FF6747
      16BF000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A280C90B98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFA47023F0020200200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FF563B14A00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFED8F1EFFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFAAD8A9FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000108D611EDFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF694816C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF563B
      14A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD1
      99FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B080240B98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF2318
      0770000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF553B139F553B139FDB9833FFDB9833FFDB98
      33FF563B14A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FFC06414FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD199FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A280C90B980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFA470
      23F0020200200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF553B139F0000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF563B14A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FF934C0FDF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF9BD1
      99FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000108D61
      1EDFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FF694816C00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF553B139F00000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF563B14A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFC06414FF5B2F09B0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF9BD199FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B08
      0240B98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FF2318077000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FF553B139F000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF563B14A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FFC06414FFC06414FFA85711EF03010020000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFFAAD8A9FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A280C90B98028FFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FF06040130000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FFDB9833FF553B
      139F000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FF563B14A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFC06414FFC06414FFC064
      14FFC06414FFC06414FF934C0FDF5A2F09AF0301002000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF4FAF4BFF4FAF
      4BFF7DC479FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000107A541ACFB98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FF7B541AD0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FF553B139F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FF563B14A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF9BD199FF4FAF4BFF9BD1
      99FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006040130B98028FFB98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FF2E200A800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FF553B139F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000563B14A0DB9833FFDB9833FFDB9833FF563B14A00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFB9DFB8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E200A80B98028FFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FF0604013000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0DB9833FFDB9833FFDB9833FF553B139F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FFDB9833FF563B
      14A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007A541ACFB98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FF7B541AD000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFDB9833FF553B139F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000563B14A0DB9833FFDB9833FFDB98
      33FF563B14A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006040130B98028FFB98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FF2E200A80000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF553B139F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF563B14A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E200A80B98028FFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF020200200000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000563B14A0DB9833FFDB98
      33FFDB9833FF553B139F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000563B14A0DB98
      33FFDB9833FFDB9833FF563B14A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000849783CFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF849783CF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A541ACFB98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF2E200A800000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000108F6321CFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000563B
      14A0DB9833FFDB9833FFC0852CEF030200200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6851DF0F39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFB97218DF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000262C2670C9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF1C201C60000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006040130B98028FFB980
      28FFB98028FFB98028FFB98028FFB98028FFB98028FFB98028FF0B0802400000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000108F6321CF553B
      139F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000563B14A0C0852CEF07050130000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000074460FB0F39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FF74460FB000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000849783CFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FF849783CF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023180770B980
      28FFB98028FFB98028FFB98028FFB98028FFA27023EF1A120560000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000302002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003020020D4831CEFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFD4831CEF0302002000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010849783CFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FF849783CF0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006747
      16BFB98028FFB98028FFB98028FF674716BF0202002000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000302002072460FAFB97218DFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FFF39620FFB97218DF72460FAF030200200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000252B256F849783CFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6C8FFC9E6
      C8FFC9E6C8FF849783CF1B1F1B5F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0010563C13AF674716BF2218076F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000101E1507603726
      0D80453010904530109037260D80150F05500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0903400D0903400D0903400D0903400D09
      03400D0903400D0903400D0903400D0903400D0903400D0903400D0903400D09
      03400D0903400D0903400D0903400D0903400D09034007050130000000000000
      000000000000000000000000000003020020563B14A0DB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFC2872DF0563B14A0000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001037260D80A87527E0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF2A1D0970000000000000
      000000000000000000002A1D0970DB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFC2872DF01E15
      0760000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060F065011281080275A25C03D8D3BF03D8D3BF0275A25C01128
      1080060F06500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D090340C287
      2DF0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF674717AF00000000000000000000
      000000000000563B14A0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FF1E1507600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000205
      02302E6A2BD046A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF2E6A2BD002050230000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005061850141A60A0232BA2D03542F4FF3542F4FF232B
      A2D0141A60A00506185000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D090340DB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF0302002000000000000000000000
      000037260D80DB9833FFDB9833FFDB9833FFDB9833FFC0852CEF553B139F0D09
      033F00000010000000100D09033F442F108FC0852CEFDB9833FFDB9833FFDB98
      33FFDB9833FF1E15076000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D250880F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000110F
      0B60110F0B600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001128108046A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF0D1E0C700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050618502932BCE03542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF2932BCE0050618500000000000000000000000000000
      00000000000000000000000000000000000000000010C2872DF0DB9833FFDB98
      33FFDB9833FFDB9833FF7B551DBF36250C7F36250C7F36250C7F36250C7F3625
      0C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F36250C7F3625
      0C7F36250C7F36250C7F36250C7F1E1507600000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF916422D0000000100000
      000000000000000000000000000000000000000000108F6321CFDB9833FFDB98
      33FFDB9833FFC2872DF000000010000000000000000000000000000000000000
      0000000000000000000000000000000000003D250880F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF396
      20FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004030330796D
      53FF796D53FF0403033000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001000010A36D2BD0F5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FF9DA241FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF46A042FF0D1E0C7000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001014
      4E903542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144E9000000000000000000000
      0000000000000000000000000000000000002A1D0970DB9833FFDB9833FFDB98
      33FF8F6321CF0705013000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007C55
      1DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF916422D00000
      00100000000000000000000000000000000000000000000000008F6321CFDB98
      33FFDB9833FFDB9833FF563B14A0000000000000000000000000000000000000
      00000000000000000000000000000000000008050130F39620FFF39620FFF396
      20FFA06115CF3C25077F3C25077F3C25077F3C25077F3C25077F3C25077F3C25
      077F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000106A604AF0796D
      53FF796D53FF6A604AF000000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008A5D24C0F5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFD4A440FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF02050230000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010144E903542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144E90000000000000
      0000000000000000000000000000000000007C551DC0DB9833FFDB9833FFDB98
      33FF070501300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020020DB98
      33FFDB9833FFDB9833FFC0852CEFDB9833FFDB9833FFDB9833FFDB9833FF9164
      22D000000010000000000000000000000000000000000000000003020020C085
      2CEFDB9833FFDB9833FFC2872DF0000000000000000000000000000000000000
      000000000000000000000000000000000000000000003D250880F39620FFF396
      20FFD6851DF00302002000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000504837D0796D53FF796D
      53FF796D53FF796D53FF504837D0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000008050230F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FF65A041FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF2E6A2BD0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050618503542F4FF3542
      F4FF3542F4FF3542F4FF414DF4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF414DF4FF3542F4FF3542F4FF3542F4FF3542F4FF050618500000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF8F63
      21CF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002A1D0970DB98
      33FFDB9833FFDB9833FF37260D801E150760DB9833FFDB9833FFDB9833FFDB98
      33FF916422D00000001000000000000000000000000000000000000000004530
      1090DB9833FFDB9833FFDB9833FF150F05500000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A5412C0F396
      20FFF39620FF8A5412C000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2B20A0796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF2F2B20A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D291080F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFBEA341FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF060F06500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002932BCE03542F4FF3542
      F4FF3542F4FF414DF4FFDADCFDFFB4B9FBFF3542F4FF3542F4FF3542F4FF3542
      F4FFB4B9FBFFDADCFDFF414DF4FF3542F4FF3542F4FF3542F4FF2932BCE00000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000684818B0DB98
      33FFDB9833FFDB9833FF03020020000000001E150760DB9833FFDB9833FFDB98
      33FFDB9833FF916422D000000010000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FF37260D800000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020020D483
      1CEFF39620FFF39620FF2E1C0670000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000110F0B60796D53FF796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF796D53FF110F0B6000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008A5D24C0F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FF9DA241FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF112810800000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030320696763B0A9A69FE0DCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFA8A9DBFF3542F4FF3542F4FF3542
      F4FF414DF4FFDADCFDFFFFFFFFFFFFFFFFFFB4B9FBFF3542F4FF3542F4FFB4B9
      FBFFFFFFFFFFFFFFFFFFDADCFDFF414DF4FF3542F4FF3542F4FF3542F4FF0506
      185000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C551DC0DB98
      33FFDB9833FFDB9833FF0000000000000000000000001E150760DB9833FFDB98
      33FFDB9833FFDB9833FF916422D0000000100000000000000000000000000000
      0010DB9833FFDB9833FFDB9833FF453010900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002215
      0460F39620FFF39620FFD6851DF0030200200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004030330796D53FF796D53FF796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF796D53FF796D53FF04030330000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD7F32E0F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FF71A141FF46A042FF46A042FF46A042FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF46A042FF46A042FF46A042FF275A25C00000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030320C3BFB6F0DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF727AE6FF3542F4FF3542F4FF3542
      F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9FBFFB4B9FBFFFFFF
      FFFFFFFFFFFFFFFFFFFFB3B8FBFF3542F4FF3542F4FF3542F4FF3542F4FF141A
      60A000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C551DC0DB98
      33FFDB9833FFDB9833FF000000000000000000000000000000001E150760DB98
      33FFDB9833FFDB9833FFDB9833FF916422D00000001000000000000000000302
      0020DB9833FFDB9833FFDB9833FF453010900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000074460FB0F39620FFF39620FF8A5412C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000106A604AF0796D53FF796D53FF796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF796D53FF796D53FF6A604AF0000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FF50A042FF46A042FF46A042FF46A042FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF46A042FF46A042FF46A042FF3D8D3BF00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696763B0DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF545DEDFF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB3B8FBFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF232B
      A2D000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C551DC0DB98
      33FFDB9833FFDB9833FF00000010000000000000000000000000000000001E15
      0760DB9833FFDB9833FFDB9833FFDB9833FF916422D000000010000000000D09
      0340DB9833FFDB9833FFDB9833FF37260D800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000010B97218DFF39620FFF39620FF2E1C067000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000504837D0796D53FF796D53FF796D53FF796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF796D53FF796D53FF796D53FF504837D00000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A541FFF5A5
      41FFF5A541FFF5A541FFF5A541FF50A042FF46A042FF46A042FF46A042FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF46A042FF46A042FF46A042FF3D8C39EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3BFB6F0DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB3B8FBFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF00000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037260D80DB98
      33FFDB9833FFDB9833FF150F0550000000000000000000000000000000000000
      00001E150760DB9833FFDB9833FFDB9833FFDB9833FF916422D000000010563B
      14A0DB9833FFDB9833FFDB9833FF1E1507600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F090240F39620FFF39620FFD6851DF003020020000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2B20A0796D53FF796D53FF796D53FF796D53FF796D53FF796D53FF796D
      53FF796D53FF796D53FF796D53FF796D53FF796D53FF796D53FF796D53FF2F2B
      20A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FF72AA55FF46A042FF46A042FF46A042FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF46A042FF46A042FF46A042FF275A25C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB4B9FBFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF00000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007050130DB98
      33FFDB9833FFDB9833FF7C551DC0000000000000000000000000000000000000
      0000000000001E150760DB9833FFDB9833FFDB9833FFDB9833FF916422D0C287
      2DF0DB9833FFDB9833FFDB9833FF000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D2F0A90F39620FFF39620FF8A5412C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FF9FB568FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF112810800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF545DEDFF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB4B9FBFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF222B
      A0CF00000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A774
      27DFDB9833FFDB9833FFDB9833FF37260D800000000000000000000000000000
      000000000000000000001E150760DB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF563B14A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A16315D0F39620FFF39620FF2E1C06700000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFC1BC77FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF060F06500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFF6166CFFF3542F4FF3542F4FF3542
      F4FF3542F4FFB4B9FBFFFFFFFFFFFFFFFFFFFFFFFFFFB3B8FBFFB4B9FBFFFFFF
      FFFFFFFFFFFFFFFFFFFFB4B9FBFF3542F4FF3542F4FF3542F4FF3542F4FF141A
      60A000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0340DB9833FFDB9833FFDB9833FFDB9833FF37260D8000000000000000000000
      00000000000000000000000000001E150760DB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF03020020000000000000000000000000000000000000
      000000000000000000000000000000000000030200200F0902400F0902400F09
      02400F0902400F0902400F0902402E1C0670F39620FFF39620FFD6851DF00302
      0020000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF66A750FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF2E692BCF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFF8885B0FF3542F4FF3542F4FF3542
      F4FF4E59F5FFF2F3FFFFFFFFFFFFFFFFFFFFB3B8FBFF3542F4FF3542F4FFB4B9
      FBFFFFFFFFFFFFFFFFFFF2F3FFFF4E59F5FF3542F4FF3542F4FF3542F4FF0506
      185000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000553B139FDB9833FFDB9833FFDB9833FFDB9833FF7C551DC0150F05500000
      001000000000000000000302002037260D80C2872DF0DB9833FFDB9833FFDB98
      33FFDB9833FF2A1D097000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D250880F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FF7446
      0FB0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD7C281FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF02050230000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FF434DE8FF3542F4FF3542
      F4FF3542F4FF5A65F6FFF2F3FFFFB3B8FBFF3542F4FF3542F4FF3542F4FF3542
      F4FFB4B9FBFFF2F3FFFF5A65F6FF3542F4FF3542F4FF3542F4FF2832BADF0000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F6321CFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D250880F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FF8A54
      12C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF9FB568FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF46A042FF0D1E0C7000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FF8885B0FF3542F4FF3542
      F4FF3542F4FF3542F4FF4E59F5FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF4E59F5FF3542F4FF3542F4FF3542F4FF3542F4FF050618500000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000553B139FDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF3625
      0C7F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030200200E09013F0E09013F0E09
      013F0E09013F0E09013F0E09013F0E09013F0E09013F0E09013F0E09013F0805
      0130000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF9FB568FF46A0
      42FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF46A042FF46A042FF1127107F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF7D83E4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144E90000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D090340A77427DFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF7B551DBF0D0903400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFD7C2
      81FF67A850FF46A042FF46A042FF46A042FF46A042FF46A042FF46A042FF46A0
      42FF46A042FF2E692BCF02050230000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFF7D83
      E4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF3542F4FF3542F4FF10144D8F00000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000705013036250C7F7B55
      1DBF7B551DBF7B551DBF674717AF291C096F0302002000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFDE903DFFF6C488FFF9CA
      90FFF9CA90FFC1BC77FFA0B568FF73AB55FF51A346FF51A346FF73AB55FF1127
      107F060F064F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA490FFAEA490FFAEA4
      90FFA8A9DBFF4A54EFFF3542F4FF3542F4FF3542F4FF3542F4FF3542F4FF3542
      F4FF3542F4FF3542F4FF2832BADF050618500000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD78026FFEAAA
      62FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA490FFAEA490FFAEA4
      90FFDCD8CFFFDCD8CFFFA8A9DBFF7379E6FF545EEDFF3542F4FF3542F4FF545E
      EDFF14195F9F0406174F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA490FFAEA490FFAEA4
      90FFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D090340150F055000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFAEA490FFAEA490FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA4
      90FFAEA490FFAEA490FFDCD8CFFFDCD8CFFFAEA490FFAEA490FFAEA490FFAEA4
      90FFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FF916422D00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0902400F0902400F090240030200200000
      00000000000000000000000000000000000000000000000000000F0902400F09
      02400F0902400100001000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BB7319E0F39620FFF39620FF5F3A0CA00000
      00000000000000000000000000000000000000000000170E0350F39620FFF396
      20FFD4831CEF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E1C0670F39620FFF39620FFF39620FF0100
      0010000000000000000000000000000000000000000074460FB0F39620FFF396
      20FF4D2F0A900000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003020020F39620FFF39620FFF39620FF3D25
      08800F0902400F0902400F0902400F090240170E0350F39620FFF39620FFF396
      20FF080501300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037260D80DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000074460FB0F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFA061
      15CF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8CFFFDCD8
      CFFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000563B14A0DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022150460F39620FFF39620FFF396
      20FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FFF39620FF2E1C
      0670000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000007050130C2872DF0DB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6851DF0F39620FFF396
      20FF5E390C9F3C25077F3C25077F4C2E0A8FF39620FFF39620FFF39620FF0100
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000010563B14A07C551DC07C551DC07C551DC07C551DC07C551DC07C55
      1DC07C551DC0A87527E0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005F3A0CA0F39620FFF396
      20FF4D2F0A90000000000000000022150460F39620FFF39620FF74460FB00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045301090DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF8F6321CF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008050130F39620FFF396
      20FFBB7319E0000000000000000074460FB0F39620FFF39620FF170E03500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFD27518FFD27518FFF9CA90FFF9CA90FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD27518FFD275
      18FFD27518FFD27518FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF978B72FF6F6652FF524A
      39FF524A39FF6F6652FF978B72FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF978B72FF6F6652FF524A
      39FF524A39FF6F6652FF978B72FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF0D0903400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BB7319E0F396
      20FFF39620FF0805013001000010F39620FFF39620FFD4831CEF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF6F6652FF6C6454FFB6AE
      A0FFB6AEA0FF6C6454FF6F6652FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF6F6652FF6C6454FFB6AE
      A0FFB6AEA0FF6C6454FF6F6652FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF553B139F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E1C0670F396
      20FFF39620FF4D2F0A9022150460F39620FFF39620FF4D2F0A90000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9077FF9C9077FF9C9077FF9C9077FF9C9077FF524A39FFBDB6A8FFC5BE
      B0FFC5BEB0FFB6AEA0FF524A39FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF524A39FFBDB6A8FFC5BE
      B0FFC5BEB0FFB6AEA0FF524A39FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF7B551DBF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020020F396
      20FFF39620FFBB7319E074460FB0F39620FFF39620FF08050130000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000897F69F09C9077FF9C9077FF9C9077FF9C9077FF524A39FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF534A39FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF524A39FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF534A39FF9C9077FF9C9077FF9C9077FF9C9077FF776D
      5BDF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FF8F6321CF0000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007446
      0FB0F39620FFF39620FFF39620FFF39620FFA06115CF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000494438B09C9077FF9C9077FF9C9077FF9C9077FF6F6652FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF6F6652FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF6F6652FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF6F6652FF9C9077FF9C9077FF9C9077FF9C9077FF4944
      38B0000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FF8F6321CF000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002215
      0460F39620FFF39620FFF39620FFF39620FF2E1C067000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020120897E68EF9C9077FF9C9077FF9C9077FF978B72FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF978B72FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF978B72FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF978B72FF9C9077FF9C9077FF9C9077FF897E68EF0202
      0120000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB9833FFDB9833FFDB9833FF7C55
      1DC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF8F6321CF00000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6851DF0F39620FFF39620FFF39620FF0100001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020120494338AF776D5BDF9C9077FF9C9077FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C90
      77FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FF9C9077FFC5BEB0FFC5BE
      B0FFC5BEB0FFC5BEB0FF9C9077FF9C9077FF776D5BDF494338AF020201200000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0852CEFDB9833FFDB9833FFA875
      27E0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FF553B139F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005F3A0CA0F39620FFF39620FF74460FB00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000796D53FF796D
      53FF796D53FF796D53FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989287E0C5BE
      B0FFC5BEB0FF969187DF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000989287E0C5BE
      B0FFC5BEB0FF969187DF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000684818B0DB9833FFDB9833FFDB98
      33FF0D0903400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C551DC0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF8F63
      21CF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0B409691
      87DF969187DF0C0C0B4000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0B409691
      87DF969187DF0C0C0B4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E150760DB9833FFDB9833FFDB98
      33FFC2872DF00D09034000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000302
      0020DB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FF8F6321CF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA
      90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FFF9CA90FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A77427DFDB9833FFDB98
      33FFDB9833FFDB9833FFA87527E07C551DC07C551DC07C551DC07C551DC07C55
      1DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC07C551DC0C287
      2DF0DB9833FFDB9833FFDB9833FFDB9833FFDB9833FF8F6321CF000000100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007050130C0852CEFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FF7B551DBF00000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007050130A774
      27DFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FF442F108F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E15075F674717AFC0852CEFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB9833FFDB98
      33FFDB9833FF7B551DBF0D090340000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000C00000000100010000000000001200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object FDConectGenoma: TFDConnection
    Params.Strings = (
      'User_Name=gensoft'
      'Password=14132'
      'Database=People'
      'Server=SERVERSANTAZITA\SQLSERVER'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 616
  end
  object QrPneuCustoKmTodasVidas: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      'select'
      #39'X'#39'                 AS CK,'
      'PN.TCP_COD          AS ID,'
      'PN.Tcp_Fog          AS Fog,'
      'MAR.TPM_DES         AS Marca,'
      'DESE.TPD_DES        AS Desenho,'
      'MED.TPM_DES         AS Medida,'
      ''
      '-- NOVO'
      'isnull(sum(N.PMOV_KMROD),0)   AS KM_VIDA_N,'
      'isnull(SUM(PN2.TCP_VALOR),0)  AS VALOR_COMPRA_NOVO,'
      
        'isnull((SUM(PN2.TCP_VALOR)/SUM(N.PMOV_KMROD)),0)   AS CUSTOKM_NO' +
        'VO,'
      ''
      '-- 1 REFORMA'
      'sum(r1.PMOV_KMROD),0  AS KM_VIDA_1,'
      'isnull(SUM(RF1.RMOV_VALOR),0) AS VALOR_REF1,'
      
        'isnull((SUM(RF1.RMOV_VALOR)/SUM(R1.PMOV_KMROD)),0) AS CUSTOKM_1R' +
        'EF,'
      ''
      '-- 2 REFORMA'
      'isnull(sum(r2.PMOV_KMROD),0)  AS KM_VIDA_2,'
      'isnull(SUM(RF2.RMOV_VALOR),0) AS VALOR_REF2,'
      
        'isnull((SUM(RF2.RMOV_VALOR)/SUM(R2.PMOV_KMROD)),0) AS CUSTOKM_2R' +
        'EF,'
      ''
      '-- 3 REFORMA'
      'isnull(sum(R3.PMOV_KMROD),0)  AS KM_VIDA_3,'
      'isnull(SUM(RF3.RMOV_VALOR),0) AS VALOR_REF3,'
      
        'isnull((SUM(RF3.RMOV_VALOR)/SUM(R3.PMOV_KMROD)),0) AS CUSTOKM_3R' +
        'EF,'
      ''
      '-- 4 REFORMA'
      'isnull(sum(R4.PMOV_KMROD),0)  AS KM_VIDA_4,'
      'isnull(SUM(RF4.RMOV_VALOR),0) AS VALOR_REF4,'
      
        'isnull((SUM(RF4.RMOV_VALOR)/SUM(R4.PMOV_KMROD)),0) AS CUSTOKM_4R' +
        'EF,'
      ''
      '-- 5 REFORMA'
      'isnull(sum(r5.PMOV_KMROD),0)  AS KM_VIDA_5,'
      'isnull(SUM(RF5.RMOV_VALOR),0) AS VALOR_REF5,'
      
        'isnull((SUM(RF5.RMOV_VALOR)/SUM(R5.PMOV_KMROD)),0) AS CUSTOKM_5R' +
        'EF,'
      ''
      ''
      '-- TOTAL VALOR REFORMAS'
      'isnull(SUM(REF.RMOV_VALOR),0) AS VALOR_TOTAL_REF,'
      ''
      ''
      '-- TOTAL GERAL'
      'isnull(SUM(MOV.PMOV_KMROD),0) AS KMTOTAL,'
      
        'isnull(SUM(PN2.TCP_VALOR) + SUM(REF.RMOV_VALOR),0) AS VALOR_TOTA' +
        'L,'
      
        'isnull((SUM(PN2.TCP_VALOR) + SUM(REF.RMOV_VALOR)) / SUM(MOV.PMOV' +
        '_KMROD),0) AS CUSTO_KM_TOTAL'
      ''
      ''
      '    from'
      '         TB_PNPNEUS PN '
      #9'JOIN TB_PNMOV MOV         ON MOV.PMOV_PNEU = PN.TCP_COD'
      #9'JOIN TB_PNMARCAS MAR      ON MAR.TPM_COD = PN.TCP_MARCA'
      #9'JOIN TB_PNDESENHOS DESE   ON DESE.TPD_COD = PN.TCP_DESENHO'
      #9'JOIN TB_PNMEDIDAS MED     ON MED.TPM_COD = PN.TCP_MEDIDA'
      #9'JOIN TB_PNVIDA VID        ON VID.TPV_COD = MOV.PMOV_VIDA'
      
        #9'LEFT JOIN TB_PNREFMOV REF ON REF.RMOV_PNEU = MOV.PMOV_PNEU  AND' +
        ' REF.RMOV_NOVAVIDA = MOV.PMOV_VIDA AND REF.RMOV_TIPREF <> '#39'CONSE' +
        'RTO'#39' '
      
        #9'          AND MOV.PMOV_DTENT = (SELECT MIN(MOV1.PMOV_DTENT) FRO' +
        'M TB_PNMOV MOV1 WHERE MOV1.PMOV_PNEU = MOV.PMOV_PNEU AND MOV1.PM' +
        'OV_VIDA = REF.RMOV_NOVAVIDA) '
      
        #9'LEFT JOIN TB_PNPNEUS PN2  ON PN2.TCP_COD = MOV.PMOV_PNEU AND MO' +
        'V.PMOV_VIDA = '#39'N'#39' AND MOV.PMOV_DTENT = (SELECT MIN(MOV2.PMOV_DTE' +
        'NT) FROM TB_PNMOV MOV2 WHERE MOV2.PMOV_PNEU = MOV.PMOV_PNEU)'
      #9
      
        #9'LEFT JOIN TB_PNMOV     N  ON N.PMOV_COD = MOV.PMOV_COD   AND N.' +
        'PMOV_STATUS = '#39'F'#39' and N.PMOV_VIDA     = '#39'N'#39
      
        #9'LEFT JOIN TB_PNMOV     R1 ON R1.PMOV_COD = MOV.PMOV_COD AND R1.' +
        'PMOV_STATUS = '#39'F'#39' and R1.PMOV_VIDA    = '#39'1'#39
      
        #9'LEFT JOIN TB_PNMOV     R2 ON R2.PMOV_COD = MOV.PMOV_COD AND R2.' +
        'PMOV_STATUS = '#39'F'#39' and R2.PMOV_VIDA    = '#39'2'#39
      
        #9'LEFT JOIN TB_PNMOV     R3 ON R3.PMOV_COD = MOV.PMOV_COD AND R3.' +
        'PMOV_STATUS = '#39'F'#39' and R3.PMOV_VIDA    = '#39'3'#39
      
        #9'LEFT JOIN TB_PNMOV     R4 ON R4.PMOV_COD = MOV.PMOV_COD AND R4.' +
        'PMOV_STATUS = '#39'F'#39' and R4.PMOV_VIDA    = '#39'4'#39
      
        #9'LEFT JOIN TB_PNMOV     R5 ON R5.PMOV_COD = MOV.PMOV_COD AND R5.' +
        'PMOV_STATUS = '#39'F'#39' and R5.PMOV_VIDA    = '#39'5'#39
      #9
      
        #9'LEFT JOIN TB_PNREFMOV RF1 ON RF1.RMOV_COD = REF.RMOV_COD AND RF' +
        '1.RMOV_NOVAVIDA = '#39'1'#39
      
        #9'LEFT JOIN TB_PNREFMOV RF2 ON RF2.RMOV_COD = REF.RMOV_COD AND RF' +
        '2.RMOV_NOVAVIDA = '#39'2'#39
      
        #9'LEFT JOIN TB_PNREFMOV RF3 ON RF3.RMOV_COD = REF.RMOV_COD AND RF' +
        '3.RMOV_NOVAVIDA = '#39'3'#39
      
        #9'LEFT JOIN TB_PNREFMOV RF4 ON RF4.RMOV_COD = REF.RMOV_COD AND RF' +
        '4.RMOV_NOVAVIDA = '#39'4'#39
      
        #9'LEFT JOIN TB_PNREFMOV RF5 ON RF5.RMOV_COD = REF.RMOV_COD AND RF' +
        '5.RMOV_NOVAVIDA = '#39'5'#39
      #9
      ''
      ''
      #9#9
      'Where'
      ' mar.TPM_COD = 1'
      'and pN.Tcp_Coligada = '#39'1'#39
      '--AND PN.TCP_FOG = 7291'
      'AND PN.TCP_LOCAL = '#39'S'#39
      ''
      
        'Group By PN.TCP_COD, PN.Tcp_Fog, MAR.TPM_DES,DESE.TPD_DES,MED.TP' +
        'M_DES '
      'Order by  PN.Tcp_Fog--, VID.TPV_DES')
    Left = 32
    Top = 800
    object QrPneuCustoKmTodasVidasID: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QrPneuCustoKmTodasVidasFog: TIntegerField
      FieldName = 'Fog'
      Origin = 'Fog'
      Required = True
    end
    object QrPneuCustoKmTodasVidasMarca: TWideStringField
      FieldName = 'Marca'
      Origin = 'Marca'
      Required = True
      Size = 50
    end
    object QrPneuCustoKmTodasVidasDesenho: TWideStringField
      FieldName = 'Desenho'
      Origin = 'Desenho'
      Required = True
      Size = 50
    end
    object QrPneuCustoKmTodasVidasMedida: TWideStringField
      FieldName = 'Medida'
      Origin = 'Medida'
      Required = True
      Size = 50
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_N: TIntegerField
      FieldName = 'KM_VIDA_N'
      Origin = 'KM_VIDA_N'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_COMPRA_NOVO: TCurrencyField
      FieldName = 'VALOR_COMPRA_NOVO'
      Origin = 'VALOR_COMPRA_NOVO'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_NOVO: TCurrencyField
      FieldName = 'CUSTOKM_NOVO'
      Origin = 'CUSTOKM_NOVO'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_1: TIntegerField
      FieldName = 'KM_VIDA_1'
      Origin = 'KM_VIDA_1'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_REF1: TCurrencyField
      FieldName = 'VALOR_REF1'
      Origin = 'VALOR_REF1'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_1REF: TCurrencyField
      FieldName = 'CUSTOKM_1REF'
      Origin = 'CUSTOKM_1REF'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_2: TIntegerField
      FieldName = 'KM_VIDA_2'
      Origin = 'KM_VIDA_2'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_REF2: TCurrencyField
      FieldName = 'VALOR_REF2'
      Origin = 'VALOR_REF2'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_2REF: TCurrencyField
      FieldName = 'CUSTOKM_2REF'
      Origin = 'CUSTOKM_2REF'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_3: TIntegerField
      FieldName = 'KM_VIDA_3'
      Origin = 'KM_VIDA_3'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_REF3: TCurrencyField
      FieldName = 'VALOR_REF3'
      Origin = 'VALOR_REF3'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_3REF: TCurrencyField
      FieldName = 'CUSTOKM_3REF'
      Origin = 'CUSTOKM_3REF'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_4: TIntegerField
      FieldName = 'KM_VIDA_4'
      Origin = 'KM_VIDA_4'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_REF4: TCurrencyField
      FieldName = 'VALOR_REF4'
      Origin = 'VALOR_REF4'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_4REF: TCurrencyField
      FieldName = 'CUSTOKM_4REF'
      Origin = 'CUSTOKM_4REF'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasKM_VIDA_5: TIntegerField
      FieldName = 'KM_VIDA_5'
      Origin = 'KM_VIDA_5'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_REF5: TCurrencyField
      FieldName = 'VALOR_REF5'
      Origin = 'VALOR_REF5'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTOKM_5REF: TCurrencyField
      FieldName = 'CUSTOKM_5REF'
      Origin = 'CUSTOKM_5REF'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasVALOR_TOTAL_REF: TCurrencyField
      FieldName = 'VALOR_TOTAL_REF'
      Origin = 'VALOR_TOTAL_REF'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasKMTOTAL: TIntegerField
      FieldName = 'KMTOTAL'
      Origin = 'KMTOTAL'
      ReadOnly = True
      DisplayFormat = '00,000'
    end
    object QrPneuCustoKmTodasVidasVALOR_TOTAL: TCurrencyField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ReadOnly = True
      DisplayFormat = 'R$ ##,##0.00'
    end
    object QrPneuCustoKmTodasVidasCUSTO_KM_TOTAL: TCurrencyField
      FieldName = 'CUSTO_KM_TOTAL'
      Origin = 'CUSTO_KM_TOTAL'
      ReadOnly = True
      DisplayFormat = '0.0000'
    end
    object QrPneuCustoKmTodasVidasCK: TStringField
      FieldName = 'CK'
      Origin = 'CK'
      ReadOnly = True
      Required = True
      Size = 1
    end
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 224
    Top = 616
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 304
    Top = 616
  end
  object QrPneuMarcas: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      'Select * from tb_PnMarcas'
      'order by tpm_des')
    Left = 32
    Top = 864
  end
  object QrPneuDesenhos: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      'Select * from tb_PnDesenhos'
      'order by tpd_des')
    Left = 32
    Top = 912
  end
  object QrPneuMedidas: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      'Select * from tb_PnMedidas'
      'order by tpm_des')
    Left = 32
    Top = 968
  end
  object FdCorpore: TFDConnection
    Params.Strings = (
      'User_Name=gensoft'
      'Password=14132'
      'Database=CorporeRM'
      'Server=SERVERSANTAZITA\SQLSERVER'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 616
  end
  object QrProdutos: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      ''
      'SELECT        '
      #9'   PRD.IDPRD,'
      #9'   PRD.CODIGOPRD,'
      #9'   PRD.NOMEFANTASIA,'
      #9'   PRD.CODIGOAUXILIAR,'
      #9'   COMPL.PRATELEIRA,'
      #9'   PR.NUMEROCCF AS NCM,'
      #9'   FCALC.DES AS FORMULACALCULO,'
      #9'   GAR.DIAS DIAS,'
      #9'   GAR.KM AS KM,'
      #9'   LOC.SALDOFISICO2 AS SALDO'
      #9'   '
      #9'  '
      ''
      #9'   '
      'FROM TPRODUTO PRD'
      ''
      
        'JOIN TPRD PR ON PR.IDPRD = PRD.IDPRD AND PR.CODCOLIGADA = PRD.CO' +
        'DCOLPRD'
      ''
      'LEFT JOIN '
      
        '     TPRDCOMPL COMPL ON COMPL.IDPRD = PRD.IDPRD AND COMPL.CODCOL' +
        'IGADA = PRD.CODCOLPRD'
      'LEFT JOIN '
      
        '     TPRDLOC LOC ON LOC.IDPRD = PRD.IDPRD AND LOC.CODCOLIGADA = ' +
        'PRD.CODCOLPRD'
      ''
      ''
      'LEFT JOIN'
      
        #9' TPRD_GARANTIA GAR ON GAR.IDPRD = PRD.IDPRD and GAR.CODCOLIGADA' +
        ' = PRD.CODCOLPRD'
      'LEFT JOIN '
      '     TPRD_GARFCALC FCALC ON FCALC.IDFCALC = GAR.FCALC'
      ''
      'WHERE '
      '      PRD.CODCOLPRD =:coligada'
      #9'  AND PRD.ULTIMONIVEL = 1'
      ''
      ''
      ''
      'Order by Prd.CodigoPRd')
    Left = 240
    Top = 689
    ParamData = <
      item
        Name = 'COLIGADA'
        ParamType = ptInput
      end>
    object QrProdutosIDPRD: TIntegerField
      FieldName = 'IDPRD'
      Origin = 'IDPRD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrProdutosCODIGOPRD: TStringField
      FieldName = 'CODIGOPRD'
      Origin = 'CODIGOPRD'
      Size = 30
    end
    object QrProdutosNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object QrProdutosCODIGOAUXILIAR: TStringField
      FieldName = 'CODIGOAUXILIAR'
      Origin = 'CODIGOAUXILIAR'
    end
    object QrProdutosPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Origin = 'PRATELEIRA'
      Size = 10
    end
    object QrProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 14
    end
    object QrProdutosFORMULACALCULO: TWideStringField
      FieldName = 'FORMULACALCULO'
      Origin = 'FORMULACALCULO'
      Size = 50
    end
    object QrProdutosDIAS: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object QrProdutosKM: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object QrProdutosSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '0.00'
      Precision = 15
    end
  end
  object QrGarantiaFcalc: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      'Select * from TPRD_GARFCALC')
    Left = 240
    Top = 745
  end
  object QrSCA: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      'select '
      '        TMGAR_IDPRD AS IDPRD,'
      #9#9'PRD.CODIGOPRD AS CODIGOPRD,'
      #9#9'PRD.CODIGOAUXILIAR AS CODIGOAUX,'
      #9#9'PRD.NUMEROCCF AS NCM,'
      #9#9'Prd.NOMEFANTASIA as NomeProduto,'
      #9#9'FCALC.DES AS INDICE,'
      #9#9'TMGAR_DIASUSO AS DIAS_USO,'
      #9#9'TMGAR_KMUSO AS KM_USO,'
      #9#9'GAR.DIAS AS DIAS_GARANTIA,'
      #9#9'GAR.KM AS KM_GARANTIA,'
      #9#9'GAR.HIS AS HIS_PRODUTO,'
      #9#9'CONVERT(VARCHAR(10),TMGAR_DTENTRADA,103) AS DT_ENTRADA,'
      #9#9'CONVERT(VARCHAR(10),TMGAR_DTSAIDA,103) AS DT_SAIDA,'
      #9#9'TMGAR_INF AS INF_GARANTIA,'
      #9#9'TMGAR_KMENT AS KM_ENTRADA,'
      #9#9'TMGAR_KMSAI AS KM_SAIDA,'
      #9#9'TMGAR_VALOR AS VALOR,'
      #9#9'TMGAR_ESTAGIO AS CODESTAGIO,'
      '                TMGAR_NF AS NOTAFISCAL, '
      #9#9'CASE TMGAR_ESTAGIO '
      #9#9'     WHEN  '#39'D'#39' THEN '#39' '#39
      #9#9#9' WHEN  '#39'S'#39' THEN '#39'SOLICITADA/ENVIADA'#39
      #9#9#9' WHEN  '#39'C'#39' THEN '#39'CONCEDIDA'#39
      #9#9#9' WHEN  '#39'N'#39' THEN '#39'N'#195'O CONCECIDA'#39
      #9#9#9' WHEN  '#39'M'#39' THEN '#39'N'#195'O SOLICITADA'#39
      #9#9#9' END AS ESTAGIO,'
      #9#9'FCFO.NOMEFANTASIA AS NOME_FORNECEDOR'
      ''
      ''
      '        '
      ''
      ''
      ' from TPRD_MOVGAR MOV'
      ''
      ''
      
        'JOIN TPRD PRD ON PRD.IDPRD = MOV.TMGAR_IDPRD AND PRD.CODCOLIGADA' +
        ' = MOV.TMGAR_COLIGADA'
      'JOIN TPRD_GARFCALC FCALC ON FCALC.IDFCALC = MOV.TMGAR_FCALC'
      
        'JOIN TPRD_GARANTIA GAR ON GAR.IDPRD = PRD.IDPRD AND GAR.CODCOLIG' +
        'ADA = PRD.CODCOLIGADA'
      'LEFT JOIN FCFO FCFO ON FCFO.IDCFO = TMGAR_FOR'
      '')
    Left = 328
    Top = 801
  end
  object QrMovGar: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      'select '
      '        '
      ''
      ''
      '* from TPRD_MOVGAR')
    Left = 240
    Top = 801
  end
  object QrEntradaSaidaGrupoSubGrupo: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      ''
      ''
      ''
      'SELECT '
      #9
      #9'PRD.IDPRD,'
      #9'PRD.CODIGOPRD,'
      #9'PRD.NOMEFANTASIA,'
      #9'A.VALORLIQUIDO,'
      #9'A.QUANTIDADE,'
      '        MOV.DATAMOVIMENTO,'
      #9
      
        '        CASE WHEN CHARINDEX('#39' '#39', CC.NOME) > 0 THEN '#9'left(CC.nome' +
        ', charindex('#39' '#39', CC.Nome)-1) end as Veiculo,'
      ''
      
        '        (SELECT GRU.CODIGOPRD FROM TPRD GRU WHERE GRU.CODCOLIGAD' +
        'A = A.CODCOLIGADA AND GRU.CODIGOPRD = CONVERT(VARCHAR(3),PRD.COD' +
        'IGOPRD)) AS CODIGOGRUPO,'
      
        #9'(SELECT GRU.NOMEFANTASIA FROM TPRD GRU WHERE GRU.CODCOLIGADA = ' +
        'A.CODCOLIGADA AND GRU.CODIGOPRD = CONVERT(VARCHAR(3),PRD.CODIGOP' +
        'RD)) AS NOMEGRUPO,'
      #9
      
        #9'(SELECT GRU.CODIGOPRD FROM TPRD GRU WHERE GRU.CODCOLIGADA = A.C' +
        'ODCOLIGADA AND GRU.CODIGOPRD = CONVERT(VARCHAR(7),PRD.CODIGOPRD)' +
        ') AS CODIGOSUB,'
      
        #9'(SELECT GRU.NOMEFANTASIA FROM TPRD GRU WHERE GRU.CODCOLIGADA = ' +
        'A.CODCOLIGADA AND GRU.CODIGOPRD = CONVERT(VARCHAR(7),PRD.CODIGOP' +
        'RD)) AS NOMESUB'
      #9
      #9'FROM TITMMOV A'
      ''
      
        #9'JOIN TMOV MOV ON MOV.IDMOV = A.IDMOV AND MOV.CODCOLIGADA = A.CO' +
        'DCOLIGADA'
      ''
      
        #9'JOIN TPRD PRD ON PRD.IDPRD = A.IDPRD AND PRD.CODCOLIGADA = A.CO' +
        'DCOLIGADA'
      #9
      
        #9'Join Ttmv D On D.CodColigada = A.CodColigada And D.CodTmv = MOV' +
        '.CodTmv'
      
        '        JOIN GCCUSTO CC ON CC.CODCOLIGADA = MOV.CODCOLIGADA AND ' +
        'CC.CODCCUSTO = MOV.CODCCUSTO'
      #9
      #9'WHERE'
      #9#9#9'A.CODCOLIGADA =:coligada'
      #9#9#9'AND MOV.DATAMOVIMENTO >=:inicio'
      #9#9#9'AND MOV.DATAMOVIMENTO <=:fim'
      #9#9#9'And D.MarcaSaida LIKE :SAIDA'
      '                        and D.MarcaEntrada LIKE :ENTRADA'
      #9#9#9
      'AND CONVERT(VARCHAR(3),PRD.CODIGOPRD) >= :grupoI'
      #9#9#9'AND CONVERT(VARCHAR(3),PRD.CODIGOPRD) <= :grupoF'
      ''
      '     '#9#9'        AND CONVERT(VARCHAR(7),PRD.CODIGOPRD) >= :SUBI'
      #9#9#9'AND CONVERT(VARCHAR(7),PRD.CODIGOPRD) <= :SUBF'
      ''
      ''
      #9#9#9'order by codigoGrupo, codigosub, datamovimento'
      '')
    Left = 240
    Top = 873
    ParamData = <
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'INICIO'
        DataType = ftString
        ParamType = ptInput
        Value = '01/07/2015'
      end
      item
        Name = 'FIM'
        DataType = ftString
        ParamType = ptInput
        Value = '31/07/2015'
      end
      item
        Name = 'SAIDA'
        DataType = ftString
        ParamType = ptInput
        Value = 'N'
      end
      item
        Name = 'ENTRADA'
        DataType = ftString
        ParamType = ptInput
        Value = 'S'
      end
      item
        Name = 'GRUPOI'
        DataType = ftString
        ParamType = ptInput
        Value = '003'
      end
      item
        Name = 'GRUPOF'
        DataType = ftString
        ParamType = ptInput
        Value = '003'
      end
      item
        Name = 'SUBI'
        DataType = ftString
        ParamType = ptInput
        Value = '001.001'
      end
      item
        Name = 'SUBF'
        DataType = ftString
        ParamType = ptInput
        Value = '003.999'
      end>
  end
  object QrEntradaSaidaGSSintetitico: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      'SELECT '
      'C.IDPRD,'
      'C.CODIGOPRD,'
      'C.NOMEFANTASIA,'
      ''
      'GRU.CODIGOPRD CODGRUPO,'
      'GRU.NOMEFANTASIA NOMEGRUPO,'
      'SUB.CODIGOPRD CODSUB,'
      'SUB.NOMEFANTASIA NOMESUB,'
      'SUM(A.QUANTIDADE) QTD,'
      'SUM(A.VALORLIQUIDO) VALOR '
      ''
      'FROM TITMMOV A '
      ''
      'JOIN TMOV B ON B.IDMOV = A.IDMOV AND A.CODCOLIGADA=B.CODCOLIGADA'
      
        'JOIN TPRD C ON C.IDPRD = A.IDPRD AND A.CODCOLIGADA = C.CODCOLIGA' +
        'DA'
      
        'JOIN TTMV D ON D.CODTMV = B.CODTMV AND D.CODCOLIGADA = A.CODCOLI' +
        'GADA'
      
        'LEFT JOIN TPRD SUB ON SUB.CODCOLIGADA = C.CODCOLIGADA AND SUB.UL' +
        'TIMONIVEL = 0 AND SUB.CODIGOPRD = CONVERT(VARCHAR(7),C.CODIGOPRD' +
        ')'
      ''
      ''
      
        'LEFT JOIN TPRD GRU ON  GRU.CODCOLIGADA = C.CODCOLIGADA AND GRU.C' +
        'ODIGOPRD = CONVERT(VARCHAR(3),C.CODIGOPRD) AND GRU.ULTIMONIVEL =' +
        ' 0'
      ''
      ''
      
        '--LEFT JOIN TPRD NOMGRU ON  NOMGRU.CODCOLIGADA = C.CODCOLIGADA A' +
        'ND CONVERT(VARCHAR(3),NOMGRU.CODIGOPRD) = CONVERT(VARCHAR(3),C.C' +
        'ODIGOPRD) AND NOMGRU.ULTIMONIVEL =0'
      ''
      'where'
      #9#9#9'A.CODCOLIGADA =:coligada'
      #9#9#9'AND b.DATAMOVIMENTO >=:inicio'
      #9#9#9'AND b.DATAMOVIMENTO <=:fim'
      #9#9#9'And D.MarcaSaida LIKE :SAIDA'
      '                        and D.MarcaEntrada LIKE :ENTRADA'
      ''
      'AND CONVERT(VARCHAR(3),C.CODIGOPRD) >= :grupoI'
      #9#9#9'AND CONVERT(VARCHAR(3),C.CODIGOPRD) <= :grupoF'
      ''
      '     '#9#9'        AND CONVERT(VARCHAR(7),c.CODIGOPRD) >= :SUBI'
      #9#9#9'AND CONVERT(VARCHAR(7),C.CODIGOPRD) <= :SUBF'
      ''
      ''
      ''
      
        'GROUP BY C.IDPRD, C.CODIGOPRD, C.NOMEFANTASIA, GRU.CODIGOPRD, GR' +
        'U.NOMEFANTASIA, SUB.CODIGOPRD, SUB.NOMEFANTASIA '
      ''
      'ORDER BY CODGRUPO, CODSUB, C.NOMEFANTASIA')
    Left = 240
    Top = 937
    ParamData = <
      item
        Name = 'COLIGADA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'INICIO'
        DataType = ftString
        ParamType = ptInput
        Value = '01/08/2015'
      end
      item
        Name = 'FIM'
        DataType = ftString
        ParamType = ptInput
        Value = '31/08/2015'
      end
      item
        Name = 'SAIDA'
        DataType = ftString
        ParamType = ptInput
        Value = 'S'
      end
      item
        Name = 'ENTRADA'
        DataType = ftString
        ParamType = ptInput
        Value = '%'
      end
      item
        Name = 'GRUPOI'
        DataType = ftString
        ParamType = ptInput
        Value = '001'
      end
      item
        Name = 'GRUPOF'
        DataType = ftString
        ParamType = ptInput
        Value = '016'
      end
      item
        Name = 'SUBI'
        DataType = ftString
        ParamType = ptInput
        Value = '001.001'
      end
      item
        Name = 'SUBF'
        DataType = ftString
        ParamType = ptInput
        Value = '016.999'
      end>
  end
  object Q: TFDQuery
    Connection = FdCorpore
    SQL.Strings = (
      ''
      'SELECT        '
      #9'   PRD.IDPRD,'
      #9'   PRD.CODIGOPRD,'
      #9'   PRD.NOMEFANTASIA,'
      #9'   PRD.CODIGOAUXILIAR,'
      #9'   COMPL.PRATELEIRA,'
      #9'   PR.NUMEROCCF AS NCM,'
      #9'   FCALC.DES AS FORMULACALCULO,'
      #9'   GAR.DIAS DIAS,'
      #9'   GAR.KM AS KM,'
      #9'   LOC.SALDOFISICO2 AS SALDO'
      #9'   '
      #9'  '
      ''
      #9'   '
      'FROM TPRODUTO PRD'
      ''
      
        'JOIN TPRD PR ON PR.IDPRD = PRD.IDPRD AND PR.CODCOLIGADA = PRD.CO' +
        'DCOLPRD'
      ''
      'LEFT JOIN '
      
        '     TPRDCOMPL COMPL ON COMPL.IDPRD = PRD.IDPRD AND COMPL.CODCOL' +
        'IGADA = PRD.CODCOLPRD'
      'LEFT JOIN '
      
        '     TPRDLOC LOC ON LOC.IDPRD = PRD.IDPRD AND LOC.CODCOLIGADA = ' +
        'PRD.CODCOLPRD'
      ''
      ''
      'LEFT JOIN'
      
        #9' TPRD_GARANTIA GAR ON GAR.IDPRD = PRD.IDPRD and GAR.CODCOLIGADA' +
        ' = PRD.CODCOLPRD'
      'LEFT JOIN '
      '     TPRD_GARFCALC FCALC ON FCALC.IDFCALC = GAR.FCALC'
      ''
      'WHERE '
      '      PRD.CODCOLPRD =:coligada'
      #9'  AND PRD.ULTIMONIVEL = 1'
      ''
      ''
      ''
      'Order by Prd.CodigoPRd')
    Left = 352
    Top = 689
    ParamData = <
      item
        Name = 'COLIGADA'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'IDPRD'
      Origin = 'IDPRD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CODIGOPRD'
      Origin = 'CODIGOPRD'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'CODIGOAUXILIAR'
      Origin = 'CODIGOAUXILIAR'
    end
    object StringField4: TStringField
      FieldName = 'PRATELEIRA'
      Origin = 'PRATELEIRA'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 14
    end
    object WideStringField1: TWideStringField
      FieldName = 'FORMULACALCULO'
      Origin = 'FORMULACALCULO'
      Size = 50
    end
    object SmallintField1: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object IntegerField2: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object BCDField1: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '0.00'
      Precision = 15
    end
  end
  object Q2: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      ''
      'SELECT        '
      #9'   PRD.IDPRD,'
      #9'   PRD.CODIGOPRD,'
      #9'   PRD.NOMEFANTASIA,'
      #9'   PRD.CODIGOAUXILIAR,'
      #9'   COMPL.PRATELEIRA,'
      #9'   PR.NUMEROCCF AS NCM,'
      #9'   FCALC.DES AS FORMULACALCULO,'
      #9'   GAR.DIAS DIAS,'
      #9'   GAR.KM AS KM,'
      #9'   LOC.SALDOFISICO2 AS SALDO'
      #9'   '
      #9'  '
      ''
      #9'   '
      'FROM TPRODUTO PRD'
      ''
      
        'JOIN TPRD PR ON PR.IDPRD = PRD.IDPRD AND PR.CODCOLIGADA = PRD.CO' +
        'DCOLPRD'
      ''
      'LEFT JOIN '
      
        '     TPRDCOMPL COMPL ON COMPL.IDPRD = PRD.IDPRD AND COMPL.CODCOL' +
        'IGADA = PRD.CODCOLPRD'
      'LEFT JOIN '
      
        '     TPRDLOC LOC ON LOC.IDPRD = PRD.IDPRD AND LOC.CODCOLIGADA = ' +
        'PRD.CODCOLPRD'
      ''
      ''
      'LEFT JOIN'
      
        #9' TPRD_GARANTIA GAR ON GAR.IDPRD = PRD.IDPRD and GAR.CODCOLIGADA' +
        ' = PRD.CODCOLPRD'
      'LEFT JOIN '
      '     TPRD_GARFCALC FCALC ON FCALC.IDFCALC = GAR.FCALC'
      ''
      'WHERE '
      '      PRD.CODCOLPRD =:coligada'
      #9'  AND PRD.ULTIMONIVEL = 1'
      ''
      ''
      ''
      'Order by Prd.CodigoPRd')
    Left = 112
    Top = 689
    ParamData = <
      item
        Name = 'COLIGADA'
        ParamType = ptInput
      end>
    object IntegerField3: TIntegerField
      FieldName = 'IDPRD'
      Origin = 'IDPRD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'CODIGOPRD'
      Origin = 'CODIGOPRD'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'CODIGOAUXILIAR'
      Origin = 'CODIGOAUXILIAR'
    end
    object StringField9: TStringField
      FieldName = 'PRATELEIRA'
      Origin = 'PRATELEIRA'
      Size = 10
    end
    object StringField10: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 14
    end
    object WideStringField2: TWideStringField
      FieldName = 'FORMULACALCULO'
      Origin = 'FORMULACALCULO'
      Size = 50
    end
    object SmallintField2: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object IntegerField4: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object BCDField2: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '0.00'
      Precision = 15
    end
  end
  object QrRequisicao: TFDQuery
    Connection = FdCorpore
    Left = 464
    Top = 689
  end
  object QrTemp2: TFDQuery
    Connection = FDConectGenoma
    SQL.Strings = (
      ''
      'SELECT        '
      #9'   PRD.IDPRD,'
      #9'   PRD.CODIGOPRD,'
      #9'   PRD.NOMEFANTASIA,'
      #9'   PRD.CODIGOAUXILIAR,'
      #9'   COMPL.PRATELEIRA,'
      #9'   PR.NUMEROCCF AS NCM,'
      #9'   FCALC.DES AS FORMULACALCULO,'
      #9'   GAR.DIAS DIAS,'
      #9'   GAR.KM AS KM,'
      #9'   LOC.SALDOFISICO2 AS SALDO'
      #9'   '
      #9'  '
      ''
      #9'   '
      'FROM TPRODUTO PRD'
      ''
      
        'JOIN TPRD PR ON PR.IDPRD = PRD.IDPRD AND PR.CODCOLIGADA = PRD.CO' +
        'DCOLPRD'
      ''
      'LEFT JOIN '
      
        '     TPRDCOMPL COMPL ON COMPL.IDPRD = PRD.IDPRD AND COMPL.CODCOL' +
        'IGADA = PRD.CODCOLPRD'
      'LEFT JOIN '
      
        '     TPRDLOC LOC ON LOC.IDPRD = PRD.IDPRD AND LOC.CODCOLIGADA = ' +
        'PRD.CODCOLPRD'
      ''
      ''
      'LEFT JOIN'
      
        #9' TPRD_GARANTIA GAR ON GAR.IDPRD = PRD.IDPRD and GAR.CODCOLIGADA' +
        ' = PRD.CODCOLPRD'
      'LEFT JOIN '
      '     TPRD_GARFCALC FCALC ON FCALC.IDFCALC = GAR.FCALC'
      ''
      'WHERE '
      '      PRD.CODCOLPRD =:coligada'
      #9'  AND PRD.ULTIMONIVEL = 1'
      ''
      ''
      ''
      'Order by Prd.CodigoPRd')
    Left = 408
    Top = 617
    ParamData = <
      item
        Name = 'COLIGADA'
        ParamType = ptInput
      end>
    object IntegerField5: TIntegerField
      FieldName = 'IDPRD'
      Origin = 'IDPRD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'CODIGOPRD'
      Origin = 'CODIGOPRD'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 100
    end
    object StringField13: TStringField
      FieldName = 'CODIGOAUXILIAR'
      Origin = 'CODIGOAUXILIAR'
    end
    object StringField14: TStringField
      FieldName = 'PRATELEIRA'
      Origin = 'PRATELEIRA'
      Size = 10
    end
    object StringField15: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 14
    end
    object WideStringField3: TWideStringField
      FieldName = 'FORMULACALCULO'
      Origin = 'FORMULACALCULO'
      Size = 50
    end
    object SmallintField3: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object IntegerField6: TIntegerField
      FieldName = 'KM'
      Origin = 'KM'
    end
    object BCDField3: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = '0.00'
      Precision = 15
    end
  end
end
