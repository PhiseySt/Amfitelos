unit Comment_partii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, HTTPApp, ExtCtrls;

type
  TForm8 = class(TForm)
    WebBrowser1: TWebBrowser;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Kotov;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
 var    k1:string;
        k,p:integer;

begin
  p:=pos('.',combobox1.text);
  k1:=copy(combobox1.text,1,p-1);
  k:=strtoint(k1);
  webbrowser1.Navigate(extractfilepath(application.ExeName)+'res\chess\'+inttostr(k)+'.htm');
  button2.Enabled:=true;
  //form8.Caption:=extractfilepath(application.ExeName)+'res\chess\1.htm';

end;

procedure TForm8.Button2Click(Sender: TObject);
begin
 if button2.Caption='Показать комментарий' then
   begin
     webbrowser1.Width:=769;
     button2.Caption:='Спрятать комментарий';
   end
   else
   begin
     webbrowser1.Width:=315;
     button2.Caption:='Показать комментарий';
   end;
end;


procedure TForm8.Button3Click(Sender: TObject);
begin
  form9.showmodal;
end;

end.
