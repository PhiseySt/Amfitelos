unit unitendshpil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, ImgList;

type
       TPartend = class
public
Names : String;
Fen : String;
First : String;
Moves : String;
Comment: String;
Comment2:String;
Comment3:String;
Comment4:String;
Uroven:integer;
procedure init(partNum: integer);

end;
implementation

procedure TPartend.init(partNum: integer);
begin
if (partNum=1) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/1k6/1p6/1K6/P1P5/8/8/8';
First :='b';
Moves := 'b7-c7 b5-a6 c7-c6 a6-a7 c6-c7 a7-a8 c7-c8';
Comment:= '��� ������.������� ����������� �������. �������� �����.' ;
Comment2:='���� ������������.';
Comment3:='����������� ������� � �������� ��������� ����� ����� ���������.';
Uroven:=1;
end;
if (partNum=2) then
begin
Names := '[White "Alekhine"]' + Chr(13) + Chr(10) + '[Black"Eute."]' + Chr(13) + Chr(10) + '[EventDate "1910"]';
Fen :='8/4k3/8/1p2Pp2/p7/P1K1P3/1P6/8 ';
First :='w';
Moves := 'c3-d3 e7-d7 e3-e4 f5-f4 d3-e2 d7-e6 e2-f2';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='������������ ����.';
Comment3:='����� ����� �������� ������ ���������.';
Uroven:=1;
end;
if (partNum=3) then
begin
Names := '[White "Gavrikov"]' + Chr(13) + Chr(10) + '[Black"Haritonov."]' + Chr(13) + Chr(10) + '[EventDate "1984"]';
Fen :='8/8/p6p/7P/1K4k1/1P6/P7/8';
First :='w';
Moves := 'b4-c5 g4:h5 b3-b4 h5-g4 a2-a4 h6-h5 b4-b5 a6:b5 a4-a5';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� �����.';
Comment3:='������ ����� h6 ������ ������, ����� �������� �������� ��� ���� h1 � a8 ��������� �� ����� ���������.';
Uroven:=1;
end;
if (partNum=4) then
begin
Names := '[White "Maslov"]' + Chr(13) + Chr(10) + '[Black"Glebov."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='6k1/6pp/5p2/4p3/p1p1P2P/2P2PP1/1K6/8';
First :='b';
Moves := 'h7-h5 b2-a3 g7-g5 a3:a4 f6-f5 a4-b5 f5-f4 g3:f4 g5:h4';
Comment:= '��� ������.������� ����������� �������.' ;
Comment2:='������.';
Comment3:='������� ������ ������� �������, ��������� ������ ���������� ����������� �� �������� ������. ������ ����������� ������� ������ ������.';
Uroven:=1;
end;
if (partNum=5) then
begin
Names := '[White "Grigorev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1928"]';
Fen :='8/8/1p6/8/8/6P1/k1K5/8';
First :='w';
Moves := 'c2-c3 a2-a3 c3-c4 a3-a4 g3-g4 b6-b5 c4-d3 a4-a3 g4-g5 b5-b4 g5-g6 b4-b3 g6-g7 b3-b2 d3-c2 ';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.������.';
Comment3:='����� ���������� ������ ����, ��� �� ����� ������ � �����.';
Uroven:=1;
end;
if (partNum=6) then
begin
Names := '[White "Brugteman"]' + Chr(13) + Chr(10) + '[Black "Darnus."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='6k1/5p2/3p1P2/p2P2K1/1p1P3P/1P6/P7/8';
First :='w';
Moves := 'g5-f5 g8-h7 f5-e4 h7-g6 e4-d3 g6:f6 d3-e4 f6-g6 e4-f4';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.���������� ���������.';
Comment3:='����� ���������� ��������� ������� ������.';
Uroven:=1;
end;
if (partNum=7) then
begin
Names := '[White "Keres"]' + Chr(13) + Chr(10) + '[Black "Alekhine."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='8/p7/1p6/1P1P1k2/2P1p3/4K1p1/8/8';
First :='b';
Moves := 'f5-e5 e3-e2 e5-d6 e2-e3 d6-c7 e3-e2 c7-b7 e2-e3 a7-a5';
Comment:= '��� ������.������� ����������� �������.' ;
Comment2:='�������� ��������.������.';
Comment3:='����� ������ �������� � ������ ������. ���������� ��� ���� ��������� �� ����� a.';
Uroven:=1;
end; 
if (partNum=8) then
begin
Names := '[White "Gorvits"]' + Chr(13) + Chr(10) + '[Black "Kling."]' + Chr(13) + Chr(10) + '[EventDate "1851"]';
Fen :='8/8/8/1p6/1Pp5/2K3Pk/7P/8';
First :='w';
Moves := 'c3-d4 h3-g4 h2-h4 g4-h5 d4-e3 h5-g4 e3-e4 g4-h5 e4-f4 h5-h6 g3-g4 h6-g6 h4-h5 g6-h6 f4-f3 h6-g5 f3-e4 g5-h6 e4-f4 h6-h7 g4-g5 h7-g7 g5-g6 g7-f6 f4-e4 f6-g7 e4-f3 g7-f6 f3-f4 f6-g7 f4-g5 c4-c3 h5-h6 g7-g8 g5-f6 c3-c2 h6-h7 g8-h8 g6-g7 h8:h7 f6-f7';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.��� ��������� ���������.';
Comment3:='�� ����� �������� �������� � ����� ���������� ����������.�������, ��� ����� ���������, ��������� ����� ������ �������� � �������� ��������� ����� �4.';
Comment4:='�� ����� ���� � ����� ������� ���� ������� �������� �������, ��� �� ������ ����� ������ ������ � ����� ��� ���������� ����������.';
Uroven:=1;
end; 
if (partNum=9) then
begin
Names := '[White "Chigorin"]' + Chr(13) + Chr(10) + '[Black "Tarrash."]' + Chr(13) + Chr(10) + '[EventDate "1905"]';
Fen :='8/6pp/5p2/3k1PP1/5K1P/8/8/8';
First :='w';
Moves := 'f4-g4 d5-e4 g5-g6 h7-h6 g4-h5';
Comment:= '��� �����.�������� �����.' ;
Comment2:='�������� ��������.���� �� ���.';
Comment3:='����� ��������� ������ ����� f5, �� �� ������� ����������� ���������� ������.';
Uroven:=1;
end; 
if (partNum=10) then
begin
Names := '[White "Marshal"]' + Chr(13) + Chr(10) + '[Black "Retu."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='8/1k3p1p/3P2p1/8/3K2P1/8/8/8';
First :='w';
Moves := 'g4-g5 b7-c6 d4-e5 c6-d7 e5-d5 d7-d8 d5-c6 d8-c8 d6-d7 c8-d8 c6-d6';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.�������.';
Comment3:='����� ������ ������� ������ � ������ ���������� ������ �����.';
Uroven:=1;
end; 
if (partNum=11) then
begin
Names := '[White "Usupov"]' + Chr(13) + Chr(10) + '[Black "Ionov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='6k1/1pp3p1/1p1p2K1/1P1P3P/2P5/8/P7/8';
First :='w';
Moves := 'a2-a3 g8-f8 a3-a4 f8-g8 c4-c5 d6:c5 a4-a5 b6:a5 b5-b6 c7:b6 d5-d6 g8-f8 d6-d7 f8-e7 g6:g7 a5-a4 h5-h6 a4-a3 h6-h7';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.������� ��������.';
Comment3:='����� ���������� ������ �������� �����.';
Uroven:=1;
end;
if (partNum=12) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/7p/8/6K1/6P1/8/7P/8';
First :='w';
Moves := 'g5-h6 g8-h8 g4-g5 h8-g8 h2-h3 g8-h8 h3-h4 h8-g8 h4-h5 g8-h8 g5-g6 h7:g6 h5:g6 h8-g8 g6-g7';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='�������� ��������.����� g � h ������ ����� h.';
Comment3:='����� ���������� ������ �������� �����.';
Uroven:=1;
end; 
if (partNum=13) then
begin
Names := '[White "Shveda"]' + Chr(13) + Chr(10) + '[Black "Shika."]' + Chr(13) + Chr(10) + '[EventDate "1929"]';
Fen :='8/1p5p/p4k2/8/4Pp2/7P/PP2K3/8';
First :='b';
Moves := 'f6-e5 e2-f3 a6-a5 h3-h4 a5-a4 h4-h5 h7-h6';
Comment:= '��� ������.������� ����������� �������.' ;
Comment2:='�������� ��������.�������� ����� � ����� ������.';
Comment3:='������ ���������� ������ �������� �����.';
Uroven:=1;
end; 
if (partNum=14) then
begin
Names := '[White "Salvio"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1634"]';
Fen :='4N3/8/6p1/8/8/7p/5K2/7k';
First :='w';
Moves := 'e8-f6 h1-h2 f6-g4 h2-h1 f2-f1 g6-g5 f1-f2 h3-h2 g4-e3 g5-g4 e3-f1 g4-g3 f1:g3';
Comment:= '��� �����.������� ����������� �������.' ;
Comment2:='���� ������ �����.������ � ����.';
Comment3:='����� ���������� ����� ��� ������ � ����.';
Uroven:=1;
end; 
if (partNum=15) then
begin
Names := '[White "Grigorev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='8/8/K6p/8/8/4k3/N7/8';
First :='w';
Moves := 'a2-b4 h6-h5 b4-c6 e3-e4 c6-a5 h5-h4 a5-c4 e4-f3 c4-e5 f3-g3 e5-c4 h4-h3 c4-e3';
Comment:= '��� �����.�������� �����.' ;
Comment2:='���� ������ �����.���� ������ �������� �����.';
Comment3:='������� ����� - ��������� ����� � ������� ����������.';
Uroven:=1;
end;
if (partNum=16) then
begin
Names := '[White "Nimzowitsch"]' + Chr(13) + Chr(10) + '[Black "Rubintshtein."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='8/5p2/4p3/4P1k1/K5P1/8/5N2/8';
First :='w';
Moves := 'a4-b4 g5-f4 f2-d3 f4:g4 d3-c5 g4-f5 c5-d7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='���� ������ �����.������ ����� �����.';
Comment3:='����� ������ �������������� ������� f7-f6.';
Uroven:=1;
end;
if (partNum=17) then
begin
Names := '[White "Eingorn"]' + Chr(13) + Chr(10) + '[Black "Belyavskyi."]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='8/8/2N1n1K1/1k6/7P/8/8/8';
First :='w';
Moves := 'c6-d4 e6:d4 g6-f6 d4-c2 h4-h5 c2-e3 f6-g5 e3-c4 h5-h6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='������� ���������.����������� ������ ����.';
Comment3:='����������� ������ ���� - �����, ����� ��������� ������������ � �������� ����������.';
Uroven:=1;
end; 
if (partNum=18) then
begin
Names := '[White "Fain"]' + Chr(13) + Chr(10) + '[Black "Naidorf."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='8/8/6pp/8/4Np1k/5P1P/5K2/4n3';
First :='b';
Moves := 'h4:h3 f2:e1 h3-g2 e1-e2 h6-h5 e4-g5 h5-h4 g5-e6 g6-g5 e6:g5 h4-h3 g5:h3 g2:h3 e2-d3 h3-g2';
Comment:= '��� ������. ������� ����������� �������.' ;
Comment2:='������� ���������.����������� ������ ����.';
Comment3:='����������� ������ ���� - �����, ����� ��������� ������������ � �������� ����������.';
Uroven:=1;
end; 
if (partNum=19) then
begin
Names := '[White "Gershon"]' + Chr(13) + Chr(10) + '[Black "Torhalsson."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='8/1Pk5/8/8/4BKpp/7P/4b1P1/8';
First :='b';
Moves := 'g4:h3 g2:h3 e2-a6 f4-g5 a6:b7 e4:b7 c7-d7 ';
Comment:= '��� ������. �������� �����.' ;
Comment2:='���� ������ �����.���� � �������� �����.';
Comment3:='���� ���� �� ������� ����� ����������� �������� �����, �� ��������� ������� ���������� ������ ������� � ���� �����.';
Uroven:=1;
end; 
if (partNum=20) then
begin
Names := '[White "Dvoreskyi"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "2000"]';
Fen :='3Bk3/2K2p2/8/5pP1/2p5/8/8/8';
First :='w';
Moves := 'g5-g6 f7:g6 d8-g5 ';
Comment:= '��� �����. �������� �����.' ;
Comment2:='���� ������ �����.������� ����� ���������.';
Comment3:='���� ��������� ��� ������  �� ����� ���������, � ��� ��������� ��� ����� ������� ������.';
Uroven:=1;
end; 
if (partNum=21) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/8/8/1p5P/1P1B2P1/1b4K1/8/8';
First :='b';
Moves := 'b3-d1 g3-h4 g8-f7 g4-g5 f7-e6 g5-g6 e6-f5';
Comment:= '��� ������. �������� �����.' ;
Comment2:='������������ �����.���� � ��� ��������� ����� ������ �����.';
Comment3:='��� ������ ����� ����������� �� ����� ����� ������ �����, �������� ����� ���������� ���������.';
Uroven:=1;
end; 
if (partNum=22) then
begin
Names := '[White "Kotov"]' + Chr(13) + Chr(10) + '[Black "Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='8/8/4b1p1/2Bp3p/5P1P/1pK1Pk2/8/8';
First :='b';
Moves := 'g6-g5 f4:g5 d5-d4 e3:d4 f3-g3 c5-a3 g3:h4 c3-d3 h4:g5 d3-e4 h5-h4 e4-f3 e6-d5';
Comment:= '��� ������. ������� ����������� �������.' ;
Comment2:='������������ �����.������ ��������� ��������� �����.';
Comment3:='������ ��������� ��������� ����� ����������, ���� �������� ���� �����. ������� ���������� ������� ������ ������� � ������������ ��������� �����.';
Uroven:=1;
end; 
if (partNum=23) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='2B5/K7/1P6/k7/4b3/8/8/8';
First :='w';
Moves := 'c8-b7 e4-f5 b7-f3 f5-c8 f3-e2';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �����. ���� � ����� ������ �����.';
Comment3:='���� ��� "����������" ������������ ������ ������� ������ �� �������, ���� ���� �� ����������, �� ������� ���� ����������� �����, ����������� ������� ��������.';
Uroven:=1;
end;
if (partNum=24) then
begin
Names := '[White "Charushin"]' + Chr(13) + Chr(10) + '[Black "Rozengoltz."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='2B5/8/Pk6/6K1/6p1/6P1/4b3/8';
First :='w';
Moves := 'g5-f4 b6-a7 c8:g4 e2:a6 g4-f3 a7-b6 g3-g4 b6-c5 g4-g5 c5-d6 g5-g6 d6-e6 f4-g5 a6-c4 g6-g7 ';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �����. ������� � �������� � ����� ������.';
Comment3:='���� ��� "����������" ������������ ������ ������� ������ �� �������, ���� ���� �� ����������, �� ������� ���� ����������� �����, ����������� ������� ��������.';
Uroven:=1;
end;
if (partNum=25) then
begin
Names := '[White "Heieker"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1930"]';
Fen :='1B6/8/7P/4p3/3b3k/8/8/2K5';
First :='w';
Moves := 'b8-a7 d4-a1 c1-b1 a1-c3 b1-c2 c3-a1 a7-d4 a1:d4 c2-d3 d4-b2 d3-e4';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �����. ����������.';
Comment3:='���������� �������� ����������, � ������� �������� ���������� ������� ������������ ���������� ����� � �����. ������ ���������� �������������� � ������� �����.';
Uroven:=1;
end; 
if (partNum=26) then
begin
Names := '[White "Averbah"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='8/5b2/p2k4/1p1p1p1p/1P1K1P1P/2P1PB2/8/8';
First :='w';
Moves := 'f3-e2 f7-e8 e2-d3 e8-g6 d3-c2 g6-h7 c2-b3 h7-g8 b3-d1 g8-f7 d1-f3';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �����. ��������.';
Comment3:='������� ��������� ������� �������� ������� ��� ������ ����� �������� ������� ��-�� ���������.';
Uroven:=1;
end; 
if (partNum=27) then
begin
Names := '[White "Ivanov"]' + Chr(13) + Chr(10) + '[Black "Kristiansen."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='8/6p1/8/p2kbp1p/Pp6/1P2P2P/4K1P1/2B5';
First :='w';
Moves := 'e2-d3 e5-c3 e3-e4 f5:e4 d3-e2';
Comment:= '��� �����. �������� �����.' ;
Comment2:='����������� �����.������.';
Comment3:='���� �������������� ������ ���� ������ �����, � ������� �������. ����� �� ���� � ��������������� ������ ��������� ������.';
Uroven:=1;
end; 
if (partNum=28) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Averbah."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='8/2bP4/2N5/3K4/8/8/1k6/8';
First :='b';
Moves := 'b2-c3 d5-c5 c3-d3 c5-b5 d3-e4 b5-a6 e4-d5 a6-b7 d5-d6';
Comment:= '��� ������. �������� �����.' ;
Comment2:='���� ������ ����.���� � ����� ������ �����.';
Comment3:='���� ���� �� ����������� � ��������, �� ����� ������ ������� �� ��������� ������ ��������� �������: �������� �� �� ���������������� ���������� ��� ����������.';
Uroven:=1;
end; 
if (partNum=29) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/3k4/8/3P3n/2KB4/8/8/8';
First :='w';
Moves := 'd4-e5 d7-e7 c4-c5 e7-d7 d5-d6 d7-e6 c5-c6 e6:e5 d6-d7';
Comment:= '��� �����. ������� ����������� �������' ;
Comment2:='���� ������ ����. ��������� ����.';
Comment3:='���� ���� ���������� �� ���� �����, ���� �������� ������ ��� �����.';
Uroven:=1;
end; 
if (partNum=30) then
begin
Names := '[White "Pirro"]' + Chr(13) + Chr(10) + '[Black "Usupov."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='6k1/6pp/8/5p2/p1b5/2Np1P2/PP4PP/6K1';
First :='b';
Moves := 'd3-d2 g1-f2 f5-f4';
Comment:= '��� ������.������� ����������� �������' ;
Comment2:='���� ������ ����.������.';
Comment3:='���� �������������� ������ ���� ������ �����, �  ������� �������. ����� �� ���� � ��������������� ������ ��������� ������.';
Uroven:=1;
end; 
if (partNum=31) then
begin
Names := '[White "Nepomnyachii"]' + Chr(13) + Chr(10) + '[Black "Polovodin."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='8/6p1/2k2p2/3p1P2/1p1P2P1/P1nK4/6B1/8';
First :='b';
Moves := 'c3-e2 d3:e2 b4:a3';
Comment:= '��� ������.������� ����������� �������' ;
Comment2:='���� ������ ����.������� �����.';
Comment3:='���� ������� ������ ����� �������� ������ �� ���������� ���������.';
Uroven:=1;
end;
if (partNum=32) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='7R/8/8/8/8/pk1K4/8/8';
First :='b';
Moves := 'b3-b2 h8-b8 b2-c1 b8-a8 c1-b2 d3-d2 a3-a2 a8-b8 b2-a1';
Comment:= '��� ������.�������� �����' ;
Comment2:='����� ������ �����.���� �� ���.';
Comment3:='������ ������ ������ ������.';
Uroven:=1;
end; 
if (partNum=33) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/8/8/8/2K5/8/pk5R/8';
First :='b';
Moves := 'b2-a3';
Comment:= '��� ������.�������� �����' ;
Comment2:='����� ������ �����.������������ ������.';
Comment3:='�� ��������� ������ � �����, ������ ���������� ������.';
Uroven:=1;
end; 
if (partNum=34) then
begin
Names := '[White "Topalov"]' + Chr(13) + Chr(10) + '[Black "Belyavskii."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='8/8/P7/1PK5/8/8/8/r3k3';
First :='w';
Moves := 'c5-b6 e1-d2 b6-a7';
Comment:= '��� �����. ������� ����������� �������' ;
Comment2:='����� ������ ��������� �����. ����� ������.';
Comment3:='� ����� ���� ����� ����� b. ������, ��� �� ����������� ���� �� ������������ �������������� �����. ';
Uroven:=1;
end; 
if (partNum=35) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5k1/8/5PK1/8/8/8/8/1R6';
First :='w';
Moves := 'b1-b7 a8-c8 b7-g7 g8-f8 g7-h7 f8-g8 f6-f7';
Comment:= '��� �����. ������� ����������� �������' ;
Comment2:='�������� ���������.����� � ����� ������ �����';
Comment3:='������ ����� ���������� ������ ��������� �� 8-� �����������.����� ����� ��������� �������� ����� �� h7 ';
Uroven:=1;
end;
if (partNum=36) then
begin
Names := '[White "Velichka"]' + Chr(13) + Chr(10) + '[Black "Polak."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='8/8/8/R4p2/1r2k3/4p1P1/4K3/8';
First :='b';
Moves := 'f5-f4 g3:f4 b4-b2 e2-f1 e4-f3 ';
Comment:= '��� ������. ������� ����������� �������' ;
Comment2:='�������� ���������.����� � ����� ������ �����. ������';
Comment3:='����������� ����� ������ ����� ��������, ��� ��� ������. ';
Uroven:=1;
end; 
if (partNum=37) then
begin
Names := '[White "Kochnev"]' + Chr(13) + Chr(10) + '[Black "Smyslov."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='8/3r4/2k5/2p5/8/8/4K3/2R5';
First :='b';
Moves := 'c6-b5 c1-b1 b5-a4 b1-c1 a4-b4 c1-b1 b4-a3 b1-c1 d7-d5 e2-e3 a3-b2 c1-c4 b2-b3 ';
Comment:= '��� ������. ������� ����������� �������' ;
Comment2:='�������� ���������.����� � ����� ������ �����. ';
Comment3:='������� ������ ����������� �������������� ������ (��������� ����� ��� ���� ����� ���� ������ �� ���������), � ����� �������� ����� ������.  . ';
Uroven:=1;
end; 
if (partNum=38) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='K7/P4k2/8/8/8/8/4R3/1r6';
First :='w';
Moves := 'e2-h2 f7-e7 h2-h8 e7-d6 h8-b8 b1-a1 a8-b7 a1-b1 b7-c8 b1-c1 c8-d8 c1-h1 b8-b6 d6-c5 b6-c6 c5-b5 c6-c8 h1-h8 d8-c7 h8-h7 c7-b8';
Comment:= '��� �����. ������� ����������� �������' ;
Comment2:='�������� ���������.����� � �������� ����� ������ �����. ';
Comment3:='����� �����������, ��������� ������ �� ��������� �� �7.';
Uroven:=1;
end; 
if (partNum=39) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='R7/P5k1/8/2K2P2/8/8/8/r7';
First :='w';
Moves := 'f5-f6 g7-f7 a8-h8';
Comment:= '��� �����. ������� ����������� �������' ;
Comment2:='�������� ���������.����� � �������� ����� ������ �����. ';
Comment3:='����� �����������, ��������� ������ �� f7.';
Uroven:=1;
end; 
if (partNum=40) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Vanchura."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='R7/6k1/P7/8/8/5K2/8/r7';
First :='b';
Moves := 'a1-f1 f3-e4 f1-f6';
Comment:= '��� ������.�������� �����.' ;
Comment2:='�������� ���������.����� � �������� ����� ������ �����. ������� ������� ';
Comment3:='����� ������� �����, ��� �� �� ��������� �������������� ����� � ���� �8.';
Uroven:=1;
end; 
if (partNum=41) then
begin
Names := '[White "Sabo"]' + Chr(13) + Chr(10) + '[Black "Keres."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='8/8/7R/7P/6P1/5k2/6r1/1K6';
First :='w';
Moves := 'h6-g6 f3-e4 h5-h6 g2-h2 g4-g5 e4-d3 g6-g7 d3-c3 h6-h7 c3-b3 g7-b7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='�������� ���������.����� � ��� ����� ������ �����. ';
Comment3:='����� ��������� � ����� ���� ��� ������ �����.';
Uroven:=1;
end; 
if (partNum=42) then
begin
Names := '[White "Berishtein"]' + Chr(13) + Chr(10) + '[Black "Smislov."]' + Chr(13) + Chr(10) + '[EventDate "1946"]';
Fen :='1R6/8/8/5k2/5p2/7r/1p2K3/8';
First :='w';
Moves := 'b8:b2 h3-h2 e2-f3';
Comment:= '��� �����. �������� �����.' ;
Comment2:='�������� ���������.����� � ��� ����� ������ �����. ';
Comment3:='����� ���������� ����� � ������� ����.'; 
Uroven:=1;
end; 
if (partNum=43) then
begin
Names := '[White "Lasker"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1890"]';
Fen :='2K5/2P4R/k7/8/8/8/2r4p/8';
First :='w'; 
Moves := 'c8-b8 c2-b2 b8-a8 b2-c2 h7-h6 a6-a5 a8-b7 c2-b2 b7-a7 b2-c2 h6-h5 a5-a4 a7-b7 c2-b2 b7-a6 b2-c2 h5-h4 a4-a3 a6-b6 c2-b2 b6-a5 b2-c2 h4-h3 a3-a2 h3:h2';
Comment:= '��� �����. �������� �����.' ;
Comment2:='�������� ���������.������ ����������� ��������� �����. ���� ������� ';
Comment3:='����� �������� �������� ������������ ���������� ��������������� ������ �� �� 2-� ����������� .'; 
Uroven:=1; 
end; 
if (partNum=44) then
begin
Names := '[White "Maisl"]' + Chr(13) + Chr(10) + '[Black "Vebb."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/pr3k2/8/R4K2/P4P2/8/8/8';
First :='w'; 
Moves := 'a5-a6 b7-c7 f5-g5 f7-g7 f4-f5 c7-d7 a4-a5 d7-c7 a6-d6 g7-f8 d6-d8 f8-e7 d8-h8 e7-d6 g5-g6 c7-c1 h8-a8 d6-e5 a8-e8 e5-f4 f5-f6 c1-g1 g6-f7 g1-a1 f7-g7 f4-f5 f6-f7 a1-g1 g7-f8 f5-g6 e8-e6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='�������� ���������.������������ �����. ';
Comment3:='��������� ������� ������ ���������� � �������� ���������.���� ����� ���������� ���� �������� ����������� ����� ��� ��������� ������ �� �����, �� �������� ������� ����� .'; 
Uroven:=1; 
end; 
if (partNum=45) then
begin
Names := '[White "Savon"]' + Chr(13) + Chr(10) + '[Black "Jelyadinov."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='4k3/R4p2/3p2p1/1K1Pp1Pp/p3P2P/7r/5P2/8';
First :='b'; 
Moves := 'h3-c3 a7:a4 c3-c5 b5-b6 c5-c1 a4-a8 e8-d7 a8-a7 d7-e8 a7-c7 c1-a1 b6-c6 a1-a6 c6-b7 a6-a1';
Comment:= '��� ������. �������� �����.' ;
Comment2:='�������� ���������.��������� ������. ';
Comment3:='������ ������� ������������ �������� ��������� �������� ��������� ������ �� ������������� ������ �������� �����.'; 
Uroven:=1; 
end;
if (partNum=46) then
begin
Names := '[White "Larsen"]' + Chr(13) + Chr(10) + '[Black "Tal."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='8/5k2/5p2/r7/4N1P1/5K2/8/8';
First :='w'; 
Moves := 'e4-g3 f7-e6 f3-f4 a5-a4 f4-f3 e6-e5 g3-h5 a4-a8 f3-e3';
Comment:= '��� �����. �������� �����.' ;
Comment2:='����� ������ ����.����� � ������ ������ ���� � ������.';
Comment3:='���� �� �4 ������������ ��������� ������ ����� ����������� �����, �� �������� ��� ������ ����� ��������� ������ �� �5.'; 
Uroven:=1; 
end;

