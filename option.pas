unit option;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,IniFiles;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit3: TEdit;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
 var t1 :TIniFile;
begin
  t1:=TINIFile.Create('opt.ini');
  try
   try
   vremya:=strtoint(edit1.text);
   secnahod:=strtoint(edit2.text);
   posledovat:=strtoint(edit3.text);
   if checkbox3.checked=true then inc1:=1
   else inc1:=0;
    if checkbox1.checked=true then
     otobragenie_hoda:=1 else otobragenie_hoda:=0;
    if checkbox2.checked=true then
     otobragenie_podskazki:=1 else otobragenie_podskazki:=0;
  if vremya<0 then
   begin
     MessageDlg('Значение должно быть больше 0!',mtError,[mbYes],0) ;
     vremya:=- vremya;
     edit1.text:= inttostr(vremya);
   end;
     if secnahod<0 then
   begin
     MessageDlg('Значение должно быть больше 0!',mtError,[mbYes],0) ;
     secnahod:=- secnahod;
     edit2.text:= inttostr(vremya);
   end;


  form1.label1.caption:=inttostr(vremya div 60);
 form1.label5.caption:= inttostr(vremya mod 60);
 t1.WriteInteger('VREMYA','vremya',vremya);
 t1.WriteInteger('SECNAHOD','secnahod',secnahod);
 t1.WriteInteger('otobragenie_hoda','otobragenie_hoda',otobragenie_hoda);
 t1.WriteInteger('otobragenie_podskazki','otobragenie_podskazki',otobragenie_podskazki);
 t1.WriteInteger('posledovat','posledovat',posledovat);
 t1.WriteInteger('inc1','inc1',inc1);
      finally
    t1.Free;
     end;
   except
    MessageDlg('Ошибка при записи данных!',mtError,[mbYes],0) ;
    end;
    form3.Close;
end;

procedure TForm3.FormCreate(Sender: TObject);
 var t1 :TIniFile;
begin
  t1:=TINIFile.Create('opt.ini');
  try
   try
     vremya:=t1.ReadInteger('VREMYA','vremya',180);
  edit1.text:=inttostr(vremya);
  secnahod:=t1.ReadInteger('SECNAHOD','secnahod',1);
  edit2.text:=inttostr(secnahod);
  posledovat:=t1.ReadInteger('posledovat','posledovat',1);
  edit3.text:=inttostr(posledovat);

  otobragenie_hoda:=t1.ReadInteger('otobragenie_hoda','otobragenie_hoda',0);
  if otobragenie_hoda=1 then checkbox1.checked:=true
       else checkbox1.checked:=false;
  otobragenie_podskazki:=t1.ReadInteger('otobragenie_podskazki','otobragenie_podskazki',0);
  if otobragenie_podskazki=1 then checkbox2.checked:=true
       else checkbox1.checked:=false;
  inc1:=t1.ReadInteger('inc1','inc1',0);
  if inc1=1 then checkbox3.checked:=true
       else checkbox3.checked:=false;
 form1.label1.caption:=inttostr(vremya div 60);
 form1.label5.caption:= inttostr(vremya mod 60);

   finally
    t1.Free;
     end;
   except
    MessageDlg('Ошибка при записи данных!',mtError,[mbYes],0) ;
    end;
 end;

end.
