unit UnitTerminalConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCGrids, StdCtrls, DBCtrls, ExtCtrls, pngimage, ADODB, jpeg,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan, GestureMgr, ImgList, Vcl.Styles, Vcl.Themes;

type
  TFormTerminalConsulta = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DtVeiculos: TDataSource;
    DtColigada: TDataSource;
    QrVeiculos: TADOQuery;
    Timer1: TTimer;
    Panel1: TPanel;
    DBText1: TDBText;
    Timer2: TTimer;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Timer3: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure DBCtrlGrid1Enter(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AcShowExecute(Sender: TObject);
    Procedure TestaVigencia;
    procedure FormCreate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTerminalConsulta: TFormTerminalConsulta;

implementation

uses UnitServerPai, UnitDadosConsulta, UtNucleo;

{$R *.dfm}

procedure TFormTerminalConsulta.AcShowExecute(Sender: TObject);
begin
ShowMessage('Funcionou');
end;

procedure TFormTerminalConsulta.DBCtrlGrid1Click(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
//Application.CreateForm(TFormDadosConsultas,FormDadosConsultas);
Screen.Cursor:=CrDefault;
FormDadosConsultas.Show;
end;

procedure TFormTerminalConsulta.DBCtrlGrid1Enter(Sender: TObject);
begin
if not DtVeiculos.DataSet.Eof then
    begin
//        Image5.Visible:=false;
        panel1.Color:=clwhite;
        With pai.QrPmc  do
               Begin
                     Close;
                     Sql.Clear;
                     Sql.Add('Select PMC_Vei, PMC_Coligada, PMC_Status from Tb_CbPmc');
                     Sql.Add('Where Pmc_Coligada = ' + QuotedStr(DtCOligada.Dataset.FieldByName('Cod_Coligada').AsString));
                     Sql.Add('And Pmc_Status = ' + QuotedStr('A'));
                     Sql.Add('And PMC_Vei = ' + QuotedStr(DtVeiculos.DataSet.FieldByName('vei_nun').AsString));
                     Open;
                      if not eof then
                           begin
                                 panel1.Color:=ClYellow;
                              //   Image5.Visible:=true;
                           end;
                End;
    end;

end;

procedure TFormTerminalConsulta.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  ShowScrollBar(DBCtrlGrid1.Handle,SB_VERT,False);
if not DtVeiculos.DataSet.Eof then
    begin
        Label1.Visible:=false;
        panel1.Color:=clwhite;
//        if (QrVeiculos.FieldByName('Pmc_Status').AsString <> '')  then //and (QrVeiculos.FieldByName('R.TID_COD').AsString <> '') then
        if (QrVeiculos.FieldByName('GRM_ID').AsString <> '')  then //and (QrVeiculos.FieldByName('R.TID_COD').AsString <> '') then
            begin
                    panel1.Color:=$0011FF11;
            end;
        if QrVeiculos.FieldByName('Tos_Status').AsString <> '' then
            begin
                    label1.Visible:=true;
                    //panel1.Color:=$0077FFFF;
            end
            else
                    Label1.Visible:=false;


    end;
end;

procedure TFormTerminalConsulta.FormActivate(Sender: TObject);
begin
ShowScrollBar(DBCtrlGrid1.Handle,SB_VERT,False);
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '001';
                 Parameters.ParamByName('setorF').Value    :=  '999';

//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

  end;

procedure TFormTerminalConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TStyleManager.TrySetStyle(Pai.QrUsuarios.FieldByName('Usu_Stilo').asstring);
//TStyleManager.TrySetStyle('Turquoise Gray');
//FormNucleo.ShowModal;


DtVeiculos.DataSet.Close;
FormDadosConsultas.close;
Action:=Cafree;
end;

procedure TFormTerminalConsulta.FormCreate(Sender: TObject);
begin
Screen.Cursor:=CrHourGlass;
//TStyleManager.TrySetStyle('Windows');
Application.CreateForm(TFormDadosConsultas,FormDadosConsultas);
Screen.Cursor:=CrDefault;

end;

procedure TFormTerminalConsulta.Panel10Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '004';
                 Parameters.ParamByName('setorF').Value    :=  '004';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel3Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '003';
                 Parameters.ParamByName('setorF').Value    :=  '003';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel4Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '001';
                 Parameters.ParamByName('setorF').Value    :=  '999';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel5Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '005';
                 Parameters.ParamByName('setorF').Value    :=  '005';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel6Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '007';
                 Parameters.ParamByName('setorF').Value    :=  '007';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel7Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '010';
                 Parameters.ParamByName('setorF').Value    :=  '010';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel8Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '001';
                 Parameters.ParamByName('setorF').Value    :=  '001';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Panel9Click(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '011';
                 Parameters.ParamByName('setorF').Value    :=  '011';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

procedure TFormTerminalConsulta.Timer1Timer(Sender: TObject);
begin
//Showmessage('jansdjans');
DBCtrlGrid1.Repaint;
end;

procedure TFormTerminalConsulta.Timer2Timer(Sender: TObject);
begin
IF PAI.ConctPai.Connected = fALSE THEN PAI.ConctPai.Connected:=TRUE;
IF PAI.ConectCorpore.Connected = fALSE THEN PAI.ConectCorpore.Connected:=TRUE;

end;

procedure TFormTerminalConsulta.Timer3Timer(Sender: TObject);
begin
         With QrVeiculos do
              Begin
                 Close;
                 Parameters.ParamByName('coligada').Value :=  DtColigada.DataSet.FieldByName('Cod_coligada').AsString;
                 Parameters.ParamByName('DtInicio').Value :=  DateToStr(now);
                 Parameters.ParamByName('DtFim').Value    :=  DateToStr(now);
                 Parameters.ParamByName('setorI').Value    :=  '001';
                 Parameters.ParamByName('setorF').Value    :=  '999';
//                 Sql.Clear;
//                 Sql.Add('Select A.*,b.*,c.*,d.*,e.*,f.*,M.*,P.*,O.* from Tb_Veiculos A');
//                 Sql.Add('left Join  Tb_CbPmc as M On M.Pmc_Vei = A.Vei_nun and M.PMc_Status = '+QuotedStr('A')+' and M.Pmc_Cod = (select top 1 L.Pmc_cod from tb_CBPmc L where L.Pmc_Vei = A.Vei_nun and L.Pmc_Status = ' + QuotedStr('A')+')');
//                 Sql.Add('Join       Tb_VeiModCar as B on A.Vei_CarMod = B.Car_Cod');
//                 Sql.Add('Join       Tb_VeiModCha as C On A.Vei_ModCha = C.Mod_Cod');
//                 Sql.Add('Join       Tb_IndiceRevisao as D On A.Vei_Nun = D.Tin_Vei');
//                 Sql.Add('Join       TB_VeiSistema as E On E.Vsi_Cod = A.Vei_Vsi');
//                 Sql.Add('Join       Tb_PadVeic as F On F.Pad_Cod = A.Vei_padrao');
//                 Sql.Add('Left Join  Tb_CbIteRec as R On R.Tid_Cod = M.Pmc_Item');
//                 Sql.Add('Left Join  Tb_CbGruMan as P On R.Tid_Grupo = P.Grm_Id');
//                 Sql.Add('Left Join  Tb_OsMov as O On O.Tos_Vei = A.Vei_nun and (O.TOS_DTVIGINI >=:DTINICIO OR TOS_DTVIGFIM <=:DTFIM) AND O.TOS_STATUS = ''A''');
//                 Sql.Add('Where A.Vei_Status = 1');
//                 Sql.Add('and A.vei_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_coligada').AsString));
//                 Sql.Add('order by a.vei_numero');

                 Open;
                 if RecordCount < 150 then
                      begin
                            DBCtrlGrid1.ColCount:=11;
                      end;
                 if RecordCount < 70 then
                      begin
                            DBCtrlGrid1.RowCount:=7;
                            DBCtrlGrid1.ColCount:=10;
                      end;


              End;

end;

Procedure TformTerminalConsulta.TestaVigencia;
begin
       //
//        if StrToDate(QrVeiculos.FieldByName('Tos_D').AsString) >  then
//            begin
//                    label1.Visible:=true;
                    //panel1.Color:=$0077FFFF;
//            end
//            else



end;

end.
