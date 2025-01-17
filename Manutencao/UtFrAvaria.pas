unit UtFrAvaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrameAvaria = class(TFrame)
    Chassi: TcxImage;
    Imgbase: TcxImage;
    QrMov: TFDQuery;
    QrAvarias: TFDQuery;
   procedure CarregaPosicoes(vveiculo: string);
   procedure GravaDadosbanco( vVei: integer; vCodigoAvaria : word;VData : TdateTime; vHis: String; vTipoResp: char; vChapa: integer; vNome : String; vLinha : Integer;vColuna : Integer);
   procedure posicionaNovaAvaria(linha:integer;coluna:integer);
   procedure OcultaNovaAvaria;
    procedure MarcaPosicao;
    procedure ImgbaseClick(Sender: TObject);
    procedure carregaimagem(id: string);
    procedure LimpaAvarias;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure identificaimagem(Sender: TObject);
    procedure atualizadados( vVei: integer; vCodigoAvaria: word; VData: TdateTime;  vHisFec: String; Vvalor:real; VdataBaixa: TdateTime);

  private
    { Private declarations }
  public
         PosTop: array[1..20] of integer;
         PosLeft: array[1..20] of integer;
         PosTexto: array[1..20] of String;
         PosHis: array[1..20] of String;
         VVeiculoAtual:String;
         Vlinha,VColuna:integer;


    type Dados = record
           Vei          : integer;
           CodigoAvaria : word;
           Data         : TdateTime;
           His          : String;
           TipoResp     : char;
           Chapa        : integer;
           Nome         : String;
           Linha        : Integer;
           Coluna       : Integer;
    end;


  end;



implementation

{$R *.dfm}

uses  UtListaImg, UnitServerPai;
//    type Dados = record
//           Vei          : integer;
//           CodigoAvaria : word;
//           Data         : TdateTime;
//           His          : String;
//           TipoResp     : char;
//           Chapa        : integer;
//           Nome         : String;
//           Linha        : Integer;
//           Coluna       : Integer;
//    end;
    var
          // Pos : array of Rec;
         Imagem:array[1..20] of TcxImage;
         //Marca: array[0..20] of TImage;

procedure TFrameAvaria.OcultaNovaAvaria;
begin
    //
       With Imgbase do
            begin
                   Left:=0;
                   Top:=0;
                   Visible:=False;
            end;


end;

procedure TFrameAvaria.Button1Click(Sender: TObject);
begin
      Imagem[1].Destroy;
end;

procedure TFrameAvaria.Button2Click(Sender: TObject);
begin
      LimpaAvarias;
end;

procedure TFrameAvaria.carregaimagem(id: string);
begin
  //
     Application.CreateForm(TFormListaImg,FormListaImg);
     if id = 'AAV' then CHASSI.Picture:=FORMLISTAIMG.AAV.Picture;
     if id = 'ABA' then CHASSI.Picture:=FORMLISTAIMG.ABA.Picture;
     if id = 'CAV' then CHASSI.Picture:=FORMLISTAIMG.CAV.Picture;
     if id = 'CBA' then CHASSI.Picture:=FORMLISTAIMG.CBA.Picture;
     if id = 'SBV' then CHASSI.Picture:=FORMLISTAIMG.SBV.Picture;
     if id = 'MRV' then CHASSI.Picture:=FORMLISTAIMG.MRV.Picture;
end;


procedure TFrameAvaria.posicionaNovaAvaria(linha: Integer; coluna: Integer);
begin
       With Imgbase do
            begin
                   Left:=Coluna-16;
                   Top:=linha-16;
                   Visible:=true;
            end;
end;
procedure TFrameAvaria.MarcaPosicao;
var pt: Tpoint;
begin
                GetCursorPos(pt);
                pt := ScreenToClient(pt);
                Vlinha:=(Pt.Y);
                VColuna:=(Pt.X);
end;

procedure TFrameAvaria.atualizadados( vVei: integer; vCodigoAvaria: word; VData: TdateTime; vHisFec: String; Vvalor:real; VdataBaixa: TdateTime);
begin
               With QrMOv do
                   begin
                          CLOSE;
                          sql.Clear;

                          Sql.Add('update tb_AvaMov set AVMOV_VALOR=:valor, AVMOV_BAIXA_DATA=:DATABAIXA, AVMOV_BAIXA_HIS=:HISFEC, AVMOV_STATUS=''F''');
                          SQL.Add('WHERE AVMOV_VEI=:VEI AND AVMOV_TAV=:CODIGOAVARIA AND AVMOV_COL=:COLIGADA AND AVMOV_DATA=:DATA AND AVMOV_STATUS=''A''');

                          ParamByName('VEI').Value:=           VVEI;
                          ParamByName('CODIGOAVARIA').Value:=  VCodigoAvaria;
                          ParamByName('COLIGADA').Value:=      Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                          ParamByName('DATA').Value:=          VDATA;
                          ParamByName('VALOR').Value:=         VVALOR;
                          ParamByName('DATABAIXA').Value:=     VDATABAIXA;
                          ParamByName('HISFEC').Value:=        VHISFEC;
                          EXECSQL;
                          CLOSE;
                   end;

end;

