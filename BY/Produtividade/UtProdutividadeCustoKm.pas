unit UtProdutividadeCustoKm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls;

type
  TFormProdutividadeCustoKm = class(TForm)
    Panel1: TPanel;
    Image5: TImage;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    DtProdutividade: TDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    SpeedButton1: TSpeedButton;
    KmNovo: TLabel;
    Km1ref: TLabel;
    Km2Ref: TLabel;
    Km3Ref: TLabel;
    Km4Ref: TLabel;
    Km5Ref: TLabel;
    QtN: TLabel;
    Qt1: TLabel;
    Qt2: TLabel;
    Qt3: TLabel;
    Qt4: TLabel;
    Qt5: TLabel;
    procedure Image5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure lerTabela;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    QtPnN, QtPn1, QtPn2, QtPn3, QtPn4, QtPn5, QtPnT : Integer;
    KmN, km1, Km2, Km3, Km4, Km5, KMT:Integer;
    ValorN, Valor1, Valor2, Valor3, Valor4, Valor5, ValorT : Real;
    CkN, Ck1, Ck2, Ck3, Ck4, Ck5, CkT : real;
    Datainicial, DataFinal: String;

  end;

var
  FormProdutividadeCustoKm: TFormProdutividadeCustoKm;

implementation

{$R *.dfm}

uses UnitPai, UtRelatorio, UnitIniciaSistema, UnitRelatorio, UnitServerPai,
  UtRltPneuDecisao;

procedure TFormProdutividadeCustoKm.BitBtn1Click(Sender: TObject);
begin
lertabela;
end;

procedure TFormProdutividadeCustoKm.FormActivate(Sender: TObject);
begin
//      lerTabela;
end;

procedure TFormProdutividadeCustoKm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:=Cafree;
end;

procedure TFormProdutividadeCustoKm.Image5Click(Sender: TObject);
begin
close;
end;

procedure TFormProdutividadeCustoKm.SpeedButton1Click(Sender: TObject);
begin

