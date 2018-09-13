unit UtModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList;

type
  TFormModelo = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    tabLista: TTabSheet;
    TabEdicao: TTabSheet;
    BtAlterar: TButton;
    BtIncluir: TButton;
    BtApagar: TButton;
    QrCadastro: TFDQuery;
    DtCadastro: TDataSource;
    DBGrid1: TDBGrid;
    Image2: TImage;
    Image1: TImage;
    ImageList1: TImageList;
    BtSalvar: TButton;
    BtCancelar: TButton;
    PnEdicao: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtAlterarClick(Sender: TObject);
    procedure BtApagarClick(Sender: TObject);
    procedure BtSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModelo: TFormModelo;

implementation

{$R *.dfm}

uses UtPai;

procedure TFormModelo.BtAlterarClick(Sender: TObject);
begin
      DtCadastro.DataSet.Edit;
      PnEdicao.Enabled:=true;
      TabEdicao.Show;
end;

procedure TFormModelo.BtApagarClick(Sender: TObject);
begin
      if (MessageDlg('Atenção, você esta prestes a excluir essa informação,'+#13+'Esse processo só será possível caso o registro não esteja relacionado'+#13+'Confirma Inclusão do novo Registro no banco de dados?', mtConfirmation, [mbYes, Mbno], 0) = mrYes) then
       begin
             Try
                 DtCadastro.DataSet.Delete;
             Except
                 ShowMessage('O Registro não pode ser excluído, inative-o');
             End;

       end;

end;

procedure TFormModelo.BtCancelarClick(Sender: TObject);
begin
      DtCadastro.DataSet.Cancel;
      PnEdicao.Enabled:=false;
      tabLista.Show;

end;

procedure TFormModelo.BtIncluirClick(Sender: TObject);
begin
      PnEdicao.Enabled:=true;
      DtCadastro.DataSet.Insert;
      TabEdicao.Show;

end;

procedure TFormModelo.BtSalvarClick(Sender: TObject);
begin
      PnEdicao.Enabled:=false;
//      TabLista.Show;
end;

procedure TFormModelo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action:=Cafree;
end;

procedure TFormModelo.FormCreate(Sender: TObject);
begin
      PageControl1.ActivePageIndex:=0;
end;

procedure TFormModelo.FormShow(Sender: TObject);
begin
      DtCadastro.DataSet.Open;
end;

procedure TFormModelo.Image1Click(Sender: TObject);
begin
      close;
end;

end.
