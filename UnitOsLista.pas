unit UnitOsLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DB, Grids, DBGrids, Buttons, StdCtrls, DBCtrls,
  ImgList;

type
  TFormOsLista = class(TForm)
    Panel2: TPanel;
    Image5: TImage;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DtMovOSCompleto: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    procedure Image5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOsLista: TFormOsLista;

implementation

uses UnitServerPai, UnitRelatorio, UnitIniciaSistema;

{$R *.dfm}

procedure TFormOsLista.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if Column.index = 0 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   // Desenha o Quadrado
   //Image1.Picture.BitBap;
   ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,1);
       // Desenha o check sobre o quadrado quando ativo = �S�
   if DtMovOSCompleto.DataSet.FieldByName('Prt').AsString = 'OK' then
          ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,0);
    end;

 {
if Column.index = 3 then
   begin
   DbGrid1.Canvas.FillRect(Rect);
   ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,3);
        if StrToDate(DtMovOSCompleto.DataSet.FieldByName('FimVig').AsString) < (now) then
             ImageList1.Draw(DbGrid1.Canvas,Rect.Left+10,Rect.Top+1,2);
    end;
}

end;

procedure TFormOsLista.FormActivate(Sender: TObject);
begin
       With Pai.QrOSMovCompleto do
             begin
                    Close;
                    Parameters.ParamByName('coligada').Value:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                    Parameters.ParamByName('DtAbertura').Value:= DateToStr(now);
                    Parameters.ParamByName('DtFechamento').Value:= DateToStr(now);
                    Open;

             end;
end;

procedure TFormOsLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=Cafree;
end;

procedure TFormOsLista.Image5Click(Sender: TObject);
begin
Close;
end;

procedure TFormOsLista.SpeedButton1Click(Sender: TObject);
begin
if (MessageDlg('Confirma?'+#13+#10+''+#13+#10+'Observe que ao fechar, n�o ser� mais possivel baixar produtos para esse ve�culo at� que uma nova OS seja aberta!'+#13+#10+''+#13+#10+'Esta opera��o n�o pode ser desfeita', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
      SCREEN.Cursor:=CRHOURGLASS;
            PAI.VOS_ID:=DtMovOSCompleto.DataSet.FieldByName('Tos_id').Asinteger;
            PAI.FechaOS;
            PAI.QrOSMovCompleto.Close;
            PAI.QrOSMovCompleto.OPEN;

      SCREEN.Cursor:=CRdEFAULT;
    end;

end;

procedure TFormOsLista.SpeedButton2Click(Sender: TObject);
begin
//                         if DtMovOSCompleto.DataSet.FieldByName('Prt').AsDA = '1' then
//        Imprimi OS apenas se tiver dentro da vigencia


                         if DtMovOSCompleto.DataSet.FieldByName('Prt').AsString = '1' then
                              MessageBox(0, 'Aten��o'+#13+#10+''+#13+#10+'J� me consta que essa Ordem de Servi�o foi impressa recentemente.'+#13+#10+''+#13+#10+'S� imprima novamente em caso de extravio!', 'OS J� Impressa!', MB_ICONWARNING or MB_OK);

                         PAI.VOS_ID:=DtMovOSCompleto.DataSet.FieldByName('Tos_id').AsInteger;
                         Pai.MarcaOsPrint;
                         with Relatorio.QrOsMov do
                              begin
                                  CLOSE;
                                  Parameters.ParamByName('Id').Value:=DtMovOSCompleto.DataSet.FieldByName('Tos_id').AsString;
                                  open;
                                  if Not Eof then
                                        begin
                                                Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                                 Relatorio.Projeto.ExecuteReport('Rv_os');
                                        end
                                        else
                                        MessageBox(0, 'N�o existe OS pendente para impress�o', 'N�o h� dados', MB_ICONINFORMATION or MB_OK);


                              end;

end;

end.
