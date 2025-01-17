unit UtTotvsInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxTextEdit, Vcl.ExtCtrls,
  dxSkinsForm, dxStatusBar, dxRibbonStatusBar, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, dxDockControl, dxDockPanel, System.ImageList,
  Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxProgressBar, JvComponentBase, JvDBGridExport, Data.DB;

type
  TFormTotvsInventario = class(TdxRibbonForm)
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxImageList1: TcxImageList;
    dxDockPanel1: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    EditDataInventario: TcxDateEdit;
    Label1: TLabel;
    SaveDialog: TSaveDialog;
    DtInv: TDataSource;
    cxProgressBar1: TcxProgressBar;
    cxTabSheet3: TcxTabSheet;
    Memo1: TMemo;
    Label2: TLabel;
    EditCardexI: TcxDateEdit;
    EditCardexF: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Editlista: TcxMaskEdit;
    CheckBox1: TCheckBox;
    Abastecimento: TcxTabSheet;
    cxButton5: TcxButton;
    EditDataAbast: TcxDateEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTotvsInventario: TFormTotvsInventario;

implementation

{$R *.dfm}

uses UtRelatorio, UnitServerPai, UtGeraPlanilha;

{ TForm1 }

procedure TFormTotvsInventario.cxButton2Click(Sender: TObject);
begin
        WITH RELATORIO2.QrEntradaProdutos DO
             BEGIN
                       CLOSE;
                       ParamByName('COLIGADA').AsSTRING:=IntToStr(PAI.VCOLIGADA);
                       ParamByName('DATAI').ASSTRING:=EditCardexI.Text;
                       ParamByName('DATAF').ASSTRING:=EditCardexF.Text;
                       ParamByName('Lista').ASSTRING:=EditLista.Text;

                       Open;
                       if not eof then
                            begin
                                  Relatorio2.FtEntradaProdutos.Variables['DataI']:=QUOTEDSTR(EditCardexI.Text);
                                  Relatorio2.FtEntradaProdutos.Variables['Dataf']:=QUOTEDSTR(EditCardexF.Text);
                                  Relatorio2.FtEntradaProdutos.ShowReport();
                            end;

             END;

end;

procedure TFormTotvsInventario.cxButton3Click(Sender: TObject);
begin
           Application.CreateForm(TFormGeraPlanilha,FormGeraPlanilha);
           with FormGeraPlanilha.Query do
             begin
                       Close;
                       Connection:=Pai.FdCorpore;
                       Sql.Clear;
                       sql.Add('SELECT  TPRD.NUMEROCCF as NCM, TPRD.CODIGOPRD Codigo,TPRD.NOMEFANTASIA Descricao,TPRD.CODUNDCONTROLE Un,');
                       sql.Add('TRELSLD.SALDOMOV Qtd,TRELSLD.CUSTOMEDMOV, CONVERT(decimal(10,2),TRELSLD.SALDOMOV * TRELSLD.CUSTOMEDMOV) as VlrTotal,');
                       sql.Add('(select tp2.codigoprd+'' - ''+tp2.nomefantaSia from tprd tp2 where tp2.codigoprd = substring(tprd.codigoprd,1,3)');
                       sql.Add('and tp2.codcoligada=tprd.codcoligada');
                       sql.Add('group by tp2.codigoprd,tp2.nomefantasia)');
                       sql.Add('FROM TRELSLD,TPRD WHERE TPRD.IDPRD = TRELSLD.IDPRD AND TPRD.CODCOLIGADA = TRELSLD.CODCOLIGADA AND TRELSLD.DATAMOVIMENTO <=:dataf');
                       sql.Add('AND TRELSLD.SALDO = 2 AND TRELSLD.SALDOMOV > 0 AND TRELSLD.SEQUENCIAL = (SELECT MAX(TREL1.SEQUENCIAL)FROM TRELSLD TREL1');
                       sql.Add('WHERE TREL1.DATAMOVIMENTO <=:dataf  AND TREL1.SALDO = 2 AND TREL1.IDPRD = TRELSLD.IDPRD AND TREL1.CODCOLIGADA =:coligada)');
                       sql.Add('AND SUBSTRING(TPRD.CODIGOPRD,1,3) >= ''001'' AND SUBSTRING(TPRD.CODIGOPRD,1,3) <= ''026'' AND TRELSLD.CODCOLIGADA =:coligada  AND SUBSTRING(TPRD.CODIGOPRD,1,3) <> ''998'' AND SUBSTRING(TPRD.CODIGOPRD,1,3) <> ''014'' ORDER BY TPRD.CODIGOPRD');
                       ParamByName('COLIGADA').AsSTRING:=IntToStr(PAI.VCOLIGADA);
                       ParamByName('DATAF').ASSTRING:=EditDataInventario.Text;
                       memo1.Text:=sql.Text;
                       Open;
                      if Not Eof then
                                  begin
                                           FormGeraPlanilha.SaveDialog.Title := 'Exportar a Microsoft Excel...';
                                           FormGeraPlanilha.SaveDialog.Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos os Arquivos [*.*]|*.*';
                                           FormGeraPlanilha.SaveDialog.FilterIndex := 1;
                                           FormGeraPlanilha.SaveDialog.DefaultExt := '*.xlsx';
                                           if FormGeraPlanilha.SaveDialog.Execute Then
                                           begin
                                             FormGeraPlanilha.ExpAbast1.FileName := FormGeraPlanilha.SaveDialog.FileName;
                                             FormGeraPlanilha.ExpAbast1.Grid := FormGeraPlanilha.DbAbast;
                                             FormGeraPlanilha.ExpAbast1.ExportGrid;
                                           end;

                                  end;


