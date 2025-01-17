unit UtAvariaMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, System.ImageList,
  Vcl.ImgList, cxPC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxContainer, cxEdit, Vcl.Menus, cxButtons, cxImage,
  dxGDIPlusClasses, UtFrAvaria, Vcl.Grids, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Grid, Vcl.DBGrids,
  Vcl.DBCGrids;

type
  TFormAvariaMov = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Editvei: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxPageControl1: TcxPageControl;
    tabGrade: TcxTabSheet;
    TabVeiculo: TcxTabSheet;
    QrPro: TFDQuery;
    DtPro: TDataSource;
    DtVeiculos: TDataSource;
    PnVeiculo: TPanel;
    FrameAvaria1: TFrameAvaria;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QrVeiculos: TFDQuery;
    DtAvarias: TDataSource;
    QrAva: TFDQuery;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Button1: TButton;
    cxImageList1: TcxImageList;
    cxButton1: TcxButton;
    DBGrid1: TDBGrid;
    cxButton2: TcxButton;
    cxTabSheet1: TcxTabSheet;
    QrListaVei: TFDQuery;
    DtListaVei: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    PnVei: TPanel;
    DBText1: TDBText;
    cxTabSheet2: TcxTabSheet;
    DBGrid2: TDBGrid;
    cxButton3: TcxButton;
    QrListaExec: TFDQuery;
    DtListaExec: TDataSource;
    procedure ChassiClick(Sender: TObject);
    procedure FrameAvaria1ChassiClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Fechapainel;
    procedure EditveiKeyPress(Sender: TObject; var Key: Char);
    procedure AbreAvariaPlanilha;
    procedure FrameAvaria1ImgbaseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure EditveiEnter(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure FormShow(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvariaMov: TFormAvariaMov;

implementation

{$R *.dfm}

uses UnitServerPai, UtAvariaConclui, UtRelatorio, UnitIniciaSistema;




procedure TFormAvariaMov.Fechapainel;
begin
         //
         FrameAvaria1.OcultaNovaAvaria;
         pnveiculo.Enabled:=false;

end;

procedure TFormAvariaMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFormAvariaMov.FormShow(Sender: TObject);
begin
     With QrListaVei do
          begin
                 close;
                 ParamByName('coligada').AsString:= Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 Open;
          end;
end;

procedure TFormAvariaMov.AbreAvariaPlanilha;
begin
        with QrAva do
          begin
                  Close;
                  ParamByName('veiculo').asString:=Editvei.Text;
                  ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                  open;
          end;
        with QrListaExec do
          begin
                  Close;
                  ParamByName('veiculo').asString:=Editvei.Text;
                  ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                  open;
          end;
end;

procedure TFormAvariaMov.Button3Click(Sender: TObject);
begin
//memo1.lines.Add()
end;

procedure TFormAvariaMov.ChassiClick(Sender: TObject);

var pt: Tpoint;
begin
GetCursorPos(pt);
pt := ScreenToClient(pt);
//Editx.Text:=inttostr( Pt.X-21);
//Edity.Text:=inttostr(Pt.y-151-60);
//Editx.Text:=inttostr( Pt.X);
//Edity.Text:=inttostr(Pt.y);



end;

procedure TFormAvariaMov.cxButton1Click(Sender: TObject);
begin
     if not QrAva.Eof then
           begin
                  Application.CreateForm(TFormAvariaConclui,FormAvariaConclui);
                  FormAvariaConclui.ShowModal;
           end;
        SpeedButton1.Click;
end;

procedure TFormAvariaMov.cxButton2Click(Sender: TObject);
begin
         with Relatorio2.QrAvaria do
              begin
                     close;
                     ParamByName('veiculo').asString:=Editvei.Text;
                     ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                     Open;
                     if not eof then
                         begin
                                            Relatorio2.FtAvaria.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtAvaria.Variables['vei']:=QUOTEDSTR(editvei.Text);
//                                            Relatorio2.FtListaSocAnal.Variables['DataI']:=QUOTEDSTR(DateToStr(DateTimePicker1.Date));
//                                            Relatorio2.FtListaSocAnal.Variables['DataF']:=QUOTEDSTR(DateToStr(DateTimePicker2.Date));
                                            Relatorio2.FtAvaria.ShowReport();

                         end;
              end;
end;

procedure TFormAvariaMov.cxButton3Click(Sender: TObject);
begin
         with Relatorio2.QrAvariaExecutada do
              begin
                     close;
                     ParamByName('veiculo').asString:=Editvei.Text;
                     ParamByName('tav').asString:=  QrListaExec.FieldByName('AVMOV_TAV').AsString;
                   //  ParamByName('DATA').VALUE:= QrListaExec.FieldByName('AVMOV_DATA').AsString;
                     ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                     Open;
                     if not eof then
                         begin
                                            Relatorio2.FtAvariaExecutada.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);
                                            Relatorio2.FtAvariaExecutada.Variables['vei']:=QUOTEDSTR(editvei.Text);
                                            Relatorio2.FtAvariaExecutada.ShowReport();
                         end;
              end;
end;

procedure TFormAvariaMov.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  ShowScrollBar(DBCtrlGrid1.Handle,SB_VERT,False);
if not QrListaVei.Eof then
    begin
        //Label1.Visible:=false;
        PnVei.Color:=clWhite;
        if (QrListaVei.FieldByName('TAV').AsString <> '')  then
            begin
                    PnVei.Color:=$00F1E798;
                    Dbtext1.Color:=$00F1E798;
            end
            else
            begin
                    Dbtext1.Color:=clWhite;
                    PnVei.Color:=clWhite;
            end;
    end;


end;

procedure TFormAvariaMov.DBText1Click(Sender: TObject);
begin
        Editvei.Text         :=      QrListaVei.FieldByName('veiculo').AsString;
        SpeedButton1.Click;
        tabGrade.Show;

end;

procedure TFormAvariaMov.EditveiEnter(Sender: TObject);
begin
        editvei.Text:='';
        QrVeiculos.Close;
        QrAva.Close;
end;

procedure TFormAvariaMov.EditveiKeyPress(Sender: TObject; var Key: Char);
begin
       if key = #13 then
           begin
                  Key:=#0;
                  SpeedButton1.Click;
           end;
end;

procedure TFormAvariaMov.FrameAvaria1ChassiClick(Sender: TObject);
begin
//       FrameAvaria1.MarcaPosicao;


end;

procedure TFormAvariaMov.FrameAvaria1ImgbaseClick(Sender: TObject);
begin
  FrameAvaria1.ImgbaseClick(Sender);

end;

procedure TFormAvariaMov.SpeedButton1Click(Sender: TObject);
begin
       //Frameavaria1.Destroy;
      // FrameAvaria1.Create(nil);
       FrameAvaria1.LimpaAvarias;
     //  FrameAvaria1.MarcaPosicao;
          WITH QrVeiculos DO
              BEGIN
                   CLOSE;
                   ParamByName('VEICULO').AsString:=EditVei.Text;
                   ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                   Open;
                   if not eof then
                       begin
                              AbreAvariaPlanilha;
                              pnveiculo.Visible:=true;
                              FrameAvaria1.VVeiculoAtual:=EditVei.Text;
                              FrameAvaria1.CarregaPosicoes((FrameAvaria1.VVeiculoAtual));

                              FrameAvaria1.carregaimagem(FIELDBYNAME('ESQUEMACORES').AsString);
                       end
                       else
                       begin
                              pnveiculo.Visible:=false;
                              ShowMessage('N�o h� veiculo cadastrado com esse codigo');
                       end;
              END;
end;

end.