if (partNum=48) then
begin
Names := '[White "Matason"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1913"]';
Fen :='8/7k/2P5/2p4p/P3N2K/8/8/5r2';
First :='w'; 
Moves := 'e4-g5 h7-g6 g5-e6 f1-a1 c6-c7 a1:a4 e6-d4 a4-a8 d4-c6 a8-c8 c6-e7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����� ������ ����.���� ������� �����.';
Comment3:='����� ����� ������ ������� ���������� � ������ ����������� ������, �������������� �����. � ����� ��������� ����������� ����������� �������� ����: �����, ��������� � �.�.';
Uroven:=1; 
end; 
if (partNum=49) then
begin
Names := '[White "Gusev"]' + Chr(13) + Chr(10) + '[Black "Juhovzkii."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='8/8/8/8/4B3/1k6/p6r/K7';
First :='w'; 
Moves := 'e4-d5 b3-a3 d5-g2 h2-h5 g2-d5';
Comment:= '��� �����.�������� �����.' ;
Comment2:='����� ������ �����.���������� ����.';
Comment3:='����� ��������� ��������� ����� "����������".'; 
Uroven:=1; 
end; 
if (partNum=50) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/1R5p/4K1p1/8/8/2b3P1/7P/8';
First :='b'; 
Moves := 'h7-h5';
Comment:= '��� ������.�������� �����.';
Comment2:='����� ������ �����.��� ����� ������ ���� �� ����� ������.';
Comment3:='������ ����������� ������.'; 
Uroven:=1; 
end; 
if (partNum=51) then
begin
Names := '[White "Oiken"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='8/2K4p/5Q1p/ppkq2p1/6P1/8/1PP5/8';
First :='w'; 
Moves := 'c2-c4 d5-d3 f6-c6 c5-d4 c6-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������.������������ ����������� ������.';
Comment3:='����� - ����� ������� ������, ������� � �������� ���������� ���� ����� ��� � ������ ����������� ���� �� ���. �� ������ ����������� ������� ������� ������� ����� � ������ ������.';
Uroven:=1; 
end; 
if (partNum=52) then
begin
Names := '[White "Borisenko"]' + Chr(13) + Chr(10) + '[Black "Simagin."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='5k2/5p2/6p1/2P3P1/3Q2K1/6P1/8/5q2';
First :='b'; 
Moves := 'f7-f5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������.������������ ����������� ������.';
Comment3:='����� - ����� ������� ������, ������� � �������� ���������� ���� ����� ��� � ������ ����������� ���� �� ���. �� ������ ����������� ������� ������� �������� ����� � ������ ������.'; 
Uroven:=1; 
end; 
if (partNum=53) then
begin
Names := '[White "Chigorin"]' + Chr(13) + Chr(10) + '[Black "Shlehter."]' + Chr(13) + Chr(10) + '[EventDate "1905"]';
Fen :='1k6/2q2p2/1Q3p2/KP3P1p/P6P/8/8/8';
First :='b'; 
Moves := 'b8-a8 a5-a6 c7-c8 a6-a5 c8-c7';
Comment:= '��� ������. �������� �����.';
Comment2:='�������� ���������.������� ��� ������.';
Comment3:='�������� ����������� ������, ����������� ����� ������ ������� �������� �������� - ��� � ������ ���.'; 
Uroven:=1; 
end; 
if (partNum=54) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Poitsiani."]' + Chr(13) + Chr(10) + '[EventDate "1782"]';
Fen :='5k2/6r1/4Q3/8/8/8/8/7K';
First :='b'; 
Moves := 'g7-h7 h1-g2 h7-g7 g2-f3 g7-f7 f3-g4 f7-g7 g4-f5 g7-f7 f5-g6 f7-g7 g6-h6 g7-h7';
Comment:= '��� ������. �������� �����.';
Comment2:='�������� ������ �����.�������� �����.';
Comment3:='������� ������ �� ������� �������� �� ����� ����� ���� ��� ������ �����.'; 
Uroven:=1; 
end;
if (partNum=55) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/1k6/8/1B1N4/4K3/8/8/8';
First :='w'; 
Moves := 'e4-e5 b7-c8 e5-e6 c8-d8 e6-d6 d8-c8 d6-e7 c8-b7 e7-d7 b7-b8 b5-a6 b8-a7 a6-c8 a7-b8 d7-d8 b8-a7 d8-c7 a7-a8 d5-e7 a8-a7 e7-c6 a7-a8 c8-b7';
Comment:= '��� ������. �������� �����.';
Comment2:='��������� ������ � �����.';
Comment3:='�������� ��������:���� � ���� ������� ������, ���������� ������ � ����.'; 
Uroven:=1; 
end;
if (partNum=56) then
begin
Names := '[White "Belyavskyi"]' + Chr(13) + Chr(10) + '[Black "Dolmatov."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='r7/5pk1/5p2/2p5/pp6/1P1B1KPN/P6P/8';
First :='b'; 
Moves := 'c5-c4 d3:c4 a8-c8 c4-d3 a4-a3 f3-e3 c8-c3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� ������ ���� ������ �����.';
Comment3:='����� �������� ������, ����� ��� �������� �� �����, ������� �� ����� �������� ������ � �������� �������� ��������, � ����� ���� ��� ������������ ���������� ���������.'; 
Uroven:=1; 
end;
if (partNum=57) then
begin
Names := '[White "Zinar"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/5K1p/1kP5/2p5/2P5/8/P7/8';
First :='w'; 
Moves := 'f7-g7 h7-h5 g7-f6 h5-h4 f6-e5 b6:c6 e5-f4 c6-b6 f4-g4 b6-a5 g4:h4 a5-b4 h4-g3 b4:c4 g3-f2 c4-c3 f2-e2 c5-c4 a2-a4';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ��������.���� ����.';
Comment3:='������ �������� ��������� ����� ����������, �������� ��� �� ��������.����������� ����� ������������ ��������� ��������� �������.'; 
Uroven:=1; 
end;
if (partNum=58) then
begin
Names := '[White "Svidler"]' + Chr(13) + Chr(10) + '[Black "Anand."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='8/P1n2k2/7P/5P2/3pK3/8/8/8';
First :='w'; 
Moves := 'e4:d4 c7-b5 d4-c5 b5:a7 c5-b6 a7-c8 b6-c7 c8-a7 c7-d7 a7-b5 h6-h7 f7-g7 f5-f6 g7:h7 f6-f7 h7-g7 d7-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ �� ����� �������.';
Comment3:='��������� ����, ����� �� ����� ���� ��������� ����������� ������ � ������.'; 
Uroven:=1; 
end;
if (partNum=59) then
begin
Names := '[White "Munos"]' + Chr(13) + Chr(10) + '[Black "Salazar."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/8/7k/p4R1P/P2prp2/1Pp2K2/2P5/8';
First :='b'; 
Moves := 'd4-d3 c2:d3 e4-c4 b3:c4 c3-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������.';
Comment3:='������ ����������� ����� �, ��� �� ���������� ����� ����� ������ � �����.'; 
Uroven:=1; 
end;
if (partNum=60) then
begin
Names := '[White "Smyslov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "2000"]';
Fen :='r2k4/8/8/1P4p1/8/p5P1/6P1/1R3K2';
First :='w'; 
Moves := 'b5-b6 a3-a2 b1-a1 d8-c8 g3-g4 c8-b7 g2-g3 b7:b6 f1-g2 b6-b5 g2-h3 b5-b4 a1:a2';
Comment:= '��� �����. �������� �����.';
Comment2:='���� �� ���.';
Comment3:='����� ������ ������ �������.'; 
Uroven:=1; 
end;
if (partNum=61) then
begin
Names := '[White "Smyslov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "2000"]';
Fen :='r2k4/8/8/1P4p1/8/p5P1/6P1/1R3K2';
First :='w'; 
Moves := 'b5-b6 a3-a2 b1-a1 d8-c8 g3-g4 c8-b7 g2-g3 b7:b6 f1-g2 b6-b5 g2-h3 b5-b4 a1:a2';
Comment:= '��� �����. �������� �����.';
Comment2:='���� �� ���.';
Comment3:='����� ������ ������ �������.'; 
Uroven:=1; 
end;
if (partNum=62) then
begin
Names := '[White "Pshepyrka"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1926"]';
Fen :='7r/2k5/3b4/3K2p1/4R3/7P/8/8';
First :='w'; 
Moves := 'h3-h4 g5:h4 e4-c4 c7-d7 c4:h4';
Comment:= '��� �����. �������� �����.';
Comment2:='���� �� ���.';
Comment3:='����� �������� ����� � ��������� ��������� ����.'; 
Uroven:=1; 
end;
if (partNum=63) then
begin
Names := '[White "Moldoyarov"]' + Chr(13) + Chr(10) + '[Black "Samochanov."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='8/8/R7/pp5p/2bK3k/2P5/6P1/8';
First :='w'; 
Moves := 'a6-g6 a5-a4 d4-e3 a4-a3 e3-f4 a3-a2 g6-g3 c4-e6 g3-h3 e6:h3 g2-g3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� �� ���.';
Comment3:='����� ������ ������� ������ �� ������� �������� �� ������ ����� �.'; 
Uroven:=1; 
end;
if (partNum=64) then
begin
Names := '[White "Hashek"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1929"]';
Fen :='4kr2/R4p2/6p1/8/1K6/3B4/8/8';
First :='w'; 
Moves := 'd3-f5 g6:f5 b4-c5 f7-f6 c5-d6 f8-g8 d6-e6 e8-f8 e6:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� �� ���.';
Comment3:='����� �������� ����� ��� �� ������������� ��� f7-f5.'; 
Uroven:=1; 
end;
if (partNum=65) then
begin
Names := '[White "Noenshvaider"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='8/5ppk/8/3p2KP/3P2P1/8/8/8';
First :='w'; 
Moves := 'g5-f4 h7-h6 f4-f5 f7-f6 f5-e6 h6-g5 e6-f7 g5-h6 f7-e7 h6-g5 e7-f8 g5-h6 f8-f7 h6-h7 f7-e6 h7-h6 e6:d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������.�����������.';
Comment3:='������������� ���� ����� ����� d5. �� ��� ���� ���������  ���������, �������� � ����� ����� ����������.'; 
Uroven:=1; 
end;
if (partNum=66) then
begin
Names := '[White "Gorgiev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1928"]';
Fen :='8/2p4K/8/7k/8/8/6PP/8';
First :='w'; 
Moves := 'g2-g4 h5-g5 h7-g7 c7-c5 h2-h4 g5:g4 g7-g6 g4:h4 g6-f5';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ��������.������ ������ ��������� �����.';
Comment3:='����� ������ ��������� � �������� ������ �����, �� ������� �� ��� ������ �������������� ������.'; 
Uroven:=1; 
end;
if (partNum=67) then
begin
Names := '[White "Rauh"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/8/8/8/3k3p/1P3PpP/4K3/8';
First :='w'; 
Moves := 'e2-f1 d4-d3 f1-g2 d3-d4 g2-g1 d4-d3 g1-f1 d3-d4 f1-e2 d4-d5 e2-e3 d5-d6 f3-f4 d6-d5 b3-b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������.������ ������ ��������� �����.';
Comment3:='���� ������ ������� �����������, �������� ������� ���� ����������. ��� �������� ����� ���������� ����� �� ���� ��� ������.'; 
Uroven:=1; 
end;
if (partNum=68) then
begin
Names := '[White "Hachaturov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='8/8/8/3p4/1k3PpP/8/3K4/8';
First :='w'; 
Moves := 'f4-f5 b4-c5 h4-h5 g4-g3 d2-e1 d5-d4 f5-f6 c5-d6 h5-h6 g3-g2 e1-f2 d4-d3 f6-f7 d6-e7 h6-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������.�������� �����.';
Comment3:='����� �������� ������ ������ ���� ������ ���������� ����� � ����� � �����.'; 
Uroven:=1; 
end;
if (partNum=69) then
begin
Names := '[White "Betinsh"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1905"]';
Fen :='8/6p1/8/5p1P/5P2/6P1/8/5K1k';
First :='w'; 
Moves := 'f1-e1 h1-g2 g3-g4 f5:g4 f4-f5 g4-g3 f5-f6 g7:f6 h5-h6 f6-f5 h6-h7 f5-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������.������.';
Comment3:='����� ���������� ������ �������. �� ������ ��� ��� �����������, ������ ������ �� ���� ��� �� �� �������� ��� ���.'; 
Uroven:=1; 
end;
if (partNum=70) then
begin
Names := '[White "Betinsh"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1905"]';
Fen :='8/6p1/p5Pp/2p4P/P1p3k1/2P5/P3K3/8';
First :='w'; 
Moves := 'a4-a5 g4:h5 e2-d2 h5:g6 d2-c2 h6-h5 c2-b2 h5-h4 b2-a3 h4-h3 a3-a4 h3-h2 a2-a3';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ��������.���� �� ���.';
Comment3:='����� ��������� ����� ������ ������ �������.'; 
Uroven:=1; 
end;
if (partNum=71) then
begin
Names := '[White "Ermolinskii"]' + Chr(13) + Chr(10) + '[Black "Ivanov."]' + Chr(13) + Chr(10) + '[EventDate "1996"]';
Fen :='5k2/7p/p1p3p1/P1P1Pp2/3p1PP1/7P/5K2/8';
First :='w'; 
Moves := 'g4-g5 f8-f7 f2-e2 f7-e7 e2-d3 e7-e6 d3:d4 e6-d7 d4-c3 d7-e6 c3-c4 e6-d7 e5-e6 d7-e7 c4-d3 e7:e6 d3-d4 e6-f7 d4-e5 f7-e7 h3-h4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������.�������� �����.';
Comment3:='�������� - �������� ������ � �������� ����������.����������� ����� �����������, ����� ���������� �������� �����.'; 
Uroven:=1; 
end;
if (partNum=72) then
begin
Names := '[White "Troiskii"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1906"]';
Fen :='8/8/8/8/8/4K2p/4N2k/8';
First :='w'; 
Moves := 'e3-f3 h2-h1 f3-f2 h1-h2 e2-c3 h2-h1 c3-e4 h1-h2 e4-d2 h2-h1 d2-f1 h3-h2 f1-g3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ �����.������ � ����.';
Comment3:='���� ���� ��� ������ � ����.'; 
Uroven:=1; 
end;
if (partNum=73) then
begin
Names := '[White "Grigorev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='7N/2K5/8/8/7p/2k5/8/8';
First :='w'; 
Moves := 'h8-f7 h4-h3 f7-g5 h3-h2 g5-e4 c3-c2 e4-g3 c2-d1 c7-d6 d1-e1 d6-e5 e1-f2 e5-f4';
Comment:= '��� �����. �������� �����.';
Comment2:='���� ������ �����.���� ������ �������� �����.';
Comment3:='���� �� �������� �� h2 - �� ����� ������������� ��������� ����� �� ���� h1. ������, ���� ��������� ������.'; 
Uroven:=1; 
end;
if (partNum=74) then
begin
Names := '[White "Gorovits"]' + Chr(13) + Chr(10) + '[Black "Kejden."]' + Chr(13) + Chr(10) + '[EventDate "1928"]';
Fen :='5K2/8/p7/1k6/8/8/1P1N4/8';
First :='w'; 
Moves := 'd2-b3 b5-b4 b3-a1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ �����.������ ����� �����.';
Comment3:='����� ������ ������, �� ����� ������� �� ������.'; 
Uroven:=1; 
end;
if (partNum=75) then
begin
Names := '[White "Rink"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1920"]';
Fen :='1n4N1/8/4p1P1/kp2p3/p3P3/8/K7/8';
First :='w'; 
Moves := 'g8-e7 b8-d7 e7-c6 a5-b6 c6:e5 d7-f6 e5-d7 f6:d7 e4-e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.����������� ������ ����.';
Comment3:='����������� ������ ���� - �����, ����� ��������� ������������ � �������� ���������� .'; 
Uroven:=1; 
end;
if (partNum=76) then
begin
Names := '[White "Frink"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1923"]';
Fen :='8/8/8/8/8/2K4B/5k1P/8';
First :='w'; 
Moves := 'h3-d7 f2-e3 h2-h4 e3-e4 h4-h5 e4-e5 h5-h6 e5-f6 d7-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ �����. ���� � �������� �����.';
Comment3:='����� ������ ������.'; 
Uroven:=1; 
end;
if (partNum=77) then
begin
Names := '[White "Simagin"]' + Chr(13) + Chr(10) + '[Black "Yansen."]' + Chr(13) + Chr(10) + '[EventDate "1967"]';
Fen :='8/2k5/5p1b/p1pBpP1P/2P5/1PK2P2/P7/8';
First :='w'; 
Moves := 'd5-f7 h6-f8 f7-e8 f8-h6 a2-a3 h6-f8 e8-a4 c7-b6 c3-d3 b6-c7 b3-b4 a5:b4 a3:b4 c5:b4 c4-c5 f8:c5 d3-c4 c5-f8 c4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ �����.������������ �����.';
Comment3:='����� ����������� ������� � ��� ����������.'; 
Uroven:=1; 
end;
if (partNum=78) then
begin
Names := '[White "Kalinin"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='8/4KP1k/8/8/5N2/2b5/8/8';
First :='w'; 
Moves := 'f4-g2 c3-b4 e7-e8 b4-a3 g2-e3 h7-g7 e3-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ �����.';
Comment3:='����� ����������� ��������������� �����.'; 
Uroven:=1; 
end;
if (partNum=79) then
begin
Names := '[White "Averbah"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='8/8/4K3/8/4p3/4k3/6R1/8';
First :='w'; 
Moves := 'g2-g5 e3-d2 g5-d5 d2-c2 d5-e5 c2-d3 e6-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������ �����.';
Comment3:='����� � ������ ������ ����� ������ ����� �, ������� ��������� ��������������� ������, ���������� ������ � �����.'; 
Uroven:=1; 
end;
if (partNum=80) then
begin
Names := '[White "Kozlovskii"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1931"]';
Fen :='1k4b1/5p2/5P2/4N3/8/5K2/8/8';
First :='w'; 
Moves := 'e5-d7 b8-c7 d7-f8 c7-d8 f3-g4 d8-e8 g4-g5 e8:f8 g5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ �����.';
Comment3:='����� ������������ ����� ����������.'; 
Uroven:=1; 
end;
if (partNum=81) then
begin
Names := '[White "Spiridonov"]' + Chr(13) + Chr(10) + '[Black "Shamkovich."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='8/5r2/R7/8/1p5k/p3P3/4K3/8';
First :='w'; 
Moves := 'a6-a4 f7-b7 e2-d3 h4-g3 d3-c2 b4-b3 c2-b1 a3-a2 b1-b2';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ���������.';
Comment3:='����� �������� ������� �������������� �����.'; 
Uroven:=1; 
end;
if (partNum=82) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Kasparyan."]' + Chr(13) + Chr(10) + '[EventDate "1948"]';
Fen :='8/8/6PR/3k4/8/6rP/8/K7';
First :='b'; 
Moves := 'd5-c4 a1-b2 g3-g2 b2-a3 g2-g3 a3-a4 g3-g1 a4-a5 c4-c5 a5-a6 c5-c6';
Comment:= '��� ������. �������� �����.';
Comment2:='�������� ���������.';
Comment3:='������ ������� ��������������� ������ ������ ����.'; 
Uroven:=1; 
end;
if (partNum=83) then
begin
Names := '[White "Zairab"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "900"]';
Fen :='8/8/8/2k1K3/8/3R4/4n3/8';
First :='w'; 
Moves := 'd3-e3 e2-g1 e5-f5 c5-d4 f5-f4 d4-c4 f4-g3 c4-d4 e3-e1';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ������ ����.';
Comment3:='����� �������� � ���������� ������� ����.'; 
Uroven:=1; 
end;
if (partNum=84) then
begin
Names := '[White "Shmirin"]' + Chr(13) + Chr(10) + '[Black "Novikov."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/8/5p2/8/P4P2/2q1p1K1/2k5/7Q';
First :='b'; 
Moves := 'f6-f5 a4-a5 c3-g7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������.';
Comment3:='������ ���������� ����� ������� ������ � ���������� �����.'; 
Uroven:=1; 
end;
if (partNum=85) then
begin
Names := '[White "Shmirin"]' + Chr(13) + Chr(10) + '[Black "Novikov."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/8/5p2/8/P4P2/2q1p1K1/2k5/7Q';
First :='b'; 
Moves := 'f6-f5 a4-a5 c3-g7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������.';
Comment3:='������ ���������� ����� ������� ������ � ���������� �����.'; 
Uroven:=1; 
end;


