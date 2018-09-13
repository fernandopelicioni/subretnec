unit UnittesteRibom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Ribbon, ActnCtrls, ToolWin, ActnMan, ActnMenus,
  RibbonActnMenus, ImgList, RibbonLunaStyleActnCtrls, DBCGrids, DB, StdCtrls,
  Mask, Buttons;

type
  TFormRelatorioPrateleiras = class(TForm)
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit2: TMaskEdit;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPrateleiras: TFormRelatorioPrateleiras;

implementation

uses UnitPai;

{$R *.dfm}

procedure TFormRelatorioPrateleiras.FormRelatorioClick(Sender: TObject);
begin
Close;
end;

end.
