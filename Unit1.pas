unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, ImgList, StrUtils, Math,
  ActnList,IniFiles, ComCtrls;//, QStdCtrls;

type
 {
 Fig = (wb, wk, wn, wp, wq, wr, bb, bk, bn, bp, bq, br);

 TFigure = class
    private
      AOwn : TWinControl;
      img: Timage;
      tp: Fig;
      X,Y: Integer;
      ism : boolean;
      mx,my :integer;
      procedure ImMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure ImMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
      procedure ImMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    public
      constructor Create(AOwner: TComponent);
      procedure LoadImage(ImageList1: TImageList; fg: Fig; x,y : Integer);
      destructor Destroy;
      property Image: TImage read img write img;
  end;
  }
 TFigure = class
    public
    img: Timage;
    fg: string;
  end;

  TForm1 = class(TForm)
    ScrollBox1: TScrollBox;
    MainMenu1: TMainMenu;
    Image1: TImage;
    N1: TMenuItem;
    N2: TMenuItem;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Button1: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    N3: TMenuItem;
    N4: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    N5: TMenuItem;
    Image14: TImage;
    Button3: TButton;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    RichEdit1: TRichEdit;
    N11: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N11Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
  private
    { Private declarations }
       ism,hod_testera : boolean;
      dostupn_dvigenie : boolean;
      mx,my, xLast, yLast,sch,nac,mmm,sss,w :integer;
      popitka : integer; // кол-во попыток угадать
      bal:integer; // балы за угаданные ходы
      nach_pozition,hod ,dlina,varian,hod_usera: string;
      check1,color1:boolean;// наличие шаха и цвет первого хода в позиции
        imageList: TList;
//    fileStr: array [0..10] of string = ('bk.bmp');
     k_used : array of integer;


      function nvl(a,b:integer): integer;
      procedure ImMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure ImMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
      procedure ImMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreateImageF(img: TImage;x, y : integer; fgt: string);
    function GetFg(imh: TImage):string;
    function UdalenieFg(imh: TImage;st: string; x,y : integer): boolean;

    function proverka_ferza(imh: TImage;x, y : integer ) : string;
    function proverka_ladii(imh: TImage;x, y : integer ) : string;
    function proverka_korolya(imh: TImage;x, y : integer ) : string;
    function proverka_slona(imh: TImage;x, y : integer ) : string;
    function proverka_kray_doski(x, y : integer ) : string;
    function proverka_konya(imh: TImage;x, y : integer ) : string;
    function proverka_koordinati(imh: TImage;x, y : integer ) : string;
    function proverka_cvet(imh: TImage;x, y : integer ) : string;
    function proverka_peshki(imh: TImage;x, y, cvet: integer): string;
    function proverka_check(x, y, cvet: integer): string;
    procedure hod1(imh: TImage;xnew, ynew, xold, yold : integer ) ;
    function poluchenie_fg (x, y : integer):Timage;
    function bukv_cifr(a:string):integer;
    procedure dvigenie(a:string);
    procedure variant_na_doskeV(a:string);
    procedure variant_na_doskeD(a:string);
    function one_second :boolean;
    function perevod(a:string):string;
    procedure risovanie(xold,yold,xnew,ynew:integer) ;

  public
    { Public declarations }
   // procedure PutFigure(fg: TFigure);
  //  procedure PutFigureToXY(fg: TFigure; x,y : Integer);
  //  procedure MoveFigure(fg: TFigure);

  end;





var
  Form1: TForm1;
  vremya :integer;
  secnahod : integer; //количество секунд на ход при розыгрыше варианта
  inc1: integer; //последовательно ли подавать задания для решения
  posledovat: integer; // с какого номера последовательно подавать заданния для решения
  kol_popitok : integer; // количество попыток угадать на одно задание
  otobragenie_hoda:integer;// отображение хода при розыгрыше линией
  otobragenie_podskazki:integer;//выводить ли в memo подсказку
  baza1:integer;// база с которой мы работаем стратегия или тактика



implementation

uses Unit2, option, about, Unitcitata, UnitShipov, baza, Unitstrategy,
  links, theory_mitten, unitendshpil;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin

end;


