unit UnitIniciaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, ExtCtrls, StdCtrls, Buttons, jpeg, XPMan, ActnMan,
  ActnColorMaps,RibbonObsidianStyleActnCtrls,RibbonLunaStyleActnCtrls, pngimage, Vcl.Themes;

type
  TFormIniciaSistema = class(TForm)
    DtColigada: TDataSource;
    Dtusuarios: TDataSource;
    Fundo: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditColigada: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    BtEntrar: TImage;
    BtSair: TImage;
    editversao: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure EditColigadaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIniciaSistema: TFormIniciaSistema;

implementation

uses UnitPai, Principal, UnitServerPai, UtNucleo, UtSobre;

{$R *.dfm}

procedure TFormIniciaSistema.BitBtn1Click(Sender: TObject);
begin
//Devo colocar restri��o de senhas aqui
Screen.Cursor:=Crhourglass;
if EditColigada.Text = '' then
    begin
    MessageBox(Handle,'Voc� precisa selecionar uma coligada !!!                    '+#13+#13+#13+'Tente novamente !','Aten��o !!!', MB_OK + MB_OK);
    Edit1.SetFocus;
    end
    Else
    begin
  //  Close;
    with DtUsuarios.DataSet do
        begin
            filter:='Usu_login = ' + quotedStr(Edit1.Text);
            Filtered:=true;
            Open;
            if not eof then
                begin
                if DtUsuarios.DataSet.FieldByName('usu_senha').Text = Edit2.text then
                          begin
                          if (DtUsuarios.DataSet.FieldByName('usu_Perfil').Text = DtColigada.DataSet.FieldByName('Perfil').text) or (DtUsuarios.DataSet.FieldByName('usu_Perfil').Text = 'T')  then
                             Begin
                                  try
                                  TStyleManager.TrySetStyle(FieldByName('Usu_Stilo').asstring);
                                  Except
                                        TStyleManager.TrySetStyle(FieldByName('Windows').asstring);
                                  end;
                                  Hide;
                                 // Application.CreateForm(TFormEntrada,FormEntrada);
                                  FormNucleo.nivel:=StrToInt(DtUsuarios.DataSet.FieldByName('usu_Nivel').AsString);
                                  FormNucleo.Panel3.Caption:= 'Usu�rio : ' + Pai.QrUsuarios.FieldByName('Usu_Nome').AsString + ' - ' + FormIniciaSistema.editversao.Caption + ' | Coligada : ' + Pai.QrColigadas.FieldByName('Des_Coligada').AsString;
                                  PAI.VCOLIGADA:=DtColigada.DataSet.FieldByName('Cod_Coligada').AsInteger;
                                  PAI.VUSUARIO:=Pai.QrUsuarios.FieldByName('Usu_Login').AsString;
                                  with Pai.QrVeiculo do
                                      begin
                                          Close;
                                          Sql.Clear;
                                          Sql.Add('select * from tb_veiculos where Vei_Coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
                                          Sql.Add('order by vei_numero');
                                          open;
                                      end;
//                                      if DtColigada.DataSet.FieldByName('Cod_Coligada').AsString = '2' then
//                                               FormEntrada.Ribbon1.Style:= RibbonObsidianStyle
//                                               else
//                                               FormEntrada.Ribbon1.Style:= RibbonLunaStyle;
                                      Pai.CriaAcesso;
                                      FormNucleo.Show;
                             End
                             ELSE BEGIN
                                  MessageBox(Handle,'Voc� n�o esta autorizado para Logar nesta Coligada, Selecione Outra !','Acesso Negado',Mb_IconInformation+Mb_Ok);
                                  EditColigada.KeyValue:=null;
                                  Edit1.SetFocus;
                             END;
                           end
                           Else
                           begin
                                  ShowMessage('Login ou Senha Falhou, tente de Novo !!!');
                                  Edit1.Text:='';
                                  Edit2.Text:='';
                                  Edit1.SetFocus;
                           end;
                         end;
             end;
        end;
With pai.QrIntegra do
   begin
         Close;
         Sql.Clear;
         Sql.Add('SELECT * FROM TB_CBINTEGRA where Tit_coligada = ' + QuotedStr(DtColigada.DataSet.FieldByName('Cod_Coligada').AsString));
   end;
Screen.Cursor:=CrDefault;
end;

procedure TFormIniciaSistema.BitBtn2Click(Sender: TObject);
begin
      Application.Terminate;
      Close;
end;

procedure TFormIniciaSistema.Edit1Enter(Sender: TObject);
begin
     // DtColigada.DataSet.Open;
end;

procedure TFormIniciaSistema.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
            Begin
                  key:=#0;
                  Edit2.SetFocus;
            End;
end;

procedure TFormIniciaSistema.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
            Begin
                  key:=#0;
                  EditColigada.SetFocus;
            End;
end;

procedure TFormIniciaSistema.EditColigadaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
           begin
               key:=#0;
               if editcoligada.KeyValue = Null then
                     begin
                          ShowMessage('Coligada n�o selecionada !');
                     end
                     else
                     BitBtn1Click(nil);
   end;
end;

procedure TFormIniciaSistema.FormActivate(Sender: TObject);
begin
      pai.ConctPai.Connected:=true;
      Pai.ConectCorpore.Connected:=true;
      Edit1.Text:='';
      Edit2.Text:='';
      label6.Caption:='CenterBus 2018 - ' + editversao.Caption;
      EditColigada.KeyValue:=null;
      DtColigada.DataSet.Open;
      DtUsuarios.DataSet.Open;
end;

procedure TFormIniciaSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DtColigada.DataSet.Close;
    DtUsuarios.DataSet.Close;
    Application.Terminate;
end;

procedure TFormIniciaSistema.FormCreate(Sender: TObject);
begin
//ShowWindow(Application.Handle, SW_HIDE) ;
//SetWindowLong(Application.Handle, GWL_EXSTYLE, GetWindowLong(Application.Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW ) ;
//ShowWindow(Application.Handle, SW_SHOW) ;
end;

procedure TFormIniciaSistema.Image1Click(Sender: TObject);
begin
     Application.CreateForm(TFormSobre,FormSobre);
     FormSobre.ShowModal;
end;

end.