if (partNum=86) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/pp2pk2/8/8/8/8/PP3K1P/8';
First :='w'; 
Moves := 'b2-b4 b7-b5 a2-a3 a7-a6 f2-e3 f7-f6 e3-e4 e7-e6 h2-h4 f6-g6 e4-e5 g6-h5 e5:e6 h5:h4 e6-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ���������� ���������.';
Comment3:='���� �����: ��������� ����� ��������� ������ ��� ����� ������, ��������� ��������� h �� ����� � � ���������� ������� � ������ ����������.'; 
Uroven:=1; 
end;



if (partNum=87) then
begin
Names := '[White "Fisher"]' + Chr(13) + Chr(10) + '[Black "Larsen."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='8/4kp2/6p1/7p/P7/2K3P1/7P/8';
First :='w'; 
Moves := 'c3-d4 e7-d6 a4-a5 f7-f6 a5-a6 d6-c6 a6-a7 c6-b7 d4-d5 h5-h4 d5-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ���������� ���������.';
Comment3:='����� ��������� ���������� ��������� ��������������� ������ �� ����� � ���������� ��.'; 
Uroven:=1; 
end;


if (partNum=88) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='7k/3p2p1/2p5/5P2/2P5/K7/8/8';
First :='w'; 
Moves := 'a3-b4 h8-g8 b4-c5 g8-f7 c5-d6 f7-e8 c4-c5 e8-d8 f5-f6';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ���������.���� �� ���.';
Comment3:='������ ��������� �������� ���� ����� d7, � ����� ������� ���������� ������ ������.'; 
Uroven:=1; 
end;