//Novo
        Relatorio2.FtPneuCustoKM.Variables['KM_N']:= KMN;
        Relatorio2.FtPneuCustoKM.Variables['valor_N']:= ValorN;
        Relatorio2.FtPneuCustoKM.Variables['Qt_N']:= QtPnN;
        Relatorio2.FtPneuCustoKM.Variables['Custo_N']:= CkN;
        Relatorio2.FtPneuCustoKM.Variables['Mk_N']:= Kmn/QtPnN;

        Relatorio2.FtPneuCustoKM.Variables['KM_1']:= KM1;
        Relatorio2.FtPneuCustoKM.Variables['valor_1']:= Valor1;
        Relatorio2.FtPneuCustoKM.Variables['Qt_1']:= QtPn1;
        Relatorio2.FtPneuCustoKM.Variables['Custo_1']:= Ck1;
        Relatorio2.FtPneuCustoKM.Variables['Mk_1']:= Km1/QtPn1;

        Relatorio2.FtPneuCustoKM.Variables['KM_2']:= KM2;
        Relatorio2.FtPneuCustoKM.Variables['valor_2']:= Valor2;
        Relatorio2.FtPneuCustoKM.Variables['Qt_2']:= QtPn2;
        Relatorio2.FtPneuCustoKM.Variables['Custo_2']:= Ck2;
        if (Km2 >0) AND (QtPn2>0)  then
          Relatorio2.FtPneuCustoKM.Variables['Mk_2']:= Km2/QtPn2
            ELSE
            Relatorio2.FtPneuCustoKM.Variables['Mk_2']:=0;


        Relatorio2.FtPneuCustoKM.Variables['KM_3']:= KM3;
        Relatorio2.FtPneuCustoKM.Variables['valor_3']:= Valor3;
        Relatorio2.FtPneuCustoKM.Variables['Qt_3']:= QtPn3;
        Relatorio2.FtPneuCustoKM.Variables['Custo_3']:= Ck3;
        if (Km3 >0) AND (QtPn3>0)  then
        Relatorio2.FtPneuCustoKM.Variables['Mk_3']:= Km3/QtPn3
            ELSE
            Relatorio2.FtPneuCustoKM.Variables['Mk_3']:=0;

        Relatorio2.FtPneuCustoKM.Variables['KM_4']:= KM4;
        Relatorio2.FtPneuCustoKM.Variables['valor_4']:= Valor4;
        Relatorio2.FtPneuCustoKM.Variables['Qt_4']:= QtPn4;
        Relatorio2.FtPneuCustoKM.Variables['Custo_4']:= Ck4;
        if (Km4 >0) AND (QtPn4>0)  then
            Relatorio2.FtPneuCustoKM.Variables['Mk_4']:= Km4/QtPn4
            ELSE
            Relatorio2.FtPneuCustoKM.Variables['Mk_4']:=0;


        Relatorio2.FtPneuCustoKM.Variables['KM_5']:= KM5;
        Relatorio2.FtPneuCustoKM.Variables['valor_5']:= (Valor5);
        Relatorio2.FtPneuCustoKM.Variables['Qt_5']:= QtPn5;
        Relatorio2.FtPneuCustoKM.Variables['Custo_5']:= Ck5;
        if (Km5 >0) AND (QtPn5>0)  then
            Relatorio2.FtPneuCustoKM.Variables['Mk_5']:= Km5/QtPn5
            ELSE
            Relatorio2.FtPneuCustoKM.Variables['Mk_5']:=0;


        Relatorio2.FtPneuCustoKM.Variables['KM_T']:= KMT;
        Relatorio2.FtPneuCustoKM.Variables['valor_T']:= ValorT;
        Relatorio2.FtPneuCustoKM.Variables['Qt_T']:= QtPnT;
        Relatorio2.FtPneuCustoKM.Variables['Custo_T']:= CkT;
        Relatorio2.FtPneuCustoKM.Variables['Mk_T']:= KmT/QtPnT;

        Relatorio2.FtPneuCustoKM.Variables['INICIO']:= Datainicial;
        Relatorio2.FtPneuCustoKM.Variables['Fim']:= DataFinal;
        Relatorio2.FtPneuCustoKM.Variables['VERSAO']:=QUOTEDSTR(FORMINICIASISTEMA.EDITVERSAO.CAPTION);


                      Relatorio2.FtPneuCustoKM.Variables['DataI']:=QUOTEDSTR(DateToStr(FormRltpneuDecisao.DateTimePicker1.Date));
                      Relatorio2.FtPneuCustoKM.Variables['DataF']:=QUOTEDSTR(DateToStr(FormRltpneuDecisao.DateTimePicker2.Date));
                      Relatorio2.FtPneuCustoKM.ShowReport();
end;

procedure TFormProdutividadeCustoKm.StringGrid1DblClick(Sender: TObject);
begin
//              pai.QrPneuCustoKmTodasVidas.State:=DsEdit;
              StringGrid1.Cells[0,1]:='0';
//              if Pai.QrPneuCustoKmTodasVidas.FieldByName('CK').AsString = 'X'  then
//               Pai.QrPneuCustoKmTodasVidas.FieldByName('CK').AsString:='O'
//               else
//               Pai.QrPneuCustoKmTodasVidas.FieldByName('CK').AsString:='X';

end;

Procedure TFormProdutividadeCustoKm.lerTabela;
begin
      QtPnN:=0;
      QtPn1:=0;
      QtPn2:=0;
      QtPn3:=0;
      QtPn4:=0;
      QtPn5:=0;
      QtPnt:=0;
      KmN:=0;
      Km1:=0;
      Km2:=0;
      Km3:=0;
      Km4:=0;
      Km5:=0;
      KmT:=0;
      valorN:=0;
      valor1:=0;
      valor2:=0;
      valor3:=0;
      valor4:=0;
      valor5:=0;
      valorT:=0;
      CkN:=0;
      Ck1:=0 ;
      Ck2:=0;
      Ck3:=0;
      Ck4:=0;
      Ck5:=0;
      CkT:=0;


      With Pai.QrPneuCustoKmTodasVidas do
          begin
