unit UtVisaoOrcamento1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList, Vcl.Touch.GestureMgr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormVisaoOrcamento1 = class(TForm)
    AppBar: TPanel;
    CloseButton: TImage;
    ActionList1: TActionList;
    Action1: TAction;
    GestureManager1: TGestureManager;
    Panel1: TPanel;
    Image1: TImage;
    QrJan: TFDQuery;
    DtContasOrcamentarias: TDataSource;
    DBGrid1: TDBGrid;
    procedure CloseButtonClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure Image1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AppBarResize;
    procedure AppBarShow(mode: integer);
  public
    { Public declarations }
    Vconta:string;
  end;

var
  FormVisaoOrcamento1: TFormVisaoOrcamento1;

implementation

{$R *.dfm}

uses UtOrcamentoContaDetalhada, UnitServerPai;

const
  AppBarHeight = 75;

procedure TFormVisaoOrcamento1.AppBarResize;
begin
  AppBar.SetBounds(0, AppBar.Parent.Height - AppBarHeight,
    AppBar.Parent.Width, AppBarHeight);
end;

procedure TFormVisaoOrcamento1.AppBarShow(mode: integer);
begin
  if mode = -1 then // Toggle
    mode := integer(not AppBar.Visible );

  if mode = 0 then
    AppBar.Visible := False
  else
  begin
    AppBar.Visible := True;
    AppBar.BringToFront;
  end;
end;

procedure TFormVisaoOrcamento1.Action1Execute(Sender: TObject);
begin
  AppBarShow(-1);
end;

procedure TFormVisaoOrcamento1.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormVisaoOrcamento1.DBGrid1DblClick(Sender: TObject);
begin
       Application.CreateForm(TFormOrcamentoContaDetalhada,FormOrcamentoContaDetalhada);
       FormOrcamentoContaDetalhada.Panel1.Caption:='   Detalhamento da conta : ' + DtContasOrcamentarias.DataSet.FieldByName('DESCRICAO').AsString;
       with    FormOrcamentoContaDetalhada.QrDetalamento do
           begin
                 Close;
                 ParamByName('coligada').AsString:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                 ParamByName('Conta').AsString:=DtContasOrcamentarias.DataSet.FieldByName('CODTBORCAMENTO').AsString + '%';
                 Open;

           end;
       FormOrcamentoContaDetalhada.showmodal;
end;

procedure TFormVisaoOrcamento1.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   DbGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
   if DtContasOrcamentarias.DataSet.FieldByName('SinteticoAnalitico').AsString = '0' then
       DBGrid1.Canvas.Font.Style:=[fsBold];
 if Column.index = 4 then
   begin
   if DtContasOrcamentarias.DataSet.FieldByName('Desvio').AsCurrency < 0 then
       DBGrid1.Canvas.Font.color:=ClRed;


   end;


    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFormVisaoOrcamento1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  AppBarShow(0);
end;

procedure TFormVisaoOrcamento1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    AppBarShow(-1)
  else
    AppBarShow(0);
end;

procedure TFormVisaoOrcamento1.FormResize(Sender: TObject);
begin
  AppBarResize;
end;

procedure TFormVisaoOrcamento1.Image1Click(Sender: TObject);
begin
Close;
end;

end.