if (partNum=89) then
begin
Names := '[White "Grigorev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='8/6p1/6K1/8/7P/5k2/7P/8';
First :='w'; 
Moves := 'g6-f5 f3-g2 h4-h5 g2-h3 f5-g5 h3:h2 g5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������.������������ ������.';
Comment3:='����� ��������� ��������������� ������ � ���������� ����� g7.'; 
Uroven:=1; 
end;



if (partNum=90) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/1pp5/p2p4/P2P4/1PP5/7k/6p1/6K1';
First :='w'; 
Moves := 'b4-b5 h3-g4 c4-c5 g4-f5 b5-b6 c7:b6 c5-c6 b7:c6 a5:b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������.������.';
Comment3:='�������� ������ ������ ������ � �������� ����� � ����� ���������� ������ �����.'; 
Uroven:=1; 
end;


if (partNum=91) then
begin
Names := '[White "Pomar"]' + Chr(13) + Chr(10) + '[Black "Kuadras."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='8/8/3K1k2/5p1p/4p1p1/4P1P1/5PP1/8';
First :='b'; 
Moves := 'f5-f4 d6-d5 h5-h4 d5:e4 f4-f3 g2:f3 h4-h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������.������.';
Comment3:='�������� ������ ������ ������ � �������� ����� � ����� ���������� ������ �����.'; 
Uroven:=1; 
end;


if (partNum=92) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/8/6k1/5p1p/5P1K/8/7P/8';
First :='w'; 
Moves := 'h2-h3 g6-h6 h4-g3 h6-g6 g3-f3 g6-f6 f3-e3 f6-e6 e3-d4 e6-d6 h3-h4 d6-e6 d4-c5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������.������������.';
Comment3:='����� ���������� ������ ��������� �����.'; 
Uroven:=1; 
end;



if (partNum=93) then
begin
Names := '[White "Zinar"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='8/8/8/Pp1k4/1P2p3/4K3/8/8';
First :='w'; 
Moves := 'e3-f2 d5-d6 f2-g2 d6-c6 g2-h3 c6-d6 h3-g4 d6-d5 g4-g3 d5-d6 g3-f4 d6-d5 f4-e3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������.���� ������������.';
Comment3:='��� �������� ���������� �������� ������� ����.'; 
Uroven:=1; 
end;



if (partNum=94) then
begin
Names := '[White "Seiravan"]' + Chr(13) + Chr(10) + '[Black "Kasparov."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='8/8/5p2/p1k2P1p/Pp2P2P/3K4/8/8';
First :='b'; 
Moves := 'c5-c6 d3-c4 c6-c7 c4-d3 c7-d7 d3-e3 d7-c6 e3-d3 c6-c5 d3-e3 b4-b3 e3-d3 c5-b4 e4-e5 b4-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������.�����������.';
Comment3:='� ������� ������������ ������ �������� ������� ���� ����� � ����������.'; 
Uroven:=1; 
end;


if (partNum=95) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/n7/6Bk/4K3/8/8/6P1/8';
First :='w'; 
Moves := 'e5-f6 a7-c6 g2-g4 c6-d4 g4-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� ������ ��������������� ������.'; 
Uroven:=1; 
end;


if (partNum=96) then
begin
Names := '[White "Sheron"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='4k3/8/4N3/5n1P/8/8/8/7K';
First :='w'; 
Moves := 'e6-g7 f5:g7 h5-h6 e8-f7 h6-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� �������� ���� � �������� ����� � �����.'; 
Uroven:=1; 
end;

if (partNum=97) then
begin
Names := '[White "Sheron"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='3K4/8/8/1n5P/5k2/8/8/8';
First :='w'; 
Moves := 'h5-h6 b5-d6 h6-h7 d6-f7 d8-e7 f7-h8 e7-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� ��������� ����� ������������ ������.'; 
Uroven:=1; 
end;



if (partNum=98) then
begin
Names := '[White "Eingorn"]' + Chr(13) + Chr(10) + '[Black "Belyavskii."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='8/8/2N1n1K1/1k6/7P/8/8/8';
First :='w'; 
Moves := 'c6-d4 e6:d4 g6-f6 d4-c2 h4-h5 c2-e3 f6-g5 e3-c4 h5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� �������� ���� � �������� �����.'; 
Uroven:=1; 
end;



if (partNum=99) then
begin
Names := '[White "Prokesh"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='8/7p/3kpP2/7p/1K4N1/8/8/8';
First :='w'; 
Moves := 'g4-e5 h5-h4 e5-c6 h4-h3 f6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.������.';
Comment3:='����� ������ ������.'; 
Uroven:=1; 
end;


if (partNum=100) then
begin
Names := '[White "Reti"]' + Chr(13) + Chr(10) + '[Black "Marshall."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='8/8/2N2k2/1p1P2p1/6K1/8/8/8';
First :='w'; 
Moves := 'g4-g3 f6-f5 g3-f3 f5-f6 f3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='��� �������� ���� �������� ������� ���� ������.'; 
Uroven:=1; 
end;



if (partNum=101) then
begin
Names := '[White "Bekker"]' + Chr(13) + Chr(10) + '[Black "Medina."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='6k1/6p1/6Pp/ppp5/3pn2P/1P3K2/1PP2P2/3N4';
First :='b'; 
Moves := 'e4-c3 b2:c3 a5-a4 c3:d4 c5:d4 c2-c3 a4-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ���������. ������';
Comment3:='� ������� ���������� ������� ����������� "��������������" ����.'; 
Uroven:=1; 
end;


if (partNum=102) then
begin
Names := '[White "Nietsl"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='7k/5K2/7P/8/2N5/3p4/2n5/8';
First :='w'; 
Moves := 'f7-g6 d3-d2 c4-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����������� �������� ���� ����� ����� ���� ���.'; 
Uroven:=1; 
end;

        
if (partNum=103) then
begin
Names := '[White "Dvoiris"]' + Chr(13) + Chr(10) + '[Black "Kron."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='8/p4k2/1pK2P2/1P1N4/P3n3/8/8/8';
First :='w'; 
Moves := 'd5:b6 a7:b6 a4-a5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� �������� ���� � ������ ������.'; 
Uroven:=1; 
end;

if (partNum=104) then
begin
Names := '[White "Mitrafanov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='2K5/8/1p6/8/8/4k3/5NP1/8';
First :='w'; 
Moves := 'g2-g4 e3-f4 c8-d7 b6-b5 d7-e6 b5-b4 e6-f6 f4-f3 f6-f5 f3:f2 f5-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� �������� �������������� ����� �������� ��������� ������.'; 
Uroven:=1; 
end;



if (partNum=105) then
begin
Names := '[White "Vilnev"]' + Chr(13) + Chr(10) + '[Black "Ekslapon."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='8/N1k1n3/6P1/1P2K3/8/1p6/8/8';
First :='w'; 
Moves := 'b5-b6 c7:b6 a7-c8 e7:c8 e5-e6 b3-b2';
Comment:= '��� �����. �������� �����.';
Comment2:='������� ���������.';
Comment3:='����� �������� ���� � ������ ������ ������.'; 
Uroven:=1; 
end;



if (partNum=106) then
begin
Names := '[White "Krenos"]' + Chr(13) + Chr(10) + '[Black "Verosh."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='3b4/6kp/5p2/2pPpP2/1pP4P/pP6/P1B3K1/8';
First :='w'; 
Moves := 'd5-d6 g7-f7 c2-e4 d8-b6 g2-f3 b6-a7 e4-c6 a7-b8 d6-d7 f7-e7 f3-e4 b8-a7 e4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ �����.';
Comment3:='����� �5 � f6 �����, ������ �� �� ��������.������ ����� - ������� �� ��� .'; 
Uroven:=1; 
end;


if (partNum=107) then
begin
Names := '[White "Gorgiev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='1b6/2pB4/8/k1K1p3/8/1P6/8/8';
First :='w'; 
Moves := 'b3-b4 a5-a6 c5-c6 e5-e4 d7-e6 e4-e3 e6-c4 a6-a7 b4-b5 a7-a8 c4-d5 a8-a7 d5-f3 a7-a8 b5-b6 c7:b6 c6:b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ �����.';
Comment3:='����� ������ ������� ������ � ���� .'; 
Uroven:=1; 
end;



if (partNum=108) then
begin
Names := '[White "Chenturini"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1856"]';
Fen :='8/8/3K4/1BP5/8/5b2/5k2/8';
First :='w'; 
Moves := 'b5-c6 f3-e2 c6-d5 e2-b5 d5-e6 f2-e3 e6-d7 b5-a6 c5-c6 e3-d4 c6-c7 d4-c4 d7-h3 c4-b4 d6-c6 b4-a5 h3-g4 a5-b4 c6-b6 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �����.';
Comment3:='��������� ����������� ������� ������ �� ����� � ����� ���������� ������ .'; 
Uroven:=1; 
end;



if (partNum=109) then
begin
Names := '[White "Chenturini"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1874"]';
Fen :='2KB4/1P6/2k5/8/8/8/7b/8';
First :='w'; 
Moves := 'd8-h4 c6-b5 h4-f2 b5-a6 f2-c5 h2-f4 c5-e7 a6-b5 e7-d8 b5-c6 d8-g5 f4-h2 g5-e3 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �����.';
Comment3:='������ ����� ��, ��� ��������� a7-b8 ������� ������� .'; 
Uroven:=1; 
end;


if (partNum=110) then
begin
Names := '[White "Zahodyakin"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1931"]';
Fen :='n6k/8/8/6P1/3K4/3B4/8/8';
First :='w'; 
Moves := 'd4-c5 a8-c7 c5-d6 c7-e8 d6-e7 e8-g7 d3-g6 h8-g8 g6-f7 g8-h7 e7-f6 h7-h8 f6-e5 h8-h7 e5-e4 h7-h8 e4-f4 h8-h7 f4-g4 h7-h8 g5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ������ ��������������� ���� � �������.'; 
Uroven:=1; 
end;


if (partNum=111) then
begin
Names := '[White "Troiskii"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='6n1/7k/2p2p2/8/P2P4/8/8/2B4K';
First :='w'; 
Moves := 'c1-a3 f6-f5 d4-d5 c6:d5 a4-a5 g8-f6 a5-a6 f6-e8 a3-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� �������� ������� ���� �� ����� �.'; 
Uroven:=1; 
end;


if (partNum=112) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1K4B1/P7/1nk5/8/8/8/8/8';
First :='w'; 
Moves := 'g8-e6 c6-c5 b8-b7 c5-b5 e6-f7 b5-c5 f7-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ������� ��������.'; 
Uroven:=1; 
end;



if (partNum=113) then
begin
Names := '[White "Dudua"]' + Chr(13) + Chr(10) + '[Black "Steiniz."]' + Chr(13) + Chr(10) + '[EventDate "1862"]';
Fen :='8/p7/8/6P1/3N1b2/1kp5/7P/3K4';
First :='b'; 
Moves := 'b3-b2 g5-g6 f4-h6 h2-h4 a7-a5 h4-h5 a5-a4 d4-c2 a4-a3 c2-d4 a3-a2 d4-c2 h6-g7 c2-a1 b2:a1 d1-c2 g7-h6 g6-g7 h6:g7 c2-c1 c3-c2 c1:c2 g7-h6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='������ ��������� ����� �������� ���� ����� ��������� ��������������.'; 
Uroven:=1; 
end;



if (partNum=114) then
begin
Names := '[White "Chehover"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1939"]';
Fen :='8/P1K1k3/8/8/2N5/5b2/8/8';
First :='w'; 
Moves := 'c4-a5 f3-a8 c7-c8 e7-e8 a5-c4 e8-e7 c8-b8 e7-d8 c4-d6 d8-d7 d6-b7 d7-c6 b8:a8 c6-c7 b7-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='������ ���� � ������ ����� ���������� �����.'; 
Uroven:=1; 
end;


if (partNum=115) then
begin
Names := '[White "Troiskii"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='8/7p/1p2p2b/P2k4/3P4/3K2N1/7P/8';
First :='w'; 
Moves := 'a5-a6 d5-c6 d4-d5 e6:d5 g3-f5 h6-c1 d3-c2 c1-a3 f5-d4 c6-c7 d4-b5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ����� ��������������� �����.'; 
Uroven:=1; 
end;

if (partNum=116) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Neishtadtl."]' + Chr(13) + Chr(10) + '[EventDate "1890"]';
Fen :='8/8/8/4p1p1/8/5PK1/8/3k4';
First :='b'; 
Moves := 'd1-e1 g3-g2 e1-e2 g2-g3 e2-f1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������. ���������.';
Comment3:='���������� ���������� �������������� ������� �� ����� ����� ����� ���� ���� (�������) ��� ��� ���� ����� (�������).'; 
Uroven:=1; 
end;

if (partNum=117) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='1k6/8/1K6/1P6/8/8/8/8';
First :='w'; 
Moves := 'b6-a6 b8-a8 b5-b6 a8-b8 b6-b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. �������� ����.';
Comment3:='��� ����� �� 5-� ����������� ��������� ������ ����� �������� ���� 6-� �����������: �6,b6,c6.'; 
Uroven:=1; 
end;

