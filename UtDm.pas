unit UtDm;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
