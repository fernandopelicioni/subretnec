unit UnitProdutosLocaisInstalacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ExtCtrls;

type
  TFormProdutosLocaisInstalacao = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    EDitPrd: TMaskEdit;
    Executa: TSpeedButton;
    procedure ExecutaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosLocaisInstalacao: TFormProdutosLocaisInstalacao;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormProdutosLocaisInstalacao.ExecutaClick(Sender: TObject);
begin
// qua
end;

end.
