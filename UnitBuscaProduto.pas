unit UnitBuscaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, Data.DB;

type
  TFormBuscaProduto = class(TForm)
    GroupBox1: TGroupBox;
    ComboBoxEx1: TComboBoxEx;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuscaProduto: TFormBuscaProduto;

implementation

{$R *.dfm}

end.