{procedure TForm1.get_current_fig;
var
im: TImage;
i: Integer;
begin
for i := 0 to imageList.Count - 1 do
begin
  im := imageList[i];
  if (im.Picture = Image2.
end;
  imageList.Free;
end;
}


procedure TForm1.FormDestroy(Sender: TObject);
var
im: TImage;
i: Integer;
begin
for i := 0 to imageList.Count - 1 do
begin
im := TFigure(imageList[i]).img;
im.Free;
TFigure(imageList[i]).Free;
end;
imageList.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
 var t1 :TIniFile;
begin
dostupn_dvigenie:=false;
  t1:=TINIFile.Create('opt.ini');
  try
   try
  vremya:=t1.ReadInteger('VREMYA','vremya',180);
  baza1:=t1.ReadInteger('BAZA1','baza1',1);
  inc1:=t1.ReadInteger('inc1','inc1',0);
  if inc1=1 then posledovat:=t1.ReadInteger('posledovat','posledovat',1);
  if baza1=1 then form1.Caption:='AmfitelOs Тактика';
  if baza1=2 then form1.Caption:='AmfitelOs Стратегия';
  if baza1=3 then form1.Caption:='AmfitelOs Эндшпиль';
  label1.caption:=inttostr(vremya div 60);
 label5.caption:= inttostr(vremya mod 60);
  finally
    t1.Free;
     end;
   except
    MessageDlg('Ошибка при чтении данных!',mtError,[mbYes],0) ;
    end;
 bal:=0;
 imageList := TList.Create();
 setlength(k_used,0);
 image14.Picture := image1.Picture;
 w:=10000;
end;

procedure TForm1.CreateImageF(img: TImage; x, y : integer; fgt: string);
var
  im: TImage;
  fg: TFigure;
begin
im := TImage.Create(Form1.Image1);
//im.Picture.LoadFromFile('.\res\bk.jpg');
if (im <> nil) then
begin
//ImageList1.GetBitmap(0,);
//im.
//im := ImageList1
//im.Picture.LoadFromFile('C:\Program Files\Borland\Delphi7\Projects\AmfitelOS\res\bb35.bmp');
im.Picture := img.Picture;
im.AutoSize := True;
im.Transparent := True;
im.OnMouseDown := Form1.ImMouseDown;
im.OnMouseUp := Form1.ImMouseUp;
im.OnMouseMove := Form1.ImMouseMove;
fg := TFigure.Create;
fg.img := im;
fg.fg := fgt;
Form1.imageList.Add(fg);
im.Parent := Form1.Image1.Parent;
im.Top := Form1.Image1.Top + 35 + (x -1)* ((Form1.Image1.Width - 60) div 8);
im.Left := Form1.Image1.Left + 34 + (y -1 )* ((Form1.Image1.Height - 60) div 8);
// imagelist.
end;

end;


procedure TForm1.ImMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin            
 if dostupn_dvigenie then ism:=false else ism := true;
 begin
    (TImage(Sender)).BringToFront;
  mx:= X ;
  my:= Y ;
  xLast:= ((TImage(Sender)).top - Form1.Image1.Top + 15)  div 39;
  yLast:= ((TImage(Sender)).Left - Form1.Image1.Left + 14) div 39;
 end;
end;

procedure TForm1.ImMouseMove(Sender: TObject; Shift: TShiftState;
    X, Y: Integer);
begin
 if ism then begin
  if X <> mx then (TImage(Sender)).Left := (TImage(Sender)).Left + X - mx;
  if Y <> my then (TImage(Sender)).Top := (TImage(Sender)).top + Y- my;
  //form1.Caption :=  IntToStr((TImage(Sender)).top) + ' ' + IntToStr((TImage(Sender)).Left)
  //form1.Caption :=  IntToStr(((TImage(Sender)).top - Form1.Image1.Top + 15)  div 39) + ' ' + IntToStr(((TImage(Sender)).Left - Form1.Image1.Left + 14) div 39);
  //TImage(Sender).picture.
 end;
end;

procedure TForm1.ImMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
label
a;
var
 xP, yP : integer;
 
begin
 ism:=false;
   xP:= ((TImage(Sender)).top - Form1.Image1.Top + 15)  div 39;
  yP:= ((TImage(Sender)).Left - Form1.Image1.Left + 14) div 39;
      // проверка на цвет (очередность хода)
 //dostupn_dvigenie:=false;
 //IF dostupn_dvigenie then
 // begin
 if (color1 = (LeftStr(GetFg(TImage(Sender)),1) = 'b') ) then
begin
  (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  goto a;
end;

// откат если поставил на ту же клетку
if (xP=xLast) and (yP=yLast) then
    begin
  (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  goto a;
end;

 //ShowMessage(GetFg((TImage(Sender))));
 // ограничение на край доски
 //if (xP> 7) or (xP< 1) or (yP>7) or (yP< 1) then
// begin
 // (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
 // (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
 //end
 //else
// begin

 // проверка короля
 if (GetFg(TImage(Sender))='bk') or (GetFg(TImage(Sender))='wk')  then
  begin
   if (proverka_korolya(TImage(Sender),xP, yP)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and  (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

    // проверка слона
  if (GetFg(TImage(Sender))='bb') or (GetFg(TImage(Sender))='wb') then
  begin
   if (proverka_slona(TImage(Sender),xP, yP)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

   // проверка ладьи
    if (GetFg(TImage(Sender))='br') or (GetFg(TImage(Sender))='wr') then
  begin
   if (proverka_ladii(TImage(Sender),xP, yP)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

   // проверка ферзя
     if (GetFg(TImage(Sender))='bq') or (GetFg(TImage(Sender))='wq') then
  begin
   if (proverka_ferza(TImage(Sender),xP, yP)='mogno') and (proverka_kray_doski(xP, yP)='mogno')  and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
  {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

      // проверка  коня
     if (GetFg(TImage(Sender))='bn') or (GetFg(TImage(Sender))='wn') then
  begin
   if (proverka_konya(TImage(Sender),xP, yP)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

    // проверка черной пешки
        if (GetFg(TImage(Sender))='bp')  then
  begin
   if (proverka_peshki(TImage(Sender),xP, yP,1)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;

     // проверка белой пешки
   if (GetFg(TImage(Sender))='wp')  then
  begin
   if (proverka_peshki(TImage(Sender),xP, yP,2)='mogno') and (proverka_kray_doski(xP, yP)='mogno') and (UdalenieFg(TImage(Sender),LeftStr(GetFg(TImage(Sender)),1),xP,yP)) then
 begin
 // ход сделан
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;*}
  hod1(TImage(Sender),xP,yP,xLast,yLast);
  variant_na_doskeD(varian);
   end
 else
 begin
 // откат хода
 (TImage(Sender)).Top := Form1.Image1.Top + 35 + (xLast -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yLast -1 )* ((Form1.Image1.Height - 60) div 8);
  showmessage('Данный ход не возможен');
 end;
   end;
 //  end;
a:
end;

function TForm1.GetFg(imh: TImage): string;
var
i: Integer;
begin
result:='';
for i := 0 to imageList.Count - 1 do
begin
  if (TFigure(imageList[i]).img = imh) then result := TFigure(imageList[i]).fg;
end;

end;

function TForm1.proverka_korolya(imh: TImage;x, y: integer): string;
begin
   if (x> xLast+1) or (x< xLast-1) or (y> yLast+1) or (y< yLast-1)
      then result:='nelza'
        else result:='mogno';
end;

function TForm1.proverka_kray_doski(x, y: integer): string;
begin
     if (x> 8) or (x< 1) or (y>8) or (y< 1)
      then result:='nelza'
        else result:='mogno';
end;

function TForm1.proverka_slona(imh: TImage;x, y: integer): string;
label
a;
 var
 dx,dy,i : integer;
begin
result:='nelza';
  if abs(xLast-x)<>abs(yLast-y) then result:='nelza'
                          else
  begin
      dx:=xLast-x;
      dy:=yLast-y;
      for i:= 1 to abs(dy)-1 do
      if proverka_koordinati(imh,xLast-Sign(dx)*i, yLast-Sign(dy)*i) = 'nelza' then goto a;
result:='mogno';
  end;
a:
end;

function TForm1.proverka_ladii(imh: TImage;x, y: integer): string;
label
a;
var
i: integer;
begin

    if (xLast=x) or (yLast=y ) then
    begin
    if xLast=x then
    begin
//ShowMessage(IntToStr(x)+' '+IntToStr(y)+' '+IntToStr(xLast)+' '+IntToStr(yLast)+' '+result);
    if (yLast-y)<0 then begin
    for i:= yLast+1 to y-1 do  if proverka_koordinati(imh,x, i) = 'nelza' then goto a;
    end else
    for i:= y+1 to yLast-1 do if proverka_koordinati(imh,x, i) = 'nelza' then goto a;

    end else begin

    if (xLast-x)<0 then begin
    for i:= xLast+1 to x-1 do if proverka_koordinati(imh,i, y) = 'nelza' then goto a;
    end else
    for i:= x+1 to xLast-1 do if proverka_koordinati(imh,i, y) = 'nelza' then goto a;
    end;
    result:='mogno'
    end
    else
a:    result:='nelza';
end;

function TForm1.proverka_ferza(imh: TImage;x, y: integer): string;
   label
a,b;
 var
 dx,dy,i : integer;
begin
result:='nelza';
   { if (abs(xLast-x)=0) or (abs(yLast-y)=0 ) or (abs(xLast-x)=abs(yLast-y)) then result:='mogno'
                          else result:='nelza';
    }

     // проверка по слону
       if abs(xLast-x)<>abs(yLast-y) then
       begin

    if (xLast=x) or (yLast=y ) then
    begin
    if xLast=x then
    begin
//ShowMessage(IntToStr(x)+' '+IntToStr(y)+' '+IntToStr(xLast)+' '+IntToStr(yLast)+' '+result);
    if (yLast-y)<0 then begin
    for i:= yLast+1 to y-1 do  if proverka_koordinati(imh,x, i) = 'nelza' then goto a;
    end else
    for i:= y+1 to yLast-1 do if proverka_koordinati(imh,x, i) = 'nelza' then goto a;

    end else begin

    if (xLast-x)<0 then begin
    for i:= xLast+1 to x-1 do if proverka_koordinati(imh,i, y) = 'nelza' then goto a;
    end else
    for i:= x+1 to xLast-1 do if proverka_koordinati(imh,i, y) = 'nelza' then goto a;
    end;
    result:='mogno'
    end
    else
a:    result:='nelza';

       end
                          else
  begin
      dx:=xLast-x;
      dy:=yLast-y;
      for i:= 1 to abs(dy)-1 do
      if proverka_koordinati(imh,xLast-Sign(dx)*i, yLast-Sign(dy)*i) = 'nelza' then goto b;
      result:='mogno';
  end;

 { // проверка по ладье
    if (xLast=x) or (yLast=y ) then
    begin
    if xLast=x then
    begin
    if (yLast-y)<0 then begin
    for i:= yLast+1 to y-1 do  if proverka_koordinati(x, i) = 'nelza' then goto a;
    end else
    for i:= y+1 to yLast-1 do if proverka_koordinati(x, i) = 'nelza' then goto a;

    end else begin

    if (xLast-x)<0 then begin
    for i:= xLast+1 to x-1 do if proverka_koordinati(i, y) = 'nelza' then goto a;
    end else
    for i:= x+1 to xLast-1 do if proverka_koordinati(i, y) = 'nelza' then goto a;
    end;
    end;
   }
b:

end;

function TForm1.proverka_konya(imh: TImage;x, y: integer): string;
begin
  if ((abs(xLast-x)=2) and (abs(yLast-y)=1 )) or ((abs(xLast-x)=1) and (abs(yLast-y)=2 ))
     then result:='mogno'
                          else result:='nelza';
end;

function TForm1.proverka_peshki(imh: TImage;x, y, cvet: integer): string;
begin
 result:='nelza';
 // белый
 // движение
  if cvet=2 then
                begin
                  if xLast=7 then
                       begin
                       // ход на одну клетку с начального положения пешки
                       if (xLast-x=1) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,x,y)='mogno') then  result:='mogno';
                   // ход на две клетки с начального положения пешки (доп проверка что на третьей горизонтали не перешагиваемчерез фигуру)
                      if (xLast-x=2) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,xLast-1,y)='mogno') and  (proverka_koordinati(imh,x,y)='mogno') then  result:='mogno';

                       end
                  else
                    begin
                       if (xLast-x<2) and  (xLast-x>0) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,x,y)='mogno')  then  result:='mogno';
                 //      showmessage('11 '+result+' '+proverka_koordinati(x,y)+' ');
                    end
                end;
        if cvet=2 then
          begin
           //showmessage('22 '+result);
           if (abs(xLast-x)=1) and (yLast-y=-1) and  (proverka_koordinati(imh,xLast,yLast)='nelza')
            then result:='mogno';
          end;
           //взятие
                     if cvet=2 then
          begin
         if (abs(x-xLast)=1) and (abs(y-yLast)=1) and  (proverka_cvet(imh,x,y)='b')
            then result:='mogno';
           // showmessage('33 '+result);
          //  showmessage('22 '+inttostr(x)+'   '+inttostr(y));
          end;

  //черный
  // движение
  if cvet=1  then
                begin
                  if xLast=2 then
                       begin
                         // ход на одну клетку с начального положения пешки
                       if (x-xLast=1) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,x,y)='mogno') then  result:='mogno';
                        // ход на две клетки с начального положения пешки (доп проверка что на шестой горизонтали не перешагиваемчерез фигуру)
                       if (x-xLast=2) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,xLast+1,y)='mogno') and  (proverka_koordinati(imh,x,y)='mogno') then  result:='mogno';
                       end
                  else
                    begin
                       if (x-xLast<2) and  (x-xLast>0) and (abs(yLast-y)=0 ) and  (proverka_koordinati(imh,x,y)='mogno') then  result:='mogno';
                    end
                end;
   //взятие
                     if cvet=1 then
          begin
         if (abs(x-xLast)=1) and (abs(y-yLast)=1) and  (proverka_cvet(imh,x,y)='w')
            then result:='mogno';
          end;
