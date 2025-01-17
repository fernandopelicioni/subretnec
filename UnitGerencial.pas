unit UnitGerencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, ExtCtrls;

type
  TFormGerencial = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    DtIni: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DtFim: TDateTimePicker;
    TabSheet4: TTabSheet;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    SpeedButton5: TSpeedButton;
    TabSheet5: TTabSheet;
    SpeedButton6: TSpeedButton;
    Label4: TLabel;
    Memo1: TMemo;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGerencial: TFormGerencial;

implementation

uses UnitRelatorio, UnitServerPai, UnitIniciaSistema;

{$R *.dfm}

procedure TFormGerencial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
           action:=cafree;
end;

procedure TFormGerencial.FormShow(Sender: TObject);
begin
          DtIni.Date:=Now-30;
          DtFim.Date:=now;
end;

procedure TFormGerencial.SpeedButton2Click(Sender: TObject);
begin
                 screen.Cursor:=crHourGlass;

                 with Relatorio.GERENCIALPNEUS do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                            if not eof then
                                  begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('Rvgerencialpneus');
                                  END
                                  ELSE
                                  BEGIN
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                                  END;
                      end;
                 Screen.Cursor:=crdefault;

end;

procedure TFormGerencial.SpeedButton3Click(Sender: TObject);
begin
                 screen.Cursor:=crHourGlass;
                 with Relatorio.GERENCIALGRUPOS do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Memo1.Text:=sql.Text;
                            Open;
                          //  showmessage('1');
                            if not eof then
                                  begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RVGerencialgrupo');
                                  end
                                  Else
                                  begin
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                                  end;
                      end;

                Screen.Cursor:=crdefault;
end;

procedure TFormGerencial.SpeedButton4Click(Sender: TObject);
begin
                 screen.Cursor:=crHourGlass;
                 with Relatorio.GERENCIALPLANILHALUB do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                      end;

//                 showmessage('1');
                 with Relatorio.GERENCIALDESPESAS do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                      end;
//                 showmessage('2');
                 with Relatorio.GERENCIALCONSUMODIESEL do
                      begin
                            close;
                            Sql.Clear;
                            Sql.Add('select C.Tiv_Des,');
                            Sql.Add('Sum(B.Abast_Combustivel) as Diesel,');
                            Sql.Add('Sum(Abast_Combustivel * ' + Edit1.Text + ') as TotalRS');
                            Sql.Add('from Tb_Veiculos A');
                            Sql.Add('Join Tb_CbMovAbast B On B.Abast_Vei = A.Vei_Nun');
                            Sql.Add('Join Tb_VeiStatus C On C.Tiv_Cod = A.Vei_Status');
                            Sql.Add('Where Abast_Data >=:ini and Abast_Data<=:fim');
                            Sql.Add('and Vei_Coligada =:coligada');
                            Sql.Add('and A.Vei_Status <> ' + QuotedStr('4'));
                            Sql.Add('Group by C.Tiv_Des');
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
//                            Parameters.ParamByName('litro').Value:=(Edit1.Text);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                      end;
//                      showmessage('3');
                 with Relatorio.GERENCIALTOTAISP3 do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                      end;
//                      showmessage('4');
                 with Relatorio.QrTotalVeiculos do
                      begin
                            close;
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                      end;



                      // Imprime
                                       Relatorio.Projeto.SetParam('LitroCombustivel',Edit1.Text);
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RVGERENCIALPLANILHA');
                 Screen.Cursor:=crdefault;

end;

procedure TFormGerencial.SpeedButton5Click(Sender: TObject);
begin
                 screen.Cursor:=crHourGlass;
                 with Relatorio.GERENCIALDIESEL do
                      begin
                            Close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                            if not eof then
                                  begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RVGerencialDiesel');
                                  end
                                  Else
                                  begin
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                                  end;
                      end;

                Screen.Cursor:=crdefault;

end;

procedure TFormGerencial.SpeedButton6Click(Sender: TObject);
begin
                 screen.Cursor:=crHourGlass;
                 with Relatorio.GERENCIALsubGRUPOS do
                      begin
                            close;
                            Parameters.ParamByName('ini').Value:=DateToStr(DtIni.Date);
                            Parameters.ParamByName('fim').Value:=DateToStr(DtFim.Date);
                            Parameters.ParamByName('coligada').Value:=pai.QrColigadas.FieldByName('cod_coligada').AsString;
                            Open;
                            if not eof then
                                  begin
                                       Relatorio.Projeto.SetParam('Dt1',DateToStr(DtIni.Date));
                                       Relatorio.Projeto.SetParam('Dt2',DateToStr(DtFim.Date));
                                       Relatorio.Projeto.SetParam('Versao',FormIniciaSistema.EditVersao.Caption);
                                       Relatorio.Projeto.ExecuteReport('RVGerencialSubgrupo');
                                  end
                                  Else
                                  begin
                                       ShowMessage('N�o h� dados para gera��o de Relat�rios');
                                  end;
                      end;

                Screen.Cursor:=crdefault;

end;

end.
