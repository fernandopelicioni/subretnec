unit UtAvariaConclui;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxControls, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxButtons, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TFormAvariaConclui = class(TForm)
    Panel3: TPanel;
    Image1: TImage;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    DtPro: TDataSource;
    QrPro: TFDQuery;
    Panel2: TPanel;
    EditVeiculos: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditData: TcxDateEdit;
    EditHisFec: TMemo;
    EditValor: TJvValidateEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label4: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvariaConclui: TFormAvariaConclui;

implementation

{$R *.dfm}

uses UtAvariaMov, UnitServerPai;

procedure TFormAvariaConclui.cxButton1Click(Sender: TObject);
begin
           FormAvariaMov.FrameAvaria1.atualizadados(
           FormAvariaMov.QrAva.FieldByName('AVMOV_VEI').AsInteger,
           FormAvariaMov.QrAva.FieldByName('AVMOV_TAV').AsInteger,
           FormAvariaMov.QrAva.FieldByName('AVMOV_DATA').AsDateTime,
           EditHisFec.Text,
           EditValor.Value,
           EditData.Date
           );
           CLose;
end;

procedure TFormAvariaConclui.cxButton2Click(Sender: TObject);
begin
   Close;
end;

procedure TFormAvariaConclui.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFormAvariaConclui.FormShow(Sender: TObject);
begin
        EditData.text:=DateTimeToStr(now);
end;

procedure TFormAvariaConclui.Image1Click(Sender: TObject);
begin
close;
end;

end.
