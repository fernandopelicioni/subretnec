unit UtDadosListaSocorro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, ImgList;

type
  TFormInfoListaSocorro = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    QrSocorro: TADOQuery;
    DtSocorro: TDataSource;
    DBGrid1: TDBGrid;
    BcoImagens: TImageList;
    BtSalvar: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInfoListaSocorro: TFormInfoListaSocorro;

implementation

uses UnitServerPai, UnitOsSenha, UnitInfoAtendimento;

{$R *.dfm}

procedure TFormInfoListaSocorro.BtSalvarClick(Sender: TObject);
begin
Application.CreateForm(TFormOsSenha,FormOsSenha);
        FormOsSenha.Showmodal;
        if Pai.Vos_Autoriza <> 'S' then
        begin
                MessageBox(0, 'Sua senha n�o � valida', 'Senha n�o confere', MB_ICONSTOP or MB_OK);
                Abort;
        end;
        FormInfoListaSocorro.Close;
        Application.CreateForm(TFormInfoAtendimento,FormInfoAtendimento);
        FormInfoAtendimento.ShowModal;

end;

procedure TFormInfoListaSocorro.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TFormInfoListaSocorro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DtSocorro.DataSet.Close;
Action:=cafree;
end;

procedure TFormInfoListaSocorro.FormCreate(Sender: TObject);
begin
         With QrSocorro do
              begin
                      Close;
                      Parameters.ParamByName('veiculo').Value:=Pai.VOS_VEI;
                      Open;
              end;
end;

procedure TFormInfoListaSocorro.Image5Click(Sender: TObject);
begin
Close;
end;

end.
