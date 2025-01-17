unit ClasseRequisicao;

interface

uses

   Windows, Messages, SysUtils, Classes,  Controls, Forms, Dialogs,
   FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
   Variants, Contnrs,  DBXFirebird, SqlExpr,  StrUtils, inifiles;


type
         TRequisicao = class
         private
            // id : string;
             dataMOV: string;
             idmov : string;
             veiculo: string;
             status:string;
             idprd:string;
             qtd:string;
             col:string;
             his:string;
             tipoos:string;
             datahora:string;
             usuario:string;
             CODCCUSTO:STRING;
             Resp:string;
             AUTORIZA:STRING;
             procedure grava;
             PUBLIC
             PROCEDURE CARREGADADOS(dataMOV: string;veiculo: string; status:string; idprd:string; qtd:string; col:string; his:string;tipoos:string;datahora:string; usuario:string; CODCCUSTO:STRING;Resp:string;AUTORIZA:STRING );



         end;

implementation
uses UnitServerpai;

PROCEDURE TREQUISICAO.CARREGADADOS(dataMOV: string;veiculo: string; status:string; idprd:string; qtd:string; col:string; his:string;tipoos:string;datahora:string; usuario:string; CODCCUSTO:STRING;Resp:string;AUTORIZA:STRING);
BEGIN
  dataMOV:=dataMOV;
  veiculo:=veiculo;
  status:=status;
  idprd:=idprd;
  qtd:=qtd;
  col:=col;
  his:=his;
  tipoos:=tipoos;
  datahora:=datahora;
  CODCCUSTO:=CODCCUSTO;
  usuario:=usuario;
  AUTORIZA:=AUTORIZA;
  resp:=resp;
          with pai.QrRequisicao do
              begin
                     close;
                     sql.Clear;
                     sql.Add('insert into TMOV_REQUISICAO (MRQ_DATA, MRQ_VEI, MRQ_STATUS, MRQ_IDPRD, MRQ_QTD, MRQ_COL, MRQ_HIS,MRQ_TIPOOS,MRQ_DATAHORA,MRQ_USUARIO,MRQ_CODCCUSTO,MRQ_RESP, MRQ_USUAUT)');
                     SQL.Add('values(:DATA,:VEI,:STATUS,:IDPRD,:QTD,:COL,:HIS,:TIPOOS,:DATAHORA,:USUARIO,:CODCCUSTO,:RESP,:USUAUT)');
//                   ParamByName('ID').AsString:=ID;
                     ParamByName('DATA').AsString:=DATAMOV;
                     ParamByName('VEI').AsString:=VEICULO;
                     ParamByName('STATUS').AsString:=STATUS;
                     ParamByName('IDPRD').AsString:=IDPRD;
                     ParamByName('QTD').AsString:=QTD;
                     ParamByName('COL').AsString:=COL;
                     ParamByName('HIS').AsString:=HIS;
                     ParamByName('TIPOOS').AsString:=TIPOOS;
                     ParamByName('DATAHORA').AsString:=DATAHORA;
                     ParamByName('USUARIO').AsString:=USUARIO;
                     ParamByName('CODCCUSTO').AsString:=CODCCUSTO;
                     ParamByName('RESP').AsString:=RESP;
                     ParamByName('USUAUT').AsString:=AUTORIZA;
                     EXECSQL;
              end;

END;

procedure TRequisicao.grava;
begin
          with pai.QrRequisicao do
              begin
                     close;
                     sql.Clear;
                     sql.Add('insert into TMOV_REQUISICAO VALUES(MRQ_DATAMOV, MRQ_VEI, MRQ_STATUS, MRQ_IDPRD, MRQ_QTD, MRQ_COL, MRQ_HIS,MRQ_TIPOOS,MRQ_DATAHORA,MRQ_USUARIO,MRQ_RESP)');
                     SQL.Add(':DATA,:VEI,:STATUS,:IDPRD,:QTD,:COL,:HIS,:TIPOOS,:DATAHORA,:USUARIO,:RESP');
//                     ParamByName('ID').AsString:=ID;
                     ParamByName('DATA').AsString:=DATAMOV;
                     ParamByName('VEICULO').AsString:=VEICULO;
                     ParamByName('STATUS').AsString:=STATUS;
                     ParamByName('IDPRD').AsString:=IDPRD;
                     ParamByName('QTD').AsString:=QTD;
                     ParamByName('COL').AsString:=COL;
                     ParamByName('HIS').AsString:=HIS;
                     ParamByName('TIPOOS').AsString:=TIPOOS;
                     ParamByName('DATAHORA').AsString:=DATAHORA;
                     ParamByName('USUARIO').AsString:=USUARIO;
                     ParamByName('RESP').AsString:=RESP;
                     EXECSQL;
              end;


end;




end.