procedure TFrameAvaria.GravaDadosbanco( VVei: integer; vCodigoAvaria : word;VData : TdateTime; vHis: String; vTipoResp: char; vChapa: integer; vNome : String; vLinha : Integer;vColuna : Integer);
begin
               With QrMOv do
                   begin
                          close;
                          sql.Clear;
                          Sql.Add('insert into tb_AvaMov (AVMOV_VEI, AVMOV_TAV, AVMOV_COL, AVMOV_DATA, AVMOV_HIS, AVMOV_RESP_TIPO, AVMOV_RESP_CHAPA, AVMOV_RESP_NOME, AVMOV_POSX, AVMOV_POSY)');
                          SQL.Add('VALUES (:VEI,:CODIGOAVARIA,:COLIGADA, :DATA, :HIS, :TIPORESP, :CHAPA, :NOME, :LINHA, :COLUNA)');

                          ParamByName('VEI').Value:=          VVEI;
                          ParamByName('CODIGOAVARIA').Value:= VCodigoAvaria;
                          ParamByName('COLIGADA').Value:=     Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                          ParamByName('DATA').Value:=         VDATA;
                          ParamByName('HIS').Value:=          VHIS;
                          ParamByName('TIPORESP').Value:=     VTIPORESP;
                          ParamByName('CHAPA').Value:=        VCHAPA;
                          ParamByName('NOME').Value:=         VNOME;
                          ParamByName('LINHA').Value:=        VLINHA;
                          ParamByName('COLUNA').Value:=       VCOLUNA;

                          EXECSQL;
                          CLOSE;
                   end;
end;
procedure TFrameAvaria.identificaimagem(Sender: TObject);
var atual:tcomponentname;
i: integer;
Texto: string;
begin
        // ShowMessage(TcxImage(sender).Name);
         for I := 1 to 20 do
              begin
                     if sender = Imagem[i] then
                          begin
                             // Showmessage((Sender as TcxImage).Name);
                              Texto:= posTexto[i] + #13 + #13 +
                              '----------------------------------------------------------------------------'+#13+
                              'INFORMAÇÕES REGISTRADAS'+#13+
                              PosHis[i];
                              Application.MessageBox(Pchar(TEXTO) , 'Dados desta Avaria', MB_OK or MB_ICONINFORMATION);
                          end;
              end;


end;

procedure TFrameAvaria.ImgbaseClick(Sender: TObject);
begin
         ShowMessage(TcxImage(sender).Name);
end;

procedure TFrameAvaria.CarregaPosicoes(vveiculo: String);
var i: word;
Resp, Avaria, DataAvaria: string;
begin
      I:=1;
      with QrAvarias do
            begin
                  Close;
                  ParamByName('veiculo').asString:=vveiculo;
                  ParamByName('coligada').AsString:=Pai.QrColigadas.FieldByName('cod_coligada').AsString;
                  open;
                  repeat
                        Resp:=FieldByName('AvMov_Resp_chapa').AsString + ' -  ' +FieldByName('AvMov_Resp_nome').AsString;
                        Avaria:=FieldByName('Avaria').AsString;
                        posTop[i]:= FieldByName('AvMov_PosY').AsInteger;
                        posLeft[i]:=FieldByName('AvMov_PosX').AsInteger;
                        posTexto[i]:='Responsável: '  + #13 +
                        Resp +#13+ #13 +
                        'Data: '   + #13 +      FieldByName('AvMov_Data').AsString + #13 + #13 +
                        'Avaria: '  + #13 +     AVARIA;
                        posHis[i]:=
                        FieldByName('AvMov_His').AsString;
                        i:=i+1;
                  Next;
                  until eof;
            end;
      for i:=1 to 20 do
            begin
                  if (posTop[i] > 0) or (posLeft[i] > 0) then
                     begin
                        if assigned(TcxImage(Imagem[i])) then (Imagem[i]).Destroy;

                        Imagem[i]:=TcxImage.Create(self);
                             Imagem[i].Name:='imagem'+IntToStr(i);
                             Imagem[i].Parent:= Self;
                             Imagem[i].Transparent:= true;
                             Imagem[i].AutoSize:= true;
                             Imagem[i].picture:= Imgbase.Picture;

                             Imagem[i].Left:=posLeft[i]-16;
                             Imagem[i].Top:=posTop[i]-16;

                             Imagem[i].BringToFront;
                             Imagem[i].Visible:=true;
                             Imagem[i].OnClick:=identificaimagem;
                     end;
            end;
end;

procedure TFrameAvaria.LimpaAvarias;
var x: word;
begin
      for x:=1 to 20 do
            begin
                 //ShowMessage('Loop em: '+intToStr(X));
                  if assigned(TcxImage(Imagem[x])) then
                  begin
                          FreeAndNil(Imagem[x]);
                          //ShowMessage('Free na imagem'+intToStr(X));
                  end;

                 //--if assigned(TcxImage(Imagem[x])) then
                //  showmessage(inttostr(posTop[x]));
                  //if (posTop[x] > 0) or (posLeft[x] > 0) then
                     begin
                            //  showmessage('top : ' + inttostr(posTop[x]) + ' + = ' + IntTostr(x));
                            // FreeAndNil(Imagem[x]);
                              //Imagem[x].destroy;
                     end;
                  posTop[x]:= 0;
                  posLeft[x]:=0;
                  posTexto[x]:='';
            end;
end;
end.
