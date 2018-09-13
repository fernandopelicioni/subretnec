unit FormInfoCarac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    GroupBox1: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBText5: TDBText;
    DBText6: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Image4: TImage;
    Label5: TLabel;
    DBText7: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses UnitTerminalConsulta;

{$R *.dfm}

end.
