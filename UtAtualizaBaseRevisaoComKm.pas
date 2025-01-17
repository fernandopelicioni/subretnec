unit UtAtualizaBaseRevisaoComKm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormAtualizaBaseRevisaoComKm = class(TForm)
    QrBase: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtualizaBaseRevisaoComKm: TFormAtualizaBaseRevisaoComKm;

implementation

{$R *.dfm}

uses UnitServerPai;

procedure TFormAtualizaBaseRevisaoComKm.Button1Click(Sender: TObject);
begin
     QrBase.FieldByName('bre_odo').AsInteger:=     QrBase.FieldByName('abast_KM').AsInteger;
     qrbase.Next;
     QrBase.Edit;
end;

procedure TFormAtualizaBaseRevisaoComKm.FormShow(Sender: TObject);
begin
       QrBase.Open;
       QrBase.Edit;
end;

end.