//                Close;
//                Open;
                First;
                repeat
                      if Pai.QrPneuCustoKmTodasVidas.FieldByname('KM_VIDA_N').AsInteger > 0 then Inc(QtPnN);
                      if Pai.QrPneuCustoKmTodasVidas.FieldByname('Km_vida_1').AsInteger > 0 then Inc(QtPn1);

                      if FieldByname('Km_Vida_2').AsInteger > 0 then Inc(QtPn2);
                      if FieldByname('Km_Vida_3').AsInteger > 0 then Inc(QtPn3);
                      if FieldByname('Km_Vida_4').AsInteger > 0 then Inc(QtPn4);
                      if FieldByname('Km_Vida_5').AsInteger > 0 then Inc(QtPn5);
                      Inc(QtPnT);

                      KmN:=KmN + FieldByName('Km_Vida_N').AsInteger;
                      Km1:=Km1 + FieldByName('Km_Vida_1').AsInteger;
                      Km2:=Km2 + FieldByName('Km_Vida_2').AsInteger;
                      Km3:=Km3 + FieldByName('Km_Vida_3').AsInteger;
                      Km4:=Km4 + FieldByName('Km_Vida_4').AsInteger;
                      Km5:=Km5 + FieldByName('Km_Vida_5').AsInteger;

                      ValorN:=ValorN + 0 + FieldByName('Valor_Compra_novo').AsCurrency;
                      //if FieldByName('Valor_Ref1').AsCurrency > 0 then
                          Valor1:=Valor1 + 0 + FieldByName('Valor_Ref1').AsCurrency;
                        //  else
                        //  Valor1:=0;
                      Valor2:=Valor2 + 0 + FieldByName('Valor_Ref2').AsCurrency;
                      Valor3:=Valor3 + 0 + FieldByName('Valor_Ref3').AsCurrency;
                      Valor4:=Valor4 + 0 + FieldByName('Valor_Ref4').AsCurrency;
                      Valor5:=Valor5 + 0 + FieldByName('Valor_Ref5').AsCurrency;
                      if Valor2 = NULL then valor2:=0;
                      if Valor3 = NULL then valor3:=0;
                      if Valor4 = NULL then valor4:=0;
                      if Valor5 = NULL then valor5:=0;
                      if KM1 = NULL then KM1:=0;
                      if KM2 = NULL then KM2:=0;
                      if KM3 = NULL then KM3:=0;
                      if KM4 = NULL then KM4:=0;
                      if KM5 = NULL then KM5:=0;


                      next;
                until Eof;
          end;
          // Monta resultados nas variaveis;
          KmT:=KmT+KmN+Km1+Km2+Km3+Km4+Km5;
          ValorT:=ValorT+valorN+Valor1+Valor2+Valor3+Valor4+Valor5;

        //  if valor4 <1 then valor4:=0;



          KmNovo.Caption := IntToStr(Kmn);
          Km1ref.Caption := IntToStr(Km1);
          Km2ref.Caption := IntToStr(Km2);
          Km3ref.Caption := IntToStr(Km3);
          Km4ref.Caption := IntToStr(Km4);
          Km5ref.Caption := IntToStr(Km5);


          QtN.Caption := IntToStr(QtPnN);
          Qt1.Caption := IntToStr(QtPn1);
          Qt2.Caption := IntToStr(QtPn2);
          Qt3.Caption := IntToStr(QtPn3);
          Qt4.Caption := IntToStr(QtPn4);
          Qt5.Caption := IntToStr(QtPn5);

          CkN:= ValorN/KmN;
          Ck1:= Valor1/Km1;
         // showmessage(Formatfloat('0.00',Ck1));

          if ((VALOR2 > 0) AND (KM2>0)) then
              BEGIN
                    Ck2:= Valor2/Km2;
              END
              ELSE
              CK2:=0;

          if ((VALOR3 > 0) AND (KM3>0)) then
              BEGIN
                    Ck3:= Valor3/Km3;
              END
              ELSE
              CK3:=0;

          if ((VALOR4 > 0) AND (KM4>0)) then
              BEGIN
                    Ck4:= Valor4/Km4;
              END
              ELSE
              CK4:=0;
          if ((VALOR5 > 0) AND (KM5>0)) then
              BEGIN
                    Ck5:= Valor5/Km5;
              END
              ELSE
              CK5:=0;




          Ckt:= Valort/Kmt;




end;

end.