if (partNum=118) then
begin
Names := '[White "Moravez"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='2k5/8/8/7p/8/8/6P1/5K2';
First :='w'; 
Moves := 'f1-f2 h5-h4 f2-g1 h4-h3 g2-g3 c8-d7 g1-h2 d7-e6 h2:h3 e6-f5 h3-h4 f5-g6 h4-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. �������� ����.';
Comment3:='����� �������� ��������� � ����������� �������� ����.'; 
Uroven:=1; 
end;



if (partNum=119) then
begin
Names := '[White "Shpilman"]' + Chr(13) + Chr(10) + '[Black "Duras."]' + Chr(13) + Chr(10) + '[EventDate "1907"]';
Fen :='8/8/5pk1/5r2/5R2/5K2/8/8';
First :='b'; 
Moves := 'g6-g5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������. �������� ����.';
Comment3:='������ �������� ��������� � ����������� �������� ����.'; 
Uroven:=1; 
end;


if (partNum=120) then
begin
Names := '[White "Drtina"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1907"]';
Fen :='8/4k3/3p4/3P4/2P5/8/8/5K2';
First :='w'; 
Moves := 'f1-g2 e7-f6 g2-f2 f6-e7 f2-g3 e7-f7 g3-f3 f7-e7 f3-g4 e7-f8 g4-f4 f8-e7 f4-g5 e7-f7 g5-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ���������.';
Comment3:='����� ���������� ������� ��������� � �������.'; 
Uroven:=1; 
end;

if (partNum=121) then
begin
Names := '[White "Bianketti"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='8/5p2/4p3/8/3P4/5k2/P7/5K2';
First :='w'; 
Moves := 'd4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ������ ������ ��������� �����.';
Comment3:='���������, ��� ������, ���� � ��������� � ��������, ��� �� �� �������� ������� ���������� �������� - ������ ����������� �����.'; 
Uroven:=1; 
end;



if (partNum=122) then
begin
Names := '[White "Gerbstman"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='1K6/8/1k6/8/8/7p/7P/8';
First :='w'; 
Moves := 'b8-a8 b6-c6 a8-a7 c6-d5 a7-b6 d5-e5 b6-c5 e4-f3 c5-d4 f3-g2 d4-e3 g2:h2 e3-f2';
Comment:= '��� �����. �������� �����.';
Comment2:='�������� ���������. ������������ ������.';
Comment3:='����� ������������ ������ ������������ ������.'; 
Uroven:=1; 
end;


if (partNum=123) then
begin
Names := '[White "Adamson"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1915"]';
Fen :='8/8/7p/8/8/k7/2K3P1/8';
First :='w'; 
Moves := 'g2-g3 a3-a4 c2-c3 a4-b5 c3-d4 b5-c6 d4-e5 c6-c5 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ������������ ������.';
Comment3:='����� ��������� ����� ������������ ������.'; 
Uroven:=1; 
end;

if (partNum=124) then
begin
Names := '[White "Kon"]' + Chr(13) + Chr(10) + '[Black "Rubinshtein."]' + Chr(13) + Chr(10) + '[EventDate "1909"]';
Fen :='8/p7/8/1p2pppp/1P6/P3PP1k/5P1P/7K';
First :='b'; 
Moves := 'g5-g4 e3-e4 f5:e4 f3:e4 h5-h4 h1-g1 g4-g3 h2:g3 h4:g3 f2:g3 h3:g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������. ���������� ���������.';
Comment3:='����� ������ ������� � ���������� ������ ������ �� �������� ����� ����������� �������� ��������.'; 
Uroven:=1; 
end;


if (partNum=125) then
begin
Names := '[White "Avarbah"]' + Chr(13) + Chr(10) + '[Black "Bebchuk."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='8/1p4p1/5p1p/1k3P2/6PP/3KP3/8/8';
First :='w'; 
Moves := 'e3-e4 b5-c6 e4-e5 f6:e5 g4-g5 h6:g5 f5-f6 g7:f6 h4-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ������.';
Comment3:='����� ������������ ������.'; 
Uroven:=1; 
end;


if (partNum=126) then
begin
Names := '[White "Gulnev"]' + Chr(13) + Chr(10) + '[Black "Tukmanov."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='8/p5pp/3k4/PP1Pp3/2p5/8/5KPP/8';
First :='w'; 
Moves := 'a5-a6 d6-c5 d5-d6 c5:d6 b5-b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ������.';
Comment3:='����� ������������ ������.'; 
Uroven:=1; 
end;


if (partNum=127) then
begin
Names := '[White "Lombardi"]' + Chr(13) + Chr(10) + '[Black "Fisher."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='8/p6p/1p5P/6p1/1Pk2pP1/2P2P2/2K5/8';
First :='b'; 
Moves := 'a7-a5 b4:a5 b6:a5 c2-b2 a5-a4 b2-a3 c4:c3 a3:a4 c3-d4 a4-b4 d4-e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������. ���������� ���������.';
Comment3:='������ �������� ��������� �����, ������� ��������� ������ ������.'; 
Uroven:=1; 
end;



if (partNum=128) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='2KQ4/8/8/8/8/8/2kp4/8';
First :='w'; 
Moves := 'd8-c7 c2-b1 c7-b6 b1-c2 b6-c5 c2-b1 c5-b4 b1-c2 b4-c4 c2-b2 c4-d3 b2-c1 d3-c3 c1-d1 c8-c7 d1-e2 c3-c2 e2-e1 c2-e4 e1-f2 e4-d3 f2-e1 d3-e3 e1-d1 c7-c6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���������. ����� ������ �����.';
Comment3:='����� ����� ��� ���������� � �������������� ������� � �������� ��� �� ���� d1.� ���������� ����� ������ �������� ���� ��� �����������.'; 
Uroven:=1; 
end;


if (partNum=129) then
begin
Names := '[White "Nimzovich"]' + Chr(13) + Chr(10) + '[Black "Tarrash."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='1r6/5k2/p4p2/5R1K/7P/8/6P1/8';
First :='b'; 
Moves := 'b8-b5 h5-g4 b5:f5 g4:f5 a6-a5 f5-e4 f6-f5 e4-d4 f5-f4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ���������. ���������� ���������.';
Comment3:='���������� ��������� ��������� ������ ����� �� �������� �����.'; 
Uroven:=1; 
end;


if (partNum=130) then
begin
Names := '[White "Privorotskii"]' + Chr(13) + Chr(10) + '[Black "Peterson."]' + Chr(13) + Chr(10) + '[EventDate "1967"]';
Fen :='8/8/p7/7p/8/P1k4P/4K3/8';
First :='w'; 
Moves := 'h3-h4 c3-b3 e2-d3 b3:a3 d3-c3 a6-a5 c3-c4 a3-a4 c4-c3 a4-b5 c3-b3';
Comment:= '��� �����.�������� �����.';
Comment2:='�������� ���������. ���� �������� ����� ��� ������ ����� �� ������ ������.';
Comment3:='������ ������ ������� h4, ������� ����� ����� a3 � ���������, ��������� �� ����� �� ������ ������ ��������� �������� �����.'; 
Uroven:=1; 
end;


if (partNum=131) then
begin
Names := '[White "Matanovich"]' + Chr(13) + Chr(10) + '[Black "Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='8/8/8/p4p2/P6k/3K3P/8/8';
First :='w'; 
Moves := 'd3-e3 h4-g3 e3-e2 f5-f4 e2-f1 g3:h3 f1-f2 h3-g4 f2-g2';
Comment:= '��� �����.�������� �����.';
Comment2:='�������� ���������.���� �������� ����� ��� ������ ����� �� ������ ������.';
Comment3:='����� �������� ���������.'; 
Uroven:=1; 
end;


