unit theory_mitten;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,shellapi;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Label1Click(Sender: TObject);
 var c2: string;
begin
  c2:=extractfilepath(application.ExeName)+'res\chess\'+'geller.jpg' ;
  ShellExecute(Self.Handle, 'open', pchar(c2), nil, nil, SW_SHOWNORMAL);
end;

end.
