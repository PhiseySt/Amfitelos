unit baza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,IniFiles;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Comment_partii;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
 var t1 :TIniFile;
begin
  t1:=TINIFile.Create('opt.ini');
  if radiobutton1.Checked then
   begin
   baza1:=1;
   form1.Caption:='AmfitelOs �������'
   end;
  if radiobutton2.Checked then
   begin
   baza1:=2;
   form1.Caption:='AmfitelOs ���������'
   end;
   if radiobutton3.Checked then
   begin
     form1.Caption:='AmfitelOs ���������������� ������' ;
     form8.show;
   end;
     if radiobutton4.Checked then
   begin
      baza1:=3;
     form1.Caption:='AmfitelOs ��������' ;
   end;
   t1.WriteInteger('BAZA1','baza1',baza1);
  form5.Close;
end;

procedure TForm5.FormCreate(Sender: TObject);
  var t1 :TIniFile;
begin
  t1:=TINIFile.Create('opt.ini');
  try
   try
     baza1:=t1.ReadInteger('BAZA1','baza1',1);
     if baza1=1 then radiobutton1.Checked:=true;
     if baza1=2 then radiobutton2.Checked:=true;
     if baza1=3 then radiobutton4.Checked:=true;
        finally
    t1.Free;
     end;
   except
    MessageDlg('������ ���������� ������!',mtError,[mbYes],0) ;
    end;
end;

end.