if (partNum=132) then
begin
Names := '[White "Bottlik"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='8/8/8/1pP2kp1/pP6/P5K1/8/8';
First :='w'; 
Moves := 'g3-f3 f5-e5 f3-g4 e5-f6 c5-c6 f6-e6 g4:g5 e6-d6 g5-f5 d6:c6 f5-e6';
Comment:= '��� �����.������� ���������� �������.';
Comment2:='�������� ���������.���������� ���������.';
Comment3:='����� ���������� ���� ��������� �����, ����� �� �� ����� ����������.'; 
Uroven:=1; 
end;
if (partNum=133) then
begin
Names := '[White "Golberg"]' + Chr(13) + Chr(10) + '[Black "Juk."]' + Chr(13) + Chr(10) + '[EventDate "1934"]';
Fen :='8/5pp1/5k2/6PP/p4P2/1p1K4/8/8';
First :='b'; 
Moves := 'f6-e7 d3-c3 e7-f8 c3-b2 f8-g8 b2-a3 g8-h7 a3-b2 f7-f6 b2-a3 f6:g5';
Comment:= '��� ������.������� ����������� �������.';
Comment2:='�������� ���������.������.';
Comment3:='���� �������� ������ � �������� f7-f6.'; 
Uroven:=1;
end;
if (partNum=134) then
begin
Names := '[White "Sulipa"]' + Chr(13) + Chr(10) + '[Black "Gritsak."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='8/p7/4k3/1PP1p1p1/4Kp2/7P/7P/8';
First :='w'; 
Moves := 'h3-h4 g5:h4 e4-f3 e6-d5 c5-c6 d5-d6 f3-g4 a7-a6 b5:a6 d6:c6 g4:h4';
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.������.';
Comment3:='� ����� ���� ����������� ��������� ���� ����� �� ����������� ������, ������� ��������� h.'; 
Uroven:=1; 
end;
if (partNum=135) then
begin
Names := '[White "Potter"]' + Chr(13) + Chr(10) + '[Black "Sukertort."]' + Chr(13) + Chr(10) + '[EventDate "1875"]';
Fen :='8/1k6/8/P3p3/1PKpPp2/5P2/8/8';
First :='w'; 
Moves := 'b4-b5 b7-a7 b5-b6 a7-a6 c4-b4 a6-b7 b4-b5 d4-d3 a5-a6 b7-b8 b5-c6 d3-d2 a6-a7 b8-a8 b6-b7 a8:a7 c6-c7';
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.��� ��������� ���������.';
Comment3:='����� ������ ��������������� ������.'; 
Uroven:=1; 
end;
if (partNum=136) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/6p1/5p1p/p7/Pk3PP1/3K3P/8/8';
First :='w'; 
Moves := 'f4-f5 b4:a4 d3-c4 a4-a3 c4-c3 a5-a4 h3-h4 a3-a2 c3-c2 a4-a3 h4-h5 a2-a1 c2-c1';
Comment:= '��� �����.�������� �����.';
Comment2:='�������� ���������.�������� �����.';
Comment3:='����� ���������� �������� �����, ����� �� ��������� ������ ���������� � ���� �����.'; 
Uroven:=1; 
end;
if (partNum=137) then
begin
Names := '[White "Kahiani"]' + Chr(13) + Chr(10) + '[Black "Marich."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='8/p5pp/1p6/1P1k1p2/3P1P2/P2K4/5P1P/8';
First :='w'; 
Moves := 'd3-c3 d5-e6 c3-c4 e6-d6 d4-d5 d6-d7 c4-d4 d7-d6 h2-h3 h7-h6 h3-h4 h6-h5 f2-f3 g7-g6 a3-a4';
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.�������� �����.';
Comment3:='����� �������� ��������� � ������� �������� ������ .'; 
Uroven:=1; 
end;
if (partNum=138) then
begin
Names := '[White "Marshal"]' + Chr(13) + Chr(10) + '[Black "Shlehter."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='8/8/6p1/7p/5k2/8/4K2P/8';
First :='b'; 
Moves := 'f4-g4 e2-f2 g4-h3 f2-g1 g6-g5 g1-h1 g5-g4 h1-g1 h5-h4 g1-h1 g4-g3 h2:g3 h4:g3 h1-g1 g3-g2';
Comment:= '��� ������.������� ����������� �������.';
Comment2:='�������� ���������.����� g � h  ������ ����� h.';
Comment3:='����� ������ �������� "�� �� ��" ���� ������� ���� �����.'; 
Uroven:=1; 
end;
if (partNum=139) then
begin
Names := '[White "Grigorev"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1920"]';
Fen :='8/7p/8/8/8/5p1k/7P/6K1';
First :='w'; 
Moves := 'g1-f2 h3-g4 f2-e3 h7-h6 e3-f2 g4-f4 f2-e1 f4-e3 e1-f1 h6-h5 f1-e1 f3-f2 e1-f1 e3-f3 h2-h3 f3-g3 h3-h4';
Comment:= '��� �����.�������� �����.';
Comment2:='�������� ���������.����� f � h  ������ ����� h.';
Comment3:='����� ������ ������ � �������� �������� ������� ����� h7, � ������� ���������� ��������.'; 
Uroven:=1; 
end;
if (partNum=140) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/6pp/8/1N6/2n2P2/4k1P1/P1Kp3P/8';
First :='b'; 
Moves := 'c4-a3';
Comment:= '��� ������.������� ����������� �������.';
Comment2:='������� ���������. ����������� ������ ����.';
Comment3:='����������� ������ ���� - �����, ����� ��������� ������������ � �������� ����������.'; 
Uroven:=1; 
end;
if (partNum=141) then
begin
Names := '[White "Gutman"]' + Chr(13) + Chr(10) + '[Black "Mikenas."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='8/8/6B1/4Pb1P/5P2/2p1k3/8/3K4';
First :='b'; 
Moves := 'e3:f4 g6:f5 f4:e5 h5-h6 e5-f6 d1-c2 f6-f7 f5-h7 f7-f6 h7-g8 f6-g6 h6-h7 g6-g7';
Comment:= '��� ������.�������� �����.';
Comment2:='���� ������ �����. ���� � �������� �����.';
Comment3:='������ �������� �����, ��������� ������� ����� h.'; 
Uroven:=1; 
end;
if (partNum=142) then
begin
Names := '[White "Gershon"]' + Chr(13) + Chr(10) + '[Black "Torhalson."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='8/1Bk5/8/6K1/7p/7P/8/8';
First :='b'; 
Moves := 'c7-d7';
Comment:= '��� ������.�������� �����.';
Comment2:='���� ������ �����. ���� � �������� �����.';
Comment3:='������ ���������� ������� ����� h.'; 
Uroven:=1; 
end;
if (partNum=143) then
begin
Names := '[White "Fisher"]' + Chr(13) + Chr(10) + '[Black "Taimanov."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='8/8/8/3k1K2/5nBP/8/8/8';
First :='b'; 
Moves := 'd5-d6 f5:f4 d6-e7';
Comment:= '��� ������.�������� �����.';
Comment2:='���� ������ �����. ���� � �������� �����.';
Comment3:='������ ���������� ������� ����� h.'; 
Uroven:=1; 
end;
if (partNum=144) then
begin
Names := '[White "Polugaevskii"]' + Chr(13) + Chr(10) + '[Black "Zaharov."]' + Chr(13) + Chr(10) + '[EventDate "1963"]';
Fen :='6k1/2r5/3K4/7p/4P2p/5PpP/1b4P1/8';
First :='w'; 
Moves := 'd6:c7 g8-f7 c7-d6 f7-f6 d6-d5 f6-g5 d5-c4 g5-f4 c4-d3';
Comment:= '��� �����.�������� �����.';
Comment2:='���� ������ �����.';
Comment3:='����� ������ ��������.'; 
Uroven:=1; 
end;
if (partNum=145) then
begin
Names := '[White "Paulsen"]' + Chr(13) + Chr(10) + '[Black "Metger."]' + Chr(13) + Chr(10) + '[EventDate "1888"]';
Fen :='8/Bpk5/8/P7/2K5/8/8/8';
First :='b'; 
Moves := 'b7-b5';
Comment:= '��� ������.�������� �����.';
Comment2:='���� ������ �����.';
Comment3:='������ �������� ����� ���������� ������ ���� b7.'; 
Uroven:=1; 
end;
if (partNum=146) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "****"]';
Fen :='6k1/8/8/1p5P/1P1B2P1/1b4K1/8/8';
First :='b'; 
Moves := 'b3-d1 g3-h4 g8-f7 g4-g5 f7-e6 g5-g6 e6-f5 g6-g7 d1-b3';
Comment:= '��� ������.�������� �����.';
Comment2:='������������ �����.���� � ��� ��������� ����� ������ �����';
Comment3:='��� ������������ ������ ������ ��������� ����� ����� �� ����� ����� ������ �����.'; 
Uroven:=1; 
end;
if (partNum=147) then
begin
Names := '[White "Salvioli"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1887"]';
Fen :='8/2k1b3/2P5/3K1P1B/8/8/8/8';
First :='w'; 
Moves := 'h5-f3 c7-d8 d5-e6 e7-b4 f5-f6 b4-a5 f6-f7 a5-b4 e6-f6 b4-c3 f6-g6 c3-b4 g6-g7';
Comment:= '��� �����.������� ����������� �������.';
Comment2:='������������ �����.������������ ��������� �����';
Comment3:='������ ������� ������� ��� ���������� ������ ���� � �����, � ������� ������� ����, ��� ���������� �� � �����.'; 
Uroven:=1; 
end;
if (partNum=148) then
begin
Names := '[White "Shoneberg"]' + Chr(13) + Chr(10) + '[Black "Stark."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='2B5/8/3kp3/1P3pp1/3b4/7P/6K1/8';
First :='w'; 
Moves := 'b5-b6 d4:b6 g2-f3 d6-e5 f3-e2 e5-f6 e2-d3 e6-e5 d3-c4 e5-e4 c4-d5 e4-e3 c8-a6';
Comment:= '��� �����.�������� �����.';
Comment2:='������������ �����.���� � ��� ��������� ����� ������ �����';
Comment3:='����� ���������� ���������� �� ����� b5, ������� ����������� ����� ��������� a6-f1.'; 
Uroven:=1; 
end;
if (partNum=149) then
begin
Names := '[White "Averbah"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='2k5/K7/P2P2p1/6P1/8/B4b2/8/8';
First :='b'; 
Moves := 'f3-g4 a7-b6 g4-f3 b6-c5 c8-d7 c5-d4 d7-e6';
Comment:= '��� ������.�������� �����.';
Comment2:='������������ �����.������������ ��������� �����';
Comment3:='������ �� ���� ����� ����� ������ �� d7.'; 
Uroven:=1; 
end;
if (partNum=150) then
begin
Names := '[White "Sheron"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='1b6/8/2P5/6KB/8/4kP2/8/8';
First :='b'; 
Moves := 'b8-c7 g5-f5 e3-d4 f5-e6 d4-c5 e6-d7 c5-b6 h5-e8 c7-b8 d7-e6 b6-c5 e6-f5 c5-d4 f5-g4 d4-e3 e8-h5 b8-c7';
Comment:= '��� ������.�������� �����.';
Comment2:='������������ �����.������������ ��������� �����';
Comment3:='�� ���� ��������� b8-h2 ����� �������� ���� ����: b8 � c7, ����� ������ ����� � ������ ������� �� ���.'; 
Uroven:=1; 
end;
if (partNum=151) then
begin
Names := '[White "Agapov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='2b5/2P5/6k1/8/2B5/2p2PP1/1pP5/1K6';
First :='w'; 
Moves := 'c4-f1 g6-f6 f1-h3 c8:h3 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �����.����������.';
Comment3:='����� ����������� ������� �����.'; 
Uroven:=1; 
end;
if (partNum=152) then
begin
Names := '[White "Bonner"]' + Chr(13) + Chr(10) + '[Black "Medina."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='6k1/6p1/6Pp/ppp5/3pn2P/1P3K2/1PP2P2/3N4';
First :='b'; 
Moves := 'e4-c3 b2:c3 a5-a4 c3:d4 c5:d4 c2-c3 a4-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='� ���� �������� ������ ���� � ����������� �������� ����� � �����.'; 
Uroven:=1; 
end;
if (partNum=153) then
begin
Names := '[White "Vilela"]' + Chr(13) + Chr(10) + '[Black "Avgystin."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='8/8/1N2kp2/8/P2K2n1/8/8/8';
First :='w'; 
Moves := 'd4-c5 f6-f5 a4-a5 f5-f4 a5-a6 f4-f3 b6-c4 f3-f2 c4-d2 g4-f6 c5-c6 f6-e4 d2-f1'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������.';
Comment3:='����� �� ���������� ������� ������ � ����� a.'; 
Uroven:=1; 
end;
if (partNum=154) then
begin
Names := '[White "Platov"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='8/5p2/N1p3p1/3pP1P1/7P/2kP4/Pb6/7K';
First :='w'; 
Moves := 'h4-h5 g6:h5 g5-g6 f7:g6 e5-e6 b2-a3 a6-b4 a3:b4 a2-a4 c3-d4 a4-a5 d4-c5 e6-e7'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ������������ �����.';
Comment3:='����� ��������� ����� "�����".'; 
Uroven:=1; 
end;
if (partNum=155) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "Kiryakov."]' + Chr(13) + Chr(10) + '[EventDate "1997"]';
Fen :='8/8/8/8/1pk5/4P3/bKP5/8';
First :='b'; 
Moves := 'a2-b3 c2:b3 c4-d3'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���� ������ �����.';
Comment3:='������ �������� ����� �������� � ���������� �������� ���������.'; 
Uroven:=1; 
end;
if (partNum=156) then
begin
Names := '[White "Minev"]' + Chr(13) + Chr(10) + '[Black "Dukanovich."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='8/6kP/4K1P1/5P2/8/8/1b6/8';
First :='b'; 
Moves := 'g7-h8 f5-f6 b2:f6'; 
Comment:= '��� ������. �������� �����.';
Comment2:='���� ������ �����.';
Comment3:='������ �������� ����� ����� ������ ������.';
Uroven:=1; 
end;
if (partNum=157) then
begin
Names := '[White "Levit"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1933"]';
Fen :='3b4/8/7P/kP6/4K3/8/1P6/8';
First :='w'; 
Moves := 'b5-b6 a5-a6 e4-e5 d8-g5 h6-h7 g5-c1 e5-d6 c1:b2 d6-c7 b2-e5 c7-c6 e5-d4 b6-b7 a6-a7 c6-c7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='���� ������ �����.';
Comment3:='����� ������ ���������� � ��������.';
Uroven:=1; 
end;
if (partNum=158) then
begin
Names := '[White "Zvyaginsev"]' + Chr(13) + Chr(10) + '[Black "Chernin."]' + Chr(13) + Chr(10) + '[EventDate "1997"]';
Fen :='8/1B6/5k2/K7/1P6/8/8/3b4';
First :='w'; 
Moves := 'b4-b5 f6-e7 b5-b6 d1-e2 b7-c6 e7-d6 c6-b5 e2-f3 a5-a6 d6-c5 b5-f1'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='����������� �����.';
Comment3:='����� ��������, ���� ��������� ����� �� b6 � ��������� ������� �� �7.'; 
Uroven:=1; 
end;
if (partNum=159) then
begin
Names := '[White "Hoh"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='3K4/kbP5/3p4/1B6/8/8/8/8';
First :='w'; 
Moves := 'b5-c6 b7-a6 c6-d7 a7-b6 d7-c8 a6-f1 c8-b7 f1-h3 b7-g2 h3-e6 g2-d5 e6-h3 d5-f7 b6-c5 f7-e8'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='����������� �����.';
Comment3:='����� ������ ���� ������������ ����� d6 � ��� ���� ���� ��������� ��������� ������� �����.';
Uroven:=1; 
end;
if (partNum=160) then
begin
Names := '[White "Suffert"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1856"]';
Fen :='4n3/3K4/2P5/1k4B1/8/8/8/8';
First :='w'; 
Moves := 'g5-h4 b5-c5 h4-f2 c5-d5 f2-d4 e8-d6 c6-c7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ������ ������� ���� ���������.';
Uroven:=1; 
end;
if (partNum=161) then
begin
Names := '[White "Kling"]' + Chr(13) + Chr(10) + '[Black "Gorvic."]' + Chr(13) + Chr(10) + '[EventDate "1851"]';
Fen :='k7/2K5/3P4/8/b7/2N5/8/8';
First :='b'; 
Moves := 'a4-b5 c3-d5 a8-a7 d5-b4 b5-e8 b4-c6 a7-a6';
Comment:= '��� ������. �������� �����.';
Comment2:='���� ������ ����.';
Comment3:='������ �������� ����� ����� ������ ������.';
Uroven:=1; 
end;
if (partNum=162) then
begin
Names := '[White "Troiskii"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='6n1/7k/2p2p2/8/P2P4/8/8/2B4K';
First :='w'; 
Moves := 'c1-a3 f6-f5 d4-d5 c6:d5 a4-a5 g8-f6 a5-a6 f6-e8 a3-d6 e8:d6 a6-a7'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ���� �������� ������� ����.';
Uroven:=1;
end;
if (partNum=163) then
begin
Names := '[White "Marvic"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='k7/8/2p5/4P3/4B3/6p1/8/2n3K1';
First :='w';
Moves := 'e4-d3 a8-b7 d3-c4 b7-b6 g1-g2 b6-c5 g2:g3 c5:c4 e5-e6 c1-e2 g3-h2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='����� ���� �������� ������� ����.';
Uroven:=1;
end;
if (partNum=164) then
begin
Names := '[White "Kasnelson"]' + Chr(13) + Chr(10) + '[Black "Mitrofanov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='1K6/8/2P5/8/6pk/bp6/7P/3N4';
First :='w';
Moves := 'b8-c7 b3-b2 d1:b2 a3:b2 c7-d6 b2-c1 d6-e5 h4-g5 e5-e4 c1-f4 h2-h4';
Comment:= '��� �����.�������� �����.';
Comment2:='���� ������ ����.';
Comment3:='����� �������� ���� �� ����� � �� ���� ������ �������������� ����� h � �����.';
Uroven:=1;
end;
if (partNum=165) then
begin
Names := '[White "Karpov"]' + Chr(13) + Chr(10) + '[Black "Korchnoy."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='r4rk1/pp2nppp/8/2bp4/5N2/1P6/1PPB1PPP/R3K2R';
First :='w'; 
Moves := 'f4-d3 c5-b6 d2-b4 f8-e8 b4:e7 e8:e7 e1-d2'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='������������� ������ ����� �� ����, � ��� ����� ������ ����� ������ ������������ � ������.'; 
Uroven:=1; 
end;

if (partNum=166) then
begin
Names := '[White "Sadler"]' + Chr(13) + Chr(10) + '[Black "Bologan."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='2r1r1k1/1pp4p/p2p2p1/3Pn3/3RP3/P1N2pPP/1P3P1K/7R';
First :='w'; 
Moves := 'g3-g4 g8-f7 h2-g3 h7-h5 g4-g5 f7-e7 c3-b1'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='����� ���� �������������� ������ ��� ����� ����� f3, ���� ����������� �� d2 ����� ��� ����� �����.'; 
Uroven:=1; 
end;

if (partNum=167) then
begin
Names := '[White "Sadler"]' + Chr(13) + Chr(10) + '[Black "Bologan."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='2r1r1k1/1pp4p/p2p2p1/3Pn3/3RP3/P1N2pPP/1P3P1K/2R5';
First :='b'; 
Moves := 'h7-h5 c3-b1 g6-g5 b1-d2 g5-g4'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='�� �������� �� ����� ����� �������������� ������ ������, ��� ����� ��������� ����� f3 �������� �����.'; 
Uroven:=1; 
end;

if (partNum=168) then
begin
Names := '[White "Sadler"]' + Chr(13) + Chr(10) + '[Black "Bologan."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='r7/2p1r3/3p1k2/1pnP3p/1R2P1pP/P1R2pP1/2KN1P2/8';
First :='b'; 
Moves := 'a8-a5 c3-e3 e7-e8 c2-c1 f6-e5 c1-c2 e8-a8 c2-b2 a8-a6 b2-a2 a5-a4 b4:b5 a6-b6 b5:b6 c7:b6 a2-b2 c5:e4'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='���� ������ ��������� �����, �� ���� ���������� ������ �� e5, ��������� ���� ����� �� ���� a4, ����� ���� ����� e4 ��������.'; 
Uroven:=1; 
end;

if (partNum=169) then
begin
Names := '[White "Ulman"]' + Chr(13) + Chr(10) + '[Black Galliamova."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='8/8/5pp1/1R3k1p/4p2P/2r3P1/4KP2/8';
First :='b'; 
Moves := 'f5-g4 b5-b6 c3-f3 b6-e6 g4-h3 e6:e4 h3-g2 g3-g4 f3:f2'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='������ ��������� ������� � ������ ����� � ���������� ��������� �� �����.'; 
Uroven:=1; 
end;

if (partNum=170) then
begin
Names := '[White "Zelchich"]' + Chr(13) + Chr(10) + '[Black "Psahis."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='8/p1pk1pp1/1pn5/5n1p/5P2/P2N4/1PPK1BPP/8';
First :='w'; 
Moves := 'd3-b4'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='������ ������ �������������� ������ �� �������� d7-e6-d5-e4. ���������� ����������������� ��. ��� ��� ����� ���������� ������ ����� Nb4 � ������������� ���� d3. (��� �������� 26.c4)'; 
Uroven:=1; 
end;

if (partNum=171) then
begin
Names := '[White "Zelchich"]' + Chr(13) + Chr(10) + '[Black "Psahis."]' + Chr(13) + Chr(10) + '[EventDate "1999"]';
Fen :='8/p1pk1pp1/1pn5/5n1p/5P2/P2N4/1PP1KBPP/8';
First :='b'; 
Moves := 'd7-e6 h2-h3 e6-d5 c2-c3 d5-e4'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='������ ���� �������������� ������ �� �������� d7-e6-d5-e4.'; 
Uroven:=1; 
end;

if (partNum=172) then
begin
Names := '[White "Gort"]' + Chr(13) + Chr(10) + '[Black "Veid."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='8/r4p2/5K2/4P3/5k2/8/8/7R';
First :='w'; 
Moves := 'h1-h4 f4-g3 h4-h7 g3-f4 e5-e6'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������';
Comment3:='����� ���������� �� ����� f7 ���������� ���� ������������� ��� � �������� ��������� ������ ������ �����.'; 
Uroven:=1; 
end;

if (partNum=173) then
begin
Names := '[White "Malahov"]' + Chr(13) + Chr(10) + '[Black "Naer."]' + Chr(13) + Chr(10) + '[EventDate "2007"]';
Fen :='8/5p2/8/8/1k2K3/8/5P2/8';
First :='w'; 
Moves := 'e4-d4 b4-b5 d4-d5 b5-b6 d5-d6 b5-b7 f2-f4'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='���������� ���������� ������ ������ ���������.'; 
Uroven:=1; 
end;

if (partNum=174) then
begin
Names := '[White "Damlyanovih"]' + Chr(13) + Chr(10) + '[Black "Birn."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='5k2/R7/6p1/P7/6P1/4p2P/r7/4K3';
First :='b'; 
Moves := 'g6-g5'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ��������.';
Comment3:='����� ������ ���������� ������ ��������� �� ����������� ������. �������� ������������� ��.'; 
Uroven:=1; 
end;

if (partNum=175) then
begin
Names := '[White "Damlyanovih"]' + Chr(13) + Chr(10) + '[Black "Birn."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='7r/PK6/7k/1R4p1/8/8/8/8';
First :='w'; 
Moves := 'b7-a6 h8-a8 b5-b8 a8:a7 a6:a7'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='������ �������� �������� ����� g, ������� ��������� ������ ������� ����� � �������� ����� � ���� a8. ����� ���������� � a7.'; 
Uroven:=1; 
end;