end;

function TForm1.UdalenieFg(imh: TImage; st: string; x, y: integer): Boolean;
var
i: Integer;
b: boolean;
begin
b:= true;
result:=false;
 //ShowMessage('6699');
for i := 0 to imageList.Count - 1 do
begin
if not result then
begin
  //if (TFigure(imageList[i]).img <> imh) and ( ((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39) = x ) and ( ((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39) = y )  then
  if (TFigure(imageList[i]).img <> imh) and ( ((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39) = x ) and ( ((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39) = y )  then
  begin

  if (rightstr(TFigure(imageList[i]).fg,1)<>'k') and (leftstr(TFigure(imageList[i]).fg,1)<>st) then
  begin
  //ShowMessage('66');
  TFigure(imageList[i]).img.Free;
  imageList.Delete(i);
  result:=true;
  end else
  b:=false;
  end;
end;
end;
if (not result) and b then
result := true;
end;
function TForm1.proverka_koordinati(imh: TImage;x, y: integer): string;
var
i: Integer;
begin
// проверка не существует ли в данном месте фигуры
result:='mogno';
for i := 0 to imageList.Count - 1 do
begin
if (TFigure(imageList[i]).img <> imh)    and
(((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39) = x)
 and ( ((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39) = y )
   then begin result:='nelza';
             // showmessage(inttostr(x)+' '+inttostr(y));
         end
   else
     begin
       // showmessage('x= '+inttostr((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39));
       //    showmessage('y= '+inttostr((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39)) ;
     end;
end;
 //ShowMessage(IntToStr(x)+' '+IntToStr(y)+' '+result);
 end;
function TForm1.proverka_check( x, y, cvet: integer): string;
var
i: Integer;
b: boolean;
begin
 //   for i:= xLast+1 to x-1 do if proverka_koordinati(i, y) = 'nelza' then goto a;

end;

procedure TForm1.hod1(imh: TImage;xnew, ynew, xold, yold: integer);
begin
if imh <> nil then
begin
  imh.Top := Form1.Image1.Top + 35 + (xnew -1)* ((Form1.Image1.Width - 60) div 8);
  imh.Left := Form1.Image1.Left + 34 + (ynew -1 )* ((Form1.Image1.Height - 60) div 8);
  color1 := not color1;
  hod_usera:=inttostr(xold)+inttostr(yold)+'-'+inttostr(xnew)+inttostr(ynew);
 // showmessage(hod_usera+' hod_usera1');
end;  
end;

function TForm1.poluchenie_fg(x, y: integer): Timage;
 var
i: Integer;
begin
result:=nil;
for i := 0 to imageList.Count - 1 do
begin
if (((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39) = y)
 and ( ((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39) = x )
  then
  begin
  result:=(TFigure(imageList[i]).img);
  //ShowMessage(TFigure(imageList[i]).fg);
  end;
end;

end;

function TForm1.bukv_cifr(a: string): integer;
begin
  if a='a' then result:=1;
  if a='b' then result:=2;
  if a='c' then result:=3;
  if a='d' then result:=4;
  if a='e' then result:=5;
  if a='f' then result:=6;
  if a='g' then result:=7;
  if a='h' then result:=8;
end;

procedure TForm1.dvigenie(a: string);
 var xold:integer;
     yold:integer;
     xnew:integer;
     ynew:integer;
     znak:string;
     p : boolean;
begin
     znak:=(copy(a,3,1));
      xold:=bukv_cifr(copy(a,1,1));
     yold:=9-strtoint(copy(a,2,1));
     xnew:=bukv_cifr(copy(a,4,1));
     ynew:=9-strtoint(copy(a,5,1));
      if znak='-' then
      begin
      hod1(poluchenie_fg(xold,yold),ynew,xnew, 0,0);
       if otobragenie_hoda=1 then
                 risovanie(xold,yold,xnew,ynew);
      end
                 else
                  begin
                      //             ShowMessage(IntToStr(xold)+' '+IntToStr(yold)+' '+IntToStr(xnew)+' '+IntToStr(ynew));
                  //p:=UdalenieFg(poluchenie_fg(xold,yold),'Oleg',Form1.Image1.Top + 35 + (x -1)* ((Form1.Image1.Width - 60) div 8),Form1.Image1.Left + 34 + (yold -1 )* ((Form1.Image1.Height - 60) div 8));
                 p:=UdalenieFg(poluchenie_fg(xold,yold),'',ynew,xnew);

                 hod1(poluchenie_fg(xold,yold),ynew,xnew, 0,0);
                if otobragenie_hoda=1 then
                 risovanie(xold,yold,xnew,ynew);
                 end;
end;

procedure TForm1.Button1Click(Sender: TObject);

  //dvigenie(edit1.text);
  var current_pole,dlina,i : integer;
 part: TPart;
 partstr: TPartstr;
 partend: TPartend;
im: TImage;
p1 : boolean;
begin
dostupn_dvigenie:=true;
if w=10000 then showmessage('Задание еще не определено')
 else begin
RichEdit1.Lines.Clear;
for i := 0 to imageList.Count - 1 do
begin
im := TFigure(imageList[i]).img;
im.Free;
TFigure(imageList[i]).Free;
end;
imageList.Free;
 imageList := TList.Create();
 current_pole :=0;
 Randomize;
 hod:='b';
 //nach_pozition :='5rk1/p6p/1q2p1p1/2p1Nr2/4Rn2/1P6/P2Q2PP/4R1K1';
 //nach_pozition :='5rk1/8/8/8/8/8/8/4R1K1' ;
 if baza1=1 then
begin
 part:= TPart.Create;
 part:= TPart.Create;
 if w<=335 then part.init(w);
 if (w>335) and (w<=685) then part.init2(w);
 if w>685 then part.init3(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if part.First='w' then color1:=true
                   else color1:=false;
 varian:=part.moves;
 nach_pozition := part.Fen;
 RichEdit1.Lines.add(part.Names);
 RichEdit1.Lines.add(part.comment);
end;
if baza1=2 then
begin
 partstr:= TPartstr.Create;
  if w<=230 then partstr.init(w);
  if (w>230) and (w<442) then partstr.init2(w);
  if (w>=442) and (w<644) then partstr.init3(w);
  if w>=644  then partstr.init4(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if partstr.First='w' then color1:=true
                   else color1:=false;
 varian:=partstr.moves;
 nach_pozition := partstr.Fen;
 RichEdit1.Lines.add(partstr.Names);
 RichEdit1.Lines.add(partstr.comment);
end;

if baza1=3 then
begin
 partend:= TPartend.Create;
  if w<=250 then partend.init(w);
  setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if partend.First='w' then color1:=true
                   else color1:=false;
 varian:=partend.moves;
 nach_pozition := partend.Fen;
 RichEdit1.Lines.add(partend.Names);
 RichEdit1.Lines.add(partend.comment);
end;


 dlina:=length(nach_pozition);
 nac:=1;
 timer2.Enabled:=false;
 label1.caption:=inttostr(vremya div 60);
 label5.caption:= inttostr(vremya mod 60);
 for i:=0 to dlina do
  begin
    if nach_pozition[i]='1' then begin
                                   current_pole := current_pole+1;
                                 end;
    if nach_pozition[i]='2' then begin
                                   current_pole := current_pole+2;
                                 end;
    if nach_pozition[i]='3' then begin
                                   current_pole := current_pole+3;
                                 end;
    if nach_pozition[i]='4' then begin
                                   current_pole := current_pole+4;
                                 end;
    if nach_pozition[i]='5' then begin
                                   current_pole := current_pole+5;
                                 end;
     if nach_pozition[i]='6' then begin
                                   current_pole := current_pole+6;
                                 end;
     if nach_pozition[i]='7' then begin
                                   current_pole := current_pole+7;
                                 end;
     if nach_pozition[i]='8' then begin
                                   current_pole := current_pole+8;
                                 end;
     if nach_pozition[i]='p' then begin
                                   CreateImageF(Image5,(current_pole div 8)+1,(current_pole mod 8)+1,'bp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='n' then begin
                                   CreateImageF(Image12,(current_pole div 8)+1,(current_pole mod 8)+1,'bn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='b' then begin
                                   CreateImageF(Image7,(current_pole div 8)+1,(current_pole mod 8)+1,'bb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='r' then begin
                                   CreateImageF(Image11,(current_pole div 8)+1,(current_pole mod 8)+1,'br');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='k' then begin
                                   CreateImageF(Image2,(current_pole div 8)+1,(current_pole mod 8)+1,'bk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='q' then begin
                                   CreateImageF(Image8,(current_pole div 8)+1,(current_pole mod 8)+1,'bq');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='P' then begin
                                   CreateImageF(Image4,(current_pole div 8)+1,(current_pole mod 8)+1,'wp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='N' then begin
                                   CreateImageF(Image13,(current_pole div 8)+1,(current_pole mod 8)+1,'wn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='B' then begin
                                   CreateImageF(Image6,(current_pole div 8)+1,(current_pole mod 8)+1,'wb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='R' then begin
                                   CreateImageF(Image10,(current_pole div 8)+1,(current_pole mod 8)+1,'wr');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='K' then begin
                                   CreateImageF(Image3,(current_pole div 8)+1,(current_pole mod 8)+1,'wk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='Q' then begin
                                   CreateImageF(Image9,(current_pole div 8)+1,(current_pole mod 8)+1,'wq');
                                   current_pole := current_pole+1;
                                 end;

  end;
    image1.picture:=image14.picture;
    variant_na_doskeV(varian);
    if  baza1=2 then richedit1.lines.add(partstr.Comment3+' '+partstr.Comment4);
    if  baza1=3 then richedit1.lines.add(partend.Comment3+' '+partend.Comment4);

     end;
end;

procedure TForm1.variant_na_doskeV(a: string);
begin
 timer1.Interval:=1000*secnahod;
 timer1.Enabled := true;
  nac:=1;
  //sch:=1;
 end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if nac>length(varian)-6 then
  begin
   timer1.Enabled:=false;
  end;

    //action1.Execute;
    //Action1Execute(nil);
    try
    dvigenie(copy(varian,nac,5));
      except
    showmessage('Данная операция сейчас не возможна');
  end;
    //Action1Execute(nil);
    //action1.Execute;
    nac:=nac+6;

end;

function TForm1.proverka_cvet(imh: TImage;x, y: integer): string;
var
i: Integer;
begin
// проверка не существует ли в данном месте фигуры
result:='net';
for i := 0 to imageList.Count - 1 do
begin
 if (TFigure(imageList[i]).img <> imh)    and
  (((TFigure(imageList[i]).img.top - Form1.Image1.Top + 15)  div 39) = x)
 and ( ((TFigure(imageList[i]).img.Left - Form1.Image1.Left + 14) div 39) = y )
   then begin result:=leftstr(TFigure(imageList[i]).fg,1);
        end;
end;
end;


procedure TForm1.variant_na_doskeD(a: string);
 label a1;
begin
    if nac>length(varian)-6 then
  begin
    if hod_usera<>perevod(copy(varian,nac,5))   then  begin showmessage('Вы не угадали ход. Задание не решено'); dostupn_dvigenie:=true; end
       else
       begin
       showmessage('Вариант разыгран. Поздравляем');
       dostupn_dvigenie:=true;
       inc(bal);
       end;
       image1.enabled:=false;
       image2.enabled:=false;
       image3.enabled:=false;
       timer2.Enabled:=false;
       inc(popitka);
   goto a1 ;
  end;
 // showmessage('hod_usera2='+hod_usera);
 //showmessage('super_hod_usera='+perevod(copy(varian,nac,5)));
    if hod_usera=perevod(copy(varian,nac,5)) then hod_testera:=true
                                   else hod_testera:=false;


    if hod_testera=true then
        begin
             showmessage('Вы угадали ход') ;
             dvigenie(copy(varian,nac+6,5));
             nac:=nac+6;
        end
                        else
                        begin
                        showmessage('Вы не угадали ход. Задание не решено');
                        dostupn_dvigenie:=true;
                        inc(popitka);
                        timer2.Enabled:=false;
                        end;
    //Action1Execute(nil);
    //action1.Execute;
    nac:=nac+6;

   a1:
  end;


function TForm1.perevod(a: string): string;
 var xold:integer;
     yold:integer;
     xnew:integer;
     ynew:integer;
     znak:string;
     p : boolean;
begin
     try
     znak:='-';
     xold:=bukv_cifr(copy(a,1,1));
     yold:=9-strtoint(copy(a,2,1));
     xnew:=bukv_cifr(copy(a,4,1));
     ynew:=9-strtoint(copy(a,5,1));
     result:=inttostr(yold)+inttostr(xold)+znak+inttostr(ynew)+inttostr(xnew);
       except
    showmessage('Данная операция сейчас не возможна');
  end;
end;
procedure TForm1.Timer2Timer(Sender: TObject);
 var v : integer;
begin
 one_second;
end;

procedure TForm1.Button2Click(Sender: TObject);
 var current_pole,dlina,i : integer;
 t1 :TIniFile;
 part: TPart;
 partstr: TPartstr;
 partend: TPartend;
im: TImage;
p1 : boolean;
begin
dostupn_dvigenie:=false;
RichEdit1.Lines.Clear;
image1.Enabled:=true;
for i := 0 to imageList.Count - 1 do
begin
im := TFigure(imageList[i]).img;
im.Free;
TFigure(imageList[i]).Free;
end;
imageList.Free;
 imageList := TList.Create();
 current_pole :=0;
 Randomize;
 hod:='b';
 //nach_pozition :='5rk1/p6p/1q2p1p1/2p1Nr2/4Rn2/1P6/P2Q2PP/4R1K1';
 //nach_pozition :='5rk1/8/8/8/8/8/8/4R1K1' ;
 if baza1=1 then
begin
 part:= TPart.Create;
  p1:=true;
 while p1 do
 begin
 if length(k_used)<700 then
  begin
    if inc1=1 then
        begin
          w:=posledovat;
          inc(posledovat);
          if posledovat=700 then posledovat:=1;
          p1:=false;
          for i:=0 to length(k_used)-1 do
          if  k_used[i]=w  then p1:=true;
        end
             else
 begin
     w:=random(700)+1;
     p1:=false;
     for i:=0 to length(k_used)-1 do
     if  k_used[i]=w  then p1:=true;
 end;    
  end
   else
    begin
      w:=1;
      p1:=false;
    end;
 end;
 //w:=700;
 if w<=335 then part.init(w);
 if (w>335) and (w<=685) then part.init2(w);
 if w>685 then part.init3(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позицию, что положение без шаха
 if part.First='w' then color1:=true
                   else color1:=false;
 varian:=part.moves;
 nach_pozition := part.Fen;
 RichEdit1.Lines.add(part.Names);
 RichEdit1.Lines.add(part.comment);
   if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(part.Comment2);
                   end;
 end;
 // инициализация базы статегия
 if baza1=2 then
begin
 partstr:= TPartstr.Create;
  p1:=true;
 while p1 do
 begin
 if length(k_used)<550 then
  begin
  if inc1=1 then
        begin
          w:=posledovat;
          inc(posledovat);
          if posledovat=551 then posledovat:=1;
          p1:=false;
          for i:=0 to length(k_used)-1 do
          if  k_used[i]=w  then p1:=true;
        end
  else
         begin
           w:=random(550)+1;
           p1:=false;
           for i:=0 to length(k_used)-1 do
           if  k_used[i]=w  then p1:=true;
         end;
  end
   else
    begin
      w:=1;
      p1:=false;
    end;
 end;
  //w:=443;
  if w<=230 then partstr.init(w);
  if (w>230) and (w<442) then partstr.init2(w);
  if (w>=442) and (w<644) then partstr.init3(w);
  if w>=644  then partstr.init4(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if partstr.First='w' then color1:=true
                   else color1:=false;
 varian:=partstr.moves;
 nach_pozition := partstr.Fen;
 RichEdit1.Lines.add(partstr.Names);
 RichEdit1.Lines.add(partstr.comment);
  if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(partstr.Comment2);
                   end;
 end;

 // инициализация базы эндшпиль
  if baza1=3 then
begin
 partend:= TPartend.Create;
  p1:=true;
 while p1 do
 begin
 if length(k_used)<650 then
  begin
    if inc1=1 then
        begin
          w:=posledovat;
          inc(posledovat);
          if posledovat=651 then posledovat:=1;
          p1:=false;
          for i:=0 to length(k_used)-1 do
          if  k_used[i]=w  then p1:=true;
        end
             else
 begin
     w:=random(250)+1;
     p1:=false;
     for i:=0 to length(k_used)-1 do
     if  k_used[i]=w  then p1:=true;
 end;    
  end
   else
    begin
      w:=1;
      p1:=false;
    end;
 end;
 w:=190;
 if w<=250 then partend.init(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позицию, что положение без шаха
 if partend.First='w' then color1:=true
                   else color1:=false;
 varian:=partend.moves;
 nach_pozition := partend.Fen;
 RichEdit1.Lines.add(partend.Names);
 RichEdit1.Lines.add(partend.comment);
   if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(partend.Comment2);
                   end;
 end;



 dlina:=length(nach_pozition);
 nac:=1;
 timer2.Enabled:=false;
 t1:=TINIFile.Create('opt.ini');
 vremya:=t1.ReadInteger('VREMYA','vremya',180);
 secnahod:=t1.ReadInteger('SECNAHOD','secnahod',1);
 otobragenie_hoda:=t1.ReadInteger('otobragenie_hoda','otobragenie_hoda',0);
 otobragenie_podskazki:=t1.ReadInteger('otobragenie_podskazki','otobragenie_podskazki',0);
 t1.Free;
 label1.caption:=inttostr(vremya div 60);
 label5.caption:= inttostr(vremya mod 60);
 timer2.Enabled:=true;
 for i:=0 to dlina do
  begin
    if nach_pozition[i]='1' then begin
                                   current_pole := current_pole+1;
                                 end;
    if nach_pozition[i]='2' then begin
                                   current_pole := current_pole+2;
                                 end;
    if nach_pozition[i]='3' then begin
                                   current_pole := current_pole+3;
                                 end;
    if nach_pozition[i]='4' then begin
                                   current_pole := current_pole+4;
                                 end;
    if nach_pozition[i]='5' then begin
                                   current_pole := current_pole+5;
                                 end;
     if nach_pozition[i]='6' then begin
                                   current_pole := current_pole+6;
                                 end;
     if nach_pozition[i]='7' then begin
                                   current_pole := current_pole+7;
                                 end;
     if nach_pozition[i]='8' then begin
                                   current_pole := current_pole+8;
                                 end;
     if nach_pozition[i]='p' then begin
                                   CreateImageF(Image5,(current_pole div 8)+1,(current_pole mod 8)+1,'bp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='n' then begin
                                   CreateImageF(Image12,(current_pole div 8)+1,(current_pole mod 8)+1,'bn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='b' then begin
                                   CreateImageF(Image7,(current_pole div 8)+1,(current_pole mod 8)+1,'bb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='r' then begin
                                   CreateImageF(Image11,(current_pole div 8)+1,(current_pole mod 8)+1,'br');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='k' then begin
                                   CreateImageF(Image2,(current_pole div 8)+1,(current_pole mod 8)+1,'bk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='q' then begin
                                   CreateImageF(Image8,(current_pole div 8)+1,(current_pole mod 8)+1,'bq');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='P' then begin
                                   CreateImageF(Image4,(current_pole div 8)+1,(current_pole mod 8)+1,'wp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='N' then begin
                                   CreateImageF(Image13,(current_pole div 8)+1,(current_pole mod 8)+1,'wn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='B' then begin
                                   CreateImageF(Image6,(current_pole div 8)+1,(current_pole mod 8)+1,'wb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='R' then begin
                                   CreateImageF(Image10,(current_pole div 8)+1,(current_pole mod 8)+1,'wr');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='K' then begin
                                   CreateImageF(Image3,(current_pole div 8)+1,(current_pole mod 8)+1,'wk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='Q' then begin
                                   CreateImageF(Image9,(current_pole div 8)+1,(current_pole mod 8)+1,'wq');
                                   current_pole := current_pole+1;
                                 end;
  //image14.picture:=image1.picture;
   image1.picture:=image14.picture;
  end;

  end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  form4.showmodal;
end;

function TForm1.one_second:boolean;
begin
  mmm:=strtoint(label1.caption);
  sss:=strtoint(label5.caption);
  if sss=0 then
              begin
                mmm:=mmm-1;
                sss:=59 ;
              end
  else sss:=sss-1;

    label1.caption:=inttostr(mmm);
    label5.caption:=inttostr(sss);

  if (sss=0) and (mmm=0) then
    begin
    result:=true;
    timer2.Enabled:=false;
    showmessage('Вы не успели решить задание за заданное время');
    dostupn_dvigenie:=true;
    inc(popitka);
    end
                         else result:=false;

end;

procedure TForm1.N5Click(Sender: TObject);
 var s : string;
begin
  s:='Количество попыток '+inttostr(popitka)+'. Результат ' +inttostr(bal)+'.';
  showmessage(s);
end;

procedure TForm1.risovanie(xold, yold, xnew, ynew: integer);
begin
//  Image1.Canvas.Polygon([point(10,10),point(25,35),point(50,10)]);
// image1.Canvas.Rectangle(xold, yold, xnew, ynew);
    image1.Picture := image14.Picture;
//form1.Caption := inttostr(xold) + ' ' + inttostr(yold) + ' ' + inttostr(xnew) + ' ' + inttostr(ynew)  + ' ' + inttostr(nvl(-20*Sign(ynew-yold),-10))  + ' ' + inttostr(nvl(-12*Sign(xnew-xold),-6));
image1.Canvas.Pen.Color := clRed;
image1.Canvas.Pen.Width := 4;
    image1.Canvas.MoveTo(Image1.Top  + 19 +  (xold -1)* ((Image1.Width - 60) div 8),Image1.Left + 18 + (yold -1 )* ((Image1.Height - 60) div 8));
 {*(TImage(Sender)).Top := Form1.Image1.Top + 35 + (xP -1)* ((Form1.Image1.Width - 60) div 8);
  (TImage(Sender)).Left := Form1.Image1.Left + 34 + (yP -1 )* ((Form1.Image1.Height - 60) div 8);
  }
    image1.Canvas.lineTo(-12*Sign(xnew-xold) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8),-12*Sign(ynew-yold) + Image1.Left  + 18 +  (ynew -1 )* ((Image1.Height - 60) div 8));
  
//image1.Canvas.lineTo(-12*Sign(xnew-xold) +nvl(-12*Sign(xnew-xold),-12)+ image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8),-12*Sign(ynew-yold) + Image1.Left  + 18 +  (ynew -1 )* ((Image1.Height - 60) div 8));
 //   image1.Canvas.lineTo(nvl(-20*Sign(xnew-xold),10) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8),nvl(-12*Sign(ynew-yold),6) + Image1.Left  + 18 +  (ynew -1 )* ((Image1.Height - 60) div 8));
//    image1.Canvas.moveto(-12*Sign(xnew-xold) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8),-12*Sign(ynew-yold) + Image1.Left  + 18 +  (ynew -1 )* ((Image1.Height - 60) div 8));
//form1.Caption := inttostr(nvl(-20*Sign(xnew-xold),-6) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8))+ ' ' + inttostr(-12*Sign(xnew-xold) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8));
//    image1.Canvas.lineTo(nvl(-12*Sign(xnew-xold),-6)-12*Sign(xnew-xold) + image1.Top  + 19 + (xnew -1)* ((Image1.Width - 60) div 8),nvl(-20*Sign(ynew-yold),-10) + Image1.Left  + 18 +  (ynew -1 )* ((Image1.Height - 60) div 8));
//    image1.Canvas.lineTo(image1.Top  + 17 + (xnew -1)* ((Image1.Width - 60) div 8),Image1.Left  + 17 +  (ynew -1 )* ((Image1.Height - 60) div 8));
 end;

function TForm1.nvl(a, b: integer): integer;
begin
result:=a;
if a=0 then result:=b;
end;

procedure TForm1.Button3Click(Sender: TObject);
 var current_pole,dlina,i : integer;
 t1 :TIniFile;
 part: TPart;
 partstr: TPartstr;
 partend: TPartend;
im: TImage;
p1 : boolean;
begin
dostupn_dvigenie:=false;
image1.Enabled:=true;
if w=10000 then showmessage('Задание еще не определено')
 else begin
RichEdit1.Lines.Clear;
for i := 0 to imageList.Count - 1 do
begin
im := TFigure(imageList[i]).img;
im.Free;
TFigure(imageList[i]).Free;
end;
imageList.Free;
 imageList := TList.Create();
 current_pole :=0;
 Randomize;
 hod:='b';
 t1:=TINIFile.Create('opt.ini');
 otobragenie_hoda:=t1.ReadInteger('otobragenie_hoda','otobragenie_hoda',0);
 otobragenie_podskazki:=t1.ReadInteger('otobragenie_podskazki','otobragenie_podskazki',0);
  t1.Free;
 //nach_pozition :='5rk1/p6p/1q2p1p1/2p1Nr2/4Rn2/1P6/P2Q2PP/4R1K1';
 //nach_pozition :='5rk1/8/8/8/8/8/8/4R1K1' ;
 if baza1=1 then
begin
 part:= TPart.Create;
 if w<=335 then part.init(w);
 if (w>335) and (w<=685) then part.init2(w);
 if w>685 then part.init3(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if part.First='w' then color1:=true
                   else color1:=false;
 varian:=part.moves;
 nach_pozition := part.Fen;
 RichEdit1.Lines.add(part.Names);
 RichEdit1.Lines.add(part.comment);
 if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(part.Comment2);
                   end;
 end;
  if baza1=2 then
begin
 partstr:= TPartstr.Create;
  if w<=230 then partstr.init(w);
  if (w>230) and (w<442) then partstr.init2(w);
  if (w>=442) and (w<644) then partstr.init3(w);
  if w>=644  then partstr.init4(w);
 setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if partstr.First='w' then color1:=true
                   else color1:=false;
 varian:=partstr.moves;
 nach_pozition := partstr.Fen;
 RichEdit1.Lines.add(partstr.Names);
 RichEdit1.Lines.add(partstr.comment);
  if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(partstr.Comment2);
                   end;
                    

 end;

   if baza1=3 then
begin
 partend:= TPartend.Create;
  if w<=250 then partend.init(w);
  setlength(k_used,length(k_used)+1);
 k_used[length(k_used)-1]:=w;
 check1:=false; // иницилизируем начальную позиции, что положение без шаха
 if partend.First='w' then color1:=true
                   else color1:=false;
 varian:=partend.moves;
 nach_pozition := partend.Fen;
 RichEdit1.Lines.add(partend.Names);
 RichEdit1.Lines.add(partend.comment);
  if otobragenie_podskazki=1 then
                   begin
                    RichEdit1.Lines.Add('Подсказка');
                    RichEdit1.Lines.Add(partend.Comment2);
                   end;
                    

 end;


 dlina:=length(nach_pozition);
 nac:=1;
 timer2.Enabled:=false;
 t1:=TINIFile.Create('opt.ini');
 vremya:=t1.ReadInteger('VREMYA','vremya',180);
 secnahod:=t1.ReadInteger('SECNAHOD','secnahod',1);
 t1.Free;
 label1.caption:=inttostr(vremya div 60);
 label5.caption:= inttostr(vremya mod 60);
 timer2.Enabled:=true;
 for i:=0 to dlina do
  begin
    if nach_pozition[i]='1' then begin
                                   current_pole := current_pole+1;
                                 end;
    if nach_pozition[i]='2' then begin
                                   current_pole := current_pole+2;
                                 end;
    if nach_pozition[i]='3' then begin
                                   current_pole := current_pole+3;
                                 end;
    if nach_pozition[i]='4' then begin
                                   current_pole := current_pole+4;
                                 end;
    if nach_pozition[i]='5' then begin
                                   current_pole := current_pole+5;
                                 end;
     if nach_pozition[i]='6' then begin
                                   current_pole := current_pole+6;
                                 end;
     if nach_pozition[i]='7' then begin
                                   current_pole := current_pole+7;
                                 end;
     if nach_pozition[i]='8' then begin
                                   current_pole := current_pole+8;
                                 end;
     if nach_pozition[i]='p' then begin
                                   CreateImageF(Image5,(current_pole div 8)+1,(current_pole mod 8)+1,'bp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='n' then begin
                                   CreateImageF(Image12,(current_pole div 8)+1,(current_pole mod 8)+1,'bn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='b' then begin
                                   CreateImageF(Image7,(current_pole div 8)+1,(current_pole mod 8)+1,'bb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='r' then begin
                                   CreateImageF(Image11,(current_pole div 8)+1,(current_pole mod 8)+1,'br');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='k' then begin
                                   CreateImageF(Image2,(current_pole div 8)+1,(current_pole mod 8)+1,'bk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='q' then begin
                                   CreateImageF(Image8,(current_pole div 8)+1,(current_pole mod 8)+1,'bq');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='P' then begin
                                   CreateImageF(Image4,(current_pole div 8)+1,(current_pole mod 8)+1,'wp');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='N' then begin
                                   CreateImageF(Image13,(current_pole div 8)+1,(current_pole mod 8)+1,'wn');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='B' then begin
                                   CreateImageF(Image6,(current_pole div 8)+1,(current_pole mod 8)+1,'wb');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='R' then begin
                                   CreateImageF(Image10,(current_pole div 8)+1,(current_pole mod 8)+1,'wr');
                                   current_pole := current_pole+1;
                                 end;
      if nach_pozition[i]='K' then begin
                                   CreateImageF(Image3,(current_pole div 8)+1,(current_pole mod 8)+1,'wk');
                                   current_pole := current_pole+1;
                                   end;
      if nach_pozition[i]='Q' then begin
                                   CreateImageF(Image9,(current_pole div 8)+1,(current_pole mod 8)+1,'wq');
                                   current_pole := current_pole+1;
                                 end;
  //image14.picture:=image1.picture;
   image1.picture:=image14.picture;
  end;

  end;
  end;
procedure TForm1.N7Click(Sender: TObject);
 var k1 : integer;
     cit: Tcitata;
begin
  randomize;
  k1:=random(127);
   cit:=tcitata.Create;
   cit.init(k1);
  showmessage(cit.citata+' '+cit.citata2+' '+cit.fio);
end;

procedure TForm1.N8Click(Sender: TObject);
var k1 : integer;
     cit: TSHIPOV;
begin
  randomize;
  k1:=random(50);
   cit:=tSHIPOV.Create;
   cit.init(k1);
  showmessage(cit.citata+' '+cit.citata2);
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  form3.ShowModal;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  form5.showmodal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  form7.showmodal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  form10.show;
end;

end.
