unit UtGeraPlanilha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, JvComponentBase,
  JvDBGridExport, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormGeraPlanilha = class(TForm)
    Query: TFDQuery;
    DbAbast: TDBGrid;
    ExpAbast1: TJvDBGridExcelExport;
    SaveDialog: TSaveDialog;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGeraPlanilha: TFormGeraPlanilha;

implementation

{$R *.dfm}

end.