if (partNum=176) then
begin
Names := '[White "Damlyanovih"]' + Chr(13) + Chr(10) + '[Black "Birn."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='8/1K6/8/1R4pk/8/8/8/8';
First :='b'; 
Moves := 'h5-g4 b7-c6 g4-f4 c6-d5 g5-g4 d5-d4 g4-g3'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='��� ���������� ����� � ����� ���������� �������������� ������ � ��������� ������������ ������.'; 
Uroven:=1; 
end;

if (partNum=177) then
begin
Names := '[White "Grunfeld"]' + Chr(13) + Chr(10) + '[Black "Vatson."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='6R1/8/6p1/8/8/4K1kp/8/8';
First :='b'; 
Moves := 'g3-g2 g8:g6 g2-f1 g6-h6 f1-g2 e3-e2 h3-h2 h6-g6 g2-h1'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='��� ������ ������� ����� ������ ����� ���� �� �������� ��� ������ � ������������ �������� ������.'; 
Uroven:=1; 
end;

if (partNum=178) then
begin
Names := '[White "Smirnov"]' + Chr(13) + Chr(10) + '[Black "Korneev."]' + Chr(13) + Chr(10) + '[EventDate "1997"]';
Fen :='8/8/K7/8/P3r3/1P6/1P5k/8';
First :='b'; 
Moves := 'e4-b4 a4-a5 h2-g3 a6-a7 g3-f4 a5-a6 f4-e5 a7-a8 e5-d6 a6-a7 b4-b5 b3-b4 d6-c7 b2-b3 b5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='���������� ����������� ������ ��������� ����� �� ������ ������, �� � �����.'; 
Uroven:=1; 
end;

if (partNum=179) then
begin
Names := '[White "Sveshnikov"]' + Chr(13) + Chr(10) + '[Black "Kuzmin."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='6r1/4R3/8/2k2P2/8/7K/8/8';
First :='b'; 
Moves := 'c5-d6 e7-e6 d6-d7 h3-h4 g8-e8'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='�������� ������ ������� ������ � ������� ������� � ��������� �����, ��� ��� �� ������ ������� �� ������� ������.'; 
Uroven:=1; 
end;

if (partNum=180) then
begin
Names := '[White "Polugaevskiy"]' + Chr(13) + Chr(10) + '[Black "Korchnoy."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='1R6/8/3p4/1Pk2p2/5K2/1r6/8/8';
First :='w'; 
Moves := 'f4:f5 b3:b5 b8-a8 c5-d4 f5-f4 d6-d5 a8-a4 d4-d3 a4-a3 d3-c4 f4-e3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='�������� ����� ������� ������ � ������� ������� � ��������� �����, ��� ��� �� ������ ������� �� ������� ������.'; 
Uroven:=1; 
end;

if (partNum=181) then
begin
Names := '[White "Karyakin"]' + Chr(13) + Chr(10) + '[Black "Van You."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='r7/2p5/1p2pR2/2p1P3/2P3k1/1P6/6K1/8';
First :='w'; 
Moves := 'g2-f2 a8-a3 f2-e3 a3:b3 e3-e4 b3-c3 f6-g6 g4-h5 g6:e6'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������.';
Comment3:='����� e6 ����� ���� ���������� � ����� ������, �� ������� � ���� �� �������. ����� ������ ����������� �� f6 � �� ���� ���������������� ������ �����. �������������� ������ ����� ��������� ������ � �����.'; 
Uroven:=1; 
end;

if (partNum=182) then
begin
Names := '[White "Maknab"]' + Chr(13) + Chr(10) + '[Black "Timman."]' + Chr(13) + Chr(10) + '[EventDate "1984"]';
Fen :='6k1/6p1/7p/2rPR3/7P/3p1KP1/8/8';
First :='b'; 
Moves := 'c5-c1 f3-e3 c1-e1'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='���������� ����� ����� d � �����.'; 
Uroven:=1; 
end;

if (partNum=183) then
begin
Names := '[White "Short"]' + Chr(13) + Chr(10) + '[Black "Spilmen."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='8/5pp1/1P2r1kp/8/8/K1R3P1/8/8';
First :='w'; 
Moves := 'b6-b7 e6-a6 a3-b2 a6-b6 c3-b3'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ��������� ����� � �����, ����� ������ �� ����� �� ������, ���������� ����������.'; 
Uroven:=1; 
end;

if (partNum=184) then
begin
Names := '[White "D. Gurevich"]' + Chr(13) + Chr(10) + '[Black "Wolf."]' + Chr(13) + Chr(10) + '[EventDate "1996"]';
Fen :='R7/8/3K4/1k6/3P4/8/p1r5/8';
First :='b'; 
Moves := 'c2-c6 d6-d5 c6-a6'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ��������� ����� � �����, ����� ����� �� ����� �� ������, ���������� ����������.'; 
Uroven:=1; 
end;

if (partNum=185) then
begin
Names := '[White "Atalik"]' + Chr(13) + Chr(10) + '[Black "Grishuk."]' + Chr(13) + Chr(10) + '[EventDate "2002"]';
Fen :='R7/8/8/7P/5K2/1k6/p7/2r5';
First :='b'; 
Moves := 'c1-c4 f4-g5 c4-a4 a8-b8 b3-a3'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ��������� ����� � �����, ����� ������ �� ����� �� ������, ���������� ����������.'; 
Uroven:=1; 
end;

if (partNum=186) then
begin
Names := '[White "Simich"]' + Chr(13) + Chr(10) + '[Black "Bilek."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='2r3k1/2r2ppp/8/8/p7/1p6/PP3RPP/1K3R2';
First :='b'; 
Moves := 'c7-c1 f1:c1 c8:c1 b1:c1 b3:a2'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ��������� ����� � �����, ������ ����������.'; 
Uroven:=1; 
end;

if (partNum=187) then
begin
Names := '[White "Sutovskiy"]' + Chr(13) + Chr(10) + '[Black "Bakro."]' + Chr(13) + Chr(10) + '[EventDate "2005"]';
Fen :='8/r6p/3P2kP/6P1/6P1/p7/4R1K1/8';
First :='w'; 
Moves := 'e2-e7 a7:e7 d6:e7 g6-f7 g5-g6 f7:e7 g6:h7'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ��������� ����� � �����, ������ ����������.'; 
Uroven:=1; 
end;

if (partNum=188) then
begin
Names := '[White "Sochko"]' + Chr(13) + Chr(10) + '[Black "Zilberman."]' + Chr(13) + Chr(10) + '[EventDate "2002"]';
Fen :='2R5/4r3/2P1p3/4P3/3K4/6k1/7p/8';
First :='w'; 
Moves := 'c8-g8 g3-f3 g8-h8 f3-g2 d4-c5'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ����� ����������� ������� �� d6, � ����� ������ �� ����� h. ����� ����� ������ �� ���������� � ����� ���������� �������.'; 
Uroven:=1; 
end;

if (partNum=189) then
begin
Names := '[White "Bronshtein"]' + Chr(13) + Chr(10) + '[Black "Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='3N4/1p6/8/p7/2P2k2/2P1p3/2K5/8';
First :='b'; 
Moves := 'f4-g3'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='��������� ����� ������. ���� ������� ������ ������� ����� ���� g3, ��� ��� ����� f3 ������� �� �����������: 1.Nf7 e2 2.Ne5 Ke3 3.Nd3 a4 =.'; 
Uroven:=1; 
end;

if (partNum=190) then
begin
Names := '[White "Topalov"]' + Chr(13) + Chr(10) + '[Black "Korchnoy."]' + Chr(13) + Chr(10) + '[EventDate "1996"]';
Fen :='r5k1/P1p2ppp/1r6/2b5/R7/8/1P3PPP/2BR2K1';
First :='b'; 
Moves := 'b6-b7 b2-b4 b7:a7 a4:a7 c5:a7'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������� ���� ������ ������ ���������� ��������� a, ���� ���������� ��������� ��.'; 
Uroven:=1; 
end;

if (partNum=191) then
begin
Names := '[White "Vainstein"]' + Chr(13) + Chr(10) + '[Black "Roud."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='8/8/1p1k4/5ppp/PPK1p3/6P1/5PP1/8';
First :='b'; 
Moves := 'f5-f4 g3:f4 g5:f4 c4-d4 e4-e3 f2:e3 f4-f3 g2:f3 h5-h4'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ - ��� ������ ����� ��� ���������� ����� � ����� ����������� ��������� � ���������� �� � �����.'; 
Uroven:=1; 
end;

if (partNum=192) then
begin
Names := '[White "Kuchinskyi"]' + Chr(13) + Chr(10) + '[Black "Bauer."]' + Chr(13) + Chr(10) + '[EventDate "2000"]';
Fen :='R7/8/8/8/4k2p/6p1/1r4P1/5K2';
First :='b'; 
Moves := 'b2-b1 f1-e2 h4-h3'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ - ��� ������ ����� ��� ���������� ����� � ����� ����������� ��������� � ���������� �� � �����.'; 
Uroven:=1; 
end;

if (partNum=193) then
begin
Names := '[White "Averbah"]' + Chr(13) + Chr(10) + '[Black "Zaicev."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='3R4/4k1p1/6PP/pr6/3p4/8/5K2/8';
First :='b'; 
Moves := 'e7:d8 h6:g7 b5-f5'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����';
Comment3:='������ - ��� ������ ����� ��� ���������� ����� � ����� ����������� ��������� � ���������� �� � �����. �� �� ������ �� �������� � ������.'; 
Uroven:=1; 
end;

if (partNum=194) then
begin
Names := '[White "Timman"]' + Chr(13) + Chr(10) + '[Black "Ivkov."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='6r1/2p1PP2/3k4/1P5p/7P/p7/2P3P1/6K1';
First :='b'; 
Moves := 'g8:g2 g1:g2 d6:e7'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ - ��� ������ ����� ��� ���������� ����� � ����� ����������� ��������� � ���������� �� � �����. �� �� ������ �� �������� � ������.'; 
Uroven:=1; 
end;

if (partNum=195) then
begin
Names := '[White "Linchevskyi"]' + Chr(13) + Chr(10) + '[Black "Popov."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='1B6/7k/8/1p1p4/2P3P1/p7/P6P/b3K3';
First :='b'; 
Moves := 'b5-b4'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ - ��� ������ ����� ��� ���������� ����� � ����� ����������� ��������� � ���������� �� � �����.'; 
Uroven:=1; 
end;

if (partNum=196) then
begin
Names := '[White "Marin"]' + Chr(13) + Chr(10) + '[Black "Minasyan."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='8/6p1/P7/3n2p1/2k5/1R2p3/3pK1PP/8';
First :='w'; 
Moves := 'b3-d3 d5-f4 e2:e3 f4:d3 e3:d2'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='� ���������, ����� � ����� ������ ������� ������ ����������� �����, ���������� ��������������� ����������������� � ������ ������.'; 
Uroven:=1; 
end;

if (partNum=197) then
begin
Names := '[White "Romanovskyi"]' + Chr(13) + Chr(10) + '[Black "Kubbel."]' + Chr(13) + Chr(10) + '[EventDate "1923"]';
Fen :='8/Pk6/1P6/3p4/3Pb3/2p1K3/4B2p/8';
First :='w'; 
Moves := 'e2-a6 b7-a8 a6-b5 a8-b7 b5-c6'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='� ���������, ����� � ����� ������ ������� ������ ����������� �����, ���������� ��������������� ����������������� � ������ ������.'; 
Uroven:=1; 
end;

if (partNum=198) then
begin
Names := '[White "Zaberskyi"]' + Chr(13) + Chr(10) + '[Black "Malanuk."]' + Chr(13) + Chr(10) + '[EventDate "2001"]';
Fen :='8/5ppp/2k5/2p5/p4r2/1PK1R2P/P4PP1/8';
First :='w'; 
Moves := 'e3-f3 f4:f3 g2:f3 a4:b3 c3:b3'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������� ���������� ���������, ��������� ������� ��������������� ������ �� ������� ������ - ������ ������ ������ �������. ����� ��������� a �������� ������.'; 
Uroven:=1; 
end;

if (partNum=199) then
begin
Names := '[White "Chom"]' + Chr(13) + Chr(10) + '[Black "Spasskyi."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='6k1/p3r1p1/5p2/3P2p1/pPp5/8/5PPP/3R1K2';
First :='w'; 
Moves := 'd1-a1 c4-c3 a1:a4 c3-c2 a4-a1 a7-a5 a1-c1 a5:b4 c1:c2'; 
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='�� ���� ��������� ����� ���� ����� �������� ������ ��, ��� ����������� ������� �� ������.'; 
Uroven:=1; 
end;

