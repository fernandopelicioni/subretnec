unit UnitCadastraGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons;

type
  TFormCadastraGrupos = class(TForm)
    TreeView1: TTreeView;
    Dtgrupos: TDataSource;
    BitBtn1: TBitBtn;
    DtCbGru: TDataSource;
    DtCbSbg: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastraGrupos: TFormCadastraGrupos;

implementation

uses UnitServerPai;

{$R *.dfm}

procedure TFormCadastraGrupos.BitBtn1Click(Sender: TObject);
var
  grupo,subgrupo: TTreeNode;
 gp,sb:string;
begin
with Pai.QrGrupos do
 begin
     Open;
     First;
     Sb:=       Copy(DtGrupos.DataSet.FieldByName('CodigoPrd').AsString,1,3);
     Grupo := TreeView1.Items.AddChild(Nil,DtGrupos.DataSet.FieldByName('CodigoPrd').AsString + ' - ' + DtGrupos.DataSet.FieldByName('NomeFantasia').AsString);
                         {  DtCbGru.DataSet.Open;
                           DtCbGru.DataSet.Insert;
                           DtCbGru.DataSet.FieldByName('GRM_Id').AsString:=Sb;
                           DtCbGru.DataSet.FieldByName('GRM_Des').AsString:=DtGrupos.DataSet.FieldByName('NomeFantasia').AsString;
                           DtCbGru.DataSet.Post;
                           DtCbGru.DataSet.Close; }

     NExt;
     while not eof do
          begin
                gp:=       Copy(DtGrupos.DataSet.FieldByName('CodigoPrd').AsString,1,3);
                    if gp <>  sb then
                           begin
                           grupo := TreeView1.Items.AddChild(Nil,
                           DtGrupos.DataSet.FieldByName('CodigoPrd').AsString + ' - ' + DtGrupos.DataSet.FieldByName('NomeFantasia').AsString);
                          { DtCbGru.DataSet.Open;
                           DtCbGru.DataSet.Insert;
                           DtCbGru.DataSet.FieldByName('GRM_Id').AsString:=Gp;
                           DtCbGru.DataSet.FieldByName('GRM_Des').AsString:=DtGrupos.DataSet.FieldByName('NomeFantasia').AsString;
                           DtCbGru.DataSet.Post;
                           DtCbGru.DataSet.Close; }
                           end
                           else
                           begin
                           Subgrupo := TreeView1.Items.AddChild(Grupo,
                           DtGrupos.DataSet.FieldByName('CodigoPrd').AsString +  ' - ' + DtGrupos.DataSet.FieldByName('NomeFantasia').AsString);
                          { DtCbSbg.DataSet.Open;
                           DtCbSbg.DataSet.Insert;
                           DtCbSbg.DataSet.FieldByName('SBM_Id').AsString:=Copy(DtGrupos.DataSet.FieldByName('CodigoPrd').AsString,5,3);
                           DtCbSbg.DataSet.FieldByName('SBM_GRM').AsString:=Gp;
                           DtCbSbg.DataSet.FieldByName('SBM_Des').AsString:=DtGrupos.DataSet.FieldByName('NomeFantasia').AsString;
                           DtCbSbg.DataSet.Post;
                           DtCbSbg.DataSet.Close;  }

                           end;
       Sb:=       Copy(DtGrupos.DataSet.FieldByName('CodigoPrd').AsString,1,3);
       next;
        end;

       end;
end;

end.
