unit UtCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCadastroProdutos = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    Panel2: TPanel;
    DtCadastroProdutos: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel3: TPanel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DtGarantiaFCalc: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    QrEditaPrdGarantia: TFDQuery;
    DtEditaPrdGarantia: TDataSource;
    DBMemo1: TDBMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    procedure Image5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutos: TFormCadastroProdutos;

implementation

{$R *.dfm}

uses UnitPai, UnitServerPai;

procedure TFormCadastroProdutos.ComboBox1Change(Sender: TObject);
begin
     Edit1.Text:='';
     Edit1.SetFocus;
end;

procedure TFormCadastroProdutos.DBGrid1DblClick(Sender: TObject);
begin
        PageControl1.ActivePageIndex:=2;
end;

procedure TFormCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        aCTION:=cAFREE;
end;

procedure TFormCadastroProdutos.FormShow(Sender: TObject);
begin
         With Pai.QrProdutos do
             begin
                   close;
                   ParamByName('coligada').Value:= pai.QrColigadas.FieldByName('cod_coligada').AsString;
                   Open;
             end;
         PageControl1.ActivePageIndex:=1;
         DtCadastroProdutos.DataSet.Open;
end;

procedure TFormCadastroProdutos.Image5Click(Sender: TObject);
begin
cLOSE;
end;

procedure TFormCadastroProdutos.SpeedButton1Click(Sender: TObject);
begin
       with  QrEditaPrdGarantia do
            begin
                  if (state = dsInsert) or (State = dsEdit) then
                       begin
                             FieldByName('CodColigada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                             FieldByName('Idprd').AsString:=DtCadastroProdutos.DataSet.FieldByName('IDPRd').AsString;
                             Post;
                       end;
            end;
       PageControl1.ActivePageIndex:=1;

end;

procedure TFormCadastroProdutos.SpeedButton2Click(Sender: TObject);
begin
       QrEditaPrdGarantia.Cancel;
       TabSheet1.Show;
end;

procedure TFormCadastroProdutos.SpeedButton3Click(Sender: TObject);
begin
        PageControl1.ActivePageIndex:=2;
end;

procedure TFormCadastroProdutos.SpeedButton4Click(Sender: TObject);
begin
      if ComboBox1.ItemIndex = 0 then With pai.QrProdutos do Locate('CodigoPRd',Edit1.Text);
      if ComboBox1.ItemIndex = 1 then With pai.QrProdutos do Locate('NomeFantasia', Edit1.Text, [loCaseInsensitive, loPartialKey] );
      if ComboBox1.ItemIndex = 2 then With pai.QrProdutos do Locate('IdPrd',Edit1.Text);
      if ComboBox1.ItemIndex = 3 then With pai.QrProdutos do Locate('NCM',Edit1.Text);
      if ComboBox1.ItemIndex = 4 then With pai.QrProdutos do Locate('CodigoAuxiliar',Edit1.Text);

      PageControl1.ActivePageIndex:=1;


end;

procedure TFormCadastroProdutos.TabSheet2Show(Sender: TObject);
begin
       with  QrEditaPrdGarantia do
            begin
                   close;
                   ParamByName('IdPrd').Value:=DtCadastroProdutos.DataSet.FieldByName('IDPRD').AsString;
                   Open;
            end;

       DtGarantiaFCalc.DataSet.Open;
end;

end.