if (partNum=200) then
begin
Names := '[White "Chom"]' + Chr(13) + Chr(10) + '[Black "Spasskyi."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='6k1/p3r1p1/5p2/3P2p1/pPpR4/8/5PPP/5K2';
First :='b'; 
Moves := 'a4-a3 d4:c4 a3-a2 c4-c1 e7-c7 c1-d1 c7-c2 d5-d6 c2-d2 d1-c1 g8-f7'; 
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='�� ���� ��������� ����� ���� ����� �������� ������ ��, ��� ����������� ������� �� ������.'; 
Uroven:=1; 
end;
if (partNum=201) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4K3/4P1k1/8/8/8/8/r7/5R2';
First :='w'; 
Moves := 'f1-g1 g7-h7 g1-g4 a2-d2 e8-f7 d2-f2 f7-e6 f2-e2 e6-f6 e2-f2 f6-e5 f2-e2 g4-e4'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������������� �� ���� ������".'; 
Uroven:=1; 
end;
if (partNum=202) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4K3/4P1k1/8/8/8/8/r7/5R2';
First :='b'; 
Moves := 'a2-a8 e8-d7 a8-a7 d7-d6 a7-a6 d6-c7 a6-a7'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ���� ������ ��� ��������������� ������".'; 
Uroven:=1; 
end;
if (partNum=203) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r2K4/3P1k2/8/8/8/8/8/4R3';
First :='w'; 
Moves := 'd8-c7 a8-a7 c7-c8 a7-a8 c8-b7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������ ��������� ������ �����".'; 
Uroven:=1; 
end;
if (partNum=204) then
begin
Names := '[White "Saks"]' + Chr(13) + Chr(10) + '[Black "Seshkovskii."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/7k/4KP2/8/8/3R4/8/2r5';
First :='w'; 
Moves := 'f6-f7 c1-c8 e6-e7 c8-c7 d3-d7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������������� �� ���� ������".'; 
Uroven:=1; 
end;
if (partNum=205) then
begin
Names := '[White "Saks"]' + Chr(13) + Chr(10) + '[Black "Seshkovskii."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/7k/4KP2/8/8/3R4/8/2r5';
First :='w'; 
Moves := 'f6-f7 c1-e1 e6-f6 e1-f1 f6-e7 f1-e1 e7-f8 e1-a1 d3-h3 h7-g6 f8-g8'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ���������� �� �����".'; 
Uroven:=1; 
end;
if (partNum=206) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5k1/8/5PK1/8/8/8/8/1R6';
First :='w'; 
Moves := 'b1-b7 a8-c8 b7-g7 g8-f8 g7-h7 f8-g8 f6-f7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ����� ��������� ��������� �������� �� - �� 8-� �����������.����� ����� ���������, �������� ����� �� h7".'; 
Uroven:=1; 
end;
if (partNum=207) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/r7/5PK1/8/8/8/8/1R6';
First :='b'; 
Moves := 'a7-g7 g6-f5 g7-g2'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ��������� ����� �� ������ ����������� � ������� ����� ����� � ����".'; 
Uroven:=1; 
end;
if (partNum=208) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5k1/1R6/4KP2/8/8/8/8/8';
First :='b'; 
Moves := 'g8-f8 e6-f5 a8-a1'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ��������� ����� �� ������ ����������� � ������� ����� ����� � ����".'; 
Uroven:=1; 
end;
if (partNum=209) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5k1/1R6/6PK/8/8/8/8/8';
First :='b'; 
Moves := 'a8-c8 b7-g7 g8-h8 g7-h7 h8-g8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ �� ���� ����� ����� ������ �� h8".'; 
Uroven:=1; 
end;
if (partNum=210) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5k1/1R6/6PK/8/6P1/8/8/8';
First :='w'; 
Moves := 'b7-b6 a8-f8 g4-g5 f8-a8 g6-g7 a8-c8 b6-f6'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ���������� ����� �� g7 � ������ ����� �� f8".'; 
Uroven:=1; 
end;
if (partNum=211) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/4K1k1/4P3/8/8/8/r7/3R4';
First :='w'; 
Moves := 'd1-g1'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ��������� ������� ������ ������".'; 
Uroven:=1; 
end;
if (partNum=212) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/4K1k1/4P3/8/8/8/r7/3R4';
First :='b'; 
Moves := 'a2-a7 d1-d7 a7-a8 d7-d8 a8-a7 e7-d6 a7-a6 d6-e5 a6-a5 d8-d5 a5-a8 d5-d7 g7-g6'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ������������ �������� � ������� � ������ �� 7-� �����������".'; 
Uroven:=1; 
end;
if (partNum=213) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r7/3R2k1/4P3/4K3/8/8/8/8';
First :='b'; 
Moves := 'g7-g6'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ������� ����������".'; 
Uroven:=1; 
end;
if (partNum=214) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/4K1k1/4P3/8/8/8/8/R7';
First :='b'; 
Moves := 'b8-b7 e7-d8 b7-b8 d8-c7 b8-b2 a1-f1 b2-a2 e6-e7 a2-a7'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ���������� � ����� � ������� �������".'; 
Uroven:=1; 
end;
if (partNum=215) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/R3K1k1/4P3/8/8/8/8/8';
First :='w'; 
Moves := 'e7-d6 g7-f6 d6-d7 f6-g7 d7-e7 g7-g6 a7-a1 b8-b7 e7-d8 b7-b8 b8-c7 b8-b2 a1-e1 b2-c2 c7-d7 c2-d2 d7-e8 d2-a2 e6-e7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ������ ����� ���� �� ������ ����� �� g7".'; 
Uroven:=1; 
end;
if (partNum=216) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='8/r2K1k2/3P4/8/8/8/8/2R5';
First :='w'; 
Moves := 'd7-c8 a7-a8 c8-b7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� �������� �����".'; 
Uroven:=1; 
end;
if (partNum=217) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r7/2R5/3P1k2/3K4/8/8/8/8';
First :='w'; 
Moves := 'c7-h7 f6-g6 h7-e7 a8-a5 d5-e6 a5-a6 e7-c7 a6-b6 e6-e7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������ ������ �� �����".'; 
Uroven:=1; 
end;
if (partNum=218) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r7/4R3/3P1k2/3K4/8/8/8/8';
First :='w'; 
Moves := 'e7-e6 f6-f7 d6-d7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ��������� � ���������� ������� ����� ������ �����".'; 
Uroven:=1; 
end;
if (partNum=219) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4k3/R7/8/4PK2/8/8/8/1r6';
First :='w'; 
Moves := 'f5-f6 b1-f1 f6-e6 e8-f8 a7-a8 f8-g7 e6-e7 f1-b1 e5-e6 b1-b7 e7-d6 b7-b6 d6-d7 b6-b7 d7-c6'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ��������� � ���������� ������� � ������ �� 6-� �����������".'; 
Uroven:=1; 
end;
if (partNum=220) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4k3/R7/8/4PK2/8/8/8/1r6';
First :='b'; 
Moves := 'b1-b6 e5-e6 b6-b1'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='��� ����� e5 � ������ ������ ������� ������� �� �6 �� ������������ �����.����� ����, ��� ����� ������� ��� ������, ������ ������ ��������".'; 
Uroven:=1; 
end;
if (partNum=221) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4k3/R7/4K3/4P3/8/8/8/4r3';
First :='b'; 
Moves := 'e8-f8 a7-a8 f8-g7'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ���� �� �������� �������, �������� ������� ������� ��� �����".'; 
Uroven:=1; 
end;
if (partNum=222) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='R7/6k1/3K4/4P3/8/8/8/4r3';
First :='b'; 
Moves := 'g7-f7 a8-a7 f7-e8 d6-e6 e8-f8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ���� �� �������� �������, �������� ������� ������� ��� �����".'; 
Uroven:=1; 
end;
if (partNum=223) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4R3/6k1/4K3/4P3/8/8/8/4r3';
First :='b'; 
Moves := 'e1-a1'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� �������� ������� �������".'; 
Uroven:=1; 
end;
if (partNum=224) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4R3/2k5/4K3/4P3/8/8/8/4r3';
First :='b'; 
Moves := 'e1-h1 e8-g8 h1-e1 g8-g2 c7-d8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ���������� ����� �����".'; 
Uroven:=1; 
end;
if (partNum=225) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4R3/2k5/4K3/4P3/8/8/4r3/8';
First :='w'; 
Moves := 'e6-f7 e2-h2 e8-g8 h2-h7 g8-g7 h7-h8 f7-e7 c7-c6 e5-e6 c6-c7 g7-g1'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ��������� ����� �� 1-� ����� � ��������� ������� ������".'; 
Uroven:=1; 
end;
if (partNum=226) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/8/5RK1/6P1/8/8/8/6r1';
First :='w'; 
Moves := 'f6-a6 g8-f8 a6-a8 f8-e7 a8-g8 g1-g2 g6-h7 e7-f7 g5-g6 f7-e7 g8-a8 g2-h2 h7-g8 h2-g2 g6-g7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������� Kph7, �������������� ����� �� ������ ����������� ������  ������".'; 
Uroven:=1; 
end;
if (partNum=227) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='6k1/8/5RK1/6P1/8/8/8/7r';
First :='b'; 
Moves := 'h1-a1 f6-b6 a1-a8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ��������� � ��������� ������ � ������ �� 8-� �����������".'; 
Uroven:=1; 
end;
if (partNum=228) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='2r5/8/4k3/8/1KP5/8/8/3R4';
First :='b'; 
Moves := 'c8-b8 b4-a5 b8-c8 a5-b5 c8-b8 b5-a6 b8-c8 d1-d4 e6-e5 d4-h4 e5-d6'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� � ������ ������������ ������ �����".'; 
Uroven:=1; 
end;
if (partNum=229) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='7r/8/4k3/2P5/8/2K5/8/3R4';
First :='b'; 
Moves := 'h8-h4 c5-c6 e6-e7 c6-c7 h4-h8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ �������� ������ �� �����".'; 
Uroven:=1; 
end;
if (partNum=230) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r7/8/4k3/K7/2P5/8/8/3R4';
First :='w'; 
Moves := 'a5-b6'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� ������ ������������ � ������ �����".'; 
Uroven:=1; 
end;
if (partNum=231) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/8/8/8/1P1k4/1K6/8/2R5';
First :='w'; 
Moves := 'c1-c6 d4-d5 c6-a6 b8-b7 b3-a4 d5-c4 a6-c6 c4-d5 b4-b5'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='��������� ������ ��������� ������� �� ����������� �������� ��� ����� ����������, ��� �� ��������� ".'; 
Uroven:=1; 
end;
if (partNum=232) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/8/8/8/1P1k4/1K6/8/2R5';
First :='b'; 
Moves := 'd4-d5 c1-c4 d5-d6 b3-a4 d6-d5'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ �� ���� ������������ �������������� �����".'; 
Uroven:=1; 
end;
if (partNum=233) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='3r4/8/1K6/6k1/3P4/8/8/5R2';
First :='w'; 
Moves := 'f1-d1 g5-f6 b6-c7 d8-d5 c7-c6 d5-a5 d1-e1 a5-a6 c6-b5 a6-d6 b5-c5 d6-d8 d4-d5'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� �������� ���� ����� ������".'; 
Uroven:=1; 
end;
if (partNum=235) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='4r3/8/8/7k/4P3/4K3/8/6R1';
First :='w'; 
Moves := 'g1-g2 h5-h4 g2-g7 h4-h5 g7-g1 h5-h6 e3-d4 e8-d8 d4-c5 d8-e8 c5-d5 e8-d8 d5-e6 d8-e8 e6-f6'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='����� �������  ������� ������ ������ ����������, ��������� �� ���� �����".'; 
Uroven:=1; 
end;
if (partNum=236) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/8/4k3/8/1P1R4/1K6/8/8';
First :='b'; 
Moves := 'e6-e5 b3-c3 b8-h8 d4-d7 e5-e6'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='��� ������� ����� ��������� ������ �� ��� ��������� ������������ ��� ������".'; 
Uroven:=1; 
end;
if (partNum=237) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/8/4k3/8/KP1R4/8/8/8';
First :='b'; 
Moves := 'b8-a8 a4-b5 a8-b8 b5-a5 b8-a8 a5-b6 a8-b8'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ ������ ������ ������".'; 
Uroven:=1; 
end;
if (partNum=238) then
begin
Names := '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='1r6/3R4/8/4k3/1P6/1K6/8/8';
First :='b'; 
Moves := 'e5-e6 d7-a7 e6-d6 b3-a4 d6-c6'; 
Comment:= '��� ������.�������� �����.';
Comment2:='�������� ���������.����� � ����� ������ �����.';
Comment3:='������ �������� ������� � �����".'; 
Uroven:=1; 
end;

if (partNum=239) then
begin
Names := '[White "Rosito"]' + Chr(13) + Chr(10) + '[Black "Sorin."]' + Chr(13) + Chr(10) + '[EventDate "2000"]';
Fen :='8/2p2k2/p1p5/1p2Pp2/1P1P1P1p/2P2pP1/P7/6K1';
First :='b'; 
Moves := 'h4-h3'; 
Comment:= '��� ������.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='��������� ����� � ����� �������� ����������� ����� ������ ��� ������������.'; 
Uroven:=1; 
end;

if (partNum=240) then
begin
Names := '[White "Taimanov"]' + Chr(13) + Chr(10) + '[Black "Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='7k/7p/8/3pP3/1pp4P/5P2/P7/K7';
First :='b'; 
Moves := 'd5-d4 e5-e6 h8-g7 f3-f4 g7-f6 f4-f5 d4-d3 a1-b2 h7-h5 b2-b1 b4-b3'; 
Comment:= '��� ������.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='��������� ����� � ����� �������� ����������� ����� ������ ��� ������������.'; 
Uroven:=1; 
end;

if (partNum=241) then
begin
Names := '[White "Kolish"]' + Chr(13) + Chr(10) + '[Black "Shumov."]' + Chr(13) + Chr(10) + '[EventDate "1862"]';
Fen :='8/6p1/3k1p1p/4p3/2P1P3/1K6/6PP/8';
First :='b'; 
Moves := 'h6-h5'; 
Comment:= '��� ������.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ ���������� ������������ ���� ��������� �����, ��� ����� ��������� ������� h6-h5,g7-g6,f6-f5.'; 
Uroven:=1; 
end;
if (partNum=242) then
begin
Names := '[White "Kolish"]' + Chr(13) + Chr(10) + '[Black "Shumov."]' + Chr(13) + Chr(10) + '[EventDate "1862"]';
Fen :='8/6p1/5p1p/2k1p3/2P1P3/1K6/6PP/8';
First :='w'; 
Moves := 'g2-g4'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='���������� ����������� ����������� ����� ����� ������ �� ����� ��� ������������ ��������� �����.'; 
Uroven:=1; 
end;
if (partNum=243) then
begin
Names := '[White "Zubarev"]' + Chr(13) + Chr(10) + '[Black "Sveshnikov."]' + Chr(13) + Chr(10) + '[EventDate "2009"]';
Fen :='2k5/8/PK6/4B1p1/r6p/8/7P/8';
First :='w'; 
Moves := 'a6-a7'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='�� ��������� �������� ��������� �����. ������� ������ ����� �� ������� �� b7, � ������ ������������ ����� ����� �� ����������� ������ ������ ����������.'; 
Uroven:=1; 
end;
if (partNum=244) then
begin
Names := '[White "Eive"]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='5k2/p1p3p1/1p2p3/8/7P/5PP1/P4P2/6K1';
First :='b'; 
Moves := 'e6-e5'; 
Comment:= '��� ������.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='������ ������ ������ ������������ ���� ��������� �� �������� �����. ���� ���������� �� ���� ���������� ����� ��������� �� �������� ������, �������������� ������� f3-f4,g3-g4,h4-h5,g4-g5'; 
Uroven:=1; 
end;
if (partNum=245) then
begin
Names := '[White "Eive"]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='5k2/p1p3p1/8/1p2p3/7P/5PP1/P3KP2/8';
First :='b'; 
Moves := 'a7-a5'; 
Comment:= '��� ������.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='���� ������� ����� � ��������� ����������� ��������� �� ��������������� ������.'; 
Uroven:=1; 
end;
if (partNum=246) then
begin
Names := '[White "Eive"]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='5k2/p5p1/8/1pp1p3/7P/5PP1/P3KP2/8';
First :='w'; 
Moves := 'e2-e3'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ����������� ���� ������ ��������� �����, ����� ���� �� ������ �������� �������� � �������� ����� ������.'; 
Uroven:=1; 
end;
if (partNum=247) then
begin
Names := '[White "Ileskas"]' + Chr(13) + Chr(10) + '[Black "San Segundo."]' + Chr(13) + Chr(10) + '[EventDate "1997"]';
Fen :='6k1/ppr2ppp/4p1n1/4P3/P6P/2B3P1/1PP5/1K2R3';
First :='w'; 
Moves := 'h4-h5'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='���� ������ �����.';
Comment3:='������� ����� ����� �����������, ��� ��� ���� ��� ���� �� ���� ������� ������� ����. ������ ����� �������� ���� � ��������� ��������, ��� ��� ����� �5 ���� � ��������� ����� ���������, �� ��� ���� ������������ ������������ �����.'; 
Comment4:='���������, ����� �� �������� ��������: h5! � ����� ����� ���� ��������� �� f5, ���������� ����� � ������ �������� g3.';
Uroven:=1; 
end;
if (partNum=248) then
begin
Names := '[White "Miles"]' + Chr(13) + Chr(10) + '[Black "Gingihashvili."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='8/2Bn4/1p2ppk1/p1p5/P1P1PKP1/1P6/8/8';
First :='w'; 
Moves := 'e4-e5 f6:e5 c7:e5 g6-f7 e5-c7 f7-f6 g4-g5 f6-f7 f4-g4 f7-g6 c7-d6'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='��������� �����.';
Comment3:='����� ������������ ���������� ���������, � �������� �������� ������ ������.'; 
Uroven:=1; 
end;
if (partNum=249) then
begin
Names := '[White "Gelfand"]' + Chr(13) + Chr(10) + '[Black "Malahov."]' + Chr(13) + Chr(10) + '[EventDate "2003"]';
Fen :='1nk4b/7p/1p2p1p1/p2p1pP1/P2P1B2/1P2PN1P/5PK1/8';
First :='w'; 
Moves := 'f4:b8'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='�������� ������� - ������, ���������������� ����� ��������. �� ��������� �������� ����, ������� � ����������� ������� ������� ����� � �������� ��������.'; 
Uroven:=1; 
end;
if (partNum=250) then
begin
Names := '[White "Kubell"]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='5b2/1p4p1/p7/k1P1N3/8/8/P1K3P1/8';
First :='w'; 
Moves := 'c5-c6 b7:c6 c2-b3'; 
Comment:= '��� �����.������� ����������� �������.';
Comment2:='���� ������ ����.';
Comment3:='��� ����������� ��� ���� ������������ ���� - ��� �������� � ��������. ����� �������� ������� ������ � �������� �����.'; 
Uroven:=1; 
end;

end;
end.
 