//                                           cxProgressBar1.Show;
//                                           SaveDialog.Title := 'Exportar a Microsoft Excel...';
//                                           SaveDialog.Filter := 'Microsoft Excel 97-2003 [*.xls]|*.xls|Microsoft Excel 2007 [*.xlsx]|*.xlsx|Todos los Archivos [*.*]|*.*';
//                                           SaveDialog.FilterIndex := 1;
//                                           SaveDialog.DefaultExt := '*.xlsx';
//                                           if SaveDialog.Execute Then
//                                           begin
//                                             ExpAbast1.FileName := SaveDialog.FileName;
//                                             FormGeraPlanilha.ExpAbast1.FileName := FormGeraPlanilha.SaveDialog.FileName;
//                                             FormGeraPlanilha.ExpAbast1.Grid := FormGeraPlanilha.DbAbast;
//                                             FormGeraPlanilha.ExpAbast1.ExportGrid;
//                                           end;
//
//                                             cxProgressBar1.Position := 0;
////                                             cxProgressBar1.Properties.Max := DbAbast.DataSource.DataSet.RecordCount-1;
//                                             cxProgressBar1.Show;
//                                             ExpAbast1.ExportGrid;
//                                             cxProgressBar1.Hide;
//
//
//                                           end;

                      close;
                      Connection:=pai.FDConectGenoma;

             END;

end;

procedure TFormTotvsInventario.cxButton4Click(Sender: TObject);
begin
        WITH RELATORIO2.QrInventario DO
             BEGIN
                       CLOSE;
                       ParamByName('COLIGADA').AsSTRING:=IntToStr(PAI.VCOLIGADA);
                       ParamByName('DATAF').ASSTRING:=EditDataInventario.Text;
                       Open;
                       if not eof then
                            begin
                                 if CheckBox1.Checked then
                                 begin
                                        Relatorio2.QrInventarioValorUn.Variables['DataI']:=QUOTEDSTR(EditDataInventario.Text);
                                        Relatorio2.QrInventarioValorUn.ShowReport();
                                 end
                                 else
                                 begin
                                        Relatorio2.FtInventario.Variables['DataI']:=QUOTEDSTR(EditDataInventario.Text);
                                        Relatorio2.FtInventario.ShowReport();
                                 end;
                            end;

             END;
end;

procedure TFormTotvsInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION:=CAFREE;
end;

procedure TFormTotvsInventario.FormCreate(Sender: TObject);
begin
  DisableAero := True;
  EditDataAbast.date:=now;
  end;

end.
