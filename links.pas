unit links;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,shellapi;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Label1Click(Sender: TObject);
begin
  shellexecute(0,'open','www.crestbook.com',nil,nil,0);
end;

procedure TForm7.Label3Click(Sender: TObject);
begin
  shellexecute(0,'open','www.chesszone.net.ru',nil,nil,0);
end;

procedure TForm7.Label4Click(Sender: TObject);
begin
  shellexecute(0,'open','www.chesszone.net.ru',nil,nil,0);
end;

procedure TForm7.Label2Click(Sender: TObject);
begin
  shellexecute(0,'open','www.crestbook.com',nil,nil,0);
end;

end.
