unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, ImgList;

type
       TPart = class
public
Names : String;
Fen : String;
First : String;
Moves : String;
Comment: String;
Comment2:String;
Uroven:integer;
procedure init(partNum: integer);
procedure init2(partNum: integer);
procedure init3(partNum: integer);



end;


implementation

{ TPart }

procedure TPart.init(partNum: integer);
begin
if (partNum=1) then
begin
Names :=  '[White "Capaliku, A."]' + Chr(13) + Chr(10) + '[Black "Borisek, J."]'  + Chr(13) + Chr(10) + '[EventDate "2007"]';
Fen :='5rk1/p6p/1q2p1p1/2p1Nr2/4Rn2/1P6/P2Q2PP/4R1K1';
First :='b';
Moves := 'c5-c4 e4-e3 c4-c3';
Comment:= '��� ������. ������� ����������� �������.' ;
Comment2:='������ ����� �������������� ����������� �� ������ ������. �������������� ����.';
Uroven:=1;
end;
if (partNum=2) then
begin
Names :=  '[White "Tiviakov, S."]' + Chr(13) + Chr(10) + '[Black "Borisek, J."]' + Chr(13) + Chr(10) + '[EventDate "2007"]';
Fen :='3r2k1/2q1bp2/R5p1/2n1P3/2p1Q3/2P2N2/2B2PP1/6K1';
First :='w';
Moves := 'a6:g6 f7:g6 e4:g6 g8-f8 g6-h6 f8-e8 c2-g6 e8-d7 g6-f5 d7-e8 h6-h5 e8-f8 h5-h8';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='������ ������ ������� ���� �������� �����. �� ���� �������� ��� ������� �����:(���� � �����),(����� � �����).������� ��� ���� ��������� ������.';
Uroven:=1;
end;
if (partNum=3) then
begin
Names :=  '[White "Baklan, V."]' + Chr(13) + Chr(10) + '[Black "Tratar, M."]' + Chr(13) + Chr(10) + '[EventDate "2007"]';
Fen :='r3kb1r/2q2ppp/p3p3/1p6/3Q4/1BP1Bb2/PP3P1P/2KRR3';
First :='w';
Moves := 'e3-g5 f3:d1 b3:e6 f7:e6 e1:e6 f8-e7 e6:e7 c7:e7 g5:e7 e8:e7 d4:g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� e � d � ������ ����������� �����. � ������ ����� ���� ����� e6. ����������� ���.';
Uroven:=1;
end;
if (partNum=4) then
begin
Names :=  '[White "Schlosser, P."]' + Chr(13) + Chr(10) + '[Black "Baklan, V."]' + Chr(13) + Chr(10) + '[EventDate "2007"]';
Fen :='r1b2rk1/pp4pp/8/2pq4/3n4/P1Q2PP1/1P3KBP/R1BR4';
First :='b';
Moves := 'c8-h3 g2-h1 f8-e8 c3-d3 d5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ����� ��������� � �������, ����� ��� ������ �������� �����������. ����� ���� ��������� ����� �����������.';
Uroven:=1;
end;
if (partNum=5) then
begin
Names :=  '[White "Berg, E."]' + Chr(13) + Chr(10) + '[Black "Dngskog, K."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='1rr3k1/3nppb1/1q1p2p1/p1p1P1Pp/np1P1P1P/1N1BB2R/PPP1Q3/1K1R4';
First :='w';
Moves := 'e5-e6 f7:e6 d3:g6 d7-f8 e2:h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� ������� ������ �����. ��������� ��� ��� ��������� ����� �����.';
Uroven:=1;
end;
if (partNum=6) then
begin
Names :=  '[White "Fontaine, R."]' + Chr(13) + Chr(10) + '[Black "Stokke, K."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='r4r2/pp4k1/4b2p/2qN1pp1/4n3/5BP1/PPQ4P/2KRR3';
First :='w';
Moves := 'f3:e4 a8-c8 c2:c5 c8:c5 e4-c2 e6:d5 b2-b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ ����� �����������. ����������� ������ � ����������� �������.';
Uroven:=1;
end;
if (partNum=7) then
begin
Names :=  '[White "Stjazhkina, O."]' + Chr(13) + Chr(10) + '[Black "Smith, A."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='r1b1k2r/pp1n1ppp/3bpq2/1B1p4/3p1P2/1P6/P1PPN1PP/R1BQR1K1';
First :='b';
Moves := 'd4-d3 e2-c3 d3:c2 d1:c2 f6-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� �������� ������ ������ ��������� �����. ����������� ���. ����� �������� ��� � ����� �� ��������� ������. ';
Uroven:=1;
end;
if (partNum=8) then
begin
Names :=  '[White "Berg, E."]' + Chr(13) + Chr(10) + '[Black "Carlsson, P."]' + Chr(13) + Chr(10) + '[EventDate "2008"]';
Fen :='r1r3k1/5pbp/p3p1p1/q2pP3/Pp1B1P2/3R4/1PP2QPP/R5K1';
First :='w';
Moves := 'd4-b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='� ������ ������ ������ ��������. ����������� ���.';
Uroven:=1;
end;
if (partNum=9) then
begin
Names :=  '[White "NN"]' + Chr(13) + Chr(10) + '[Black "NN"]'  + Chr(13) + Chr(10) + '[EventDate "0000"]';
Fen :='2r2rk1/pp1bqpp1/2nppn1p/2p3N1/1bP5/1PN3P1/PBQPPPBP/3R1RK1';
First :='w';
Moves := 'c3-d5 e6:d5 b2:f6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='�������������� ������� ����.';
Uroven:=1;
end;
if (partNum=10) then
begin
Names :=  '[White "Lotti, A."]' + Chr(13) + Chr(10) + '[Black "Lotti, F."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='2r5/pp2p1k1/3pp1P1/q7/4P3/2r5/PPPQ4/1K5R';
First :='b';
Moves := 'c3-h3';
Comment:= '��� ������. ������� ����������� �������.' ;
Comment2:='����������� ���������� ��������.';
Uroven:=1;
end;
if (partNum=11) then
begin
Names :=  '[White "Aaron"]' + Chr(13) + Chr(10) + '[Black "Gligoric."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='7k/1pp4p/3p2q1/p1nPp3/2P1Pr2/8/PPB5/1K4RQ';
First :='b';
Moves := 'f4-h4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������������ ��������� ������ ������.';
Uroven:=1;
end;
if (partNum=12) then
begin
Names :=  '[White "Aljechin."]' + Chr(13) + Chr(10) + '[Black "Ricondo."]' + Chr(13) + Chr(10) + '[EventDate "1945"]';
Fen :='r2qrbk1/1bp2ppp/p2p1n2/2p2NB1/4P3/2N2Q2/PPP2PPP/R3R1K1';
First :='w';
Moves := 'f5-h6 g7:h6 g5:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� �������� �� ������.';
Uroven:=1;
end;
if (partNum=13) then
begin
Names :=  '[White "Azmaiparashvili."]' + Chr(13) + Chr(10) + '[Black "Shirov."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='1rr3k1/4pp1p/2Np2p1/PP6/2Q5/2R3Pb/2p2P1P/2q2BK1';
First :='b';
Moves := 'c8:c6 b5:c6 b8-b1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� �������� �� ������.';
Uroven:=1;
end;
if (partNum=14) then
begin
Names :=  '[White "Barkzay."]' + Chr(13) + Chr(10) + '[Black "Erdely."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='2r4k/3r1p1p/1p2pP2/p2pPp1P/P2P1Q2/6R1/4B1PK/2q5';
First :='w';
Moves := 'g3-g8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ��������� ������� ������.';
Uroven:=1;
end;
if (partNum=15) then
begin
Names :=  '[White "Bellin."]' + Chr(13) + Chr(10) + '[Black "Fries Nielsen."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='R4rk1/5bb1/1N1Qpq1p/3pn1p1/3N4/2P2P1P/P5P1/5B1K';
First :='w';
Moves := 'b6:d5 e6:d5 a8:f8 g7:f8 d6:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������. ';
Uroven:=1;
end;
if (partNum=16) then
begin
Names :=  '[White "Belov"]' + Chr(13) + Chr(10) + '[Black "Ohngemach."]' + Chr(13) + Chr(10) + '[EventDate "1984"]';
Fen :='5r1k/bp4pp/1n6/5qN1/1PR5/P2Q3P/5PP1/6K1';
First :='w';
Moves := 'c4-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� ��������� ����� �������. ����������� ���.';
Uroven:=1;
end;

if (partNum=17) then
begin
Names :=  '[White "Boleslavskiy."]' + Chr(13) + Chr(10) + '[Black "Dus-Hutomirskiy."]'  + Chr(13) + Chr(10) + '[EventDate "1942"]';
Fen :='r2b1r1k/pppq2pn/2npb1Q1/3N1N1p/2B1PP1P/8/PPP5/2K3RR';
First :='w';
Moves := 'd5-e7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �������� ������ g7.';
Uroven:=1;
end;
if (partNum=18) then
begin
Names :=  '[White "Bonch-Osmolovskiy."]' + Chr(13) + Chr(10) + '[Black "Ragozin."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='2rr2kb/1p1b1p1p/p2pp1pB/q3n3/2PNP3/1PN4P/P2Q1PP1/2RR2K1';
First :='w';
Moves := 'c3-d5 a5:d2 d5-e7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='������ ������ � ������. ���������� ���.';
Uroven:=1;
end;
if (partNum=19) then
begin
Names :=  '[White "Breustedt"]' + Chr(13) + Chr(10) + '[Black "Brameyer."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='2q5/pR6/1p3pnk/1P4pp/8/5QPP/P2r2BK/8';
First :='w';
Moves := 'f3:h5 h6:h5 b7-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � 2 ����.';
Uroven:=1;
end;
if (partNum=20) then
begin
Names :=  '[White "Bronstein"]' + Chr(13) + Chr(10) + '[Black "Medina."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='1nkrnr2/pp1bbp1p/1qp3p1/3P4/8/1NNB3P/PPQ3PB/1K1R3R';
First :='w';
Moves := 'd5-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����.';
Uroven:=1;
end;
if (partNum=21) then
begin
Names :=  '[White "Buczek."]' + Chr(13) + Chr(10) + '[Black "Maculewich"]' + Chr(13) + Chr(10) + '[EventDate "1993]';
Fen :='3r2k1/1b3ppp/6n1/1pq1p1P1/8/1QP2P1P/3rNRB1/R4K2';
First :='b';
Moves := 'c5-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� ������ �����. ����������� ���';
Uroven:=1;
end;
if (partNum=22) then
begin
Names :=  '[White "Busher."]' + Chr(13) + Chr(10) + '[Black "Mueller."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='8/7p/2p1r3/Qqkrp3/4R1P1/7P/1P1p4/4RK2';
First :='w';
Moves := 'e4-c4 c5:c4 a5-c3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ ����� �����������. ����������� ������ � ����������� �������.';
Uroven:=1;
end;
if (partNum=23) then
begin
Names :=  '[White "Butnoris"]' + Chr(13) + Chr(10) + '[Black "Gutmann."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='4r1k1/pp1rBp1p/5Qp1/3q4/8/2P4P/3nRPP1/4R1K1';
First :='w';
Moves := 'f6-h8 g8:h8 e7-f6 h8-g8 e2:e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ������� ����������.';
Uroven:=1;
end;
if (partNum=24) then
begin
Names :=  '[White "Bykov."]' + Chr(13) + Chr(10) + '[Black "Zinowiew."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='8/5pk1/2p3p1/3p2p1/3Pq3/r3P1PP/r1R1QP2/2R3K1';
First :='b';
Moves := 'a3-c3 c2:a2 c3:c1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;
if (partNum=25) then
begin
Names :=  '[White "Cristiansen"]' + Chr(13) + Chr(10) + '[Black "Covacevic"]'  + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r3q3/1pb1rbk1/2pn1p1p/p1Qp1Bp1/3P4/4P1NP/PP3PPB/3RR1K1';
First :='b';
Moves := 'd6-c4';
Comment:= '��� ������. ������� ����������� �������.' ;
Comment2:='������� ������ ������ ������ ��������� ������. �������������� ����.';
Uroven:=1;
end;
if (partNum=26) then
begin
Names :=  '[White "Concuest."]' + Chr(13) + Chr(10) + '[Black "Hodgson."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='r1b4k/3q2rp/8/2pP1Q2/1pB3n1/7R/PP4PP/3R2K1';
First :='w';
Moves := 'h3:h7 g7:h7 f5-f8';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='� ������� ������ �����.';
Uroven:=1;
end;
if (partNum=27) then
begin
Names :=  '[White "Csom"]' + Chr(13) + Chr(10) + '[Black "Flech."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='1r1qkb1r/p2p3p/4p1N1/2p1Pp1Q/1p2n2P/6P1/PPP2PB1/R1B2bK1';
First :='b';
Moves := 'f1-e2 h5:e2 h7:g6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ �������� ���. ���� ��� �� ���������.';
Uroven:=1;
end;
if (partNum=28) then
begin
Names :=  '[White "Damlianovich."]' + Chr(13) + Chr(10) + '[Black "Kristiansen."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='q1r1r2k/p5pp/1p2B3/1bbP4/8/3R2P1/PB2QP1P/2R3K1';
First :='w';
Moves := 'b2:g7 h8:g7 e2-e5 g7-g6 e5-f5 g6-h6 f5-f6 h6-h5 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �������� ������ ������ �������.';
Uroven:=1;
end;
if (partNum=29) then
begin
Names :=  '[White "Diaz."]' + Chr(13) + Chr(10) + '[Black "Panno."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r4rk1/1p1b2b1/p2p3p/P1nPq1p1/2PN4/2N1P1P1/3Q2BK/1R2R3';
First :='b';
Moves := 'e5:g3 h2-g1 g7-e5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ������ ������.';
Uroven:=1;
end;
if (partNum=30) then
begin
Names :=  '[White "Flis."]' + Chr(13) + Chr(10) + '[Black "Lubenskiy."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2b3k1/p4ppp/1p6/8/5Q1P/8/Pq3PP1/1B4K1';
First :='w';
Moves := 'b1-f5 b2-f6 f4-c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ������� �����������.';
Uroven:=1;
end;
if (partNum=31) then
begin
Names :=  '[White "Fond"]' + Chr(13) + Chr(10) + '[Black "Bibli."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='4r1k1/1b3ppp/1q6/1Q6/4rB2/7P/3R1PP1/1R4K1';
First :='b';
Moves := 'e4-e1 g1-h2 b6-g6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ��������� ���������.';
Uroven:=1;
end;
if (partNum=32) then
begin
Names :=  '[White "Georgiev"]' + Chr(13) + Chr(10) + '[Black "Kaehmann."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='8/3B2p1/8/1p2kp2/b1p4P/P1P1P1P1/5K2/8';
First :='b';
Moves := 'b5-b4 d7:a4 b4:a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;

if (partNum=33) then
begin
Names :=  '[White "Green."]' + Chr(13) + Chr(10) + '[Black "Aitken."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='8/8/R6p/5Qpk/8/4q1pP/8/7K';
First :='b';
Moves := 'e3-e1 h1-g2 e1-e2 g2:g3 e2-e5';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='����� ����������� �����.';
Uroven:=1;
end;
if (partNum=34) then
begin
Names :=  '[White "Guliaev"]' + Chr(13) + Chr(10) + '[Black "Tshetja."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='8/4Nk2/5P2/pK4P1/P6b/8/8/8';
First :='w';
Moves := 'g5-g6 f7:f6 g6-g7 f6:g7 e7-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ ������ ��� �����.';
Uroven:=1;
end;
if (partNum=35) then
begin
Names :=  '[White "Halt"]' + Chr(13) + Chr(10) + '[Black "Dragomareckiy."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='2r1k3/pp1b2b1/4p1r1/5RBp/5QqP/3B4/PPPKR3/8';
First :='w';
Moves := 'f5-f8 g7:f8 d3:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ������.';
Uroven:=1;
end;
if (partNum=36) then
begin
Names :=  '[White "Hansen."]' + Chr(13) + Chr(10) + '[Black "Campora."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2r5/p4pk1/2q2Npp/8/2bP4/8/P4PPP/Q3R1K1';
First :='w';
Moves := 'f6-e8 c8:e8 d4-d5 c6-f6 a1:f6 g7:f6 e1:e8';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �������������� �����.';
Uroven:=1;
end;
if (partNum=37) then
begin
Names :=  '[White "Hasler"]' + Chr(13) + Chr(10) + '[Black "Cusano."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='8/2Q3pp/5pk1/8/2b1p1n1/4PqP1/PB1Q1P1P/6K1';
First :='b';
Moves := 'g4:e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ ����.';
Uroven:=1;
end;
if (partNum=38) then
begin
Names :=  '[White "Hoffman."]' + Chr(13) + Chr(10) + '[Black "Langer."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='2r2k2/p1rbnpbp/3Q1np1/q2P4/Pp4P1/2N1B1NP/1P3PB1/2R1R1K1';
First :='w';
Moves := 'd6:e7 f8:e7 e3-c5 e7-d8 c5-e7 d8-e8 e7:b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� � ���� ���.';
Uroven:=1;
end;
if (partNum=39) then
begin
Names :=  '[White "Hoiberg."]' + Chr(13) + Chr(10) + '[Black "Paasicangas."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='r3k2r/p2bbppp/4p3/2p1B1q1/3Q4/2PB4/P1P2PPP/R2R2K1';
First :='w';
Moves := 'd4:d7 e8:d7 d3-b5 d7-c8 b5-a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��������� ������.';
Uroven:=1;
end;
if (partNum=40) then
begin
Names :=  '[White "Holscher."]' + Chr(13) + Chr(10) + '[Black "Bezenner."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='6r1/1pp2kb1/2b4p/p1qN4/2P2p2/1P3P2/P6P/2QR1B1K';
First :='b';
Moves := 'c5-g1 h1:g1 g7-d4 g1-h1 g8-g1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� �������� ���.';
Uroven:=1;
end;
if (partNum=41) then
begin
Names :=  '[White "Kartavzev"]' + Chr(13) + Chr(10) + '[Black "Buturov."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='6k1/1ppb1p2/5r2/2bp2q1/p2N2p1/2PQN1P1/PP4P1/5RK1';
First :='b';
Moves := 'd7-b5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ���������.';
Uroven:=1;
end;
if (partNum=42) then
begin
Names :=  '[White "Kasparov"]' + Chr(13) + Chr(10) + '[Black "Browne."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='1r1q2k1/R4p2/3Pb2p/4Q1p1/1p2B3/2p3PP/1P3P2/6K1';
First :='w';
Moves := 'e4-h7 g8:h7 e5:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������� ��� ������.';
Uroven:=1;
end;

if (partNum=43) then
begin
Names :=  '[White "Klizkin."]' + Chr(13) + Chr(10) + '[Black "Judovich."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='2kr2r1/p1p5/2p1p3/3p2q1/1b1P1Q1R/2N5/PPP2P2/2KR4';
First :='b';
Moves := 'b4-e7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���� ������� � ������.';
Uroven:=1;
end;
if (partNum=44) then
begin
Names :=  '[White "Kosicevskiy"]' + Chr(13) + Chr(10) + '[Black "Frah."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='r2r2k1/5ppp/1p2p3/1Q1nq3/p7/P5P1/1P3P1P/R1BR2K1';
First :='b';
Moves := 'd5-e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� ����� ����������. ��� ����� �����������.';
Uroven:=1;
end;
if (partNum=45) then
begin
Names :=  '[White "Koz"]' + Chr(13) + Chr(10) + '[Black "Schusterowich."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='3r1rk1/pp4b1/5q1p/2p2P2/2P1B1Q1/PnN3P1/1PK2PPR/7R';
First :='b';
Moves := 'd8-d2 c2:b3 d2:b2 b3:b2 f6:c3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ������� �����.';
Uroven:=1;
end;
if (partNum=46) then
begin
Names :=  '[White "Kroeger."]' + Chr(13) + Chr(10) + '[Black "Dautov."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='1r3b2/2r2kpp/p2pp2q/4P2P/3N1P2/2p4Q/P1P5/K2R2R1';
First :='w';
Moves := 'g1-g6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� ���������� ���������.';
Uroven:=1;
end;
if (partNum=47) then
begin
Names :=  '[White "Lanka"]' + Chr(13) + Chr(10) + '[Black "Juneev."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='br2rk2/qn2b1np/2Rp2pN/pp1Pp3/1B2Pp2/1P1B1N1P/P2Q1PP1/2R3K1';
First :='w';
Moves := 'f3:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �������� �����.';
Uroven:=1;
end;
if (partNum=48) then
begin
Names :=  '[White "Luboevich."]' + Chr(13) + Chr(10) + '[Black "Meulders."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='5r1k/p4rq1/3p2p1/2pB3p/2P3b1/3P2P1/P3RP1P/2Q1R1K1';
First :='w';
Moves := 'e2-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����� � �������.';
Uroven:=1;
end;
if (partNum=49) then
begin
Names :=  '[White "Lohwasser."]' + Chr(13) + Chr(10) + '[Black "Kliesh."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='7k/1b5p/2q2p1Q/p3pP2/1p2N3/3p2r1/P5P1/2R4K';
First :='b';
Moves := 'g3-h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ��������� ������.';
Uroven:=1;
end;
if (partNum=50) then
begin
Names :=  '[White "Mathe."]' + Chr(13) + Chr(10) + '[Black "Thaler."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='7r/1q2bpk1/p3pn2/1p2R2r/3Nn1p1/P1PQ4/1P3PPB/3R1NK1';
First :='b';
Moves := 'h5:e5 h2:e5 h8-h1 g1:h1 e4:f2 h1-h2 f2:d3 ';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=51) then
begin
Names :=  '[White "Medina"]' + Chr(13) + Chr(10) + '[Black "Tal."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='6k1/5pp1/8/B2n4/5P2/P4QPp/4K3/7q';
First :='b';
Moves := 'h1:f3 e2:f3 d5-e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=52) then
begin
Names :=  '[White "Mertes"]' + Chr(13) + Chr(10) + '[Black "Mueller."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='6rk/Bp1q4/3b4/P2Pp1r1/2Q2p1p/2P2P1P/5RP1/R6K';
First :='b';
Moves := 'g5:g2 f2:g2 d7:h3 g2-h2 h3:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �������� ����� ������ ������.';
Uroven:=1;
end;

if (partNum=53) then
begin
Names :=  '[White "Mitkov."]' + Chr(13) + Chr(10) + '[Black "Rozentalis."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2k4r/pp1b2p1/4p1B1/3pP1P1/3K1R2/P3P1p1/2P5/8';
First :='b';
Moves := 'g3-g2 f4-g4 h8-h4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=54) then
begin
Names :=  '[White "Montosis"]' + Chr(13) + Chr(10) + '[Black "Timos."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2q3k1/4Qp1p/p2Pn1pB/1p1r4/8/1P5P/1P4P1/4R1K1';
First :='w';
Moves := 'e1:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������ �����.';
Uroven:=1;
end;
if (partNum=55) then
begin
Names :=  '[White "Mueller"]' + Chr(13) + Chr(10) + '[Black "Botew."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='2n2rk1/r2b1ppp/pq6/3Bp3/3pP3/6Q1/PP1B2PP/2R1R1K1';
First :='w';
Moves := 'c1-c6 d7:c6 d2-h6 g7-g6 g3:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������� �����.';
Uroven:=1;
end;
if (partNum=56) then
begin
Names :=  '[White "Najdorf."]' + Chr(13) + Chr(10) + '[Black "Timman."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='5b1k/p5pp/8/1pp1B3/8/Pr4P1/5PKP/4R3';
First :='w';
Moves := 'e5-d6 h8-g8 e1-e8';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� ���������� ���������.';
Uroven:=1;
end;
if (partNum=57) then
begin
Names :=  '[White "Nenashew"]' + Chr(13) + Chr(10) + '[Black "Muhametov."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='6r1/R1R5/p4pk1/1p1p1p1p/1P1P3P/6PK/4rq2/2Q5';
First :='w';
Moves := 'c1-g5 f6:g5 a7:a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���.';
Uroven:=1;
end;
if (partNum=58) then
begin
Names :=  '[White "Nielsen."]' + Chr(13) + Chr(10) + '[Black "Cristiansen."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='4r1k1/pp2rqpp/2pb1pn1/2N5/3P4/1P2PQP1/P1R1NPKP/1R6';
First :='b';
Moves := 'g6-h4 g3:h4 f7-g6 g2-h1 g6:c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=59) then
begin
Names :=  '[White "Oltean."]' + Chr(13) + Chr(10) + '[Black "Meszaros."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='rq3b1r/p2Qnppp/k1B5/8/2N1P3/5b2/PP3P1P/R1B1K2R';
First :='w';
Moves := 'c6-b7 b8:b7 d7-a4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��������� ������.';
Uroven:=1;
end;
if (partNum=60) then
begin
Names :=  '[White "Paoli."]' + Chr(13) + Chr(10) + '[Black "de Angeles."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='r3r3/2q2kp1/3p1b2/p3pQ2/Pp2P3/4B3/1PP4P/2KR2R1';
First :='w';
Moves := 'g1:g7 f7:g7 d1-g1 g7-f7 f5-h7 f7-e6 h7:c7 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;

if (partNum=61) then
begin
Names :=  '[White " Pissarski"]' + Chr(13) + Chr(10) + '[Black "Markushew."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='2bq1r1k/6rp/pp6/3p1B2/3P3Q/4PR1P/P7/5R1K';
First :='w';
Moves := 'f5-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �����.';
Uroven:=1;
end;
if (partNum=62) then
begin
Names :=  '[White "Portish"]' + Chr(13) + Chr(10) + '[Black "Lengeyel."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='7k/3q4/6Q1/3p2K1/3P1P2/4P3/8/8';
First :='b';
Moves := 'd7-g4 g5-h6 g4-g5';
Comment:= '��� ������. ������� ����������� �������.  �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;

if (partNum=63) then
begin
Names :=  '[White "Posmyk."]' + Chr(13) + Chr(10) + '[Black "NN."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='8/1pQ2ppk/2b1p2p/3q4/6N1/6KP/P4PP1/7r';
First :='w';
Moves := 'g4-f6 g7:f6 c7:f7 ';
Comment:= '��� �����. ������� ����������� �������.  �������� �����.';
Comment2:='�������� ����� ������ �����.';
Uroven:=1;
end;
if (partNum=64) then
begin
Names :=  '[White "Rosenblatt"]' + Chr(13) + Chr(10) + '[Black "Wolk."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='4r2k/pR5p/6p1/4b3/3B4/2P2K2/1P6/8';
First :='w';
Moves := 'b7-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������.';
Uroven:=1;
end;
if (partNum=65) then
begin
Names :=  '[White "Rubinstein"]' + Chr(13) + Chr(10) + '[Black "Hirshbein."]' + Chr(13) + Chr(10) + '[EventDate "1927"]';
Fen :='r1b1r1k1/pp1nqp2/2p1p1pp/8/4N3/P1Q1P3/1P3PPP/1BRR2K1';
First :='w';
Moves := 'd1:d7 c8:d7 e4-f6 g8-f8 f6-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ��������� ������ �����.';
Uroven:=1;
end;
if (partNum=66) then
begin
Names :=  '[White "Shirow."]' + Chr(13) + Chr(10) + '[Black "Rennet."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='4r1bk/pp4pp/2nq4/3n2N1/2BP4/P2Q2P1/3B3P/R5K1';
First :='w';
Moves := 'd3:h7 g8:h7 g5-f7 h8-g8 f7:d6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=67) then
begin
Names :=  '[White "Schuh]' + Chr(13) + Chr(10) + '[Black "Beda."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='r3br1k/p5pp/1p3p2/5P2/4P2R/2P1Q1R1/q3B1PP/6K1';
First :='w';
Moves := 'g3:g7 h8:g7 e3-h6 g7-f7 h6:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���.';
Uroven:=1;
end;
if (partNum=68) then
begin
Names :=  '[White "Shumow."]' + Chr(13) + Chr(10) + '[Black "Winaver."]' + Chr(13) + Chr(10) + '[EventDate "1875"]';
Fen :='2r1kr2/pR5p/2q5/3p4/Q3bP2/8/PP4PP/4R1K1';
First :='w';
Moves := 'e1-c1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;
if (partNum=69) then
begin
Names :=  '[White "Zhdanov."]' + Chr(13) + Chr(10) + '[Black "Pigic."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='4Q3/7k/2p2q1p/1p3p1K/5P2/p6P/8/8';
First :='w';
Moves := 'h3-h4';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;
if (partNum=70) then
begin
Names :=  '[White "Sikora."]' + Chr(13) + Chr(10) + '[Black "Monza."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='r3n1k1/2rR1p1p/p1p1q1p1/2B1p3/R3P3/1P5P/P2Q1PP1/6K1';
First :='w';
Moves := 'd2-h6 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������������� ��� � �������.';
Uroven:=1;
end;
if (partNum=71) then
begin
Names :=  '[White " Sotow"]' + Chr(13) + Chr(10) + '[Black "Glebow."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='k6r/rb3R1p/NQ4p1/2p2n2/1p6/8/PPn3PP/6K1';
First :='w';
Moves := 'b6-c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ���.';
Uroven:=1;
end;
if (partNum=72) then
begin
Names :=  '[White "Shtalberg"]' + Chr(13) + Chr(10) + '[Black "Bekker."]' + Chr(13) + Chr(10) + '[EventDate "1944"]';
Fen :='6R1/p4p2/1p2q2p/8/6Pk/8/PP2r1PK/3Q4';
First :='w';
Moves := 'd1-e1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;

if (partNum=73) then
begin
Names :=  '[White "Stern."]' + Chr(13) + Chr(10) + '[Black "Koz."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='4r3/p1p1rp1k/1p4pp/5q1n/8/P1P4P/1P1QNPP1/2R1RK2';
First :='b';
Moves := 'e7:e2 e1:e2 h5-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ����� ������ �����.';
Uroven:=1;
end;
if (partNum=74) then
begin
Names :=  '[White "Thelen"]' + Chr(13) + Chr(10) + '[Black "Chodera."]' + Chr(13) + Chr(10) + '[EventDate "1943"]';
Fen :='r4rk1/pb2qpnp/1p2p1p1/2p5/4N3/1P2P1P1/P4PBP/R1QR2K1';
First :='w';
Moves := 'd1-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=75) then
begin
Names :=  '[White "Titenko"]' + Chr(13) + Chr(10) + '[Black "Murei."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='2Q5/8/p3R3/P5pP/3p2P1/3k4/3q4/6K1';
First :='b';
Moves := 'd2-c1';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;
if (partNum=76) then
begin
Names :=  '[White "Togan."]' + Chr(13) + Chr(10) + '[Black "Kuipers."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='6k1/r6p/pp1p2p1/2pP2q1/P1Pb4/4B3/1P1Q2PP/5RK1';
First :='w';
Moves := 'd2:d4';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='���������� �� ������.';
Uroven:=1;
end;
if (partNum=77) then
begin
Names :=  '[White "Tropin"]' + Chr(13) + Chr(10) + '[Black "Abramow."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r2r1bk1/1p3p1p/3P2p1/p2P4/4NP1Q/2N4P/1q4P1/4R1K1';
First :='w';
Moves := 'e4-f6 g8-g7 h4:h7 g7:f6 c3-e4 f6-f5 h7:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���, ����������� ����.';
Uroven:=1;
end;
if (partNum=78) then
begin
Names :=  '[White "Ulman."]' + Chr(13) + Chr(10) + '[Black "Larsen."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='6k1/1b3pp1/4p2p/p3P3/1p3P2/1PbB3P/P5P1/qQ2BK2';
First :='b';
Moves := 'b7-a6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;
if (partNum=79) then
begin
Names :=  '[White "West."]' + Chr(13) + Chr(10) + '[Black "Hacche."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='r1bq1r1k/p3b1p1/1p1p3p/n3p1PQ/8/P1P3N1/BP3PP1/R3K2R';
First :='w';
Moves := 'h5:h6 g7:h6 h1:h6 h8-g7 g3-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������� ����� ������ ������� �����.';
Uroven:=1;
end;
if (partNum=80) then
begin
Names :=  '[White "Wjigerden."]' + Chr(13) + Chr(10) + '[Black "Donner."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='4r3/p1Rb2k1/1p1r1ppp/3P4/3QqN2/8/P5P1/2R3K1';
First :='w';
Moves := 'd4:e4 e8:e4 c1-c6 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;

if (partNum=81) then
begin
Names :=  '[White " Madl"]' + Chr(13) + Chr(10) + '[Black "Peng"]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='5r1r/1p3pp1/4pk2/p1q2nNp/Pn2QP2/B7/6PP/4R2K';
First :='w';
Moves := 'e4:e6 f7:e6 e1:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=82) then
begin
Names :=  '[White "Gurewich"]' + Chr(13) + Chr(10) + '[Black "Short."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='5r1k/6p1/p2p1rRp/2pPpq1Q/8/PPp1P3/5P1R/K7';
First :='w';
Moves := 'h5:h6 g7:h6 h2:h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;

if (partNum=83) then
begin
Names :=  '[White "Mougnol."]' + Chr(13) + Chr(10) + '[Black "Versuel."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2r2brk/1p2p2p/p3b3/q2NPp2/P4P2/1P2P3/1B1Q3P/3R1R1K';
First :='b';
Moves := 'a5:d2 d1:d2 c8-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������������� ����� ������.';
Uroven:=1;
end;
if (partNum=84) then
begin
Names :=  '[White "Firmian"]' + Chr(13) + Chr(10) + '[Black "Chernin."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2rn2rk/pp2Qp1p/1q6/5p2/5P2/P1P3R1/1P4PP/1R5K';
First :='w';
Moves := 'e7-e5 f7-f6 g3:g8 h8:g8 e5-e8 g8-g7 e8-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������� ���������� � �������� ��������.';
Uroven:=1;
end;
if (partNum=85) then
begin
Names :=  '[White "Kahn"]' + Chr(13) + Chr(10) + '[Black "Kiss."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='brr3k1/2R2ppp/4p2q/B7/2P1n3/P3nN2/4BPPP/QR4K1';
First :='w';
Moves := 'a1-b2 g7-g6 b2:b8 c8:b8 b1:b8 g8-g7 b8:a8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ��������� �����������';
Uroven:=1;
end;
if (partNum=86) then
begin
Names :=  '[White "Lasker."]' + Chr(13) + Chr(10) + '[Black "Ber."]' + Chr(13) + Chr(10) + '[EventDate "1892"]';
Fen :='r1q4r/p2p2p1/1pkPp1Bp/2p1Pp2/2P1b2Q/1P5P/P5P1/2B2RK1';
First :='w';
Moves := 'h4:e4 f5:e4 g6:e4';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=87) then
begin
Names :=  '[White "Lasker]' + Chr(13) + Chr(10) + '[Black "Short."]' + Chr(13) + Chr(10) + '[EventDate "1892"]';
Fen :='3r1k1r/1p2qp1p/p2Nbp2/6p1/1Q2P1P1/5P2/PPP5/2KR3R';
First :='w';
Moves := 'd6-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� � ��������� ������.';
Uroven:=1;
end;
if (partNum=88) then
begin
Names :=  '[White "Zhuravlev."]' + Chr(13) + Chr(10) + '[Black "Krivon."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/5pk1/5p2/p6p/P4P1K/3B2PP/5b2/8';
First :='b';
Moves := 'g7-h6 d3-b1 f6-f5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������� ����.';
Uroven:=1;
end;
if (partNum=89) then
begin
Names :=  '[White "Luther."]' + Chr(13) + Chr(10) + '[Black "Meyer."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2R5/3r1p1k/4pPpp/p3q3/1p4PP/8/PP6/1KQ5';
First :='w';
Moves := 'c1:h6 h7:h6 c8-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=90) then
begin
Names :=  '[White "Nogeiras."]' + Chr(13) + Chr(10) + '[Black "Polugaevskiy."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='R7/2q2ppk/3bp2p/3p4/1n1P1N2/4PNP1/2r2P1P/3Q2K1';
First :='w';
Moves := 'f3-g5 h6:g5 d1-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������������� ��� � �������.';
Uroven:=1;
end;
if (partNum=91) then
begin
Names :=  '[White " Nicolich"]' + Chr(13) + Chr(10) + '[Black "Timoshenko."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r1r3k1/p2bqpbp/1p2p1p1/nP1p4/PBnP1N2/1Q2P1P1/5PBP/R1RN2K1';
First :='w';
Moves := 'b3:c4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ������ �� ��� ���.';
Uroven:=1;
end;
if (partNum=92) then
begin
Names :=  '[White "Pulkinen"]' + Chr(13) + Chr(10) + '[Black "Vaelkesami."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r3k2r/pp2npp1/1q6/2b1P1p1/4Np2/2P5/PP4PP/R1B1QR1K';
First :='b';
Moves := 'h8:h2 h1:h2 b6-h6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ����� �� �����.';
Uroven:=1;
end;

if (partNum=93) then
begin
Names :=  '[White "Edge."]' + Chr(13) + Chr(10) + '[Black "Tolhurst."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='8/p1Qb1ppp/kp6/3P4/2P2B2/2P2q1r/P4P1P/R5K1';
First :='b';
Moves := 'h3-g3 f4:g3 d7-h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� � ����� �����.';
Uroven:=1;
end;
if (partNum=94) then
begin
Names :=  '[White "Perun"]' + Chr(13) + Chr(10) + '[Black "Caunas."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='6k1/2R3pp/5n2/3p4/r1p5/5BP1/1r3P1P/4R1K1';
First :='w';
Moves := 'f3:d5 f6:d5 e1-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=95) then
begin
Names :=  '[White "Vaeaetaetinen"]' + Chr(13) + Chr(10) + '[Black "Paasikin."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='q2r3k/1bRQp2p/p2pBbp1/1p1P4/1P2PP2/4B3/P5PP/6K1';
First :='w';
Moves := 'd7:e7 f6:e7 e3-d4 e7-f6 d4:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=96) then
begin
Names :=  '[White "Ivarson."]' + Chr(13) + Chr(10) + '[Black "Lukez."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='8/1p1k4/p5pp/4K1B1/6PP/2P5/1P3b2/8';
First :='w';
Moves := 'h4-h5 g6:h5 g4:h5';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� ������ ���������� ����� � �����.';
Uroven:=1;
end;
if (partNum=97) then
begin
Names :=  '[White "Anderssen"]' + Chr(13) + Chr(10) + '[Black "Nielsen."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='8/8/5rp1/2p1k3/8/2rP4/4PR2/R3K3';
First :='w';
Moves := 'd3-d4 c5:d4 a1-a5 e5-e6 a5-a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ����� ��� �������� �����.';
Uroven:=1;
end;
if (partNum=98) then
begin
Names :=  '[White "Peer."]' + Chr(13) + Chr(10) + '[Black "Moush."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='r5k1/ppq2p1p/2p5/6r1/1P2pN2/P3PbP1/2Q2P2/R3R1K1';
First :='b';
Moves := 'c7:f4 e3:f4 g5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ���������.';
Uroven:=1;
end;
if (partNum=99) then
begin
Names :=  '[White "Witmann."]' + Chr(13) + Chr(10) + '[Black "Rodrigez."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='8/3Q4/8/p6p/4q2P/kp1R2PK/P1r5/8';
First :='w';
Moves := 'd3:b3 a3:a2 b3-a3 a2:a3 d7-d3';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� ��������� ������� ����.';
Uroven:=1;
end;
if (partNum=100) then
begin
Names :=  '[White "Georgiev."]' + Chr(13) + Chr(10) + '[Black "Angelov."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='7r/5pk1/2p2npq/8/1P2PNP1/5PQ1/1PP5/R5K1';
First :='w';
Moves := 'f4-e6 g7-h7 g4-g5 h6-h5 e6-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����������� ���.';
Uroven:=1;
end;
if (partNum=101) then
begin
Names :=  '[White "Suetin"]' + Chr(13) + Chr(10) + '[Black "Didishko."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='r4b1k/1nq2b1p/3p1P2/4pP2/1p2P2Q/1P3B2/r1PRN3/2B3RK';
First :='w';
Moves := 'e2-d4 e5:d4 h4:h7 h8:h7 d2-h2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� ������� ������ ����� ������ ����������� � �����.';
Uroven:=1;
end;
if (partNum=102) then
begin
Names :=  '[White "Benoit"]' + Chr(13) + Chr(10) + '[Black "Roovtov."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1r1k3r/p1p3b1/1pB1R1n1/1P1p2p1/6n1/B1N5/P1P3PP/5R1K';
First :='w';
Moves := 'f1-f8 h8:f8 a3:f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ���� e8.';
Uroven:=1;
end;

if (partNum=103) then
begin
Names :=  '[White "Samkovich."]' + Chr(13) + Chr(10) + '[Black "Ervin."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='5rrk/5pb1/p1pN3p/7Q/1p2PP1R/1q5P/6P1/6RK';
First :='w';
Moves := 'h5:h6 g7:h6 h4:h6 h8-g7 d6-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� ����� ������� �����.';
Uroven:=1;
end;
if (partNum=104) then
begin
Names :=  '[White "Tryafilidis"]' + Chr(13) + Chr(10) + '[Black "Vlahos."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='5rk1/5r2/1NRR2p1/3PQ3/7p/3q3P/6P1/7K';
First :='b';
Moves := 'd3:h3 g2:h3 f7-f1 h1-g2 f8-f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� ����� ������� �����.';
Uroven:=1;
end;
if (partNum=105) then
begin
Names :=  '[White "Vaeaetaetinen"]' + Chr(13) + Chr(10) + '[Black "Paasikin."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='q2r3k/1bRQp2p/p2pBbp1/1p1P4/1P2PP2/4B3/P5PP/6K1';
First :='w';
Moves := 'd7:e7 f6:e7 e3-d4 e7-f6 d4:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=106) then
begin
Names :=  '[White "Geller."]' + Chr(13) + Chr(10) + '[Black "Garriga."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='r2k3q/2R1npr1/p3p1p1/nN1pP1N1/3P1Q1P/1P1B2P1/5P2/6K1';
First :='w';
Moves := 'f4:f7 g7:f7 g5:e6 d8-e8 b5-d6';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='��������� �������� �������� ���� ������.';
Uroven:=1;
end;
if (partNum=107) then
begin
Names :=  '[White "Sjeoberg"]' + Chr(13) + Chr(10) + '[Black "Ekstroem."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r2r2k1/2p3p1/3Pq3/p1p1bpPQ/4p3/P7/1P3PP1/R3K2R';
First :='w';
Moves := 'g5-g6 g8-f8 h5:f5 e6:f5 h1-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ���� ������ ������ ������.';
Uroven:=1;
end;
if (partNum=108) then
begin
Names :=  '[White "Lederman."]' + Chr(13) + Chr(10) + '[Black "Pytel."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='6k1/2p4p/p2p4/3Pr2q/2P5/2Q3Pb/1P3N1P/4R1K1';
First :='b';
Moves := 'h5-f3 f2:h3 f3:c3 b2:c3 e5:e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������������� ���.';
Uroven:=1;
end;
if (partNum=109) then
begin
Names :=  '[White "Ernst."]' + Chr(13) + Chr(10) + '[Black "Berg."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='3rrbk1/ppq2ppp/2p1bp2/2P5/QP1P3n/2N1B2P/P3BPP1/R4RK1';
First :='b';
Moves := 'e6:h3 g2:h3 e8:e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����������� ��������.';
Uroven:=1;
end;
if (partNum=110) then
begin
Names :=  '[White "Shirov."]' + Chr(13) + Chr(10) + '[Black "Giorgadze."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='2rr2k1/p3n1q1/4P1p1/1p3p1Q/2p5/2P5/PP2B2R/6RK';
First :='w';
Moves := 'g1:g6 e7:g6 h2-g2 g7-e5 h5:g6 g8-f8 g6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �������� ��������� ������� ������.';
Uroven:=1;
end;
if (partNum=111) then
begin
Names :=  '[White "Tishbereg"]' + Chr(13) + Chr(10) + '[Black "Vegh."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='r1b2krQ/1pR1bp1p/1q2p3/1B6/4p3/8/P1P3PP/5R1K';
First :='w';
Moves := 'c7:e7 f8:e7 h8-f6 e7-d6 f1-d1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� ������� ������ ����� ������ ����������� � �����.';
Uroven:=1;
end;
if (partNum=112) then
begin
Names :=  '[White "Varasdy"]' + Chr(13) + Chr(10) + '[Black "Polgar."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='r1bqr1k1/5p2/3p1bpp/p2P4/1R2P3/1P3PN1/R2QB1PP/7K';
First :='b';
Moves := 'f6-c3 d2:c3 a5:b4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������������� ��� ������.';
Uroven:=1;
end;

if (partNum=113) then
begin
Names :=  '[White "Refsheeger."]' + Chr(13) + Chr(10) + '[Black "Seppeur."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='1Qq5/7k/3p1p1p/2rPpNpP/4P1P1/5P2/8/1R4K1';
First :='b';
Moves := 'c5-c1 g1-h2 c8-c2 h2-h3 c1-h1';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='���������� ����� �����.';
Uroven:=1;
end;
if (partNum=114) then
begin
Names :=  '[White "Zolotov"]' + Chr(13) + Chr(10) + '[Black "Ivlev."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/p3P1pk/1p5p/2pBq3/4p3/P5P1/1P3RP1/6K1 w - - 0 9';
First :='w';
Moves := 'd5-g8 h7-h8 g8-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=115) then
begin
Names :=  '[White "Pedreny"]' + Chr(13) + Chr(10) + '[Black "Amado."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4n1rk/1q1r1p1p/4p1pQ/4P3/8/2p1BR2/1P3PP1/5R1K';
First :='w';
Moves := 'h6:h7 h8:h7 f3-h3 h7-g7 e3-h6 g7-h8 h6-f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=116) then
begin
Names :=  '[White "Doroshkevich."]' + Chr(13) + Chr(10) + '[Black "Fedorov."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='6k1/2q1rppp/Bp2p3/3bQ3/P7/1P5P/3R1PP1/6K1';
First :='w';
Moves := 'd2-c2 c7-d7 c2-c8 e7-e8 e5-c7';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� �������� 8-�� �����������.';
Uroven:=1;
end;
if (partNum=117) then
begin
Names :=  '[White "Fisher"]' + Chr(13) + Chr(10) + '[Black "Anderson."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='5q1k/2p3Rp/1p1rnP2/p4p2/2Q5/PP2P3/1B3P1P/7K';
First :='w';
Moves := 'c4:e6 d6:e6 f6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ������� ������ ������ ������.';
Uroven:=1;
end;
if (partNum=118) then
begin
Names :=  '[White "Ahues."]' + Chr(13) + Chr(10) + '[Black "Leopold."]' + Chr(13) + Chr(10) + '[EventDate "1903"]';
Fen :='3q1rk1/1bp2ppp/1p5r/8/8/1BP3Q1/PP4PP/4RRK1';
First :='w';
Moves := 'f1:f7 f8:f7 g3:c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���� �� ����� ����������� ������ f7.';
Uroven:=1;
end;
if (partNum=119) then
begin
Names :=  '[White "Aisendstat."]' + Chr(13) + Chr(10) + '[Black "Margilos."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='4r1k1/R5pp/3Q1pq1/p3P3/8/B6P/2b3PK/8';
First :='w';
Moves := 'a7-a8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������� �����.';
Uroven:=1;
end;
if (partNum=120) then
begin
Names :=  '[White "Albin."]' + Chr(13) + Chr(10) + '[Black "Bernstein."]' + Chr(13) + Chr(10) + '[EventDate "1904"]';
Fen :='1r4k1/p1p2pp1/1b1r3p/3P4/QP2q3/5N2/P4PPP/R5KR';
First :='b';
Moves := 'e4-e2 a1-f1 e2:f3 g2:f3 d6-g6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ������� ������� �����.';
Uroven:=1;
end;
if (partNum=121) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Shishkov."]' + Chr(13) + Chr(10) + '[EventDate "1919"]';
Fen :='8/8/5pkp/P2R1p2/8/3P2p1/5qP1/5R1K';
First :='w';
Moves := 'f1:f2 g3:f2 d5:f5 g6:f5 g2-g4 f5:g4 h1-g2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�� �������� ��� ����������� ���.';
Uroven:=1;
end;
if (partNum=122) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Junge."]' + Chr(13) + Chr(10) + '[EventDate "1942"]';
Fen :='3r1rk1/2q2p1p/1n5Q/1pp1pp2/8/1BP4P/1P3PP1/R2R2K1';
First :='w';
Moves := 'b3:f7 c7:f7 d1:d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������������� ������ ����� �� d8.';
Uroven:=1;
end;

if (partNum=123) then
begin
Names :=  '[White "Alehin."]' + Chr(13) + Chr(10) + '[Black "Naegli."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='8/5p1p/4R1pk/6r1/5Q1K/P3P2P/1P4q1/8';
First :='b';
Moves := 'f7-f5 b2-b4 g2-g3 f4:g3 g5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������� ���� ������ ������ �����.';
Uroven:=1;
end;
if (partNum=124) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Penn."]' + Chr(13) + Chr(10) + '[EventDate "1918"]';
Fen :='2r4k/p5pp/1p1P1r2/3B1p2/8/8/PP3PPP/4R1K1';
First :='w';
Moves := 'd6-d7 c8-d8 e1-e8 f6-f8 d5-f7 g7-g6 e8:f8 d8:f8 f7-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=125) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Strasdinch."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='r1bqkb1r/1p3ppp/p7/3N4/8/3Q1N2/PP3PPP/3R1RK1';
First :='w';
Moves := 'd5-f6 d8:f6 f1-e1 f8-e7 d3-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=126) then
begin
Names :=  '[White "Ambroz."]' + Chr(13) + Chr(10) + '[Black "Suri."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='2q1n2k/p5b1/1p1pN2p/1P1P2p1/3n4/2r1pQP1/P5BP/5RK1';
First :='w';
Moves := 'f3-f8 g7:f8 f1:f8 h8-h7 g2-e4';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=127) then
begin
Names :=  '[White "Anand"]' + Chr(13) + Chr(10) + '[Black "Ravi."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='4rk2/pp3p1Q/3qb2p/2r3pP/3p4/P7/1P2RPP1/1B2R1K1';
First :='w';
Moves := 'b1-g6 d6-f4 h7-h8 f8-e7 e2:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ������ f7 � e6.';
Uroven:=1;
end;
if (partNum=128) then
begin
Names :=  '[White "Apshennik."]' + Chr(13) + Chr(10) + '[Black "Landau."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='5rk1/3R1ppp/p5q1/3BPp2/5P2/2P1b2P/P1Q5/7K';
First :='w';
Moves := 'd5:f7 f8:f7 d7-d8 f7-f8 c2-b3 g6-f7 e5-e6 f7-e7 d8-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ���� �� ����� ����������� ������ f7.';
Uroven:=1;
end;
if (partNum=129) then
begin
Names :=  '[White "Atkinson."]' + Chr(13) + Chr(10) + '[Black "N.N."]' + Chr(13) + Chr(10) + '[EventDate "1929"]';
Fen :='r5rk/1pp1n1pp/p1n1b1q1/3p1p2/7R/2QB1N2/PB3PPP/4R1K1';
First :='w';
Moves := 'e1:e6 g6:e6 f3-g5 e6-g6 h4:h7 g6:h7 g5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������������� ������� ������.';
Uroven:=1;
end;
if (partNum=130) then
begin
Names :=  '[White "Averbah."]' + Chr(13) + Chr(10) + '[Black "Bebchuk."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='8/1p4p1/2k2p1p/5P2/4P1PP/3K4/8/8';
First :='w';
Moves := 'e4-e5 f6:e5 g4-g5 h6:g5 f5-f6 g7:f6 h4-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=131) then
begin
Names :=  '[White "Balashov"]' + Chr(13) + Chr(10) + '[Black "Biyasas."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r2q1rk1/1ppb1pp1/p1n4p/4pN2/4P3/1BP2Q2/PP3PPP/R2R2K1';
First :='w';
Moves := 'd1:d7 d8:d7 f3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=132) then
begin
Names :=  '[White "Barca"]' + Chr(13) + Chr(10) + '[Black "Tal."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='2r5/pp3pkp/6p1/8/4P1P1/5b2/PqPQ1P1P/2R1K1R1';
First :='b';
Moves := 'c8-d8 d2-e3 b2:c2 e1-f1 d8-d1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������������� ������ ����� �� d8.';
Uroven:=1;
end;

if (partNum=133) then
begin
Names :=  '[White "Barca."]' + Chr(13) + Chr(10) + '[Black "Sebestian."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='8/6pp/8/1kPPp3/1pn1P3/1N1K3P/1r4P1/2R5';
First :='w';
Moves := 'b3-d4 e5:d4 c1:c4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ ������ ����������� �������� ����.';
Uroven:=1;
end;
if (partNum=134) then
begin
Names :=  '[White "Bass"]' + Chr(13) + Chr(10) + '[Black "Doncevich."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='4rN2/p3PR2/2pb4/2p3k1/8/5K1P/P7/8';
First :='w';
Moves := 'h3-h4 g5:h4 f7-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ����������� ������� �����������.';
Uroven:=1;
end;
if (partNum=135) then
begin
Names :=  '[White "Baturin"]' + Chr(13) + Chr(10) + '[Black "Romanovskiy."]' + Chr(13) + Chr(10) + '[EventDate "1945"]';
Fen :='Q7/1pq2kpp/4bp2/3r4/2B5/4P3/Pr3PPP/2R1K2R';
First :='b';
Moves := 'd5-d1 c1:d1 c7:c4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=136) then
begin
Names :=  '[White "Bednarski."]' + Chr(13) + Chr(10) + '[Black "Adamski."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='4rrk1/2q1bppp/p2p4/1p1Pn3/3B1R2/P2B2Q1/1PP3PP/5R1K';
First :='w';
Moves := 'd3:h7 g8:h7 f4:f7 f8-g8 g3-h3 h7-g6 h3-f5 g6-h6 d4-e3';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=137) then
begin
Names :=  '[White "Bejenaru"]' + Chr(13) + Chr(10) + '[Black "Szabo."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='5rrk/3R1Qbp/6p1/6P1/8/1PP5/q5P1/5R1K';
First :='w';
Moves := 'f7:g7 g8:g7 f1:f8 g7-g8 f8-f7';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='����������� ������ ��� �������� ������� ������.';
Uroven:=1;
end;
if (partNum=138) then
begin
Names :=  '[White "Belyavskiy."]' + Chr(13) + Chr(10) + '[Black "Chandler."]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='6k1/5rpp/p7/4B3/q3p3/2P3Q1/1P1rB1PP/4R2K';
First :='w';
Moves := 'e5:g7 f7:g7 g3-b8 g8-f7 b8-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ��������������� ����� d2.';
Uroven:=1;
end;
if (partNum=139) then
begin
Names :=  '[White "Belinki."]' + Chr(13) + Chr(10) + '[Black "Pirogov."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='4rrk1/1bp2ppp/p7/1p1q4/3P1B2/2P3P1/PP5K/RN1Q2R1';
First :='b';
Moves := 'e8-e1 d1:e1 d5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ������ ������.';
Uroven:=1;
end;
if (partNum=140) then
begin
Names :=  '[White "Bellon."]' + Chr(13) + Chr(10) + '[Black "Garcia."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='6k1/7p/4p3/1p1n1Pp1/8/7K/Pr5P/3Q4';
First :='b';
Moves := 'b2-g2 d1:d5 g2:h2 h3:h2 e6:d5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=141) then
begin
Names :=  '[White "Below"]' + Chr(13) + Chr(10) + '[Black "Osatchuk."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='8/1p3pkp/2rQ1p2/3b1q2/5B2/P6P/1P2R1PK/8';
First :='w';
Moves := 'd6-f8 g7:f8 f4-h6 f8-g8 e2-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������� ������ �����.';
Uroven:=1;
end;
if (partNum=142) then
begin
Names :=  '[White "Bernstein"]' + Chr(13) + Chr(10) + '[Black "N.N"]' + Chr(13) + Chr(10) + '[EventDate "1909"]';
Fen :='3n4/8/pppN4/k7/2P5/1K6/P7/8';
First :='w';
Moves := 'c4-c5 b6-b5 a2-a3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ���� ������ ������� ������.';
Uroven:=1;
end;

if (partNum=143) then
begin
Names :=  '[White "Bialas."]' + Chr(13) + Chr(10) + '[Black "Mross."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='4r1k1/2p2ppp/p1P2n2/1p6/3P4/2Pb1P2/PP1N1KPb/R1BB4';
First :='b';
Moves := 'e8-e1 f2:e1 h2-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������������ ��������� ������ ������.';
Uroven:=1;
end;
if (partNum=144) then
begin
Names :=  '[White "Birkner"]' + Chr(13) + Chr(10) + '[Black "Nierling."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='6k1/8/2R4p/8/5qp1/P7/6P1/1R4K1';
First :='w';
Moves := 'c6-c8 g8-g7 b1-b7 g7-g6 c8-g8 g6-h5 b7-b5 h5-h4 g8:g4 h4:g4 b5-b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� � ���������� �������� ��������.';
Uroven:=1;
end;
if (partNum=145) then
begin
Names :=  '[White "Bloussenko"]' + Chr(13) + Chr(10) + '[Black "Pugachev."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='3r1q1k/pQ3B1p/8/3R2p1/6b1/6P1/PP2r2P/5RK1';
First :='w';
Moves := 'b7-b4 f8:b4 d5:d8 h8-g7 d8-g8 g7-h6 f1-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � �������.';
Uroven:=1;
end;
if (partNum=146) then
begin
Names :=  '[White "Boel."]' + Chr(13) + Chr(10) + '[Black "van Esh."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='r2qk2r/1p4p1/3p1pP1/2p1p3/p1P5/5b1B/PP1Q4/K2R3R';
First :='w';
Moves := 'h3-g2 h8:h1 d1:h1';
Comment:= '��� �����. ������� ����������� �������.' ;
Comment2:='����������� ������ ����� �������� �����.';
Uroven:=1;
end;
if (partNum=147) then
begin
Names :=  '[White "Bogatirev"]' + Chr(13) + Chr(10) + '[Black "Zagorinskiy."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='r7/5p1k/1q4pp/3R4/5P2/7P/3Q2P1/7K';
First :='b';
Moves := 'a8-a1 h1-h2 b6-g1 h2-g3 a1-a3 d5-d3 g1-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ ����� ������.';
Uroven:=1;
end;
if (partNum=148) then
begin
Names :=  '[White "Bogolubov."]' + Chr(13) + Chr(10) + '[Black "Sultan-Han."]' + Chr(13) + Chr(10) + '[EventDate "1931"]';
Fen :='8/2RR4/1r6/1k6/1p1p1nBp/1K2b3/8/8';
First :='w';
Moves := 'd7-d5 f4:d5 g4-e2 b5-a5 c7-a7 b6-a6 a7:a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���� ������.';
Uroven:=1;
end;
if (partNum=149) then
begin
Names :=  '[White "Botwinnik."]' + Chr(13) + Chr(10) + '[Black "Aleksander."]' + Chr(13) + Chr(10) + '[EventDate "1946"]';
Fen :='r5k1/q4pPp/5P2/3pP3/p1pn4/2Q3N1/6PP/5R1K';
First :='w';
Moves := 'c3:d4 a7:d4 g3-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ � ������� �����. ���� ��������� ����.';
Uroven:=1;
end;
if (partNum=150) then
begin
Names :=  '[White "Botwinnik."]' + Chr(13) + Chr(10) + '[Black "Sabo."]' + Chr(13) + Chr(10) + '[EventDate "1946"]';
Fen :='b1r3k1/7p/p3pbqB/1pPr2p1/3P2N1/5P2/PQ4P1/3RR1K1';
First :='w';
Moves := 'e1:e6 f6:d4 b2:d4 d5:d4 e6:g6 h7:g6 d1:d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='� ���������� ������� ���������� ������ ����� �� �����.';
Uroven:=1;
end;
if (partNum=151) then
begin
Names :=  '[White "Brestian"]' + Chr(13) + Chr(10) + '[Black "Esteirer."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='7k/1q2r1p1/p4p2/1p1b1PP1/1P1B1Q1P/P4B2/3nR2K/8';
First :='w';
Moves := 'e2:e7 d2:f3 f4:f3 d5:f3 e7-e8 h8-h7 g5-g6 h7-h6 e8-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ ��������� ��� ���� f3 ��� ����?';
Uroven:=1;
end;
if (partNum=152) then
begin
Names :=  '[White "Bronstein"]' + Chr(13) + Chr(10) + '[Black "Zarkov"]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='r4rkb/pbn1qpnp/1p1p2p1/1P1Pp1PP/2P1P2Q/2N1BPNB/3K3R/7R';
First :='w';
Moves := 'h5:g6 f7:g6 h4:h7 g8:h7 h3-e6 g7-h5 g3:h5 f8-g8 h5-f4 h7-g7 h2-h7 g7-f8 f4:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ���� ������ ������� ������.';
Uroven:=1;
end;

if (partNum=153) then
begin
Names :=  '[White "Bronstein."]' + Chr(13) + Chr(10) + '[Black "Geller."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='4r1k1/pR3pp1/1n3P1p/q2p4/5N1P/P1rQpP2/8/2B2RK1';
First :='w';
Moves := 'd3-g6 f7:g6 b7:g7 g8-f8 f4:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� ����� � ���������� ������.';
Uroven:=1;
end;
if (partNum=154) then
begin
Names :=  '[White "Bronstein"]' + Chr(13) + Chr(10) + '[Black "Goldenov."]' + Chr(13) + Chr(10) + '[EventDate "1944"]';
Fen :='r2qk1r1/p4p2/bp2pQp1/1n1pP1Bp/7P/3P2N1/P1R2PP1/2R3K1';
First :='w';
Moves := 'c2-c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=155) then
begin
Names :=  '[White "Brunner"]' + Chr(13) + Chr(10) + '[Black "Galaher."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='6rk/1p1b3p/3P2r1/1PB1p2q/4Nb2/5P2/4QR1P/3R3K';
First :='b';
Moves := 'd7:b5 e2:b5 f4:h2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=156) then
begin
Names :=  '[White "Buholc"]' + Chr(13) + Chr(10) + '[Black "Woda."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='5rk1/p5p1/3R3p/2pP4/2N1P2b/3PB1qb/1P1Q2B1/6K1';
First :='b';
Moves := 'f8-f1 g1:f1 h3:g2 f1-g1 g2:e4 g1-f1 g3-h3 f1-g1 h3-h1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ��� ���.';
Uroven:=1;
end;
if (partNum=157) then
begin
Names :=  '[White "Burjan"]' + Chr(13) + Chr(10) + '[Black "Albert."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='3rq1k1/3b1pb1/Q5pp/N2p1n2/3P1B1P/2P3P1/P3rPB1/1R3K1R';
First :='b';
Moves := 'd7-b5 a6:b5 e2-e1 b1:e1 e8:b5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ������ �����.';
Uroven:=1;
end;
if (partNum=158) then
begin
Names :=  '[White "Burclav"]' + Chr(13) + Chr(10) + '[Black "Strack."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='3r1rbk/pp4p1/4Q2p/q1bRP3/8/1P4P1/PB3PBP/R5K1';
First :='w';
Moves := 'e6:h6 g7:h6 e5-e6 h8-h7 g2-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��������� ������ �����.';
Uroven:=1;
end;
if (partNum=159) then
begin
Names :=  '[White "Capablanka"]' + Chr(13) + Chr(10) + '[Black "Lasker."]' + Chr(13) + Chr(10) + '[EventDate "1914"]';
Fen :='1R6/k1nK4/1p6/1P6/8/8/8/8';
First :='w';
Moves := 'b8-a8 c7:a8 d7-c8 a8-c7 c8:c7 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� ����� ������������.';
Uroven:=1;
end;
if (partNum=160) then
begin
Names :=  '[White "Capablanka"]' + Chr(13) + Chr(10) + '[Black "Rossolimo."]' + Chr(13) + Chr(10) + '[EventDate "1938"]';
Fen :='r5k1/5pp1/Br5p/2R1n3/8/1pK1PP2/1P5P/R7';
First :='w';
Moves := 'a6-d3 a8-e8 c5:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� 8-�� �����������.';
Uroven:=1;
end;
if (partNum=161) then
begin
Names :=  '[White "Capablanka"]' + Chr(13) + Chr(10) + '[Black "Lasker."]' + Chr(13) + Chr(10) + '[EventDate "1914"]';
Fen :='1R6/k1nK4/1p6/1P6/8/8/8/8';
First :='w';
Moves := 'b8-a8 c7:a8 d7-c8 a8-c7 c8:c7 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� ����� ������������.';
Uroven:=1;
end;
if (partNum=162) then
begin
Names :=  '[White "Carro"]' + Chr(13) + Chr(10) + '[Black "Rossolimo."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='5rk1/5p1p/3Q2p1/p3n3/4B3/7P/1qP1R1P1/7K';
First :='b';
Moves := 'b2-c1 h1-h2 c1-f4 h2-h1 f4-f1 h1-h2 e5-g4 h3:g4 f1:e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� �������������� ��������� ������ ������.';
Uroven:=1;
end;
if (partNum=163) then
begin
Names :=  '[White "Cavendish"]' + Chr(13) + Chr(10) + '[Black "Mars."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r5r1/pp3qbk/2p2p2/3p3p/2nP1NPp/N1P2P2/PP1Q3P/4RRK1';
First :='w';
Moves := 'a3:c4 d5:c4 e1-e7 f7:e7 d2-c2 h7-h8 f4-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��������� �� ������� ����� � ������.';
Uroven:=1;
end;
if (partNum=164) then
begin
Names :=  '[White "Halifman"]' + Chr(13) + Chr(10) + '[Black "Asseev."]' + Chr(13) + Chr(10) + '[EventDate "1984"]';
Fen :='1rr1bbk1/2qn1ppp/pp2p3/8/2P1N3/1P4P1/PB2QPBP/2RR2K1';
First :='w';
Moves := 'd1:d7 e8:d7 e4-f6 g8-h8 e2-h5 h7-h6 h5:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��������� �� ������� ����� � ������.';
Uroven:=1;
end;
if (partNum=165) then
begin
Names :=  '[White "Chandler"]' + Chr(13) + Chr(10) + '[Black "Hartung."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='6k1/p4pp1/1p5p/3p1P2/5B2/2Pq1nPb/P1Q2R1P/7K';
First :='b';
Moves := 'h3-g2 h1:g2 f3-e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ��� �����.';
Uroven:=1;
end;

if (partNum=166) then
begin
Names :=  '[White "Chevaldonet"]' + Chr(13) + Chr(10) + '[Black "Blanc."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='2r1q1r1/6bk/p2pN1pp/1p1N4/4P3/3R3Q/PnP4P/1K4R1';
First :='w';
Moves := 'd5-f6 g7:f6 h3:h6 h7:h6 d3-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���������.';
Uroven:=1;
end;
if (partNum=167) then
begin
Names :=  '[White "Costa"]' + Chr(13) + Chr(10) + '[Black "Bellon."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='3rkb2/5pp1/p6r/6n1/Np4K1/3bP2p/PP3P1P/RNR1B3';
First :='b';
Moves := 'd3-e2 g4:g5 d8-d5 g5-f4 h6-h4 f4-g3 h4-g4 g3:h3 d5-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������, ����� ����.';
Uroven:=1;
end;
if (partNum=168) then
begin
Names :=  '[White "Cramer"]' + Chr(13) + Chr(10) + '[Black "Cilverberg."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='r2q1rk1/pb3pbp/np4pQ/3p4/1P1N4/P2BP3/1B3PPP/R3K2R';
First :='w';
Moves := 'h6:g7 g8:g7 d4-f5 g7-g8 f5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� � ���� ����� ������.';
Uroven:=1;
end;
if (partNum=169) then
begin
Names :=  '[White "Cramling"]' + Chr(13) + Chr(10) + '[Black "Franco."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='r5k1/1b1n1pbp/p5p1/q1pP2N1/1pR2B2/5Q1P/1P3PP1/5BK1';
First :='w';
Moves := 'f4-c7 a5:c7 f3:f7 g8-h8 c4-h4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� �� f7 � ������� ������.';
Uroven:=1;
end;
if (partNum=170) then
begin
Names :=  '[White "Damjanovich"]' + Chr(13) + Chr(10) + '[Black "Lutikov."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='5qk1/2p2r1p/p1p4P/1p6/3P4/1Q6/P1P3P1/5RK1';
First :='w';
Moves := 'b3-g3 g8-h8 g3-e5 h8-g8 e5-g5 g8-h8 f1:f7 f8:f7 g5-d8 f7-g8 d8-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� ����� � ������.';
Uroven:=1;
end;
if (partNum=171) then
begin
Names :=  '[White "De Roy"]' + Chr(13) + Chr(10) + '[Black "Kramer."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='8/1p5k/5pp1/7p/P3qP1K/2Q3PP/8/8';
First :='b';
Moves := 'g6-g5 h4:h5 e4-e2 g3-g4 e2-e8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� � ������� ������.';
Uroven:=1;
end;
if (partNum=172) then
begin
Names :=  '[White "Delanoy"]' + Chr(13) + Chr(10) + '[Black "Morphy."]' + Chr(13) + Chr(10) + '[EventDate "1858"]';
Fen :='4r1k1/ppB3p1/6b1/2Pq1p2/NP1p4/3P4/P4KPP/R1Q5';
First :='b';
Moves := 'e8-e2 f2:e2 d5:g2 e2-e1 g2-g1 e1-d2 g1-f2 d2-d1 g6-h5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������, ����������� �����.';
Uroven:=1;
end;
if (partNum=173) then
begin
Names :=  '[White "Djurhuus"]' + Chr(13) + Chr(10) + '[Black "Engedal."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='r1b1nr1k/pp2nq2/2p1ppp1/7p/2PPQ2P/3B1NN1/PP3PR1/1K4R1';
First :='w';
Moves := 'g3:h5 g6:h5 e4-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ����� g � �����.';
Uroven:=1;
end;
if (partNum=174) then
begin
Names :=  '[White "Durao"]' + Chr(13) + Chr(10) + '[Black "Catozi."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='1r6/5RR1/7p/2p1r1p1/2p1P1k1/3P2P1/2P3K1/8';
First :='w';
Moves := 'f7-f4 g4-h5 f4-h4 g5:h4 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
end;
if (partNum=175) then
begin
Names :=  '[White "Duras"]' + Chr(13) + Chr(10) + '[Black "Spielmann."]' + Chr(13) + Chr(10) + '[EventDate "1907"]';
Fen :='2k1r3/2p2pp1/1n6/N1q3Pp/Pn6/4B3/4QP1P/1K1R4';
First :='w';
Moves := 'd1-d8 c8:d8 a5-b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������� ��� �����.';
Uroven:=1;
end;

if (partNum=176) then
begin
Names :=  '[White "Dutch"]' + Chr(13) + Chr(10) + '[Black "Sudgen."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='2kr1bnr/Qp1bpppp/8/3q4/8/2P5/PP3PPP/RNB1KB1R';
First :='b';
Moves := 'd5-d1 e1:d1 d7-g4 d1-c2 g4-d1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� ������� ���.';
Uroven:=1;
end;
if (partNum=177) then
begin
Names :=  '[White "Erneste"]' + Chr(13) + Chr(10) + '[Black "Serper."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='6k1/5pp1/Q3p2p/5b2/8/8/1PPR1qPP/2KBr3';
First :='b';
Moves := 'e1:d1 c1:d1 f2-g1 d1-e2 f5-g4 e2-d3 g1-f1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����, ����������� ��������.';
Uroven:=1;
end;
if (partNum=178) then
begin
Names :=  '[White "Euve"]' + Chr(13) + Chr(10) + '[Black "Tomas."]' + Chr(13) + Chr(10) + '[EventDate "1931"]';
Fen :='5r1k/pb3B1p/3r4/6Q1/1p2q3/8/PP3RPP/5R1K';
First :='w';
Moves := 'f7-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ � ��������������� ��������.';
Uroven:=1;
end;
if (partNum=179) then
begin
Names :=  '[White "Euve"]' + Chr(13) + Chr(10) + '[Black "Kuehn."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='5r1k/6pp/2Q5/1pb5/8/1B4qP/PP4P1/3R3K';
First :='b';
Moves := 'c5-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ���� ����������� ����� �����������.';
Uroven:=1;
end;
if (partNum=180) then
begin
Names :=  '[White "Evans"]' + Chr(13) + Chr(10) + '[Black "Bisguer."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='4bk1r/Q4ppp/1p2q3/8/4B3/8/P4PPP/4R1K1';
First :='w';
Moves := 'a7-a3 e6-e7 e4-c6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �������� ����� � �����.';
Uroven:=1;
end;
if (partNum=181) then
begin
Names :=  '[White "Farbood"]' + Chr(13) + Chr(10) + '[Black "Panno."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r2q3k/1p3rb1/6p1/p1Np3P/3p4/PP1P1N1n/4PP2/2RQRK2';
First :='b';
Moves := 'd8-h4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� � ������� ������. ����� f2 ����';
Uroven:=1;
end;
if (partNum=182) then
begin
Names :=  '[White "Fichtl"]' + Chr(13) + Chr(10) + '[Black "Blatny."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='3kb3/8/3P2r1/P1Q2p2/5P2/8/7P/7K';
First :='b';
Moves := 'e8-c6 c5:c6 g6-g1';
Comment:= '��� ������. ������� ����������� �������. �������� �����';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;
if (partNum=183) then
begin
Names :=  '[White "Finegold"]' + Chr(13) + Chr(10) + '[Black "Renet."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='6R1/5r1k/1p1p1q1r/1P1PpP2/8/8/6QP/6RK';
First :='w';
Moves := 'g8-g6 f6:f5 g6-g7 h7-h8 g7-g8 h8-h7 g2-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �� ����� g.';
Uroven:=1;
end;
if (partNum=184) then
begin
Names :=  '[White "Finn"]' + Chr(13) + Chr(10) + '[Black "Petersen."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/3k4/P3p1R1/1pP2p2/7r/P7/2K5/8';
First :='w';
Moves := 'g6-g8 h4-a4 a6-a7 a4:a7 g8-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ���������� ����� a � �����.';
Uroven:=1;
end;
if (partNum=185) then
begin
Names :=  '[White "Fiori"]' + Chr(13) + Chr(10) + '[Black "Lubrano."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='3rb1k1/1p2r1pp/5p2/R1Rp4/pP1P4/P3B3/5PPP/6K1';
First :='b';
Moves := 'b7-b6 c5:d5 d8-c8 a5-a6 c8-c1 e3:c1 e7-e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ����� � �������� ������ �����������.';
Uroven:=1;
end;
if (partNum=186) then
begin
Names :=  '[White "Fisher"]' + Chr(13) + Chr(10) + '[Black "Shocron."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='1rq3k1/4bp1p/4R1p1/4p3/B1p1P1Q1/2P1B1P1/5PK1/8';
First :='w';
Moves := 'a4-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �������� ������ ������������� �����.';
Uroven:=1;
end;
if (partNum=187) then
begin
Names :=  '[White "Fils"]' + Chr(13) + Chr(10) + '[Black "Poluljahov."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='2b5/6k1/p6p/4p3/4P2R/r2B4/3K3P/8';
First :='b';
Moves := 'a3:d3 d2:d3 g7-g6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ������� ��� ����� �����.';
Uroven:=1;
end;
if (partNum=188) then
begin
Names :=  '[White "Freimann"]' + Chr(13) + Chr(10) + '[Black "Rabinovich."]' + Chr(13) + Chr(10) + '[EventDate "1934"]';
Fen :='rnbq1rk1/pp3pbp/2p2np1/3p4/N2P4/Q3PN2/PP1B1PPP/R3KB1R';
First :='w';
Moves := 'a4-b6 d8:b6 d2-a5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������������ ����� ������.';
Uroven:=1;
end;
if (partNum=189) then
begin
Names :=  '[White "Fricker"]' + Chr(13) + Chr(10) + '[Black "De Vita."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='k1B5/5Q1p/6p1/4B3/2p1q3/b5PK/5P1P/4n3';
First :='w';
Moves := 'c8-b7 e4:b7 f7-e8 a8-a7 e5-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� � �����.';
Uroven:=1;
end;
if (partNum=190) then
begin
Names :=  '[White "Friedmann"]' + Chr(13) + Chr(10) + '[Black "Paterson."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='8/5pk1/4p1pp/4P3/p5PK/P4q1P/3Q4/8';
First :='w';
Moves := 'd2:h6 g7:h6 g4-g5 ';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;

if (partNum=191) then
begin
Names :=  '[White "Gassanov"]' + Chr(13) + Chr(10) + '[Black "Arakelov."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='r4rk1/1bqnppbp/3p2pB/8/3PP1PP/1P6/1P1Q2B1/1K1R2NR';
First :='b';
Moves := 'g7:h6 d2:h6 a8-a1 b1:a1 c7-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� ����� �� ������ ������ ������';
Uroven:=1;
end;
if (partNum=192) then
begin
Names :=  '[White "Gasseholm"]' + Chr(13) + Chr(10) + '[Black "Cristiansen."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2rr1bk1/q4ppp/1p2p3/p1n5/6R1/1P2Q1P1/PB2PPBP/5RK1';
First :='w';
Moves := 'b2-f6 d8-d6 g4:g7 f8:g7 e3-g5 g8-f8 g5:g7 f8-e8 g7-g8 e8-d7 g8:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������� ����������� ����� � ������ ������ �������� ����� f, � ����� �������.';
Uroven:=1;
end;
if (partNum=193) then
begin
Names :=  '[White "Gelfand"]' + Chr(13) + Chr(10) + '[Black "Asseev."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='6k1/p4p2/3qbQp1/8/4Pp2/2N2P2/PP1r3P/6RK';
First :='b';
Moves := 'e6-g4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������������� �����';
Uroven:=1;
end;
if (partNum=194) then
begin
Names :=  '[White "Geller"]' + Chr(13) + Chr(10) + '[Black "Gurgenidze."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='7q/4pk1r/p2p1p2/7r/2PBPPQ1/1P6/P5R1/6K1';
First :='w';
Moves := 'd4:f6 e7:f6 g4-d7';
Comment:= '��� �����. ������� ����������� �������. �������� �����';
Comment2:='�������� ������ ������ ��� ������� ����.';
Uroven:=1;
end;
if (partNum=195) then
begin
Names :=  '[White "Grabarchuk"]' + Chr(13) + Chr(10) + '[Black "Maicevskiy."]' + Chr(13) + Chr(10) + '[EventDate "1933"]';
Fen :='8/8/7k/7p/6rP/4K3/2B5/7R';
First :='b';
Moves := 'g4-g1 c2-e4 g1:h1';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='�������������� ������ ���� � ��� ��� ���� h8 ������ ��� ����������� �����.';
Uroven:=1;
end;
if (partNum=196) then
begin
Names :=  '[White "Gutu"]' + Chr(13) + Chr(10) + '[Black "Wechsler."]' + Chr(13) + Chr(10) + '[EventDate "1923"]';
Fen :='4k3/4np1r/2p3p1/3pP3/5PPp/2P5/PR1KQB1q/8';
First :='w';
Moves := 'b2-b8 e8-d7 b8-d8 d7:d8 f2-b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����.';
Uroven:=1;
end;
if (partNum=197) then
begin
Names :=  '[White "Hansen"]' + Chr(13) + Chr(10) + '[Black "Moeller."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='6r1/8/p3k3/1pR2p2/2P1b2p/5p1P/P1PR2P1/7K';
First :='b';
Moves := 'g8:g2 d2:g2 f3-f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� f � �����.';
Uroven:=1;
end;
if (partNum=198) then
begin
Names :=  '[White "Hartston"]' + Chr(13) + Chr(10) + '[Black "Withely."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='2r1k3/pR2nr1Q/3q4/P7/3p1p2/P1p3P1/7P/4R1K1';
First :='w';
Moves := 'h7-g8 f7-f8 g8-g6 d6:g6 e1:e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������������ ����� ������, ��������� ���.';
Uroven:=1;
end;
if (partNum=199) then
begin
Names :=  '[White "Havullina"]' + Chr(13) + Chr(10) + '[Black "Kajelannen."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='3k1r1r/1p2bppp/p2p1n2/qb1N2B1/2Q1P3/6R1/PPP1BPPP/3R2K1';
First :='w';
Moves := 'g5-d2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������������ ����� ������.';
Uroven:=1;
end;
if (partNum=200) then
begin
Names :=  '[White "Hector"]' + Chr(13) + Chr(10) + '[Black "Nielsen."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='3r1rk1/pp2Rp1p/2p3pQ/2q5/4bN2/1B5P/PP3PP1/6K1';
First :='w';
Moves := 'f4-e6 c5-e5 e6:f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������������ ������ ����.';
Uroven:=1;
end;

if (partNum=201) then
begin
Names :=  '[White "Himsotch"]' + Chr(13) + Chr(10) + '[Black "Weber."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='1k6/1b2b3/p5R1/Q2Bp2r/3p4/8/P5PP/3q2BK';
First :='w';
Moves := 'g6-g8 b8-a7 g8-a8 a7:a8 a5:a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ����� ��� ���������� ��� ���.';
Uroven:=1;
end;
if (partNum=202) then
begin
Names :=  '[White "Hegrenetz"]' + Chr(13) + Chr(10) + '[Black "Lorentc."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='3r2k1/p3b2p/1p2p1p1/5p2/1PP1nP2/2B1NRPq/PQ5P/6K1';
First :='b';
Moves := 'e7-f6 c3:f6 d8-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��������� ���� d2, ��� ��������� ���� ����� ������.';
Uroven:=1;
end;
if (partNum=203) then
begin
Names :=  '[White "Hennings"]' + Chr(13) + Chr(10) + '[Black "Walter."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='3b2k1/3b4/1p3pPK/p1p1p3/P1P5/1P2B3/2B5/8';
First :='w';
Moves := 'e3-g5 d8-e7 g6-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������� �����, ����� �� ��������� ������� �����.';
Uroven:=1;
end;
if (partNum=204) then
begin
Names :=  '[White "Hertel"]' + Chr(13) + Chr(10) + '[Black "Zhacko."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='br5r/5pk1/Q1p1pqp1/4b3/3NP3/2P2BP1/PP3PK1/1R1R4';
First :='b';
Moves := 'e5:d4 c3:d4 h8-h2 g2:h2 f6:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������� ���� �������� �������� ������.';
Uroven:=1;
end;
if (partNum=205) then
begin
Names :=  '[White "Hjartarson"]' + Chr(13) + Chr(10) + '[Black "Belyavskiy."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='5bk1/5pp1/7p/1pP1B3/7P/4QPP1/r2NRKb1/7q';
First :='b';
Moves := 'a2:d2 e3:d2 f8:c5 e5-d4 h1-f1 f2-e3 f1:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ����� � ������. ��� ������� ���� ��� ������ �� f1.';
Uroven:=1;
end;
if (partNum=206) then
begin
Names :=  '[White "Holmes"]' + Chr(13) + Chr(10) + '[Black "Vavra."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='5k2/p2b2bQ/1p5p/3pq1pP/1P1p1p2/P1r5/5PPK/1BN4R';
First :='b';
Moves := 'c3-h3 g2:h3 f4-f3 h2-g1 e5-e1 g1-h2 e1:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������ �����.';
Uroven:=1;
end;
if (partNum=207) then
begin
Names :=  '[White "Hort"]' + Chr(13) + Chr(10) + '[Black "Karpov."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='r4rk1/3n1pp1/ppq2n1p/3p4/PbpP3B/2N1PB2/1PQ2PPP/2RR2K1';
First :='w';
Moves := 'c3:d5 f6:d5 c2-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �� ������.';
Uroven:=1;
end;
if (partNum=208) then
begin
Names :=  '[White "Hort"]' + Chr(13) + Chr(10) + '[Black "Portish."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='5rk1/r1q2p1p/p3pQ2/1bPp1p2/1R6/3BP3/P4PPP/1R4K1';
First :='w';
Moves := 'b4-g4 f5:g4 f6-g5 g8-h8 g5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=209) then
begin
Names :=  '[White "Horvart"]' + Chr(13) + Chr(10) + '[Black "Jacobsen."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='5k2/5p2/1K3P2/1P4Q1/8/8/5r2/5r2';
First :='w';
Moves := 'g5-h6 f8-e8 h6-e3 e8-f8 e3-a3 f8-g8 a3-g3 g8-f8 g3-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� ���������� �����.';
Uroven:=1;
end;
if (partNum=210) then
begin
Names :=  '[White "Hradescky"]' + Chr(13) + Chr(10) + '[Black "Hardiksey."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='8/8/5p2/P1kb3P/R2bp3/8/5PK1/8';
First :='b';
Moves := 'e4-e3 g2-f1 d5-g2 f1:g2 e3-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� e � �����.';
Uroven:=1;
end;

if (partNum=211) then
begin
Names :=  '[White "Hoerberg"]' + Chr(13) + Chr(10) + '[Black "Awerbah."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='2r2rk1/pb4pp/1p2p3/4Npq1/3P1n2/5P2/PP1R2PP/RB2Q1K1';
First :='b';
Moves := 'c8-c1 e1:c1 f4-e2 d2:e2 g5:c1 g1-f2 b7-a6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����, ��������� ������.';
Uroven:=1;
end;
if (partNum=212) then
begin
Names :=  '[White "Hubner"]' + Chr(13) + Chr(10) + '[Black "Tal."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='1r3rk1/p4pp1/q3p2p/2p1P1n1/1bPn3N/1PN1R1PP/P5Q1/2B2RK1';
First :='b';
Moves := 'g5:h3 g2:h3 b4:c3 e3:c3 d4-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=213) then
begin
Names :=  '[White "Huelsmann"]' + Chr(13) + Chr(10) + '[Black "Engert."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='r4rk1/ppp2pp1/3pbqnp/4p3/2B1Pn2/2P2NB1/PPPR1PPP/R4QK1';
First :='b';
Moves := 'f4:g2 g1:g2 e6-h3 g2:h3 f6:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ ����� ������ �� ��� ��������� �������.';
Uroven:=1;
end;
if (partNum=214) then
begin
Names :=  '[White "Isakov"]' + Chr(13) + Chr(10) + '[Black "Nikitin."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='3rkb1r/p2bpp1p/2B3p1/2p5/Q3P3/2q5/P3KPPP/1RB3NR';
First :='b';
Moves := 'c3-d3 e2:d3 d7:c6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������, ����������� ���������� ��� ���.';
Uroven:=1;
end;
if (partNum=215) then
begin
Names :=  '[White "Iverson"]' + Chr(13) + Chr(10) + '[Black "Clausen."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='r1b1r1k1/4bp1p/p2p1B2/q3p1PQ/4P3/1P1R2R1/1pP2P1P/1K6';
First :='w';
Moves := 'h5:h7 g8:h7 g3-h3 c8:h3 d3:h3 h7-g6 h3-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������, ��������� ������ �����.';
Uroven:=1;
end;
if (partNum=216) then
begin
Names :=  '[White "Ivkov"]' + Chr(13) + Chr(10) + '[Black "Dzurich."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='r3brk1/pp3pp1/2n4p/q2B4/8/P1R2N2/1PQ2PPP/3R2K1';
First :='w';
Moves := 'f3-g5 h6:g5 c3-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� �� ���� h7.';
Uroven:=1;
end;
if (partNum=217) then
begin
Names :=  '[White "Janof"]' + Chr(13) + Chr(10) + '[Black "Sedeif."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r4b1r/pp3k1p/3p1np1/q2p1p2/3Np3/1P2PP2/PBP3PP/R2Q1RK1';
First :='w';
Moves := 'd4:f5 g6:f5 b2:f6 f7:f6 d1-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� �� h8 ��� ������.';
Uroven:=1;
end;
if (partNum=218) then
begin
Names :=  '[White "Jenson"]' + Chr(13) + Chr(10) + '[Black "Borg."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='8/p7/3P2pp/1p2k3/2r1N1p1/5n2/P3R2P/7K';
First :='w';
Moves := 'd6-d7 c4-d4 e4-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � �����, ��������� ������� ���.';
Uroven:=1;
end;
if (partNum=219) then
begin
Names :=  '[White "Jezak"]' + Chr(13) + Chr(10) + '[Black "Hertel."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='3r2k1/2q3p1/p1P2r1p/1p2p3/8/4QB2/PPR3PP/6K1';
First :='b';
Moves := 'e5-e4 e3:e4 c7-b6 g1-f1 d8-d1 f1-e2 b6-g1 e4-e8 f6-f8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �������� �������� �� ������ �����������.';
Uroven:=1;
end;
if (partNum=220) then
begin
Names :=  '[White "Jones"]' + Chr(13) + Chr(10) + '[Black "de Vault."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='3rr1k1/pp3ppb/2pbp2p/q6P/5PQ1/1BP1B3/PP6/2KR1N1R';
First :='b';
Moves := 'a5:c3 b2:c3 d6-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� � ������� �����.';
Uroven:=1;
end;

if (partNum=221) then
begin
Names :=  '[White "Juarez"]' + Chr(13) + Chr(10) + '[Black "Sangunetti."]' + Chr(13) + Chr(10) + '[EventDate "1950"]';
Fen :='2k2r2/ppq1r1pp/3R4/nB2pp2/2Q5/2P5/2P2PPP/3R2K1';
First :='w';
Moves := 'd6-d8 f8:d8 d1:d8 c8:d8 c4-g8 e7-e8 g8:e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � 4 ����.';
Uroven:=1;
end;
if (partNum=222) then
begin
Names :=  '[White "Kahn"]' + Chr(13) + Chr(10) + '[Black "N.N."]' + Chr(13) + Chr(10) + '[EventDate "1885"]';
Fen :='8/r3r1N1/2p2b2/2K5/p3kp1p/R5PB/5P2/8';
First :='w';
Moves := 'h3-g2 e4-e5 a3-e3 f4:e3 f2-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � 3 ����.';
Uroven:=1;
end;
if (partNum=223) then
begin
Names :=  '[White "Kajaste"]' + Chr(13) + Chr(10) + '[Black "Nilssen."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='5r2/ppR2Nbk/1n3qp1/1b5p/8/1B6/P2Q1PPP/3R2K1';
First :='w';
Moves := 'd2-h6 g7:h6 f7-g5 h7-h8 c7-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � 3 ����.';
Uroven:=1;
end;
if (partNum=224) then
begin
Names :=  '[White "Kan"]' + Chr(13) + Chr(10) + '[Black "Simagin."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='2k4r/ppp3p1/5p2/1P6/r3P3/4K3/3R2B1/3R4';
First :='w';
Moves := 'd2-d8 h8:d8 g2-h3 d8-d7 d1:d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����, �������� ����� ����������� �������.';
Uroven:=1;
end;
if (partNum=225) then
begin
Names :=  '[White "Kan"]' + Chr(13) + Chr(10) + '[Black "Chernov."]' + Chr(13) + Chr(10) + '[EventDate "1950"]';
Fen :='8/1rP2kpp/4b3/1B3p2/1B2n3/7P/6P1/2R3K1';
First :='w';
Moves := 'b5-c4 b7:c7 c4:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������������ ��������� �����.';
Uroven:=1;
 end;
 if (partNum=226) then
begin
Names :=  '[White "Karpov"]' + Chr(13) + Chr(10) + '[Black "Taimanov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='8/6k1/1P1p2p1/3Ppn2/3q4/8/6PP/rR2QB1K';
First :='b';
Moves := 'f5-g3 h2:g3 a1-a8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� �������� ����� �������� ������� ������.';
Uroven:=1;
end;
if (partNum=227) then
begin
Names :=  '[White "Katalimov"]' + Chr(13) + Chr(10) + '[Black "Ilvickiy."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='rnb1k2r/pp2b1pp/2p2pn1/q3P2Q/5p2/PB6/1BPP2PP/RN2K1NR';
First :='w';
Moves := 'b3-f7 e8:f7 e5-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��, ��� ��� ����� ����� �� ����� �����������.';
Uroven:=1;
end;
if (partNum=228) then
begin
Names :=  '[White "Keres"]' + Chr(13) + Chr(10) + '[Black "Sabo."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='1r2rk2/3b1pp1/p1p1p2p/q3P3/5Q1P/2NB2R1/PPP3P1/2K5';
First :='w';
Moves := 'g3:g7 f8:g7 f4-f6 g7-f8 d3-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��������� ������� ������ ������ ������.';
Uroven:=1;
end;
if (partNum=229) then
begin
Names :=  '[White "Halifman"]' + Chr(13) + Chr(10) + '[Black "Sokolov."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='4r1kb/p4p2/1p3Pb1/4B3/2p4R/2Pr1BR1/6PP/6K1';
First :='w';
Moves := 'g3:g6 f7:g6 h4:h8 g8:h8 f6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� ����� ��� �����.';
Uroven:=1;
end;
if (partNum=230) then
begin
Names :=  '[White "Kienninger"]' + Chr(13) + Chr(10) + '[Black "Herman."]' + Chr(13) + Chr(10) + '[EventDate "1940"]';
Fen :='8/4kpp1/4p1p1/Q2pP1P1/2pR1P2/PrP3Pq/1P6/2K5';
First :='w';
Moves := 'a5:c7 e7-e8 c7-c8 e8-e7 d4:d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� � �����, ��������� ������ �����.';
Uroven:=1;
end;
if (partNum=231) then
begin
Names :=  '[White "Kijk"]' + Chr(13) + Chr(10) + '[Black "Maeki"]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='4r1k1/p4p2/3R2p1/5qNp/Q3N1nP/8/P4PP1/6K1';
First :='b';
Moves := 'f5:f2 e4:f2 e8-e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� �����.';
Uroven:=1;
end;
if (partNum=232) then
begin
Names :=  '[White "King"]' + Chr(13) + Chr(10) + '[Black "Bendjanian."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='5k2/pbq2pp1/1p5r/1Bp1nQ2/4N3/5PP1/PPP5/3R2K1';
First :='w';
Moves := 'f5:e5 c7:e5 d1-d8 e5-e8 d8:e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � 3 ����.';
Uroven:=1;
end;
if (partNum=233) then
begin
Names :=  '[White "Krylov"]' + Chr(13) + Chr(10) + '[Black "Vatnikov."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='3q4/3b1Bpk/1r1b2Np/5p1P/1p3P2/1Q4P1/5P2/4R1K1';
First :='w';
Moves := 'e1-e8 d8:e8 f7:e8 d7:e8 b3-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� �����������.';
Uroven:=1;
end;
if (partNum=234) then
begin
Names :=  '[White "Kjaner"]' + Chr(13) + Chr(10) + '[Black "Mikov."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='2r2rk1/pb3ppp/1p2pb2/2nnN3/2NRq3/1P2P1B1/PQ2BPPP/5RK1';
First :='b';
Moves := 'e4:g2 g1:g2 d5-f4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� ������� ���.';
Uroven:=1;
end;
if (partNum=235) then
begin
Names :=  '[White "Klaman"]' + Chr(13) + Chr(10) + '[Black "Lissicin."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='2kr1r2/p6p/5Pp1/2pP4/1qp2Q1P/7R/PP6/1KR5';
First :='w';
Moves := 'h3-b3 c4:b3 f4:b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������������ ��������� �����.';
Uroven:=1;
 end;
 if (partNum=236) then
begin
Names :=  '[White "Kondratiev"]' + Chr(13) + Chr(10) + '[Black "Geller."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='1k6/3b2p1/3P3p/qppn1P2/3p2P1/1P3PBP/1PP1Q3/2KN4';
First :='w';
Moves := 'e2-e8 d7:e8 d6-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ���������� ����� � �����.';
Uroven:=1;
end;
if (partNum=237) then
begin
Names :=  '[White "Kopylov"]' + Chr(13) + Chr(10) + '[Black "Karlsson."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='3r2k1/1p4pp/2p5/pnP2b2/2K2N1P/P4P2/5BP1/7R';
First :='b';
Moves := 'd8-d3 f4:d3 f5-e6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������� �����.';
Uroven:=1;
end;
if (partNum=238) then
begin
Names :=  '[White "Krahstoevers"]' + Chr(13) + Chr(10) + '[Black "Serfice."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='7k/6q1/6r1/7K/6pP/6P1/5Q2/8';
First :='w';
Moves := 'f2-f6 h8-h7 f6:g7';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;
if (partNum=239) then
begin
Names :=  '[White "Kratkovskiy"]' + Chr(13) + Chr(10) + '[Black "Lapshis."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='5r1k/4b1np/pq1p2p1/1pr1p3/4P1N1/PQ1P4/1P4PP/2R2RK1';
First :='w';
Moves := 'f1:f8 e7:f8 b3-g8 h8:g8 g4-h6 g8-h8 h6-f7';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� ������ �����.';
Uroven:=1;
end;
if (partNum=240) then
begin
Names :=  '[White "Krogius"]' + Chr(13) + Chr(10) + '[Black "Gaufin."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='rnb2rk1/pp3ppp/3b4/2pPp1Bq/2P5/2PB1N2/P4PPP/R2QR1K1';
First :='w';
Moves := 'g5-e7 d6:e7 e1:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� �����������.';
Uroven:=1;
end;
if (partNum=241) then
begin
Names :=  '[White "Liliental"]' + Chr(13) + Chr(10) + '[Black "Kotov"]' + Chr(13) + Chr(10) + '[EventDate "1948"]';
Fen :='2kr4/Q4p2/2q1pP2/1p4B1/2p4P/3n2P1/P4P2/3R2K1';
First :='b';
Moves := 'd8-d7 a7-e3 d3-f4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ��������� ����� ����� � ������� ����.';
Uroven:=1;
end;
if (partNum=242) then
begin
Names :=  '[White "Liliental"]' + Chr(13) + Chr(10) + '[Black "Ragozin."]' + Chr(13) + Chr(10) + '[EventDate "1944"]';
Fen :='k4rr1/pp5p/2b1P3/2P2p1Q/2pp1B2/2P2R1B/2P1q2P/5R1K';
First :='b';
Moves := 'g8-g4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=243) then
begin
Names :=  '[White "Ligerink"]' + Chr(13) + Chr(10) + '[Black "Beliavskiy."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r1q2k1r/pb3pp1/1p6/2n3N1/3p4/P7/1PQ1BPPP/2R2RK1';
First :='b';
Moves := 'd4-d3 e2:d3 c8-g4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����, ��������� ������ ������ g2.';
Uroven:=1;
end;
if (partNum=244) then
begin
Names :=  '[White "Lubenskiy"]' + Chr(13) + Chr(10) + '[Black "Stepanec."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='r7/pb1p3p/kp4p1/4Qp2/1R1n4/2Nq4/P2B1PPP/3K4';
First :='b';
Moves := 'b7-f3 g2:f3 d3-c2 d1-e1 d4:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=245) then
begin
Names :=  '[White "Levenfish"]' + Chr(13) + Chr(10) + '[Black "Ilin-Genevskiy."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='1rb2rk1/p1R2ppp/8/q2BP3/8/6P1/5P1P/3Q1RK1';
First :='w';
Moves := 'd5:f7 f8:f7 d1-d8 f7-f8 c7:g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� �������������� ����� a5.';
Uroven:=1;
 end;
  if (partNum=246) then
begin
Names :=  '[White "Mariotti"]' + Chr(13) + Chr(10) + '[Black "Panchenko."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='2Q5/1R6/5q1k/3rnpp1/1P2p3/6P1/4BPK1/8';
First :='w';
Moves := 'b7-b6 f6:b6 c8-h8 h6-g6 e2-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ��������� ���, ����������� ����������.';
Uroven:=1;
end;
if (partNum=247) then
begin
Names :=  '[White "Maroci"]' + Chr(13) + Chr(10) + '[Black "Eingorn."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='r3r1k1/p2RB1b1/2p1n1pp/q3pp2/2P5/1P2QP2/6PP/1N3RK1';
First :='b';
Moves := 'e8:e7 d7:e7 g7-f8 e7:e6 f8-c5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ���, ��� ����� � ������ ����� ����� �� ����� ���������.';
Uroven:=1;
end;
if (partNum=248) then
begin
Names :=  '[White "Meister"]' + Chr(13) + Chr(10) + '[Black "Brynell."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2r5/1kN1r1bp/1Pnnpq2/3p1p2/8/PP2B1PP/K1Q2PB1/3R2R1';
First :='b';
Moves := 'e7:c7 b6:c7 c6-b4 a3:b4 c8-a8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� �� ����� � ������.';
Uroven:=1;
end;
if (partNum=249) then
begin
Names :=  '[White "Meshkarov"]' + Chr(13) + Chr(10) + '[Black "Kaikamadshosow."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='8/1p3pk1/2p1bqp1/4p3/2P1P3/1P1N2Pp/rR3P1P/3Q2K1';
First :='b';
Moves := 'f6-f3 d1-f1 a2-a1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� �� ������ ������ g2.';
Uroven:=1;
end;
if (partNum=250) then
begin
Names :=  '[White "Mircovich"]' + Chr(13) + Chr(10) + '[Black "Stefanovskiy."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='3r2k1/p4ppp/qbB3b1/8/3B1Q2/P5P1/1P3P1P/4R1K1';
First :='w';
Moves := 'f4-e5 f7-f6 c6-d5 g8-h8 e5:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������, ���������� ������� ������.';
Uroven:=1;
end;

if (partNum=251) then
begin
Names :=  '[White "Monrok"]' + Chr(13) + Chr(10) + '[Black "Kramer"]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r2qkbnr/2pb1ppp/3p4/1p6/4P3/1BPp4/1P3PPP/RNBQK2R';
First :='w';
Moves := 'd1-h5 g7-g6 h5-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ���� ��� �������� �����.';
Uroven:=1;
end;
if (partNum=252) then
begin
Names :=  '[White "Mokry"]' + Chr(13) + Chr(10) + '[Black "Urbaneya."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2r3k1/1p3ppp/p2Rpn2/4P3/P7/2N3P1/1qP1QPKP/8';
First :='w';
Moves := 'e2-c4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������� �����.';
Uroven:=1;
end;
if (partNum=253) then
begin
Names :=  '[White "Movseyan"]' + Chr(13) + Chr(10) + '[Black "Kusmin."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r2q2k1/pbp1rpb1/1p6/n2p4/3P4/2N1Pp2/PPQ2P2/1B1RK2R';
First :='w';
Moves := 'h1-h8 g7:h8 c2-h7 g8-f8 h7:h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � ����������� �������.';
Uroven:=1;
end;
if (partNum=254) then
begin
Names :=  '[White "Muller"]' + Chr(13) + Chr(10) + '[Black "Demian."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='1k1bqr1r/p5n1/1p2ppp1/1RNpP3/3P1PPp/R2Q4/PPP2B1P/2K5';
First :='w';
Moves := 'a3:a7 b8:a7 b5-a5 b6:a5 d3-a6 a7-b8 a6-b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � ����������� �������.';
Uroven:=1;
end;
if (partNum=255) then
begin
Names :=  '[White "N.N."]' + Chr(13) + Chr(10) + '[Black "N.N."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='8/pQRq2pk/4p2p/3r1p2/3P4/4P3/PP3PPP/6K1';
First :='b';
Moves := 'd5-c5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ��������� ������ �����������.';
Uroven:=1;
 end;
  if (partNum=256) then
begin
Names :=  '[White "N.N"]' + Chr(13) + Chr(10) + '[Black "Rihter."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='4k3/p3q2p/1p2p1p1/2prb3/2Np1r2/2PP4/PP2QPP1/R3R2K';
First :='b';
Moves := 'f4-h4 h1-g1 h4-h1 g1:h1 e7-h4 h1-g1 h4-h2 g1-f1 h2-h1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� � ����������� �������.';
Uroven:=1;
end;
if (partNum=257) then
begin
Names :=  '[White "Naidorf"]' + Chr(13) + Chr(10) + '[Black "Porath."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='2rr1k2/p4p1Q/1pq2bpp/3N4/8/P2R3P/1P3PP1/4R1K1';
First :='w';
Moves := 'd5-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ������ �������.';
Uroven:=1;
end;
if (partNum=258) then
begin
Names :=  '[White "Narania"]' + Chr(13) + Chr(10) + '[Black "Georgiu."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='1r6/1r4k1/p2p2pp/1ppPp1q1/2P1Pb2/1P1KNP2/P1R1Q1P1/7R';
First :='b';
Moves := 'f4:e3 e2:e3 b5:c4 b3:c4 b7-b3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ���������� �����.';
Uroven:=1;
end;
if (partNum=259) then
begin
Names :=  '[White "Nicolich"]' + Chr(13) + Chr(10) + '[Black "Psahis."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='1r4k1/4nppp/5q2/2Np1b2/1r6/RP4P1/3QPPBP/2R3K1';
First :='w';
Moves := 'd2:b4 b8:b4 c5-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ��������� 8-�����������.';
Uroven:=1;
end;
if (partNum=260) then
begin
Names :=  '[White "Nimcovich"]' + Chr(13) + Chr(10) + '[Black "Rubinstein."]' + Chr(13) + Chr(10) + '[EventDate "1928"]';
Fen :='2qr1b1k/1p3Pp1/2p1p2p/p3B3/P3Q3/1P6/2P4P/3R3K';
First :='w';
Moves := 'e4-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ������.';
Uroven:=1;
end;

if (partNum=261) then
begin
Names :=  '[White "Nunn"]' + Chr(13) + Chr(10) + '[Black "Portish"]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='3r3k/2p2p1p/p2q1p1Q/2p1pP2/1nP5/1P5P/P5P1/2B1R1K1';
First :='w';
Moves := 'e1-e4 d8-g8 h6:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ���� ��� ��������.';
Uroven:=1;
end;
if (partNum=262) then
begin
Names :=  '[White "Ograbek"]' + Chr(13) + Chr(10) + '[Black "Figiel."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='1r2n2k/4pQ1p/p2pP2B/2p5/2P4n/5r1P/7K/4R3';
First :='w';
Moves := 'e1-b1 f3:f7 e6:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� b ����� ������. ��� ��� ����� ��� � ��� ������.';
Uroven:=1;
end;
if (partNum=263) then
begin
Names :=  '[White "Olsen"]' + Chr(13) + Chr(10) + '[Black "Jakobsen."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='3rk1r1/3bpp2/2Q5/1p1R3p/3R4/2P3BP/PP3PPK/5q2';
First :='b';
Moves := 'f1:g2 h2:g2 d7:c6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� ������.';
Uroven:=1;
end;
if (partNum=264) then
begin
Names :=  '[White "Orew"]' + Chr(13) + Chr(10) + '[Black "Spirindow."]' + Chr(13) + Chr(10) + '[EventDate "1984"]';
Fen :='r5k1/5pp1/3qp3/3p2p1/3P1P2/1RP3KP/3Q2P1/8';
First :='b';
Moves := 'a8-a2 d2-c1 a2-c2 c1-e3 g5:f4 e3:f4 c2:g2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� �����.';
Uroven:=1;
end;
if (partNum=265) then
begin
Names :=  '[White "Palatnik"]' + Chr(13) + Chr(10) + '[Black "Geller."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='r2q1rk1/pp3ppp/1nb2p2/8/3P4/P2BP3/3N1P1P/R2QK1R1';
First :='w';
Moves := 'g1:g7 g8:g7 d1-g4 g7-h8 g4-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ������ �������.';
Uroven:=1;
 end;
  if (partNum=266) then
begin
Names :=  '[White "Panno"]' + Chr(13) + Chr(10) + '[Black "Bertonna."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='1kr1r3/pb1R1p2/1p2q3/1P3Q1p/2N1n1p1/P3P1P1/4BP1P/2R3K1';
First :='w';
Moves := 'd7:b7 b8:b7 f5:e4 e6:e4 c4-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ �����.';
Uroven:=1;
end;
if (partNum=267) then
begin
Names :=  '[White "Perenij"]' + Chr(13) + Chr(10) + '[Black "Brandiks."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='7k/p2R4/2p2p1P/5K2/1PP5/8/r2B2pb/8';
First :='w';
Moves := 'd2-g5 f6:g5 f5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ���������� ��� �������� ����� ������.';
Uroven:=1;
end;
if (partNum=268) then
begin
Names :=  '[White "Peressypkin"]' + Chr(13) + Chr(10) + '[Black "Chuchelow."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='3R4/ppr1ppk1/2p3pp/2P5/4N3/PP3P1P/1bP2P2/6K1';
First :='w';
Moves := 'e4-d6 e7:d6 c5:d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������� �����.';
Uroven:=1;
end;
if (partNum=269) then
begin
Names :=  '[White "Pidorich"]' + Chr(13) + Chr(10) + '[Black "Chernousov."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='r5k1/5Rpp/1bqp4/1p1bp3/1P6/1BP4P/1B2QPP1/6K1';
First :='w';
Moves := 'f7-c7 b6:c7 e2-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ������ ������.';
Uroven:=1;
end;
if (partNum=270) then
begin
Names :=  '[White "Pirisi"]' + Chr(13) + Chr(10) + '[Black "Salazni."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='2r3k1/2qbp1b1/3p3p/p2P2p1/rp1N2P1/P2QBP2/1PPR4/1K5R';
First :='w';
Moves := 'h1:h6 g7:h6 d3-g6 h6-g7 d4-e6 d7:e6 e3-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����� ��� ������� �����.';
Uroven:=1;
end;

if (partNum=271) then
begin
Names :=  '[White "Podesta"]' + Chr(13) + Chr(10) + '[Black "Madina"]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='4Rr1k/p1q4p/1p1p2p1/5r2/2pP1b2/2P3B1/PPQ4P/4R1K1';
First :='w';
Moves := 'e1-e7 c7-c6 c2:f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ���� ��� �������� � �������.';
Uroven:=1;
end;
if (partNum=272) then
begin
Names :=  '[White "Polgar"]' + Chr(13) + Chr(10) + '[Black "Bierra."]' + Chr(13) + Chr(10) + '[EventDate "1995"]';
Fen :='7R/1p2knQ1/1q1pp1p1/6P1/p1r5/1BP2P2/P1P5/1K6';
First :='b';
Moves := 'b6-g1 b1-b2 a4-a3 b2:a3 g1-c1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
end;
if (partNum=273) then
begin
Names :=  '[White "Polugaevskiy"]' + Chr(13) + Chr(10) + '[Black "Szilagil."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='r2r4/1p1R3p/5p1k/b1B1Pp2/p4P2/P7/1P5P/1K4R1';
First :='w';
Moves := 'c5-f8 d8:f8 d7-d3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � ��������� d.';
Uroven:=1;
end;
if (partNum=274) then
begin
Names :=  '[White "Pospissil"]' + Chr(13) + Chr(10) + '[Black "Keller."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='rn2r1k1/5q1p/pB1Rb1pQ/4pN2/2p3P1/2P4R/P1P4P/6K1';
First :='w';
Moves := 'f5-e7 f7:e7 d6:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� ������ �� ������ h7.';
Uroven:=1;
end;
if (partNum=275) then
begin
Names :=  '[White "Przepriorka"]' + Chr(13) + Chr(10) + '[Black "Ahues."]' + Chr(13) + Chr(10) + '[EventDate "1927"]';
Fen :='3r3k/p4qpp/1p6/2P1Q1n1/P1P2N2/6P1/1R3P2/7K';
First :='b';
Moves := 'd8-d1 h1-g2 d1-g1 g2:g1 g5-f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ ��� �����.';
Uroven:=1;
 end;
  if (partNum=276) then
begin
Names :=  '[White "Puigross"]' + Chr(13) + Chr(10) + '[Black "Pedrosa."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='r2qr1k1/pp1nbppp/5nb1/2p2N2/2BP3N/8/PPP1Q1PP/R1B2RK1';
First :='w';
Moves := 'h4:g6 h7:g6 c4:f7 g8:f7 e2-c4 f7-f8 f5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������� ����� �� ����� �����.';
Uroven:=1;
end;
if (partNum=277) then
begin
Names :=  '[White "Razuvaev"]' + Chr(13) + Chr(10) + '[Black "Konstantinopolskiy."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='R7/6p1/6Pk/4p3/bP1bB2p/2p5/6K1/8';
First :='b';
Moves := 'a4-c6 e4:c6 c3-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� ����� ����� �� ������ ��������� ��������� �����.';
Uroven:=1;
end;
if (partNum=278) then
begin
Names :=  '[White "Razuvaev"]' + Chr(13) + Chr(10) + '[Black "Kupreichik."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='r1bqkb1r/pppP2pp/5n2/5pB1/2P5/2N5/PP2PPpP/R2QKB1R';
First :='b';
Moves := 'f6:d7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ������.';
Uroven:=1;
end;
if (partNum=279) then
begin
Names :=  '[White "Raynar"]' + Chr(13) + Chr(10) + '[Black "Koatli."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='7k/8/7p/1r1N2p1/1P5n/8/3R1r1P/3R3K';
First :='b';
Moves := 'b5:d5 d2:d5 h4-f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���� � ����� ����� ������ ��������� ������� ������.';
Uroven:=1;
end;
if (partNum=280) then
begin
Names :=  '[White "Reshevskiy"]' + Chr(13) + Chr(10) + '[Black "Boleslavskiy."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='5bk1/1R1R3p/6p1/8/8/6P1/rp3PKP/8';
First :='b';
Moves := 'a2-a7 d7-f7 f8-h6 f7-d7 h6-f8';
Comment:= '��� ������. ������� ����������� �������. �������� �����';
Comment2:='�������� ����� ����������� �����.';
Uroven:=1;
end;

if (partNum=281) then
begin
Names :=  '[White "Reshevskiy"]' + Chr(13) + Chr(10) + '[Black "Fisher"]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='4rbk1/3Q1ppp/3p4/3P4/5q2/B7/P5PP/5RK1';
First :='b';
Moves := 'f4-d4 g1-h1 d4-f2 d7-b5 e8-e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ������� ���� �� ������ �����������.';
Uroven:=1;
end;
if (partNum=282) then
begin
Names :=  '[White "Rihter"]' + Chr(13) + Chr(10) + '[Black "Kasper."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/1p4pk/7p/3qp3/rn1pN3/3P4/P1RQ1PPP/6K1';
First :='w';
Moves := 'e4-f6 g7:f6 c2-c7 h7-g6 d2-d1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ������� ������ ��� �������� ����� (������� ����� � �����).';
Uroven:=1;
end;
if (partNum=283) then
begin
Names :=  '[White "Rodrigez"]' + Chr(13) + Chr(10) + '[Black "Vaisman."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='8/8/2PQ4/4p2k/4P1qP/4Bp1n/8/5B1K';
First :='b';
Moves := 'h3-f2 e3:f2 g4-h3 h1-g1 h3-g4';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='�������� �����, ������� ���� ������� ���� � ����.';
Uroven:=1;
end;
if (partNum=284) then
begin
Names :=  '[White "Rozental"]' + Chr(13) + Chr(10) + '[Black "Makagonov."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='2kr4/pp1r1ppp/1qp1p3/2bnP1B1/2B5/8/PPP1QPPP/2KR1R2';
First :='b';
Moves := 'd5-c3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ���� ����� ������.';
Uroven:=1;
end;
if (partNum=285) then
begin
Names :=  '[White "Sandler"]' + Chr(13) + Chr(10) + '[Black "Kops."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='4k3/5b1R/5pp1/p3n3/1p2BB1P/5PK1/r5P1/8';
First :='w';
Moves := 'f4:e5 f6:e5 h7-f7 e8:f7 e4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ ��� �����.';
Uroven:=1;
 end;
 if (partNum=286) then
begin
Names :=  '[White "Zavialov"]' + Chr(13) + Chr(10) + '[Black "Arpazev."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r5k1/1r3p1p/6pB/p7/4q3/3n4/RP3QPP/2R3K1';
First :='w';
Moves := 'f2-f6 e4-e5 a2:a5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� �������� ����.';
Uroven:=1;
end;
if (partNum=287) then
begin
Names :=  '[White "Sax"]' + Chr(13) + Chr(10) + '[Black "Salov."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='8/1p2p1kp/p3Q1p1/2P5/3r1q2/1PR4P/P2r1PP1/5RK1';
First :='b';
Moves := 'd2:f2 e6:e7 g7-h6 c3-c1 f2:g2 g1:g2 d4-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� �������� ����.';
Uroven:=1;
end;
if (partNum=288) then
begin
Names :=  '[White "Shclehter"]' + Chr(13) + Chr(10) + '[Black "Przpiorka."]' + Chr(13) + Chr(10) + '[EventDate "1906"]';
Fen :='r1bqr1k1/p1R1bp1p/1p4p1/3pB2Q/3p4/3BP3/PP3PPP/5RK1';
First :='w';
Moves := 'd3:g6 f7:g6 h5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ������� ������ ����� ���������. ��������� ��������.';
Uroven:=1;
end;
if (partNum=289) then
begin
Names :=  '[White "Shelochilin"]' + Chr(13) + Chr(10) + '[Black "Chernikov."]' + Chr(13) + Chr(10) + '[EventDate "1950"]';
Fen :='n4k2/4b1pQ/2p2pP1/1p1qp3/1Pn3B1/2P4P/5PP1/2B3K1';
First :='w';
Moves := 'c1-h6 d5-g8 g4-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� �������� ���� � ���������� ����� � �����.';
Uroven:=1;
end;
if (partNum=290) then
begin
Names :=  '[White "Schuh"]' + Chr(13) + Chr(10) + '[Black "Hania."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='6rk/1R6/3p1bpp/p2Pp3/P3P1Q1/6PK/5q1P/8';
First :='w';
Moves := 'g4-f3 f2:f3 b7-h7';
Comment:= '��� �����. ������� ����������� �������. �������� �����';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;

if (partNum=291) then
begin
Names :=  '[White "Shulten"]' + Chr(13) + Chr(10) + '[Black "Horvith"]' + Chr(13) + Chr(10) + '[EventDate "1846"]';
Fen :='rn3rk1/p5pp/2p5/3Ppb2/2q5/1Q6/PPPB2PP/R3K1NR';
First :='b';
Moves := 'c4-f1 e1:f1 f5-d3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ������� ����� ����� ��������� ���.';
Uroven:=1;
end;
if (partNum=292) then
begin
Names :=  '[White "Shusterovich"]' + Chr(13) + Chr(10) + '[Black "Arefiev."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2r2rk1/2q2ppb/6nQ/pp2Np2/3PP3/1BP3R1/P5PP/5RK1';
First :='w';
Moves := 'h6:h7 g8:h7 g3-h3 h7-g8 e5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� � ������� �����.';
Uroven:=1;
end;
if (partNum=293) then
begin
Names :=  '[White "Seirawann"]' + Chr(13) + Chr(10) + '[Black "Beliavskiy."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='2rq4/p3bk2/2p1pp2/3p3r/N2Pb1p1/4P1B1/PP1Q1PP1/2R1RK2';
First :='b';
Moves := 'e4-f3 g2:f3 g4:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������� ����� �� ��� ��������� ������ �� ����� �����.';
Uroven:=1;
end;
if (partNum=294) then
begin
Names :=  '[White "Short"]' + Chr(13) + Chr(10) + '[Black "Larsen."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='2rq2k1/1p3p1p/p5pb/2P5/2QB4/P1R2P2/4r1PP/5RK1';
First :='b';
Moves := 'b7-b5 c4-b4 a6-a5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� �� ������ ����� d4.';
Uroven:=1;
end;
if (partNum=295) then
begin
Names :=  '[White "Semashev"]' + Chr(13) + Chr(10) + '[Black "Djurhus."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/1p4p1/6k1/P1PNK1P1/3Pp3/Pq3b2/3Q4/8';
First :='b';
Moves := 'b3:d5 e5:d5 e4-e3 d5-e5 e3:d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ ��� �������� ���.';
Uroven:=1;
 end;
 if (partNum=296) then
begin
Names :=  '[White "Simagin"]' + Chr(13) + Chr(10) + '[Black "Aronin."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='r1b1k2r/1p4p1/p1nbNn2/3pp1p1/q7/1RP1B3/5PPP/1B1Q1RK1';
First :='w';
Moves := 'b3:b7 e5-e4 d1:a4';
Comment:= '��� �����. ������� ����������� �������. �������� �����';
Comment2:='�������������� �������� ���� � ��������� ��������� �� ����� ����� ������� �����.';
Uroven:=1;
end;
if (partNum=297) then
begin
Names :=  '[White "Skotorenko"]' + Chr(13) + Chr(10) + '[Black "Vladimirov."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='5k2/p3bp2/2p3p1/1qNb3r/6p1/2Q5/P4RPP/5RK1';
First :='w';
Moves := 'f2:f7 d5:f7 c5-e6 f8-e8 e6-c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ ��� �����.';
Uroven:=1;
end;
if (partNum=298) then
begin
Names :=  '[White "Skuja"]' + Chr(13) + Chr(10) + '[Black "Rosenberg."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='1rb2n1k/5r1p/2pp1PpQ/4P3/p3P3/qBP2P2/P1P1N3/1K1R3R';
First :='w';
Moves := 'h6:f8 f7:f8 h1:h7 h8:h7 d1-h1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ������ ������� ������ ����� ���������. ��������� �������� � �����.';
Uroven:=1;
end;
if (partNum=299) then
begin
Names :=  '[White "Smirnov"]' + Chr(13) + Chr(10) + '[Black "Shubin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='8/8/5bpk/8/Np3n1r/1P2Qq2/P4PRP/6RK';
First :='b';
Moves := 'h4:h2 h1:h2 f3-h5 h2-g3 f6-h4 g3:f4 h5-f5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� � ������� �����.';
Uroven:=1;
end;
if (partNum=300) then
begin
Names :=  '[White "Sosonko"]' + Chr(13) + Chr(10) + '[Black "Bishof."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/4rn1k/6qp/1P1R4/4pP2/8/3Q1P1K/5B2';
First :='b';
Moves := 'f7-e5 d5:e5 e7-g7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �������� ����������� ����.';
Uroven:=1;
end;

if (partNum=301) then
begin
Names :=  '[White "Soultan Bief"]' + Chr(13) + Chr(10) + '[Black "Borodin"]' + Chr(13) + Chr(10) + '[EventDate "1943"]';
Fen :='q4r1k/5p1p/p2pp2Q/1p2b3/8/2P2R2/P1P4P/6RK';
First :='w';
Moves := 'g1-g2 a8-d8 h6:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ��������� ����.';
Uroven:=1;
end;
if (partNum=302) then
begin
Names :=  '[White "Spilman"]' + Chr(13) + Chr(10) + '[Black "Landaw."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='2r2rk1/ppq2pp1/1n2p3/8/2PPN3/6P1/P3QP2/R1R3K1';
First :='w';
Moves := 'e4-f6 g7:f6 e2-g4 g8-h7 g1-g2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �������� ���.';
Uroven:=1;
end;
if (partNum=303) then
begin
Names :=  '[White "Stahlberg"]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1930"]';
Fen :='5rk1/1b4p1/1p1p3p/4p1q1/1PPn1r2/4QP2/5RPP/3RNB1K';
First :='b';
Moves := 'f4:f3 e3:g5 f3:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����������� �����.';
Uroven:=1;
end;
if (partNum=304) then
begin
Names :=  '[White "Stephensen"]' + Chr(13) + Chr(10) + '[Black "Penrose."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='2r3k1/1q1r1p1p/4pbp1/2R5/1P6/2P1BP2/R3Q1KP/8';
First :='w';
Moves := 'a2-a7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� ��� ����.';
Uroven:=1;
end;
if (partNum=305) then
begin
Names :=  '[White "Stolc"]' + Chr(13) + Chr(10) + '[Black "Kotov."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='6r1/Qp5k/8/3p3p/5q2/1P3p1B/P6P/5N1K';
First :='b';
Moves := 'f3-f2 h3-g2 f4-f3 a7:b7 h7-h8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ ��� �������� ���.';
Uroven:=1;
 end;
 if (partNum=306) then
begin
Names :=  '[White "Shtolc"]' + Chr(13) + Chr(10) + '[Black "Pilnik."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='2b1k3/8/p1pp2P1/2p3P1/7r/2Q3K1/PPP1q1R1/6R1';
First :='b';
Moves := 'h4-h3 g3-f4 h3-f3 c3:f3 e2-e5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
end;
if (partNum=307) then
begin
Names :=  '[White "Saemish"]' + Chr(13) + Chr(10) + '[Black "Rainman."]' + Chr(13) + Chr(10) + '[EventDate "1927"]';
Fen :='r4bkr/pppq2pp/2n1R3/6N1/2pp2P1/5Q2/PPP2P1P/R1B3K1';
First :='w';
Moves := 'e6-e7 d7:e7 f3-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� �� ����� �����.';
Uroven:=1;
end;
if (partNum=308) then
begin
Names :=  '[White "Soelter"]' + Chr(13) + Chr(10) + '[Black "Obhoff."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='2b3k1/2q3pp/3p1r2/p2PpP2/4Q3/1r1B4/1PP4P/2KR2R1';
First :='w';
Moves := 'e4-h4 g8-h8 h4-a4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� �������� � �������� �� f6.';
Uroven:=1;
end;
if (partNum=309) then
begin
Names :=  '[White "Soerensen"]' + Chr(13) + Chr(10) + '[Black "Danielsen."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='8/7p/8/4NQ1P/2P2Pp1/2b2nP1/r7/k4K2';
First :='b';
Moves := 'f3-h2 f1-g1 c3-d4 g1-h1 h2-f1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ �� h1.';
Uroven:=1;
end;
if (partNum=310) then
begin
Names :=  '[White "Tal"]' + Chr(13) + Chr(10) + '[Black "Benko."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='r1b1k2r/1p3pp1/p1p1pn2/4q1N1/8/1B2P3/PPP1Q2P/2KR3R';
First :='w';
Moves := 'd1-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������������� ������� �����.';
Uroven:=1;
end;

if (partNum=311) then
begin
Names :=  '[White "Taube"]' + Chr(13) + Chr(10) + '[Black "van Henning"]' + Chr(13) + Chr(10) + '[EventDate "1934"]';
Fen :='r2q1rk1/pp3ppp/2p2b2/8/B2pPPb1/7P/PPP1N1P1/R2Q1RK1';
First :='b';
Moves := 'd4-d3 c2:d3 g4:e2 d1:e2 d8-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ��� ��� ���� �� a4 ��� ������.';
Uroven:=1;
end;
if (partNum=312) then
begin
Names :=  '[White "Taverner"]' + Chr(13) + Chr(10) + '[Black "Grodner."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='8/2n2p2/6k1/R5pp/8/5PKP/2r5/1B6';
First :='b';
Moves := 'h5-h4 g3-g4 f7-f5 a5:f5 c2-g2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� �� ������, ������ �������� ������ ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=313) then
begin
Names :=  '[White "Thiermann"]' + Chr(13) + Chr(10) + '[Black "Smidtt."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='1r6/1r2b2p/2q1kpp1/2pNp3/2P1P1P1/3Q3P/R7/3R2K1';
First :='w';
Moves := 'a2-a6 c6:a6 d5-c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� ������.';
Uroven:=1;
end;
if (partNum=314) then
begin
Names :=  '[White "Titkos"]' + Chr(13) + Chr(10) + '[Black "Yompos."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='4rbk1/1b4pn/p1q5/1pp1pQ1N/4P3/2P1B3/PPB2P2/2K3R1';
First :='w';
Moves := 'e3:c5 c6:c5 c2-b3 g8-h8 f5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� � ����� �������� ������� ������������ �����.';
Uroven:=1;
end;
if (partNum=315) then
begin
Names :=  '[White "Trisic"]' + Chr(13) + Chr(10) + '[Black "Bulak."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='3r3k/p6p/2p3p1/2q1p3/2B1Pb2/1Q5b/PP5P/R4R1K';
First :='w';
Moves := 'f1:f4 e5:f4 b3-c3 d8-d4 a1-d1 c5:c4 c3:d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����� �� ������ �����.';
Uroven:=1;
 end;
  if (partNum=316) then
begin
Names :=  '[White "Chehover"]' + Chr(13) + Chr(10) + '[Black "Kan."]' + Chr(13) + Chr(10) + '[EventDate "1933"]';
Fen :='5rk1/6pp/3r1p2/1b2Q3/2p5/4R1P1/q4PBP/R5K1';
First :='w';
Moves := 'e5-d5 d6:d5 g2:d5 g8-h8 a1:a2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ��� ������� �������� �����.';
Uroven:=1;
end;
if (partNum=317) then
begin
Names :=  '[White "Chigorin"]' + Chr(13) + Chr(10) + '[Black "Beratende."]' + Chr(13) + Chr(10) + '[EventDate "1901"]';
Fen :='1r2q3/p3b1pk/1p1p2p1/2pPp2P/1PP1Q3/P3B1P1/6P1/5RK1';
First :='w';
Moves := 'h5:g6 e8:g6 f1-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ����� ������ ��� ������.';
Uroven:=1;
end;
if (partNum=318) then
begin
Names :=  '[White "Chigorin"]' + Chr(13) + Chr(10) + '[Black "Znosko-Borovskiy."]' + Chr(13) + Chr(10) + '[EventDate "1903"]';
Fen :='4r1k1/p4ppp/b5q1/2QN4/1B3PP1/P7/1PP1r2P/2KR4';
First :='w';
Moves := 'd5-e7 e8:e7 d1-d8 e7-e8 c5-f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ��������� 8 �����������.';
Uroven:=1;
end;
if (partNum=319) then
begin
Names :=  '[White "Ulmann"]' + Chr(13) + Chr(10) + '[Black "Maedler."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='6k1/pbR2p1p/1p1p2pQ/4r3/6qP/6N1/P4PP1/6K1';
First :='b';
Moves := 'e5-e1 g1-h2 e1-h1 h2:h1 g4-h3 h1-g1 h3:g2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ �� g2.';
Uroven:=1;
end;
if (partNum=320) then
begin
Names :=  '[White "Unziker"]' + Chr(13) + Chr(10) + '[Black "Sarappu."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='r1br3k/pp3Qpp/1q1N4/8/2B2n2/8/PPP3PP/R2K1R2';
First :='w';
Moves := 'f7-g8 d8:g8 d6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������� ���.';
Uroven:=1;
end;

if (partNum=321) then
begin
Names :=  '[White "Ustinov"]' + Chr(13) + Chr(10) + '[Black "Ilvickiy"]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='8/2Q5/2n1qkp1/p6p/1pPpP1P1/1P1N1K2/P7/8';
First :='w';
Moves := 'g4-g5 f6:g5 c7-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
end;
if (partNum=322) then
begin
Names :=  '[White "Varjoma"]' + Chr(13) + Chr(10) + '[Black "Linkwist."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='6rk/7p/3p4/4b3/p1PB1Pq1/Pr6/3Q3P/3R1R1K';
First :='b';
Moves := 'b3-d3 d4:e5 d6:e5 d2-b2 g4-f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ����������� ����� �����.';
Uroven:=1;
end;
if (partNum=323) then
begin
Names :=  '[White "Vorubil"]' + Chr(13) + Chr(10) + '[Black "Yakobec."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='2r3k1/3r1ppp/p2b4/R7/1n2P1P1/1bN4P/1P1B4/2K2B1R';
First :='b';
Moves := 'd6-f4 a5-d5 b4:d5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ����������.';
Uroven:=1;
end;
if (partNum=324) then
begin
Names :=  '[White "Vogt"]' + Chr(13) + Chr(10) + '[Black "Giemsa."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/pp5k/5npp/2r2B2/5Q2/P1q2R1P/2P1p1P1/3R2K1';
First :='w';
Moves := 'd1-d7 f6:d7 f5:g6 h7:g6 f4-f7 g6-g5 f7-g8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� � ����� �������� ������� ������������ �����.';
Uroven:=1;
end;
if (partNum=325) then
begin
Names :=  '[White "Wachtel"]' + Chr(13) + Chr(10) + '[Black "Mustel."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='4R3/8/pp6/k1r5/P3p3/K3PbB1/5P2/8';
First :='w';
Moves := 'e8-e5 c5:e5 g3:e5 b6-b5 e5-c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������� ����� �� ������ �����.';
Uroven:=1;
 end;
   if (partNum=326) then
begin
Names :=  '[White "Wade"]' + Chr(13) + Chr(10) + '[Black "Boxall."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='5r1k/3rbppp/p2p1n2/1p2q3/3QPN2/1B5R/PPP3PP/5R1K';
First :='w';
Moves := 'b3:f7 f8:f7 f4-g6 h8-g8 g6:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
end;
if (partNum=327) then
begin
Names :=  '[White "Waluzek"]' + Chr(13) + Chr(10) + '[Black "Robarzek."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='r3r1k1/p2R1pbp/1p3qp1/4p3/QPB1bn2/5N2/PB3PPP/5RK1';
First :='b';
Moves := 'f4-h3 g1-h1 f6:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ���� �������� ������ � ������.';
Uroven:=1;
end;
if (partNum=328) then
begin
Names :=  '[White "Wasiliev"]' + Chr(13) + Chr(10) + '[Black "Erofeev."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r3r1k1/1p3pbp/p2pp1p1/2q2P1n/2PnP3/1PN4P/PBB2QP1/2R2RK1';
First :='b';
Moves := 'd4-f3 g1-h1 c5:f2 f1:f2 h5-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ������� �����.';
Uroven:=1;
end;
if (partNum=329) then
begin
Names :=  '[White "Wehnert"]' + Chr(13) + Chr(10) + '[Black "Liess."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='1R2r1k1/2pq1ppp/3p4/3P4/1Q3P2/8/r5PP/5RK1';
First :='w';
Moves := 'f1-e1 e8-d8 b4-b5 c7-c6 b5-b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ��������� 8 �����������.';
Uroven:=1;
end;
if (partNum=330) then
begin
Names :=  '[White "Weinrich"]' + Chr(13) + Chr(10) + '[Black "Chuchelov."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2r2bk1/ppqr1p1p/2n3p1/3B4/4Q3/6P1/PB3P1P/2R1R1K1';
First :='w';
Moves := 'c1:c6 b7:c6 e4-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ���� �� ������ �����.';
Uroven:=1;
end;

if (partNum=331) then
begin
Names :=  '[White "Woicehovskiy"]' + Chr(13) + Chr(10) + '[Black "Sandler"]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/2k5/8/8/R4b2/4p1p1/5rP1/4B1K1';
First :='b';
Moves := 'e3-e2 e1:f2 f4-e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
end;
if (partNum=332) then
begin
Names :=  '[White "Zagema"]' + Chr(13) + Chr(10) + '[Black "Los."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='7k/r3np2/2q1pb2/2Pp4/2p2B2/2P3P1/P2Q1PB1/4R1K1';
First :='w';
Moves := 'f4-b8 a7-a8 d2-h6 h8-g8 h6:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ��� ��� ���� �� f6 ��� ������.';
Uroven:=1;
end;
if (partNum=333) then
begin
Names :=  '[White "Zinn"]' + Chr(13) + Chr(10) + '[Black "Sveshnikov."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='6rk/3Q2bp/p4r2/1p1P1pq1/1N3p2/2P2P2/PPB3PP/3R1RK1';
First :='b';
Moves := 'f6-f7 d7:f7 g7-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��� �� g2, � ������� ������ ������ � ����� g.';
Uroven:=1;
end;
if (partNum=334) then
begin
Names :=  '[White "van Osmael"]' + Chr(13) + Chr(10) + '[Black "Molenbroek."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r2r3k/1p3Rp1/2p1p2p/p3P3/P3Q2P/2q1P1P1/4P3/5RK1';
First :='w';
Moves := 'f1-f6 c3-e1 g1-g2 e1:e2 g2-h3 e2-h5 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��������� ������� ������ ���������, ������ ����� � �����.';
Uroven:=1;
end;
if (partNum=335) then
begin
Names :=  '[White "van Veli"]' + Chr(13) + Chr(10) + '[Black "Wahls."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='q5rk/6rp/1p2Pb2/1B3P2/PP6/4QR2/7P/3R3K';
First :='b';
Moves := 'f6-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� �����.';
Uroven:=1;
 end;
  end;
procedure TPart.init2(partNum: integer);
begin
  if (partNum=336) then
begin
Names :=  '[White "van Waigarden"]' + Chr(13) + Chr(10) + '[Black "Karaklich."]' + Chr(13) + Chr(10) + '[EventDate "1967"]';
Fen :='3r3r/1bp1bpk1/p5Np/1p4p1/8/1PN3P1/PP3PP1/3RR1K1';
First :='b';
Moves := 'd8:d1 c3:d1 e7-b4 g6:h8 b4:e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���� � �������, ��������� ������.';
Uroven:=1;
 end;
 if (partNum=337) then
begin
Names :=  '[White "Hansen"]' + Chr(13) + Chr(10) + '[Black "Ivanchuk."]' + Chr(13) + Chr(10) + '[EventDate "1987"]';
Fen :='2kr4/1pb5/p1n3q1/4Np1p/3Pp2r/2P5/PP2Q1B1/R4RK1';
First :='b';
Moves := 'c6:e5 d4:e5 c7-b6 f1-f2 g6:g2 g1:g2 d8-g8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ����� � ����� �� ������ �����.';
Uroven:=1;
end;
if (partNum=338) then
begin
Names :=  '[White "Bang"]' + Chr(13) + Chr(10) + '[Black "Sofrigin."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='rn1q1r1k/pp2bp2/2p1p2p/8/2pP3P/2N1PN2/PPQ2P2/2K3RR';
First :='w';
Moves := 'f3-g5 e7:g5 h4:g5 f8-g8 g5-g6 d8-f8 g6-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����, ��������� ����� � �����.';
Uroven:=1;
end;
if (partNum=339) then
begin
Names :=  '[White "Sutmuller"]' + Chr(13) + Chr(10) + '[Black "Tonoli."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='3r1q2/2Q1n3/3pPkp1/2p5/2P1BpP1/5P2/7R/6K1';
First :='w';
Moves := 'h2-h7 f6:e6 h7:e7 f8:e7 e4-d5 e6-f6 g4-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������ ������������� ���� ������.';
Uroven:=1;
end;
if (partNum=340) then
begin
Names :=  '[White "Sznapik"]' + Chr(13) + Chr(10) + '[Black "Hvenedlige."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='Q2n4/Rnk2p2/1p2pNp1/1q1pP1P1/1PpP4/2P3P1/6K1/8';
First :='w';
Moves := 'f6-e8 c7-d7 e8-d6 b5-c6 a7:b7 d8:b7 a8-e8 d7-c7 e8-c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������, �������� ���� �� d6.';
Uroven:=1;
end;

if (partNum=341) then
begin
Names :=  '[White "Peicheva"]' + Chr(13) + Chr(10) + '[Black "Cristiansen"]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='6r1/p7/2R2p2/4nk2/1P1p3p/P2q1P2/5P1B/3Q3K';
First :='w';
Moves := 'c6:f6 f5:f6 h2:e5 f6:e5 d1:d3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� �� ��������� �����.';
Uroven:=1;
end;
if (partNum=342) then
begin
Names :=  '[White "Sokolov"]' + Chr(13) + Chr(10) + '[Black "Winants."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='4rrk1/5pp1/pppR3p/4P3/nP3P1B/2PQ3P/q5P1/4R1K1';
First :='w';
Moves := 'd6:h6 g7:h6 h4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������� ������ � ������� ������ �����.';
Uroven:=1;
end;
if (partNum=343) then
begin
Names :=  '[White "Armas"]' + Chr(13) + Chr(10) + '[Black "Garsia Palermo."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='5rk1/5ppq/p2R3p/4R3/2r5/4Q2P/P4PPK/8';
First :='w';
Moves := 'd6-d8 g7-g5 e5-e8 f8:e8 e3:e8 g8-g7 e8-e5 f7-f6 d8-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ������ ������ ��������� ��� �����.';
Uroven:=1;
end;
if (partNum=344) then
begin
Names :=  '[White "Luoma"]' + Chr(13) + Chr(10) + '[Black "Pokari."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r3k2r/pp3ppp/4b3/3ppP2/3nn3/Q5B1/qPP1P1PP/2KR1BNR';
First :='b';
Moves := 'd4-b3 c2:b3 a8-c8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ����� ��������, �������� ���������� �����.';
Uroven:=1;
end;
if (partNum=345) then
begin
Names :=  '[White "Jakvert"]' + Chr(13) + Chr(10) + '[Black "Meier."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2kr4/ppp2pp1/8/4n2p/1PP1PPq1/P2pKNr1/3N1R2/2B4Q';
First :='b';
Moves := 'g4:f3 d2:f3 e5-c4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
 end;
  if (partNum=346) then
begin
Names :=  '[White "Kipi"]' + Chr(13) + Chr(10) + '[Black "Vayernen."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='4r3/2qr1p1k/4nQpP/p1p1P1B1/3P3R/2p5/P5K1/8';
First :='w';
Moves := 'f6-g7 e6:g7 h6:g7 h7:g7 g5-f6 g7-g8 h4-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ���, ����������� �����.';
Uroven:=1;
 end;
 if (partNum=347) then
begin
Names :=  '[White "Kupreichik"]' + Chr(13) + Chr(10) + '[Black "Levit."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r4k1r/pp1qbpp1/4R2p/3p1Q2/5B2/5P2/PP3PKP/R7';
First :='w';
Moves := 'e6:h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� �������� ���������.';
Uroven:=1;
end;
if (partNum=348) then
begin
Names :=  '[White "Little"]' + Chr(13) + Chr(10) + '[Black "Ticheiman."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='r1rn4/1Np1k1p1/p3p2p/5p2/3P1P2/P1R1PP2/1P2K1P1/2R5';
First :='b';
Moves := 'd8:b7 c3:c7 e7-d8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������.';
Uroven:=1;
end;
if (partNum=349) then
begin
Names :=  '[White "Todorcevich"]' + Chr(13) + Chr(10) + '[Black "Averbah."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='r2qn3/4rkbQ/6p1/2Pp1pP1/pPb1pP2/P3PB1R/1B4K1/7R';
First :='w';
Moves := 'h7:g6 f7:g6 f3-h5 g6-h7 h5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����� � ������.';
Uroven:=1;
end;
if (partNum=350) then
begin
Names :=  '[White "Shamchin"]' + Chr(13) + Chr(10) + '[Black "Polovodin."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='8/P4p1k/K7/2R5/8/7r/1r2p3/R7';
First :='b';
Moves := 'h3-h6 a6-a5 b2-a2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ ��� ���, � ����� ��������� �� ���� ����������� ���� �����.';
Uroven:=1;
end;
if (partNum=351) then
begin
Names :=  '[White "Rehlis"]' + Chr(13) + Chr(10) + '[Black "Manor"]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r6b/p1pq1p1k/1p2p1rp/4PpBQ/3P1P2/2PR2R1/P5PP/6K1';
First :='w';
Moves := 'g5:h6 g6:h6 h5:h6 h7:h6 g3-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� �� �������� ���.';
Uroven:=1;
end;
if (partNum=352) then
begin
Names :=  '[White "Biro"]' + Chr(13) + Chr(10) + '[Black "Nikselves."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r2q1r2/p3npkp/3b2p1/1PNp1bN1/3P4/1Q1BP3/5RPP/R5K1';
First :='w';
Moves := 'f2:f5 d6:c5 f5:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ����� ������� ����� �� ���� e6.';
Uroven:=1;
end;
if (partNum=353) then
begin
Names :=  '[White "Ungure"]' + Chr(13) + Chr(10) + '[Black "Burkova."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2r1kb1r/1p3ppp/pnq1p3/Q7/2P2B2/1P3N1P/P4PP1/3RR1K1';
First :='w';
Moves := 'f3-d4 c6-c5 d4:e6 f7:e6 e1:e6 e8-f7 a5:b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ �����������. �������� ������� � ������ e6.';
Uroven:=1;
end;
if (partNum=354) then
begin
Names :=  '[White "Warmlender"]' + Chr(13) + Chr(10) + '[Black "Krasenkov."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='2r2bk1/1b5p/p5p1/1q2p3/p1p1P3/2Qn2N1/1PN3PP/2BR2K1';
First :='b';
Moves := 'f8-b4 c2:b4 b5-c5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��� � ������������� ������ ����� - �������� �������.';
Uroven:=1;
end;
if (partNum=355) then
begin
Names :=  '[White "Panteleoni"]' + Chr(13) + Chr(10) + '[Black "Dobsa."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='1r6/3n3R/p1b1k2B/4p3/1p6/1K6/PP6/3R4';
First :='b';
Moves := 'c6-a4 b3:a4 d7-c5 a4-a5 b8-b5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ � ���� ��� ������� �����.';
Uroven:=1;
 end;
  if (partNum=356) then
begin
Names :=  '[White "Savchenko"]' + Chr(13) + Chr(10) + '[Black "Krivonosov."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='3B4/8/2k5/8/p7/2P5/4K2b/8';
First :='b';
Moves := 'a4-a3 d8-f6 c6-d6 c3-c4 h2-e5 c4-c5 d6-e6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� � �����, �������� ������� ���������.';
Uroven:=1;
 end;
 if (partNum=357) then
begin
Names :=  '[White "Duurhus"]' + Chr(13) + Chr(10) + '[Black "Adams."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='3N4/2r1n1kp/Rp2B1p1/bP3p2/2P2P2/6P1/5PK1/8';
First :='w';
Moves := 'a6:a5 b6:a5 b5-b6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ������ ���������.';
Uroven:=1;
end;
if (partNum=358) then
begin
Names :=  '[White "Bareev"]' + Chr(13) + Chr(10) + '[Black "Kupreichik."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='6k1/5p2/p4npQ/4p1N1/5n2/2r3R1/P2q2PP/5R1K';
First :='w';
Moves := 'g5-e6 f7:e6 g3:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ ���� ������ � �����.';
Uroven:=1;
end;
if (partNum=359) then
begin
Names :=  '[White "Kith"]' + Chr(13) + Chr(10) + '[Black "Mathe."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r4rk1/pp1qb1pp/4p3/2pp4/2pn4/2N3PB/PP3P1P/R1BQR1K1';
First :='w';
Moves := 'c3:d5 d7:d5 h3:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� �� �6, �� ������� �������� ���������������� ������ �����.';
Uroven:=1;
end;
if (partNum=360) then
begin
Names :=  '[White "Viyalakshmi"]' + Chr(13) + Chr(10) + '[Black "Bose."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='5r1k/ppp3p1/1q6/3Rp2p/4P2r/1P2Q3/P1P3P1/4R1K1';
First :='b';
Moves := 'h4:e4 e3:b6 e4:e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� �� ������ �����.';
Uroven:=1;
end;
if (partNum=361) then
begin
Names :=  '[White "Shatcher"]' + Chr(13) + Chr(10) + '[Black "Pantoloni"]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='r6k/2pR1Q1p/p4pp1/P7/4rqP1/7P/1B3P2/6K1';
First :='b';
Moves := 'e4-e1 g1-g2 f4-e4 g2-g3 e1-g1 g3-h4 g6-g5 h4-h5 e4:g4 h5-h6 g4:h3 f7-h5 h3:d7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������������� ������ � ������ ������ ������ ���.';
Uroven:=1;
end;
if (partNum=362) then
begin
Names :=  '[White " Nicolac"]' + Chr(13) + Chr(10) + '[Black "Horvat."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='8/2b3k1/2p5/2Pp4/3P2BK/8/p5R1/r7';
First :='b';
Moves := 'a1-h1 g4-h3 c7-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� �������� �������� �������� �����. �� � ������ � ����� ���� ���� �������� ���.';
Uroven:=1;
end;
if (partNum=363) then
begin
Names :=  '[White "Grahl"]' + Chr(13) + Chr(10) + '[Black "Heintc."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='3n1q2/1r1PN2k/5npp/2p1Qp2/2B1pP2/1P5P/6P1/3R2K1';
First :='w';
Moves := 'd1-d6 b7:d7 c4-g8 f6:g8 d6:d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� ����� �����.';
Uroven:=1;
end;
if (partNum=364) then
begin
Names :=  '[White "Botema"]' + Chr(13) + Chr(10) + '[Black "Engel."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='1k1r3r/pPp3p1/8/1P5q/2QpN2b/P5P1/4P2n/2RR2K1';
First :='b';
Moves := 'h4:g3 e4:g3 h2-f3 g1-f2 h5-h2 f2:f3 d8-f8 f3-e4 h2:g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������������ ������ ������ � ��������.';
Uroven:=1;
end;
if (partNum=365) then
begin
Names :=  '[White "Andruet"]' + Chr(13) + Chr(10) + '[Black "Abramoich."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='6k1/P2N4/3p2p1/3Pp3/1q2nbP1/7p/1N2QP2/7K';
First :='b';
Moves := 'e4:f2 h1-g1 h3-h2 g1:f2 b4-d4 f2-g2 d4-g1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ������ �� ���� ����������� ��������� �����.';
Uroven:=1;
 end;
  if (partNum=366) then
begin
Names :=  '[White "Tohal"]' + Chr(13) + Chr(10) + '[Black "Horvat."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='5r1k/bp2Npp1/p2p3p/2r1nQ2/4P3/2P3P1/qP1B3P/4RR1K';
First :='w';
Moves := 'd2:h6 e5-c6 h6:g7 h8:g7 f5-f6 g7-h7 e7-f5 c5:f5 f1:f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� � ����� ������ ������ �� ������. �������� ��� �������� ���������.';
Uroven:=1;
 end;
 if (partNum=367) then
begin
Names :=  '[White "Romanishin"]' + Chr(13) + Chr(10) + '[Black "Gdanskiy."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='1r4k1/1q2bp2/3p2p1/2pP4/p1N4R/2P2QP1/1P3PK1/8';
First :='w';
Moves := 'c4:d6 e7:d6 f3-f6 b7:d5 g2-h2 d6:g3 h2:g3 d5-d3 g3-h2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ���� ������ ������� ������ ���������. ��������� ������� ������.';
Uroven:=1;
end;
if (partNum=368) then
begin
Names :=  '[White "Boros"]' + Chr(13) + Chr(10) + '[Black "Sabo."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='2r2r2/3qbpkp/p3n1p1/2ppP3/6Q1/1P1B3R/PBP3PP/5R1K';
First :='w';
Moves := 'h3:h7 g7:h7 f1:f7 f8:f7 g4:g6 h7-h8 g6:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ��� �������� �� ��� ������ g6.';
Uroven:=1;
end;
if (partNum=369) then
begin
Names :=  '[White "Zarkov"]' + Chr(13) + Chr(10) + '[Black "Mephisto."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2b1r1k1/r4ppp/p7/2pNP3/4Q3/q6P/2P2PP1/3RR1K1';
First :='w';
Moves := 'd5-f6 g7:f6 e5:f6 e8-f8 e4-f4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������ ������� �� ������ � ����� 8-�� �����������.';
Uroven:=1;
end;
if (partNum=370) then
begin
Names :=  '[White "Vaisser"]' + Chr(13) + Chr(10) + '[Black "Mephisto 2."]' + Chr(13) + Chr(10) + '[EventDate "1994"]';
Fen :='rnbq2k1/p1r2p1p/1p1p1Pp1/1BpPn1N1/P7/2P5/6PP/R1B1QRK1';
First :='w';
Moves := 'g5:h7 g8:h7 e1-h4 h7-g8 c1-h6 c8-g4 h6-g7 g4-h5 h4-g5 e5-g4 h2-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ ����� �� ������ ����� � ������� ����.';
Uroven:=1;
end;
if (partNum=371) then
begin
Names :=  '[White "Lengel"]' + Chr(13) + Chr(10) + '[Black "Kaufman"]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='6k1/4pp1p/3p2p1/P1pPb3/R7/1r2P1PP/3B1P2/6K1';
First :='w';
Moves := 'd2-b4 c5:b4 a5-a6 b3-c3 a6-a7 c3-c8 a4:b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� ������ ���������� ���������.';
Uroven:=1;
end;
if (partNum=372) then
begin
Names :=  '[White " Vavlo"]' + Chr(13) + Chr(10) + '[Black "Belle."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='r2q1rk1/pb3p1p/1pn3pb/2p4n/2PpPPQN/1P1P4/PB1N2BP/R4RK1';
First :='b';
Moves := 'h6:f4 f1:f4 c6-e5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������������� ����� e5 ��� ����� ������ �����.';
Uroven:=1;
end;
if (partNum=373) then
begin
Names :=  '[White "Perz"]' + Chr(13) + Chr(10) + '[Black "Van der Vil."]' + Chr(13) + Chr(10) + '[EventDate "1980"]';
Fen :='2b2r1k/p6p/4p1pN/3pRpB1/8/6P1/Pr2QP1P/q4BK1';
First :='w';
Moves := 'e5:f5 f8:f5 e2-e5 f5:e5 g5-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������� �� ������ ����� �� ������� ������.';
Uroven:=1;
end;
if (partNum=374) then
begin
Names :=  '[White "Ghinda"]' + Chr(13) + Chr(10) + '[Black "Gogella."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='3qk2r/1b1n1pp1/p2pp3/4P3/P2B1P1b/5N2/5rPP/1B1QRR1K';
First :='b';
Moves := 'b7:f3 g2:f3 f2:h2 h1:h2 h4-f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������������ ������ ������ � ��������.';
Uroven:=1;
end;
if (partNum=375) then
begin
Names :=  '[White "Belby"]' + Chr(13) + Chr(10) + '[Black "Dauber."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4q3/ppn4k/2p1p1pp/4Rr2/2P1Q2R/2B4P/PP3PPK/3r4';
First :='w';
Moves := 'h4:h6 h7:h6 e4-h4 f5-h5 e5:h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ ������ ������ � ������ �� ������ �����.';
Uroven:=1;
 end;
  if (partNum=376) then
begin
Names :=  '[White "Bellon"]' + Chr(13) + Chr(10) + '[Black "Kovachevich."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='rn1qk2r/1b1nbp1p/p2p4/4pP2/2RN4/2NBB2Q/1PP3PP/4R1K1';
First :='w';
Moves := 'd4-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ ����� ��� ����� �� ������ ����� �����.';
Uroven:=1;
 end;
 if (partNum=377) then
begin
Names :=  '[White "Spilmann"]' + Chr(13) + Chr(10) + '[Black "Liu."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4r3/pp3k2/3p1b2/3P1bB1/8/2P2P2/qPNQ4/2K4R';
First :='b';
Moves := 'e8-e2 d2:e2 f6:g5 c2-e3 a2-a1 c1-d2 a1:h1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� �������� ������� ������ �����.';
Uroven:=1;
end;
if (partNum=378) then
begin
Names :=  '[White "Sicora"]' + Chr(13) + Chr(10) + '[Black Sturc."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='8/6pk/6rp/5pn1/1P2p2q/2P1Q2P/3R2PK/R7';
First :='b';
Moves := 'g5-f3 h2-h1 g6-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ����� ������ � �����.';
Uroven:=1;
end;
if (partNum=379) then
begin
Names :=  '[White "Froeberg"]' + Chr(13) + Chr(10) + '[Black "Dahlin."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r4bkn/pq5p/4bBP1/4N2P/3pP3/6Q1/PP1p2K1/R6R';
First :='w';
Moves := 'g6:h7 g8:h7 g3-g6 h8:g6 h5:g6 h7-g8 h1-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=380) then
begin
Names :=  '[White "Gipslis"]' + Chr(13) + Chr(10) + '[Black "Kostro."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r3nr1k/1bp1b1pp/5p2/p1pq1N1Q/N2p1B2/6R1/PPP2PPP/R5K1';
First :='w';
Moves := 'h5:h7 h8:h7 g3-h3 h7-g6 f5:e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� �����, ������� � ��������.';
Uroven:=1;
end;
if (partNum=381) then
begin
Names :=  '[White "Michel"]' + Chr(13) + Chr(10) + '[Black "Anton"]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='2r3k1/5ppp/5q2/1p6/2nQ4/1N3PP1/Pr5P/K2R3R';
First :='b';
Moves := 'b2:a2 a1:a2 f6-a6 a2-b1 c4-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ������� ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=382) then
begin
Names :=  '[White " Lembeski"]' + Chr(13) + Chr(10) + '[Black "Fedorov."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='3r1rk1/p3bppp/1q5Q/2p1p1B1/2B1n3/6R1/P5PP/5RK1';
First :='w';
Moves := 'h6:g7 g8:g7 g5-f6 g7-h6 f6-g7 h6-h5 c4-e2 h5-h4 g3-g4 h4-h5 f1-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=383) then
begin
Names :=  '[White "Ugolcov"]' + Chr(13) + Chr(10) + '[Black "Asjuhin."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='8/5pkp/2n3p1/pNp1n3/2PpP3/2qP2P1/1r5P/R2Q1BK1';
First :='b';
Moves := 'c3-e1 d1:e1 e5-f3 g1-h1 b2:h2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� �� ������ ������ f3.';
Uroven:=1;
end;
if (partNum=384) then
begin
Names :=  '[White "Kaplin"]' + Chr(13) + Chr(10) + '[Black "Lavrentiev."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='5R2/pp4pk/1q4bp/2bB4/6Q1/PP1p4/1BP3PP/6K1';
First :='w';
Moves := 'b2-d4 c5:d4 g1-h1 d3:c2 f8-h8 h7:h8 g4-c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� ��������� ��������� �����.';
Uroven:=1;
end;
if (partNum=385) then
begin
Names :=  '[White "Shaffart"]' + Chr(13) + Chr(10) + '[Black "Werner."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='5r1k/pp5p/2pp2p1/4b3/2PpPr2/3P1P1q/PPQ2R1P/1R2N1K1';
First :='b';
Moves := 'f4-g4 f3:g4 e5:h2 g1-h1 h2-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ����� ������ � ������ h2.';
Uroven:=1;
 end;
  if (partNum=386) then
begin
Names :=  '[White "Kristol"]' + Chr(13) + Chr(10) + '[Black "Samiji."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='2Q1bq1k/1p4pp/8/3pN3/1p1P1r2/1P6/P4nPP/1B2R1K1';
First :='w';
Moves := 'e5-f7 f4:f7 e1:e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���� �� e8 � ������� ���������.';
Uroven:=1;
 end;
 if (partNum=387) then
begin
Names :=  '[White "Knezevich"]' + Chr(13) + Chr(10) + '[Black "Messing."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='2r2rk1/pp2bp1p/5p2/2p5/Q7/2q2N2/P4PPP/1R3RK1';
First :='w';
Moves := 'f1-e1 e7-d6 e1-e3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������ ����� ���������.';
Uroven:=1;
end;
if (partNum=388) then
begin
Names :=  '[White "Semenuk"]' + Chr(13) + Chr(10) + '[Black Seresevski."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1r6/p5kp/4ppn1/3p2nR/1p1P1qQN/2PB4/PP3PP1/6K1';
First :='w';
Moves := 'h5:h7 g7-g8 h7-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ �����������������. �������������� �������������� ����� b8.';
Uroven:=1;
end;
if (partNum=389) then
begin
Names :=  '[White "Roth"]' + Chr(13) + Chr(10) + '[Black "Rajna."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='rn3rk1/ppp2ppp/1b6/3P1N2/5P2/2N3P1/PPP1K3/R6R';
First :='w';
Moves := 'f5-e7 g8-h8 h1:h7 h8:h7 a1-h1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � ������� �����.';
Uroven:=1;
end;
if (partNum=390) then
begin
Names :=  '[White "Harper"]' + Chr(13) + Chr(10) + '[Black "Keres."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='b2r4/5Qpk/p2qp2p/1pN5/3n4/P6P/1P4P1/2R2BK1';
First :='b';
Moves := 'd4-f3 g2:f3 d6-g3 f1-g2 d8-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ����� �� ������ ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=391) then
begin
Names :=  '[White "Katalimov"]' + Chr(13) + Chr(10) + '[Black "Kolpakov"]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='k7/p4r1R/1np2q2/2Np2p1/3P4/1P1QP3/5P2/2K5';
First :='w';
Moves := 'd3-g6 f6:g6 h7-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ � ��������� �� 8-�� �����������.';
Uroven:=1;
end;
if (partNum=392) then
begin
Names :=  '[White "Ceshkovskiy"]' + Chr(13) + Chr(10) + '[Black "Gufeld."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1r2r2k/pP5p/q5p1/4b3/3Bb3/1Q6/PP4PP/4RRK1';
First :='w';
Moves := 'f1-f8 e8:f8 d4:e5 f8-f6 e5:b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ��������, ��� ����� �� b8, �������� ��� ���� ����� � e5.';
Uroven:=1;
end;
if (partNum=393) then
begin
Names :=  '[White "Littlewood"]' + Chr(13) + Chr(10) + '[Black "Perkins."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/4r2k/p3q1np/1pQp1p2/1P3n2/2BB3P/P5RK/8';
First :='w';
Moves := 'd3:f5 e6:f5 c5:e7 g6:e7 g2-g7';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� ������ �����.';
Uroven:=1;
end;
if (partNum=394) then
begin
Names :=  '[White "Katalimov"]' + Chr(13) + Chr(10) + '[Black "Muhin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='2b1k1r1/2r2p2/4pQ2/4R3/ppqNpP2/8/PPP3PP/2KR4';
First :='w';
Moves := 'f6-d8 e8:d8 d4-c6 d8-e8 d1-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � ��� ���� � ������� �����.';
Uroven:=1;
end;
if (partNum=395) then
begin
Names :=  '[White "Karsa"]' + Chr(13) + Chr(10) + '[Black "Brandics."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='1r1q2k1/p1b3pp/2b4r/5p2/8/Q2PN1P1/PP1N1P1P/2R2RK1';
First :='b';
Moves := 'd8-h4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ���������� ����� � �����.';
Uroven:=1;
 end;
if (partNum=396) then
begin
Names :=  '[White "Kristiansen"]' + Chr(13) + Chr(10) + '[Black "Jakobsen."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r1b1kb1r/1p1n1p1p/1qpQ1np1/p3p1B1/P1B1P3/2N2N2/1PP2PPP/1K1R3R';
First :='w';
Moves := 'c4:f7 e8:f7 f3:e5 f7-g7 d6-e6 h8-g8 d1:d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� �� ����������� ����� �����.';
Uroven:=1;
 end;
 if (partNum=397) then
begin
Names :=  '[White "Anderssen"]' + Chr(13) + Chr(10) + '[Black "Larsen."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r4rk1/pp2b1pp/q2pp3/4p3/4n3/1NPRB3/PP2Q1PP/RN5K';
First :='b';
Moves := 'f8-f2 e3:f2 a6:d3 e2-e1 e4:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������������ ������, �������� �������� �������. ��� ����� ���������� �������������� �����.';
Uroven:=1;
end;
if (partNum=398) then
begin
Names :=  '[White "From"]' + Chr(13) + Chr(10) + '[Black Hoi."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='3q1k2/5p2/p5pN/1b2Q2P/8/8/5PPK/8';
First :='w';
Moves := 'e5-h8 f8-e7 h6-f5 g6:f5 h8:d8 e7:d8 h5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� ����� ���� ����������� ��������� �����.';
Uroven:=1;
end;
if (partNum=399) then
begin
Names :=  '[White "Hardward"]' + Chr(13) + Chr(10) + '[Black "Korkess."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r5r1/ppq1kp1R/2p1pp2/8/3P1b2/2PQ1N2/PP3P1P/4R2K';
First :='w';
Moves := 'e1:e6 e7:e6 d3-c4 e6-f5 f3-h4 f5-e4 d4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� � ������� �����.';
Uroven:=1;
end;
if (partNum=400) then
begin
Names :=  '[White "Bjorland"]' + Chr(13) + Chr(10) + '[Black "Valtssen."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='2r2r1k/3nppnp/p5p1/2q3N1/3QPPPN/7R/7P/6K1';
First :='w';
Moves := 'h4-g6 f7:g6 h3:h7 h8-g8 h7:g7 g8-h8 g7-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����� � ������� ����.';
Uroven:=1;
end;
if (partNum=401) then
begin
Names :=  '[White "Fink"]' + Chr(13) + Chr(10) + '[Black "Ditcler"]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='r4rk1/p3n2p/8/q1p2pp1/8/4PQP1/b5BP/BR1R2K1';
First :='w';
Moves := 'b1-b7 a8-e8 f3-h5 a2-f7 h5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ � ���������, ���������� �����, � ����� �����.';
Uroven:=1;
end;
if (partNum=402) then
begin
Names :=  '[White "Geszes"]' + Chr(13) + Chr(10) + '[Black "Vestemier."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='r4rk1/3b2p1/q3p1Pp/2npPPb1/1p1N4/1P2QBN1/P6R/1K1R4';
First :='w';
Moves := 'e3:g5 h6:g5 d1-h1 a6-d3 d4-c2 d3:c2 h2:c2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� ������ �� ����� h.';
Uroven:=1;
end;
if (partNum=403) then
begin
Names :=  '[White "Mindadze"]' + Chr(13) + Chr(10) + '[Black "Kalugin."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='8/4Q2p/5pk1/3p4/3Pq1pP/5pP1/5P1K/2r2B2';
First :='w';
Moves := 'f1-d3 e4:d3 h4-h5';
Comment:= '��� �����. ������� ����������� �������. �������� �����.';
Comment2:='�������� ����� �����.';
Uroven:=1;
end;
if (partNum=404) then
begin
Names :=  '[White "Karnesov"]' + Chr(13) + Chr(10) + '[Black "Gromiko."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='r4r2/pp3Nkp/3R2p1/4Pb2/5Q2/P6P/1q4PK/5R2';
First :='w';
Moves := 'f4-h6 g7-g8 f1:f5 g6:f5 d6-g6 g8:f7 g6-g7 f7-e8 h6-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:=' ��� ����� ���������� ��������� ������� ������ �����.';
Uroven:=1;
end;
if (partNum=405) then
begin
Names :=  '[White "Prainfalk"]' + Chr(13) + Chr(10) + '[Black "Kuuksmaa."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='rq4k1/6pp/p1p2r2/7R/4n3/1P2QP2/1P3P1P/RN4K1';
First :='b';
Moves := 'f6-g6 g1-h1 b8-f4 f3:e4 f4-g4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ������ � ������ � ���������� �����.';
Uroven:=1;
 end;
 if (partNum=406) then
begin
Names :=  '[White "Carlsson"]' + Chr(13) + Chr(10) + '[Black "Josefsen."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r4k1r/bpq2pp1/p1p1b3/8/5Bnp/1N1B2P1/PPP1QP1P/4RR1K';
First :='b';
Moves := 'h4:g3 f4:c7 h8:h2 h1-g1 a7:f2 f1:f2 g3:f2 e2:f2 h2:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� ��� ����� ����� �� ����� h.';
Uroven:=1;
 end;
 if (partNum=407) then
begin
Names :=  '[White "Extrem"]' + Chr(13) + Chr(10) + '[Black "Sieberg."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='rqr2bk1/1p1b1p2/4pBpp/3pP1N1/2n2P2/3B3Q/P1P3PP/R4R1K';
First :='w';
Moves := 'g5:f7 g8:f7 d3:g6 f7-g8 g6-f7 g8:f7 h3-h5 f7-g8 h5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� �����. ������� ������ ������ �� ����� �����.';
Uroven:=1;
end;
if (partNum=408) then
begin
Names :=  '[White "Minev"]' + Chr(13) + Chr(10) + '[Black Keller."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='3r2k1/p1q2p2/1p1N2pp/n7/3Q4/P1P4P/5PP1/4R1K1';
First :='b';
Moves := 'c7-b8 e1-d1 a5-b7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='� �������� �� ������ ����� ������ ���� ����������� �����.';
Uroven:=1;
end;
if (partNum=409) then
begin
Names :=  '[White "Fishben"]' + Chr(13) + Chr(10) + '[Black "Jellison."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='5kr1/pp2pp1p/6p1/2PN4/2P3q1/2Q2nP1/P2r1P1P/4RR1K';
First :='w';
Moves := 'e1:e7 d2:d5 c3-f6 g8-g7 e7:b7 g4-c8 c4:d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� � ����� �������� ������� ������������ � ����� �� ������.';
Uroven:=1;
end;
if (partNum=410) then
begin
Names :=  '[White "Minich"]' + Chr(13) + Chr(10) + '[Black "Savich."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='2rq3k/1Q4p1/4B1P1/p7/Pp6/8/KP6/8';
First :='b';
Moves := 'c8-c6 e6-f7 c6:g6 f7:g6 d8-d5';
Comment:= '��� ������. ������� ����������� �������. �������� �����.';
Comment2:='������ ������ � ���������. �������� ����� �����.';
Uroven:=1;
end;
if (partNum=411) then
begin
Names :=  '[White "Hmelnickiy"]' + Chr(13) + Chr(10) + '[Black "Kabtanskiy"]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='2r3k1/4nppp/Q3p3/8/1P1q4/4N1P1/5PP1/4R1K1';
First :='w';
Moves := 'e3-f5 e6:f5 a6:c8 e7:c8 e1-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������, ���� ������ ��� ��������.';
Uroven:=1;
end;
if (partNum=412) then
begin
Names :=  '[White "Piket"]' + Chr(13) + Chr(10) + '[Black "Douven."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='R4bk1/2p4r/2Pp2nr/3Pp1q1/4Pp1p/5P1K/4BBP1/4Q3';
First :='b';
Moves := 'g5-g3 f2:g3 h4:g3 h3-g4 g6-e7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ����� ��� �������� ���.';
Uroven:=1;
end;
if (partNum=413) then
begin
Names :=  '[White "Ivanchuk"]' + Chr(13) + Chr(10) + '[Black "Ermolinskiy."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='2r4k/1p5p/pP1P2p1/P1N1p1P1/4bb1P/1Q5q/1K6/5NR1';
First :='b';
Moves := 'f4-c1 b2-a2 e4-d5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� � ����� ������������ ������.';
Uroven:=1;
end;
if (partNum=414) then
begin
Names :=  '[White "Vladimirov"]' + Chr(13) + Chr(10) + '[Black "Nesterov."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='r4rk1/1p2pb1p/n4p1Q/1q6/p1NpNpP1/P2P4/1P2P1BP/2R3K1';
First :='w';
Moves := 'c4-d6 b5:b2 d6-f5 b2:c1 g2-f1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:=' ����������� ������� ���� ��� ����� �� ����� g7.';
Uroven:=1;
end;
if (partNum=415) then
begin
Names :=  '[White "Vasukov"]' + Chr(13) + Chr(10) + '[Black "Haba."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='rqb3rk/5pp1/1pp2n1p/p4P2/8/1BP5/PP1B2QP/4R1RK';
First :='w';
Moves := 'd2:h6 g7-g6 g2-g5 f6-h7 h6-g7 h8:g7 g5:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ������ �����, ���������� �� ������ ������.';
Uroven:=1;
 end;
 if (partNum=416) then
begin
Names :=  '[White "Hellers"]' + Chr(13) + Chr(10) + '[Black "Hansen."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='1r3rk1/4b1pp/p2p2P1/4p2P/1p2b1q1/4B3/PPPQ2B1/1K4RR';
First :='w';
Moves := 'd2-d5 e4:d5 g2-d5 g8-h8 g1:g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� �� ����� � ������. ������� ������.';
Uroven:=1;
 end;
 if (partNum=417) then
begin
Names :=  '[White "Babero"]' + Chr(13) + Chr(10) + '[Black "Ernst."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='8/4Rpbk/p2Q2p1/7p/5P1K/6PP/8/5q2';
First :='b';
Moves := 'f1-d3 e7-d7 g7-f6 d6:f6 d3:d7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� ������ � ���������. ����������� ����������.';
Uroven:=1;
end;
if (partNum=418) then
begin
Names :=  '[White "Dimitrov"]' + Chr(13) + Chr(10) + '[Black Ivanov."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='6rk/7p/p2p3r/1p2bp1b/P4p1q/2P2B1P/1P2QPPK/RR2N3';
First :='b';
Moves := 'g8:g2 e1:g2 h4:h3 h2:h3 h5-g4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ����� ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=419) then
begin
Names :=  '[White "Ubilava"]' + Chr(13) + Chr(10) + '[Black "Agzamov."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='4rr1k/2pnb2p/1p5N/p2PppP1/2P4P/qPB5/P7/1K1RQ1R1';
First :='w';
Moves := 'c3:e5 d7:e5 e1:e5 e7-f6 g5:f6 e8:e5 g1-g8 f8:g8 h6-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� � ������ ������ �������� � ����.';
Uroven:=1;
end;
if (partNum=420) then
begin
Names :=  '[White "Arnason"]' + Chr(13) + Chr(10) + '[Black "Bishoff."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='2kr3r/q2b1ppp/pp1Bpn2/2p1QP2/2B5/2P5/P1P3PP/R4R1K';
First :='w';
Moves := 'd6-b8 a7:b8 c4:a6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� �����.';
Uroven:=1;
end;
if (partNum=421) then
begin
Names :=  '[White "Inkov"]' + Chr(13) + Chr(10) + '[Black "Bajovich"]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='6k1/1b4pp/3pNn2/3P1p2/1PpQ1P1q/r7/r5BP/3R2RK';
First :='b';
Moves := 'h4:h2 h1:h2 f6-g4 h2-h1 a3-h3 g2:h3 a2-h2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ������ ���� � ��������.';
Uroven:=1;
end;
if (partNum=422) then
begin
Names :=  '[White "Cojakaru"]' + Chr(13) + Chr(10) + '[Black "Chirikuta."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='8/2QR3p/3p1rpk/2bPp3/4P3/6P1/6BP/q5NK';
First :='w';
Moves := 'd7:h7 h6-g5 h7-h5 g6:h5 c7-g7 f6-g6 h2-h4 g5-g4 g7:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � 5 �����.';
Uroven:=1;
end;
if (partNum=423) then
begin
Names :=  '[White "Honfi"]' + Chr(13) + Chr(10) + '[Black "Vigh."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='4rbk1/pp3pp1/1q6/8/2b1pBN1/6QP/1P1R1PP1/6K1';
First :='w';
Moves := 'd2-d6 f8:d6 g4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� �������� ����� �� ������ ������� ������.';
Uroven:=1;
end;
if (partNum=424) then
begin
Names :=  '[White "Swiker"]' + Chr(13) + Chr(10) + '[Black "Burde."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4r3/2qn2k1/pp3ppr/3p1P2/P3B1R1/8/1PPQ2PP/R6K';
First :='w';
Moves := 'd2:h6 g7:h6 g4:g6 h6-h7 a1-a3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ����� ��������� ����.';
Uroven:=1;
end;
if (partNum=425) then
begin
Names :=  '[White "Basman"]' + Chr(13) + Chr(10) + '[Black "Balshan."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='5rk1/pppq1p1p/3n1R1P/2P3P1/3Qr3/P2P4/8/5RK1';
First :='w';
Moves := 'f6-g6 f7:g6 d4-h8 g8:h8 f1-f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� � ��� ����.';
Uroven:=1;
 end;
 if (partNum=426) then
begin
Names :=  '[White "Caris"]' + Chr(13) + Chr(10) + '[Black "Acers."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4r1k1/ppp2ppp/5q2/8/2P1r3/1P1QPpPb/P4P1P/R3R1KB';
First :='b';
Moves := 'e4:e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ����� ������ � ��������� ������������ ������ �� ������.';
Uroven:=1;
 end;
 if (partNum=427) then
begin
Names :=  '[White "Kanj0"]' + Chr(13) + Chr(10) + '[Black "Zlaticani."]' + Chr(13) + Chr(10) + '[EventDate "1981"]';
Fen :='4r1k1/1p2rppp/1q6/p2p4/3P4/5BbP/PP1Q1PP1/R3R1K1';
First :='b';
Moves := 'b6:b2 e1:e7 b2:a1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� �����.';
Uroven:=1;
end;
if (partNum=428) then
begin
Names :=  '[White "Agzamov"]' + Chr(13) + Chr(10) + '[Black Tringov."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='r4rk1/5p2/1n4pQ/2p5/p5P1/P4N2/1qb1BP1P/R3R1K1';
First :='w';
Moves := 'a1-a2 b2:a2 f3-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� �����.';
Uroven:=1;
end;
if (partNum=429) then
begin
Names :=  '[White "Ambrosimov"]' + Chr(13) + Chr(10) + '[Black "Abmains."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1r1r3k/4N1pp/1p1Pqp2/3Rp3/3n4/8/P4PPP/1Q1R2K1';
First :='w';
Moves := 'd1:d4 e5:d4 b1:h7 h8:h7 d5-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� � ������ ������ �������� � ����.';
Uroven:=1;
end;
if (partNum=430) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Colle."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='3r2k1/p2r1pp1/1pQ3p1/3P2q1/P7/6P1/5P1P/2R1R1K1';
First :='w';
Moves := 'c6:d7 d8:d7 e1-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ���� �� 8-�� �����������.';
Uroven:=1;
end;
if (partNum=431) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Feldt"]' + Chr(13) + Chr(10) + '[EventDate "1916"]';
Fen :='r2qr1k1/pb1nb1pp/1p2pn2/2p1Np2/2PP1B2/3B1N2/PP2QPPP/R4RK1';
First :='w';
Moves := 'e5-f7 g8:f7 e2:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ���� � ����� ����� � ������� �����.';
Uroven:=1;
end;
if (partNum=432) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Fletcher."]' + Chr(13) + Chr(10) + '[EventDate "1928"]';
Fen :='1r3rn1/p5bk/b2pP2p/q2P1p2/1p2nP1N/3QB2P/PP4B1/3NRRK1';
First :='w';
Moves := 'd3:e4 f5:e4 g2:e4 h7-h8 h4-g6 h8-h7 g6:f8 h7-h8 f8-g6 h8-h7 g6-e5 h7-h8 e5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ ������ �����.';
Uroven:=1;
end;
if (partNum=433) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Freeman."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='6k1/pr3ppp/1p3qn1/5NQ1/2p5/8/P4PPP/4R1K1';
First :='w';
Moves := 'e1-e8 g6-f8 f5-h6 f6:h6 e8:f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ��� ��������. ��� �� 8-��.';
Uroven:=1;
end;
if (partNum=434) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Yates."]' + Chr(13) + Chr(10) + '[EventDate "1922"]';
Fen :='r4r1k/2R2Rp1/b3pN1p/3p1p1P/p2P1K2/Pp2PPP1/1P6/8';
First :='w';
Moves := 'f7:g7 f8:f6 f4-e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ ����.';
Uroven:=1;
end;
if (partNum=435) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Nestor."]' + Chr(13) + Chr(10) + '[EventDate "1939"]';
Fen :='3r3k/3P1ppp/p3q3/1pR1P3/2p5/Q5PP/P4P1K/8';
First :='w';
Moves := 'c5-c8 d8:c8 a3-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ������� ���� �� 8-�� �����������.';
Uroven:=1;
 end;
 if (partNum=436) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Eive."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='r4rk1/1q1nbppp/p1b1pn2/1p6/1P5Q/2N1BNP1/P3PPBP/2RR2K1';
First :='w';
Moves := 'd1:d7 c6:d7 f3-g5 b7-b8 g2:a8 b8:a8 g5:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� �������� ����� ����������� ������� �����.';
Uroven:=1;
 end;
 if (partNum=437) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Alexander."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='1r3rk1/pbpn2qp/1p1p2p1/3P1pQ1/1P2n2N/5PPB/PB5P/3R1RK1';
First :='w';
Moves := 'g5-c1 e4-f6 h3:f5 g6:f5 h4:f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����� ������.';
Uroven:=1;
end;
if (partNum=438) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black Lasker."]' + Chr(13) + Chr(10) + '[EventDate "1934"]';
Fen :='3r1rn1/pp1n2kp/1qpN1pp1/6Q1/4P3/1B1R4/PP3PPP/2R3K1';
First :='w';
Moves := 'd6-f5 g7-h8 g5:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������ ��������� ������ ��������� ��������� ���, ��������� � ������ �����.';
Uroven:=1;
end;
if (partNum=439) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Lommer."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='4n1k1/pbrq2p1/4rB1Q/4P3/4p3/6RP/PP4P1/5RK1';
First :='w';
Moves := 'f6:g7 e8:g7 f1-f8 g8:f8 h6-h8 f8-e7 g3:g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� ��������� ��������� ����� ������.';
Uroven:=1;
end;
if (partNum=440) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "N.N."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='r1bq2kr/p1pp1ppp/1pn1p3/4P3/2Pb2Q1/BR6/P4PPP/3K1BNR';
First :='w';
Moves := 'g4:g7 g8:g7 b3-g3 d8-g5 g3:g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ �����.';
Uroven:=1;
end;
if (partNum=441) then
begin
Names :=  '[White "Alehin"]' + Chr(13) + Chr(10) + '[Black "Supiko"]' + Chr(13) + Chr(10) + '[EventDate "1941"]';
Fen :='rn1q1r1k/p2pNppp/bp1Q4/2p1PN2/2B5/P1R5/5PPP/5RK1';
First :='w';
Moves := 'd6-g6 f7:g6 e7:g6 h7:g6 c3-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� � ����� �� ����� h.';
Uroven:=1;
end;
if (partNum=442) then
begin
Names :=  '[White "Anderssen"]' + Chr(13) + Chr(10) + '[Black "Zukertort."]' + Chr(13) + Chr(10) + '[EventDate "1862"]';
Fen :='3r1rk1/1b3p1p/p2q1Pp1/np2Q3/2p4R/6NP/PBB3PK/8';
First :='w';
Moves := 'c2:g6 h7:g6 e5-g5 d6-d2 g3-f5 f8-e8 f5-e7 e8:e7 f6:e7 d2-d6 b2-e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� ������ ����� g6.';
Uroven:=1;
end;
if (partNum=443) then
begin
Names :=  '[White "Anderssen"]' + Chr(13) + Chr(10) + '[Black "Zukertort."]' + Chr(13) + Chr(10) + '[EventDate "1896"]';
Fen :='3r2k1/p4rPp/1b1q3Q/n1p1pP2/1p6/3B1NR1/P4P1P/6RK';
First :='w';
Moves := 'h6:h7 g8:h7 f5-f6 h7-g8 d3:h7 g8:h7 g3-h3 h7-g8 h3-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� ����� h7.';
Uroven:=1;
end;
if (partNum=444) then
begin
Names :=  '[White "Antuanc"]' + Chr(13) + Chr(10) + '[Black "Hubner."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='r2nk1r1/pb3q1p/4p3/3p2pQ/8/BP6/PP3PPP/2R1R1K1';
First :='w';
Moves := 'c1-c7 f7:h5 c7-e7 e8-f8 e7:b7 f8-e8 b7-e7 e8-f8 e7:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����������� ���������� ��������.';
Uroven:=1;
end;
if (partNum=445) then
begin
Names :=  '[White "Arhipkin"]' + Chr(13) + Chr(10) + '[Black "Prodanov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='4rrk1/p1pb1pp1/1pnq3p/3BpPN1/4Q3/2PP2P1/P1P4P/R4RK1';
First :='w';
Moves := 'f5-f6 h6:g5 e4-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� � ������ ����� ��� �������� ������� �����, ��������� ������.';
Uroven:=1;
 end;
 if (partNum=446) then
begin
Names :=  '[White "Baku"]' + Chr(13) + Chr(10) + '[Black "Olteanu."]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='1r1q1rk1/pb3p2/1p4pB/3pPn2/1bpR4/2N1P3/PPQ2PP1/1B2K2R';
First :='w';
Moves := 'c2:f5 g6:f5 b1:f5 f7-f6 f5-e6 f8-f7 d4-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����� � ������� �����.';
Uroven:=1;
 end;
 if (partNum=447) then
begin
Names :=  '[White "Bagirov"]' + Chr(13) + Chr(10) + '[Black "Holmov."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='6k1/p5p1/1p3q2/2ppr2p/4r3/1PQ4P/P1P2PP1/3RR1K1';
First :='b';
Moves := 'e4:e1 d1:e1 e5-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����� ��������� ������� ����� �� e1. �������������� ����.';
Uroven:=1;
end;
if (partNum=448) then
begin
Names :=  '[White "Balashov"]' + Chr(13) + Chr(10) + '[Black Bronstein."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1rr1nbk1/5ppp/3p4/1q1PpN2/np2P3/5Q1P/P1BB1PP1/2R1R1K1';
First :='w';
Moves := 'c2:a4 b5:a4 c1:c8 b8:c8 f5-h6 g7:h6 f3-g4 g8-h8 g4:c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � ���� g4.';
Uroven:=1;
end;
if (partNum=449) then
begin
Names :=  '[White "Balog"]' + Chr(13) + Chr(10) + '[Black "Pogadts."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='5rk1/pp5p/4p1p1/4P3/2pP2q1/3nPrN1/PP1Q2RP/5RK1';
First :='b';
Moves := 'g4:g3 h2:g3 f3:f1 g1-h2 d3-e1 d2-b4 e1-f3 h2-h3 f1-h1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������ ����� ����� ������ ��� ������������ �����.';
Uroven:=1;
end;
if (partNum=450) then
begin
Names :=  '[White "Barca"]' + Chr(13) + Chr(10) + '[Black "Pytel."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='r2qk2r/3bbp1p/pnn1p1p1/1p1pP1NP/2pP4/P1P3P1/1PB1QP2/R1B1KN1R';
First :='w';
Moves := 'h5:g6 e7:g5 h1:h7 h8:h7 g6:h7 g5-f6 c1-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ���������� ����� h � ����� ������.';
Uroven:=1;
end;
if (partNum=451) then
begin
Names :=  '[White "Bareev"]' + Chr(13) + Chr(10) + '[Black "Yacovich"]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='r3kb1r/2pn1ppp/p3p3/1P1q2N1/2pP4/2P3P1/5P1P/R1BQR1K1';
First :='w';
Moves := 'd1-h5 g7-g6 g5:e6 d5:h5 e6:g7 e8-d8 e1-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� � �����.';
Uroven:=1;
end;
if (partNum=452) then
begin
Names :=  '[White "Bauer"]' + Chr(13) + Chr(10) + '[Black "Goillener."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='r3n3/pp2q1pk/2p1BnRp/8/2p2P2/1P5P/PB4QK/8';
First :='w';
Moves := 'g6:h6 g7:h6 g2-g8 f6:g8 e6-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� ������ ����� g6.';
Uroven:=1;
end;
if (partNum=453) then
begin
Names :=  '[White "Besher"]' + Chr(13) + Chr(10) + '[Black "Bruekner."]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='2kr3r/ppq4p/4p3/2bpPn2/2p2Pp1/2P5/PPBB2PP/R2Q1R1K';
First :='b';
Moves := 'f5-g3 h2:g3 c7-g7 f4-f5 g7-g6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='����������� ���������� � �������� �������� �� ����� h.';
Uroven:=1;
end;
if (partNum=454) then
begin
Names :=  '[White "Bednarka"]' + Chr(13) + Chr(10) + '[Black "Winlker."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='b5rr/pqk2ppp/3b4/2ppQ3/8/3P2PB/1P1B1P1P/R3R1K1';
First :='w';
Moves := 'd2-a5 c7-c6 e5:d5 c6:d5 h3-g2 d5-d4 a5-c3 d4:d3 g2-f1 d3-c2 e1-c1 c2-b3 a1-a3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������������� ����� � ������ �������� � ����.';
Uroven:=1;
end;
if (partNum=455) then
begin
Names :=  '[White "Belivskiy"]' + Chr(13) + Chr(10) + '[Black "Adams."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='1r6/8/p1r1pR1p/2p3pk/4K3/1pR3P1/P4P2/8';
First :='w';
Moves := 'g3-g4 h5:g4 c3-g3 g4-h5 g3-h3 h5-g4 f6:h6 b8-b4 e4-e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����������� ������ ������ ������ ������ ������ �����.';
Uroven:=1;
 end;
 if (partNum=456) then
begin
Names :=  '[White "Belivskiy"]' + Chr(13) + Chr(10) + '[Black "Tavadgin."]' + Chr(13) + Chr(10) + '[EventDate "1982"]';
Fen :='4k2r/1p3p1p/1Bp1qbp1/2Q1p3/2P5/2P5/rP3PPP/2KRR3';
First :='w';
Moves := 'e1:e5 e6:e5 d1-d8 f6:d8 c5:e5 e8-d7 e5-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� � ���������� ������� �������� �����.';
Uroven:=1;
 end;
 if (partNum=457) then
begin
Names :=  '[White "Belov"]' + Chr(13) + Chr(10) + '[Black "Shalin."]' + Chr(13) + Chr(10) + '[EventDate "1986"]';
Fen :='r3r3/p3nkpp/1p1Bbp2/2Pp4/8/P4B2/2P2PPP/2KRR3';
First :='w';
Moves := 'd6:e7 e8:e7 e1:e6 e7:e6 f3:d5 a8-e8 c5:b6 a7:b6 d1-e1 ';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������� � ���������� �������� �������� � ������ ������.';
Uroven:=1;
end;
if (partNum=458) then
begin
Names :=  '[White "Benini"]' + Chr(13) + Chr(10) + '[Black Reggio."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='r1b3k1/p5p1/1p4P1/3pp3/q2N1r2/4Q2R/7P/2R4K';
First :='w';
Moves := 'h3-h8 g8:h8 c1:c8 a8:c8 e3-h3 h8-g8 h3:c8 f4-f8 c8-e6 g8-h8 e6-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������� ������� �������, ������������ � ������ �����.';
Uroven:=1;
end;
if (partNum=459) then
begin
Names :=  '[White "Bernstein"]' + Chr(13) + Chr(10) + '[Black "Metger."]' + Chr(13) + Chr(10) + '[EventDate "1907"]';
Fen :='r6k/ppRrb1pp/5p2/nP2p3/4N3/P2P1NPq/Q3PP1P/5RK1';
First :='w';
Moves := 'e4-g5 f6:g5 c7:d7 h3:d7 f3:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ������ ���� ������� ������� ������ �������� ����.';
Uroven:=1;
end;
if (partNum=460) then
begin
Names :=  '[White "Bialas"]' + Chr(13) + Chr(10) + '[Black "Mross."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='2b3rk/1r3p1p/3p1qpQ/2p1pN1P/2P1P1P1/3P2K1/1P3PR1/7R';
First :='w';
Moves := 'g4-g5 f6-e6 h6:h7 h8:h7 h5:g6 h7:g6 h1-h6 g6;g5 g3-f3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����������� ��������� � ������� ������ �����.';
Uroven:=1;
end;
if (partNum=461) then
begin
Names :=  '[White "Bjorgvist"]' + Chr(13) + Chr(10) + '[Black "Timman"]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='r4rk1/1b2pp2/1q3npQ/4R1N1/ppp5/6NP/1PP2PP1/R5K1';
First :='w';
Moves := 'g3-h5 g6:h5 g5-e6 f7:e6 e5-g5 g8-f7 h6-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� ���� ���������� � ������ ���� �����.';
Uroven:=1;
end;
if (partNum=462) then
begin
Names :=  '[White "Blank"]' + Chr(13) + Chr(10) + '[Black "Bar_on."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='r3q1k1/ppn3pn/4p1Np/3pP3/2pP2Q1/2P5/PP1B2PP/5RK1';
First :='w';
Moves := 'd2:h6 g7:h6 g6-e7 g8-h8 f1-f8 e8:f8 e7-g6 h8-g7 g6:f8 g7:f8 g4-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����.';
Uroven:=1;
end;
if (partNum=463) then
begin
Names :=  '[White "Bogolubov"]' + Chr(13) + Chr(10) + '[Black "Capablanka."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='2r3k1/q4ppp/p3p3/pnNp4/2rP4/2P2P2/4R1PP/2R1Q1K1';
First :='b';
Moves := 'b5:d4 c3:d4 c8:c5 d4:c5 a7:c5 g1-f1 c4:c1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���� �� c5 ��������� ���������, �������������� ����.';
Uroven:=1;
end;
if (partNum=464) then
begin
Names :=  '[White "Bogolubov"]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1929"]';
Fen :='3r4/1kbQ4/1q2p3/3p4/3P2p1/pP1N4/P6P/1KR5';
First :='w';
Moves := 'c1:c7 b6:c7 d3-c5 b7-b6 d7:c7 b6:c7 c5:e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� � ���������� �������� ��������.';
Uroven:=1;
end;
if (partNum=465) then
begin
Names :=  '[White "Botvinnik"]' + Chr(13) + Chr(10) + '[Black "Capablanka."]' + Chr(13) + Chr(10) + '[EventDate "1938"]';
Fen :='8/p3q1kp/1p2Pnp1/3pQ3/2pP4/1nP3N1/1B4PP/6K1';
First :='w';
Moves := 'b2-a3 e7:a3 g3-h5 g6:h5 e5-g5 g7-h8 g5:f6 h8-g8 e6-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��� �������� ����� � ����� ������� ������ �������� � e7.';
Uroven:=1;
 end;
  if (partNum=466) then
begin
Names :=  '[White "Botvinnik"]' + Chr(13) + Chr(10) + '[Black "Keres."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='3q1rk1/r5p1/2bpn1P1/p1pN1p2/P1PnP2p/3PB2P/5Q1K/1R1B1R2';
First :='w';
Moves := 'b1-b8 d8:b8 f2:h4 f8-e8 h4-h7 g8-f8 h7-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� �� ������ �����.';
Uroven:=1;
 end;
 if (partNum=467) then
begin
Names :=  '[White "Botvinnik"]' + Chr(13) + Chr(10) + '[Black "Menchik."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='r2rnk2/5ppp/pp2p3/3bPP2/3N4/PB4P1/5K1P/2RR4';
First :='w';
Moves := 'f5:e6 d5:b3 e6-e7 f8:e7 d4-c6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������������� ����� �� d5 ����� � ��������� ��������.';
Uroven:=1;
end;
if (partNum=468) then
begin
Names :=  '[White "Boumaster"]' + Chr(13) + Chr(10) + '[Black Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='8/5pkp/5qp1/2Rp1n2/8/3PPNP1/rr3PKP/2Q2R2';
First :='b';
Moves := 'b2-b1 c1:b1 f5:e3 g2-g1 f6:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='���������� �����.';
Uroven:=1;
end;
if (partNum=469) then
begin
Names :=  '[White "Brionis"]' + Chr(13) + Chr(10) + '[Black "Garsia."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='r4r2/2b2kp1/p1p3qp/1pPp1n2/1P3P2/1B6/PBQ3PP/3R1R1K';
First :='w';
Moves := 'd1:d5 f5-g3 h2:g3 g6:c2 d5-f5 f7-g6 b3:c2 f8:f5 g3-g4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ ����� ������.';
Uroven:=1;
end;
if (partNum=470) then
begin
Names :=  '[White "Bronstein"]' + Chr(13) + Chr(10) + '[Black "Gurevich."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='4r2k/3qNRpp/4n3/3p2QP/8/2P5/6P1/7K';
First :='w';
Moves := 'h5-h6 e8-g8 h6:g7 g8:g7 g5:g7 e6:g7 f7-f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ����������� ��������� � ������� ������ ����� � ����������� �����.';
Uroven:=1;
end;
if (partNum=471) then
begin
Names :=  '[White "Bronstein"]' + Chr(13) + Chr(10) + '[Black "Korchnoy"]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='2Q1R3/6pk/7p/8/6P1/1p3q2/1P1r2PK/8';
First :='w';
Moves := 'e8-h8 h7-g6 h8:h6 g6:h6 c8-h8 h6-g5 h8-h5 g5-f6 g4-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������ ����� �� �������. �� ���������� ������ ����� ����� ������ ���.';
Uroven:=1;
end;
if (partNum=472) then
begin
Names :=  '[White "Bruener"]' + Chr(13) + Chr(10) + '[Black "Koch."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='7r/p2k2p1/1pn1pr2/3p2Pp/P2P3n/2BP2KN/R4P1P/2R5';
First :='b';
Moves := 'f6-f3 g3:h4 c6-e7 g5-g6 e7:g6 h4-g5 h8-h6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='� ������� ������� ������������� ���.';
Uroven:=1;
end;
if (partNum=473) then
begin
Names :=  '[White "Bulat"]' + Chr(13) + Chr(10) + '[Black "Smedervac."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='4r1k1/pp2b1pp/q4n2/2prNP2/P4P2/1P1P3R/1BQ4P/6RK';
First :='w';
Moves := 'g1:g7 g8:g7 c2-g2 g7-f8 h3:h7 f6:h7 e5-d7 d5:d7 g2-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� ������.';
Uroven:=1;
end;
if (partNum=474) then
begin
Names :=  '[White "Bum"]' + Chr(13) + Chr(10) + '[Black "Coleman."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='r1nr2k1/pp1nbp2/1qp1p1p1/4P3/P2P1B2/1B5R/NPQ3PP/5RK1';
First :='w';
Moves := 'c2:g6 f7:g6 b3:e6 g8-g7 f4-h6 g7-h8 h6-f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������������� ��� � ������� �����.';
Uroven:=1;
end;
if (partNum=475) then
begin
Names :=  '[White "Capablanka"]' + Chr(13) + Chr(10) + '[Black "Corso."]' + Chr(13) + Chr(10) + '[EventDate "1900"]';
Fen :='r5rk/pp3n1p/4P3/1b1q1pp1/3P4/PP1Q1N1P/1B5K/4RR2';
First :='w';
Moves := 'd3:b5 d5:b5 d4-d5 g8-g7 e6:f7 h7-h6 f3-d4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ����� �������� � ������������.';
Uroven:=1;
 end;
   if (partNum=476) then
begin
Names :=  '[White "Casas"]' + Chr(13) + Chr(10) + '[Black "Piazinni."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r1b2rk1/pp1n1ppp/4p3/q2N2b1/1p1P3P/4PN2/P1Q2PP1/R3KB1R';
First :='w';
Moves := 'c2:h7 g8:h7 h4:g5 h7-g6 d5-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ���������� � ������� ������� ������.';
Uroven:=1;
 end;
 if (partNum=477) then
begin
Names :=  '[White "Chalomeev"]' + Chr(13) + Chr(10) + '[Black "Isakov."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='8/R5p1/6k1/pr2p1b1/4K3/7P/5P2/6R1';
First :='w';
Moves := 'h3-h4 b5-b4 e4:e5 b4:h4 f2-f4 h4:f4 a7:g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� �������� �� ������ �����.';
Uroven:=1;
end;
if (partNum=478) then
begin
Names :=  '[White "Chandler"]' + Chr(13) + Chr(10) + '[Black Olafsson."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='2q2rk1/R1n2ppp/1r2Pb2/2p4b/2B5/5N1P/4QPP1/2BR2K1';
First :='w';
Moves := 'e6-e7 f8-e8 d1-d8 e8:d8 a7:c7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������ ������ ���������� ����� � �����.';
Uroven:=1;
end;
if (partNum=479) then
begin
Names :=  '[White "Cristofei"]' + Chr(13) + Chr(10) + '[Black "Muller."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='4r3/2R3pp/pk1r4/4pp2/P2n4/2RNK1P1/1P3P1P/8';
First :='w';
Moves := 'a4-a5 b6:a5 c7-b7 f5-f4 e3-e4 d4-b5 c3-a3 b5:a3 b2-b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ��������� �� ���� ��������� ����.';
Uroven:=1;
end;
if (partNum=480) then
begin
Names :=  '[White "Cramling"]' + Chr(13) + Chr(10) + '[Black "Martin."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='5rk1/pQ3p2/4b1p1/7p/5P1q/1P2P3/P4NPr/2RR2K1';
First :='w';
Moves := 'f4-f5 g6:f5 b7-c7 f5-f4 c7:f4 h4:f4 e3:f4 h2-h4 g2-g3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����� ������ �������� � �����, �������������� ����.';
Uroven:=1;
end;
if (partNum=481) then
begin
Names :=  '[White "Crisovan"]' + Chr(13) + Chr(10) + '[Black "Naef"]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='2r2rk1/p4ppp/2nB4/3p4/8/1P2P3/P3QPPP/2R2nK1';
First :='b';
Moves := 'c6-d4 e3:d4 c8:c1 e2-b2 f1-g3 b2:c1 g3-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='� ������� ����� �������� ������ ������.';
Uroven:=1;
end;
if (partNum=482) then
begin
Names :=  '[White "Damianovich"]' + Chr(13) + Chr(10) + '[Black "Lehman."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='r3b1k1/4b1pp/8/2NpP3/p1pP4/Qq2B2P/1P3RPK/8';
First :='w';
Moves := 'e3-g5 e7:c5 a3:c5 e8-f7 f2:f7 g8:f7 c5:d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='���������� ����� ������.';
Uroven:=1;
end;
if (partNum=483) then
begin
Names :=  '[White "Darga"]' + Chr(13) + Chr(10) + '[Black "Ivkov."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='3r2k1/1bp1R1p1/pp2n2p/2p1Pp2/5P2/2P1BN1P/P1P2KP1/8';
First :='b';
Moves := 'g8-f8 e7:e6 f8-f7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ����� �������� � ������� �������.';
Uroven:=1;
end;
if (partNum=484) then
begin
Names :=  '[White "Deep Thought"]' + Chr(13) + Chr(10) + '[Black "Cooke."]' + Chr(13) + Chr(10) + '[EventDate "1989"]';
Fen :='1q2r1k1/1b3ppp/1p6/p5Q1/PnBr4/5P2/1P4PP/2R1R1K1';
First :='w';
Moves := 'c4:f7 g8:f7 c1:c7 b8:c7 g5-f5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='����������� ����� c ������.';
Uroven:=1;
end;
if (partNum=485) then
begin
Names :=  '[White "Demetresku"]' + Chr(13) + Chr(10) + '[Black "Nagi."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='r2q1rk1/pp2bppp/2n5/2P5/N2pn3/6P1/PPQBPPNP/R4RK1';
First :='b';
Moves := 'd4-d3 e2:d3 c6-d4 c2-d1 e4:d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ����� ������.';
Uroven:=1;
 end;
   if (partNum=486) then
begin
Names :=  '[White "Dextre"]' + Chr(13) + Chr(10) + '[Black "Blees."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r3r1k1/1p3pp1/p1n2qp1/3p1bN1/8/1N4Q1/PPP2PPP/1K1RR3 ';
First :='b';
Moves := 'f5:c2 b1:c2 c6-b4 c2-b1 f6-f5 b1-a1 b4-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ���.';
Uroven:=1;
 end;
 if (partNum=487) then
begin
Names :=  '[White "Dikit"]' + Chr(13) + Chr(10) + '[Black "Kallasound."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='4r3/p3PRpk/1p5p/4b3/8/PB4P1/3p2PK/8';
First :='w';
Moves := 'b3-c2 h7-g8 f7-f8 e8:f8 c2-b3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='��������� ����� � �����, ���������������� ����������� �����.';
Uroven:=1;
end;
if (partNum=488) then
begin
Names :=  '[White "Driksna"]' + Chr(13) + Chr(10) + '[Black Strauntish."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='8/3r1pk1/1Q4pp/1pp2q2/2Bn1Pb1/2P5/PP1R2PP/2KR4';
First :='b';
Moves := 'f5-c2 d2:c2 d4-b3 a2:b3 d7:d1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ���� � ������� ���� �����.';
Uroven:=1;
end;
if (partNum=489) then
begin
Names :=  '[White "Druganov"]' + Chr(13) + Chr(10) + '[Black "Panteleev."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='N3r1k1/pp3ppp/8/2P2b2/1b1P1B2/1qnB1N2/1P4PP/nQK1R2R';
First :='b';
Moves := 'b3-d1 e1:d1 c3-e2 d3:e2 a1-b3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��� � ��� ���� � ������� ���� �����.';
Uroven:=1;
end;
if (partNum=490) then
begin
Names :=  '[White "Zagurov"]' + Chr(13) + Chr(10) + '[Black "Simagin."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='1r3rk1/2pb1p1p/q1np2p1/4p2n/1bP1PPP1/3P1N1P/4Q1BK/1RB1NR2';
First :='b';
Moves := 'h5-g3 h2:g3 b4:e1 e2:e1 b8:b1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='��������� ��������, ���������������� �������������� ����� �� b1.';
Uroven:=1;
end;
if (partNum=491) then
begin
Names :=  '[White "Geller"]' + Chr(13) + Chr(10) + '[Black "Ostoich."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='6k1/5r1p/1pqpQ1p1/p7/2P2r2/1P1R4/P5PP/3R3K';
First :='b';
Moves := 'c6-e4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=492) then
begin
Names :=  '[White "example"]' + Chr(13) + Chr(10) + '[Black "example."]' + Chr(13) + Chr(10) + '[EventDate "0000"]';
Fen :='3r2k1/1q3ppp/p1b2n2/8/1P6/PQ3P1B/6PP/R1B4K';
First :='b';
Moves := 'c6-a4 b3:a4 b7-b5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=493) then
begin
Names :=  '[White "German"]' + Chr(13) + Chr(10) + '[Black "Valter."]' + Chr(13) + Chr(10) + '[EventDate "1926"]';
Fen :='4r1k1/pp3ppp/4r3/5q2/2P5/2N3B1/PP1Q1PPP/2R3K1';
First :='b';
Moves := 'f5-c2 g3-f4 c2:c1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=494) then
begin
Names :=  '[White "Smyslov"]' + Chr(13) + Chr(10) + '[Black "Liliental."]' + Chr(13) + Chr(10) + '[EventDate "1941"]';
Fen :='4r2k/pp4pp/2qn4/4Qp2/8/2PB1PP1/P1P3KP/4R3';
First :='w';
Moves := 'e5:d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=495) then
begin
Names :=  '[White "Adams"]' + Chr(13) + Chr(10) + '[Black "Torre."]' + Chr(13) + Chr(10) + '[EventDate "1921"]';
Fen :='2r1r1k1/pp1q1ppp/3p1b2/3P4/3Q4/5N2/PP2RPPP/4R1K1';
First :='w';
Moves := 'd4-g4 d7-b5 g4-c4 b5-d7 c4-c7 d7-b5 a2-a4 b5:a4 e2-e4 a4-b5 c7:b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=496) then
begin
Names :=  '[White "Rovner"]' + Chr(13) + Chr(10) + '[Black "Kamishov."]' + Chr(13) + Chr(10) + '[EventDate "1946"]';
Fen :='1r1r2k1/2q2ppp/p3b3/4p3/1p2P3/5B2/PPPR1QPP/3R3K';
First :='w';
Moves := 'f2-a7 c7-a5 a7:a6 a5-c7 a6-a7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=497) then
begin
Names :=  '[White "Aiks"]' + Chr(13) + Chr(10) + '[Black "Flad."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='k5r1/pp4pp/5n2/qP2Q1N1/3Pp3/2r1P3/5PPP/R1R3K1';
First :='b';
Moves := 'g8-c8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=498) then
begin
Names :=  '[White "example"]' + Chr(13) + Chr(10) + '[Black "example."]' + Chr(13) + Chr(10) + '[EventDate "0000"]';
Fen :='5rk1/5ppp/8/8/8/4PQ2/r1q2PPP/RR4K1';
First :='b';
Moves := 'c2-b2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=499) then
begin
Names :=  '[White "Yanovskiy"]' + Chr(13) + Chr(10) + '[Black "Bern."]' + Chr(13) + Chr(10) + '[EventDate "1907"]';
Fen :='3rr1k1/ppqbRppp/2p5/8/3Q1n2/2P3N1/PPB2PPP/3R2K1';
First :='w';
Moves := 'd4:d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=500) then
begin
Names :=  '[White "Patasius"]' + Chr(13) + Chr(10) + '[Black "Prudi."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='3r2k1/p1rq1pp1/1pR1p2p/8/Q2P4/4P3/P4PPP/2R3K1';
First :='b';
Moves := 'd8-c8 c6:c7 c8:c7 a4-a3 d7-a4 a3-b2 a4:a2 b2-a1 c7-c2 c1-f1 c2:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=501) then
begin
Names :=  '[White "Lovckiy."]' + Chr(13) + Chr(10) + '[Black "Tartakover."]' + Chr(13) + Chr(10) + '[EventDate "1935"]';
Fen :='5r1k/1p4pp/3q4/3Pp1R1/8/8/PP4PP/4Q1K1';
First :='b';
Moves := 'd6-c5 g1-h1 c5-c4 h1-g1 c4-d4 g1-h1 d4-e4 e1-c1 e4-d3 h1-g1 d3-d4 g1-h1 d4-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=502) then
begin
Names :=  '[White "Bernstein."]' + Chr(13) + Chr(10) + '[Black "Capablanka."]' + Chr(13) + Chr(10) + '[EventDate "1914"]';
Fen :='3r2k1/p4ppp/1q6/2rn4/8/2N1P3/P1R1QPPP/2R3K1';
First :='b';
Moves := 'd5:c3 c2:c3 c5:c3 c1:c3 b6-b2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=503) then
begin
Names :=  '[White "Novichkov."]' + Chr(13) + Chr(10) + '[Black "Luzganov."]' + Chr(13) + Chr(10) + '[EventDate "1963"]';
Fen :='2q3k1/p4p1p/4pnp1/4N3/1Q1PP3/8/2r2PPP/4R1K1';
First :='b';
Moves := 'f6:e4 e1:e4 c8-b7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=504) then
begin
Names :=  '[White "Shnapik."]' + Chr(13) + Chr(10) + '[Black "Gaprindashvili."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='1k1rr3/2p2ppp/1pQ5/4b1q1/8/R7/PP3NPP/2R3K1';
First :='b';
Moves := 'g5:c1 c6:c1 e5:b2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=505) then
begin
Names :=  '[White "Liliental."]' + Chr(13) + Chr(10) + '[Black "Aronin."]' + Chr(13) + Chr(10) + '[EventDate "1948"]';
Fen :='2Rb2k1/1p3ppp/5r2/q2Bp3/4P3/5Q1P/5PP1/6K1';
First :='w';
Moves := 'f3-c3 a5-b6 c3-b2 b6-d6 f2-f4 e5:f4 e4-e5 d6-d7 b2:b7 d7-e8 b7-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=506) then
begin
Names :=  '[White "Mikenas."]' + Chr(13) + Chr(10) + '[Black "Bronshtein."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='r3r1k1/1p1b1pp1/1p5p/3Pq3/1R6/P2Q1B2/1P4PP/R6K';
First :='b';
Moves := 'a8:a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=507) then
begin
Names :=  '[White "Jaya."]' + Chr(13) + Chr(10) + '[Black "Shtaudte."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='2r4k/5Qp1/p2pPR1p/8/8/4q3/P5PP/7K';
First :='b';
Moves := 'e3:e6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=508) then
begin
Names :=  '[White "Engergald."]' + Chr(13) + Chr(10) + '[Black "Shulce."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='2r2r2/pp3qk1/6p1/3PP1Bp/4R3/4Q3/PP4PP/7K';
First :='b';
Moves := 'c8-c1 e3:c1 f7-f1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=509) then
begin
Names :=  '[White "Fontein."]' + Chr(13) + Chr(10) + '[Black "Eive."]' + Chr(13) + Chr(10) + '[EventDate "1939"]';
Fen :='2rr2k1/5pp1/pN2pb2/Q7/1R6/P2q4/5PPP/5RK1';
First :='b';
Moves := 'c8-c1 f1:c1 d3-d1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=510) then
begin
Names :=  '[White "Reti."]' + Chr(13) + Chr(10) + '[Black "Bogolubov."]' + Chr(13) + Chr(10) + '[EventDate "1926"]';
Fen :='3r1bk1/ppq3pp/2p5/2P2Q1B/8/1P4P1/P6P/5RK1';
First :='w';
Moves := 'h5-f7 g8-h8 f7-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=511) then
begin
Names :=  '[White "Cerendagva."]' + Chr(13) + Chr(10) + '[Black "Purevgav."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='5r1k/6bp/4Q1p1/3p4/Pp2n3/1q1N4/1P4PP/R4BK1';
First :='b';
Moves := 'g7-d4 g1-h1 b3:d3 f1:d3 e4-f2 h1-g1 f2:d3 g1-h1 d3-f2 h1-g1 f2-d1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=512) then
begin
Names :=  '[White "Gragger."]' + Chr(13) + Chr(10) + '[Black "Dorn."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='4r1k1/5ppp/r1q2n2/p1pNnQ2/PpP1P3/1P4R1/2B3PP/3R2K1';
First :='w';
Moves := 'd5-e7 e8:e7 f5:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=513) then
begin
Names :=  '[White "Kornfilt."]' + Chr(13) + Chr(10) + '[Black Gukel."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='2r1r2k/4R1pp/p7/1p6/2nqN1Q1/P5PP/1P5K/5R2';
First :='w';
Moves := 'e4-f6 d4:g4 f6:e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=514) then
begin
Names :=  '[White "Capablanka."]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1927"]';
Fen :='r3r1k1/ppp2ppp/3b4/3p1q2/1n1P1N2/1Q2B3/PPP2PPP/2R1R1K1';
First :='b';
Moves := 'b4:c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=515) then
begin
Names :=  '[White "Poliarniki."]' + Chr(13) + Chr(10) + '[Black "Redakcia."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='5rk1/ppr2p1p/1q1pp1p1/8/5P2/8/PPR1Q1PP/2R4K';
First :='b';
Moves := 'b6:b2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=516) then
begin
Names :=  '[White "NN."]' + Chr(13) + Chr(10) + '[Black "Rihter."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='3rRr1k/pp4pp/2p1Q3/8/P7/2P5/1P3qPP/4R2K';
First :='b';
Moves := 'd8:e8 e6:e8 h7-h6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=517) then
begin
Names :=  '[White "Vashkau."]' + Chr(13) + Chr(10) + '[Black "Dibel."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='3r1rk1/p1p2pp1/7p/2pb2q1/2B2nN1/2PP2Q1/PP3PPP/3RR1K1';
First :='b';
Moves := 'd5:c4 e1-e5 d8:d3 d1:d3 f4-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=518) then
begin
Names :=  '[White "Icenko."]' + Chr(13) + Chr(10) + '[Black "Petrovskih."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='2r3k1/4bpp1/3p4/2rPpPqN/pp6/5Q2/PPPR1RPP/7K';
First :='b';
Moves := 'e5-e4 f3:e4 c5:c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=519) then
begin
Names :=  '[White "Lepek."]' + Chr(13) + Chr(10) + '[Black Koonen."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='6k1/5ppp/4p3/p2rP3/1p1P4/2q2PP1/P2RQ1KP/8';
First :='w';
Moves := 'd2-c2 c3:d4 c2-c4 d4-b6 c4-c8 d5-d8 e2-b5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=520) then
begin
Names :=  '[White "Nedelkovich."]' + Chr(13) + Chr(10) + '[Black Siladi."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='2r2rk1/4R1pp/p7/5n2/P2B4/2P2p2/1P4PP/5RK1';
First :='b';
Moves := 'f5:d4 c3:d4 f3-f2 g1-h1 c8-c1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='�������� ������ �����������.';
Uroven:=1;
end;
if (partNum=521) then
begin
Names :=  '[White "Gurgenidze."]' + Chr(13) + Chr(10) + '[Black Spasskiy."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='5rk1/r5pp/4pPq1/2ppP3/p2p3Q/3P4/2P2R1P/5R1K';
First :='w';
Moves := 'f6-f7 g8-h8 h4-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=522) then
begin
Names :=  '[White "Alehin."]' + Chr(13) + Chr(10) + '[Black NN."]' + Chr(13) + Chr(10) + '[EventDate "1939"]';
Fen :='3r3k/3P1ppp/p3q3/1pR1P3/2p5/Q5PP/P4P1K/8';
First :='w';
Moves := 'c5-c8 d8:c8 a3-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=523) then
begin
Names :=  '[White "Geller."]' + Chr(13) + Chr(10) + '[Black Ivkov."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='2r3k1/1p2Qpp1/p2Pq3/P1p5/2P5/4p2P/6PK/4R3';
First :='w';
Moves := 'd6-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=524) then
begin
Names :=  '[White "Solter."]' + Chr(13) + Chr(10) + '[Black Brigg."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='r1b1r2k/pp1nN1pp/8/3Q4/3p2P1/2q3P1/P1P1KP2/2BR4';
First :='w';
Moves := 'd5-g8 e8:g8 e7-g6 h7:g6 d1-h1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=525) then
begin
Names :=  '[White "Bisgaer."]' + Chr(13) + Chr(10) + '[Black "Fisher."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='2r5/p4pk1/8/4bR2/4P1Pp/P5P1/1P2R1PK/2r4N';
First :='b';
Moves := 'c1:h1 h2:h1 c8-c1 h1-h2 h4:g3 h2-h3 c1-h1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=526) then
begin
Names :=  '[White "Opochenskiy."]' + Chr(13) + Chr(10) + '[Black "Alehin."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='1k1n3r/ppp5/5p2/3p1qp1/PP1P4/2P2NPp/4QP1P/4R2K';
First :='b';
Moves := 'h8-e8 e2-d1 f5:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=527) then
begin
Names :=  '[White "Terpugov."]' + Chr(13) + Chr(10) + '[Black Kan."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='3qr1k1/p4p1p/1n1p2pP/8/2p2N1Q/2P1R1P1/1P3P2/6K1';
First :='w';
Moves := 'h4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=528) then
begin
Names :=  '[White "Levenfish."]' + Chr(13) + Chr(10) + '[Black Rumin."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='r1b2rk1/p4ppp/1p1Qp3/4P2N/1P6/8/P3qPPP/3R1RK1';
First :='w';
Moves := 'h5-f6 g7:f6 e5:f6 e2-g4 d6:f8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=529) then
begin
Names :=  '[White "Alehin."]' + Chr(13) + Chr(10) + '[Black Reshevskiy."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='Rnk5/1p4pp/1Pp2pq1/2B1r3/1P6/7P/3r2PQ/5RK1';
First :='w';
Moves := 'a8:b8 c8:b8 h2:e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=530) then
begin
Names :=  '[White "Duras."]' + Chr(13) + Chr(10) + '[Black NN."]' + Chr(13) + Chr(10) + '[EventDate "1910"]';
Fen :='2k1q3/p2r1p2/P7/Q6B/8/Kp2r3/8/6R1';
First :='w';
Moves := 'g1-c1 c8-b8 a5-b4 b8-a8 h5-f3 e3:f3 b4-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=531) then
begin
Names :=  '[White "Mikenas."]' + Chr(13) + Chr(10) + '[Black "Aronin."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='2r3k1/5ppp/4p3/5q2/8/Pp1Q4/1P4PP/1K1R4';
First :='b';
Moves := 'c8-d8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=532) then
begin
Names :=  '[White "Kapablanka."]' + Chr(13) + Chr(10) + '[Black Raubichek."]' + Chr(13) + Chr(10) + '[EventDate "1908"]';
Fen :='kr2r3/pRp3pp/Q1P5/5R2/Pp1q4/3pp2P/6PK/8';
First :='w';
Moves := 'b7:a7 d4:a7 f5-a5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=533) then
begin
Names :=  '[White "Menchik."]' + Chr(13) + Chr(10) + '[Black Tomas."]' + Chr(13) + Chr(10) + '[EventDate "1932"]';
Fen :='r4r2/q1pb1pkp/1p1p2p1/2nPpP1P/2P1P3/p1N2P2/PP1Q4/2KR1BR1';
First :='w';
Moves := 'f5-f6 g7-h8 d2-h6 f8-g8 h5:g6 f7:g6 h6:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=534) then
begin
Names :=  '[White "Goldenov."]' + Chr(13) + Chr(10) + '[Black "Zaharian."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='8/1R6/4P1pk/6pp/4P3/4PKP1/rp6/8 ';
First :='b';
Moves := 'g5-g4 f3-f4 a2-a5 e4-e5 a5-a4 e3-e4 a4-a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=535) then
begin
Names :=  '[White "Gligorich."]' + Chr(13) + Chr(10) + '[Black "Commons."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='3r4/2rn2pp/k1p1pp2/p1P5/1pK1P3/1P3P2/PBR3PP/3R4';
First :='b';
Moves := 'd7-e5 b2:e5 d8:d1 e5:c7 e6-e5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=536) then
begin
Names :=  '[White "Fisher."]' + Chr(13) + Chr(10) + '[Black Duran."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='r7/2R5/4p1pp/3kP3/P1p2PP1/2P5/1P2K2P/8';
First :='w';
Moves := 'b2-b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=537) then
begin
Names :=  '[White "Vencel."]' + Chr(13) + Chr(10) + '[Black Gronau."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/P2R4/4pkp1/3p4/2pP2PP/2P1K3/r7/8';
First :='w';
Moves := 'g4-g5 f6-f5 e3-f3 e6-e5 d7-e7 e5:d4 c3:d4 a2-a3 e7-e3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=538) then
begin
Names :=  '[White "Marich."]' + Chr(13) + Chr(10) + '[Black "Gligorich."]' + Chr(13) + Chr(10) + '[EventDate "1963"]';
Fen :='5rk1/1B2bp1p/p2p1p2/q4R2/8/2r5/P1PQ2PP/1R5K';
First :='b';
Moves := 'c3-b3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=539) then
begin
Names :=  '[White "Minich."]' + Chr(13) + Chr(10) + '[Black Honfi."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='r2r2k1/2q2ppp/8/pp1RP3/8/1pP1Q3/1P3PPP/3R2K1';
First :='w';
Moves := 'e3-a7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=540) then
begin
Names :=  '[White "Fomina."]' + Chr(13) + Chr(10) + '[Black Zaiceva."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='2R5/5pkp/p3p1r1/3bP1P1/3NqQP1/8/5P1P/6K1';
First :='w';
Moves := 'f4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=541) then
begin
Names :=  '[White "Parma."]' + Chr(13) + Chr(10) + '[Black Forintosh."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='3r2k1/ppq2ppp/4pn2/2n3N1/3R4/2P3NP/PP2QPP1/6K1';
First :='w';
Moves := 'e2-e5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=542) then
begin
Names :=  '[White "Makagonov."]' + Chr(13) + Chr(10) + '[Black Flor."]' + Chr(13) + Chr(10) + '[EventDate "1942"]';
Fen :='4k3/q3nrb1/p1pB4/1p2pppp/8/3Q1P1P/PPB3P1/3R3K';
First :='w';
Moves := 'd6-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=543) then
begin
Names :=  '[White "Paliy."]' + Chr(13) + Chr(10) + '[Black "Merkulov."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='4r1k1/pp2rpp1/2n2q1p/3p4/6b1/2P2N2/P1PQ1PPP/1R1BR1K1';
First :='b';
Moves := 'e7:e1 f3:e1 f6-f4 e1-f3 g4:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=544) then
begin
Names :=  '[White "Fridman."]' + Chr(13) + Chr(10) + '[Black Regedzinskiy."]' + Chr(13) + Chr(10) + '[EventDate "1938"]';
Fen :='5r1k/4R1pp/2rQ4/5pq1/8/4PP2/6PP/3R2K1';
First :='w';
Moves := 'e7-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=545) then
begin
Names :=  '[White "Bukne."]' + Chr(13) + Chr(10) + '[Black Andersson."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='r5k1/1qp2ppp/2N2b2/2Bp1b2/QP6/1P6/5PPP/4R1K1';
First :='w';
Moves := 'c6-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=546) then
begin
Names :=  '[White "Tal."]' + Chr(13) + Chr(10) + '[Black Holm."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='r4B1k/p4ppp/6nq/3N4/6b1/1P3N1P/P3QPP1/2b1R1K1';
First :='w';
Moves := 'e2-e8 a8:e8 e1:e8 g4-d7 e8-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=547) then
begin
Names :=  '[White "Selavkin."]' + Chr(13) + Chr(10) + '[Black Belousov."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='4r2k/ppp2Qpp/8/8/3n4/2N5/1P4PP/4qR1K';
First :='w';
Moves := 'c3-e4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=548) then
begin
Names :=  '[White "Keres."]' + Chr(13) + Chr(10) + '[Black Levenfish."]' + Chr(13) + Chr(10) + '[EventDate "1947"]';
Fen :='7k/p2r1ppp/1pQ2bq1/3B4/4P3/2BR2Pb/PP3P1P/6K1';
First :='w';
Moves := 'd5-e6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=549) then
begin
Names :=  '[White "Keres."]' + Chr(13) + Chr(10) + '[Black Levenfish."]' + Chr(13) + Chr(10) + '[EventDate "1949"]';
Fen :='1r5k/4nppp/p4qb1/P7/1pR5/1B6/1P1QR1PP/6K1';
First :='w';
Moves := 'd2:b4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=550) then
begin
Names :=  '[White "Keres."]' + Chr(13) + Chr(10) + '[Black Treger."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='k2rr3/ppq3p1/5p2/4p2Q/2n4P/2PR2P1/PPBR1P2/2K5';
First :='w';
Moves := 'd3:d8 e8:d8 h5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=551) then
begin
Names :=  '[White "Shtrek."]' + Chr(13) + Chr(10) + '[Black Barash."]' + Chr(13) + Chr(10) + '[EventDate "1912"]';
Fen :='1k6/ppp3qp/3p2p1/4p1B1/2P1p3/1P4Q1/n3r1PP/5R1K';
First :='w';
Moves := 'g5-h6 g7:h6 g3-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=552) then
begin
Names :=  '[White "Alehin."]' + Chr(13) + Chr(10) + '[Black Kenlein."]' + Chr(13) + Chr(10) + '[EventDate "1908"]';
Fen :='r1b2r1k/ppp3pp/3b4/4Npq1/2B5/8/PPP2PPP/R2QR1K1';
First :='w';
Moves := 'd1:d6 c7:d6 e5-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=553) then
begin
Names :=  '[White "Makih."]' + Chr(13) + Chr(10) + '[Black Kort."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='6k1/1b3ppp/p1p2n2/4q3/2B1n3/P6P/2Q2PP1/3R2K1';
First :='w';
Moves := 'd1-d8 f6-e8 c2-b2 e5-e7 b2:b7 e7:d8 b7:f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=554) then
begin
Names :=  '[White "Guldin."]' + Chr(13) + Chr(10) + '[Black Bagdatiev."]' + Chr(13) + Chr(10) + '[EventDate "1963"]';
Fen :='1r4k1/p4ppp/5q2/2R5/8/r3P3/3Q1PPP/3R2K1';
First :='w';
Moves := 'd2-b4 b8-d8 c5-d5 d8:d5 b4-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=555) then
begin
Names :=  '[White "Betner."]' + Chr(13) + Chr(10) + '[Black Patteson."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='r1b2rk1/p1p1Qppp/2p5/8/8/1P4P1/P1P3KP/qNB1R3';
First :='w';
Moves := 'e7:f8 g8:f8 c1-a3 f8-g8 e1-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=556) then
begin
Names :=  '[White "Tukmakov."]' + Chr(13) + Chr(10) + '[Black Kochiev."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='3r2k1/p4ppp/n3q3/8/2Q5/5BP1/r3PP1P/2R2RK1';
First :='w';
Moves := 'f3-d5 e6:d5 c4:d5 d8:d5 c1-c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=557) then
begin
Names :=  '[White "Teshner."]' + Chr(13) + Chr(10) + '[Black "Portish."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='k1r1r3/pp5p/1q6/3R1Np1/1b6/1P3P2/2Q1R1PP/7K';
First :='b';
Moves := 'b6-f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=558) then
begin
Names :=  '[White "Vladimirov."]' + Chr(13) + Chr(10) + '[Black Haritonov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r3r3/3nkp2/q1p1p1p1/p3P1P1/PbpB4/1P5R/2P2Q1P/3RN2K';
First :='w';
Moves := 'f2-f6 d7:f6 d4-c5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=559) then
begin
Names :=  '[White "Henkin."]' + Chr(13) + Chr(10) + '[Black Mudrov."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='5r1k/p1rn1p1p/1q1bbPp1/1p6/4p3/1PR1N3/PB2B1PP/2Q2R1K';
First :='w';
Moves := 'e3-d5 e6:d5 c1-h6 f8-g8 h6:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=560) then
begin
Names :=  '[White "Gligorich."]' + Chr(13) + Chr(10) + '[Black Nivergelt."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='6r1/4kp2/p1bRpp2/1pr1P3/5b1p/PBP1N3/1P4PP/1K1R4';
First :='w';
Moves := 'e3-f5 e6:f5 e5:f6 e7-f8 d6:c6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=561) then
begin
Names :=  '[White "Vinc."]' + Chr(13) + Chr(10) + '[Black Vidella."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='2rk1b1r/1Rp1p3/p3P2p/6pQ/5B2/P5PP/4KP2/7q';
First :='w';
Moves := 'f4:c7 c8:c7 h5-e8 d8:e8 b7-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=562) then
begin
Names :=  '[White "Isakov."]' + Chr(13) + Chr(10) + '[Black "Pichelauri."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='6k1/p5pp/7r/3Q3r/1P6/2P2pq1/P4P1P/3R2RK';
First :='b';
Moves := 'h5:d5 f2:g3 h6:h2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=563) then
begin
Names :=  '[White "Ceshkovskiy."]' + Chr(13) + Chr(10) + '[Black Alburt."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='r3q2r/4bQ1p/3p1n2/1Np3k1/1pB3P1/5P2/PP6/3RK2R';
First :='w';
Moves := 'd1-d5 g5-f4 e1-f2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=564) then
begin
Names :=  '[White "German."]' + Chr(13) + Chr(10) + '[Black "Ranfeld."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='r4rk1/ppp3pp/3p4/Q2P3n/3P4/2P1pP2/PP3qPP/R4R1K';
First :='b';
Moves := 'h5-g3 h2:g3 f8-f6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=565) then
begin
Names :=  '[White "Vesterinen."]' + Chr(13) + Chr(10) + '[Black "Hubner."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='5b2/3k4/1p2p2p/3pPpp1/1P1K4/P2R3P/2rN2P1/8';
First :='b';
Moves := 'f5-f4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=566) then
begin
Names :=  '[White "Vodopianov."]' + Chr(13) + Chr(10) + '[Black Cancin."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='5rk1/8/p6p/1p4p1/2p3Q1/2B1qp2/PPP3PP/4RB1K';
First :='b';
Moves := 'e3-g1 h1:g1 f3-f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=567) then
begin
Names :=  '[White "Ivkov."]' + Chr(13) + Chr(10) + '[Black Eliskazes."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='3q2k1/1br2ppp/8/1Pp1R3/8/2Q3PB/5P1P/6K1';
First :='w';
Moves := 'c3-d2 d8-f8 d2-e3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=568) then
begin
Names :=  '[White "Shnapik."]' + Chr(13) + Chr(10) + '[Black Bernard."]' + Chr(13) + Chr(10) + '[EventDate "1971"]';
Fen :='rkb4r/4Rp1p/p1PR1p1b/8/8/5N2/P4PPP/6K1';
First :='w';
Moves := 'd6-d8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=569) then
begin
Names :=  '[White "NN."]' + Chr(13) + Chr(10) + '[Black Lazarevich."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='5r1k/p6p/P7/1p2R1K1/3p4/3Q2P1/1P3q1P/5R2';
First :='b';
Moves := 'f8-g8 g5-h6 f2:h2 e5-h5 h2-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=570) then
begin
Names :=  '[White "NN."]' + Chr(13) + Chr(10) + '[Black Pilsberri."]' + Chr(13) + Chr(10) + '[EventDate "1899"]';
Fen :='7k/p4q1p/1pb5/2p5/4B2Q/2P1B3/P6P/7K';
First :='b';
Moves := 'f7-f1 e3-g1 f1-f3 e4:f3 c6:f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=571) then
begin
Names :=  '[White "Vanka."]' + Chr(13) + Chr(10) + '[Black Skala."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='r1b2r2/pp2npkp/3p1pp1/q2P4/3QPP2/8/PP2B1PP/R1B2R1K';
First :='w';
Moves := 'b2-b4 a5-d8 d4:f6 g7:f6 c1-b2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=572) then
begin
Names :=  '[White "Ung."]' + Chr(13) + Chr(10) + '[Black Sabadosh."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='8/6n1/p5p1/Pp4kp/1PrB3R/5P1Q/4q1PK/8';
First :='w';
Moves := 'd4:g7 c4:h4 h3:h4 g5:h4 g7-f6 g6-g5 f6-c3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=573) then
begin
Names :=  '[White "Shlehter."]' + Chr(13) + Chr(10) + '[Black Meitner."]' + Chr(13) + Chr(10) + '[EventDate "1899"]';
Fen :='8/p5Q1/2ppq2p/3n1ppk/3B4/2P2P1P/P5P1/6K1';
First :='w';
Moves := 'g2-g4 f5:g4 h3:g4 h5-h4 g7:h6 e6:h6 g1-h2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=574) then
begin
Names :=  '[White "Kube."]' + Chr(13) + Chr(10) + '[Black Braun."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r1bq1r2/1p1pnpk1/p2Bpnpp/6Q1/2PPP2P/6P1/5PB1/R3K1NR';
First :='w';
Moves := 'g5:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=575) then
begin
Names :=  '[White "Man."]' + Chr(13) + Chr(10) + '[Black Papp."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='8/7k/b2N1r2/p3Rpp1/7p/2P4K/1P1R2PP/5r2';
First :='b';
Moves := 'f6:d6 d2:d6 f1-f3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=576) then
begin
Names :=  '[White "Mosiongik."]' + Chr(13) + Chr(10) + '[Black Gorniak."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='2r3qk/4Rp1n/2bp1P1R/p7/3B4/1P1Q2N1/1PP3rP/5K2';
First :='w';
Moves := 'e7:f7 g8:f7 d3:h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=577) then
begin
Names :=  '[White "Eliskazes."]' + Chr(13) + Chr(10) + '[Black Berensen."]' + Chr(13) + Chr(10) + '[EventDate "1960"]';
Fen :='7Q/4kbQ1/5p2/4pK2/4P3/3p1P2/8/6q1';
First :='b';
Moves := 'g1-g5 g7:g5 f7-e6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=578) then
begin
Names :=  '[White "Gekson."]' + Chr(13) + Chr(10) + '[Black Marshall."]' + Chr(13) + Chr(10) + '[EventDate "1899"]';
Fen :='8/p1p5/2p3k1/2b1rpB1/7K/2P3PP/P1P2r2/3R3R';
First :='b';
Moves := 'f2-f4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=579) then
begin
Names :=  '[White "Domsgen."]' + Chr(13) + Chr(10) + '[Black Kozlovskaya."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1r3bk1/1r6/p2p1Pp1/4p1Pp/b1p1P3/P1P1BK2/1Pq4Q/3N2RR';
First :='b';
Moves := 'c2:e4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=580) then
begin
Names :=  '[White "Zilbershtein."]' + Chr(13) + Chr(10) + '[Black Veresov."]' + Chr(13) + Chr(10) + '[EventDate "1969"]';
Fen :='8/5pk1/p2q2p1/8/7P/5Q1K/6B1/6b1';
First :='b';
Moves := 'd6-h2 h3-g4 f7-f5 g4-g5 h2:g2 f3:g2 g1-e3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=581) then
begin
Names :=  '[White "Geims."]' + Chr(13) + Chr(10) + '[Black Miles."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='r2q1rk1/1b1nbpp1/1p5p/p1ppNB2/3P1N2/4P3/PPQ2PPP/2RR2K1';
First :='w';
Moves := 'f5-h7 g8-h8 e5:f7 f8:f7 f4-g6 h8:h7 g6-f8 h7-g8 c2-h7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=582) then
begin
Names :=  '[White "Rakich."]' + Chr(13) + Chr(10) + '[Black Govedarica."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='3r4/p1p4p/1pb3pk/4R3/2P3B1/2Q3PP/P2q1P2/6K1';
First :='w';
Moves := 'e5-h5 g6:h5 c3-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=583) then
begin
Names :=  '[White "Steinic."]' + Chr(13) + Chr(10) + '[Black NN."]' + Chr(13) + Chr(10) + '[EventDate "1861"]';
Fen :='r1q3kr/1p4p1/p1p2R1p/5p2/6PP/P3Q3/1P4P1/3R3K';
First :='w';
Moves := 'd1-d8 c8:d8 e3-e6 g8-h7 f6:h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=584) then
begin
Names :=  '[White "Golan."]' + Chr(13) + Chr(10) + '[Black Shtif."]' + Chr(13) + Chr(10) + '[EventDate "1950"]';
Fen :='4Q2r/1b4pk/p1n1pr1p/1p2P2B/1qn5/5N2/PPP2PP1/2KRR3';
First :='w';
Moves := 'f3-g5 h6:g5 h5-g6 f6:g6 e1-h1 g6-h6 h1:h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=585) then
begin
Names :=  '[White "Gerter."]' + Chr(13) + Chr(10) + '[Black Shpeil."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='r4k2/p1R1npp1/Pp5r/1B4Q1/1q1p4/6Pp/1P3P1P/2R3K1';
First :='w';
Moves := 'c7-c8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=586) then
begin
Names :=  '[White "Kveleckiy."]' + Chr(13) + Chr(10) + '[Black Roslinskiy."]' + Chr(13) + Chr(10) + '[EventDate "1954"]';
Fen :='3q4/p2rRpkp/1p4p1/2p5/3p4/1P1P3P/P1P1QPP1/6K1';
First :='w';
Moves := 'e2-e5 g7-f8 e5-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=587) then
begin
Names :=  '[White "Znosko-Borovskiy."]' + Chr(13) + Chr(10) + '[Black Duras."]' + Chr(13) + Chr(10) + '[EventDate "1909"]';
Fen :='r3r1k1/1p3ppp/2p2b2/p7/8/Q1BP2Pq/PPP4P/4RR1K';
First :='b';
Moves := 'e8-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=588) then
begin
Names :=  '[White "Prichard."]' + Chr(13) + Chr(10) + '[Black Kafferti."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='4r1k1/pp1q1ppp/2pb4/3p4/3P1P2/3Q1P2/PP1Br2P/4RR1K';
First :='b';
Moves := 'd7-h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=589) then
begin
Names :=  '[White "Tal."]' + Chr(13) + Chr(10) + '[Black Platonov."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='5rk1/1p1b1p1p/p2ppb2/5P1B/1q1P4/1Pr4R/2PQ2PP/5R1K';
First :='w';
Moves := 'h3-g3 g8-h8 d2-h6 c3:g3 h5-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=590) then
begin
Names :=  '[White "Antoshin."]' + Chr(13) + Chr(10) + '[Black Cvetkov."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='r1b2r1k/ppb1qp1p/2p3pQ/4n3/1PB1N3/P3P3/1B1P2PP/R3K2R';
First :='w';
Moves := 'e4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=591) then
begin
Names :=  '[White "Dgons."]' + Chr(13) + Chr(10) + '[Black Duball."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='4r1k1/p2n1pbp/q5p1/3p4/N7/1P1n1PP1/P1NB3P/3Q1R1K';
First :='b';
Moves := 'e8-e1 d2:e1 d3-b2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� �����.';
Uroven:=1;
end;
if (partNum=592) then
begin
Names :=  '[White "Tender."]' + Chr(13) + Chr(10) + '[Black Gicesku."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='4k3/ppp4r/4P1q1/3P1p2/1PQ5/8/P5PP/6RK';
First :='b';
Moves := 'g6-g3 h2-h3 h7:h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=593) then
begin
Names :=  '[White "NN."]' + Chr(13) + Chr(10) + '[Black Anderssen."]' + Chr(13) + Chr(10) + '[EventDate "1872"]';
Fen :='7k/1p4p1/7p/3P1n2/4Q3/2P2P1b/PP3q1P/6RK';
First :='b';
Moves := 'h3-g2 g1:g2 f2-f1 g2-g1 f5-g3 h2:g3 f1-h3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=594) then
begin
Names :=  '[White "NN."]' + Chr(13) + Chr(10) + '[Black Elsner."]' + Chr(13) + Chr(10) + '[EventDate "1958"]';
Fen :='6b1/Q5pk/P5p1/5p2/8/6qP/6B1/6RK';
First :='b';
Moves := 'g8-d5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=595) then
begin
Names :=  '[White "Kochiev."]' + Chr(13) + Chr(10) + '[Black Ubilava."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='1nq3k1/5p1p/1pr1p1pP/p2pP1Q1/3P2N1/6P1/PP3PK1/2R5';
First :='w';
Moves := 'g4-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=596) then
begin
Names :=  '[White "Zilbershtein."]' + Chr(13) + Chr(10) + '[Black Dementiev."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='3r1rk1/1bn2p1p/1q2p1pP/p3P1Q1/1ppp2N1/3P2P1/PP3PB1/R3R1K1';
First :='w';
Moves := 'g5-f6 c7-e8 f6-e7 e8-c7 g4-f6 g8-h8 f6-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=597) then
begin
Names :=  '[White "Guravlev."]' + Chr(13) + Chr(10) + '[Black Kapanidze."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='1r3rk1/5p2/2pp1Qp1/7q/N1P1P1b1/3P2Pp/P1P4P/1R3R1K';
First :='b';
Moves := 'b8:b1 f1:b1 g4-f5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=613) then
begin
Names :=  '[White "Yets."]' + Chr(13) + Chr(10) + '[Black Negeli."]' + Chr(13) + Chr(10) + '[EventDate "1927"]';
Fen :='2rr1bk1/3b1ppp/p1q5/2ppBP2/8/6Q1/PPP1B1PP/3R1R1K';
First :='w';
Moves := 'e5:g7 f8:g7 f5-f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=614) then
begin
Names :=  '[White "Arhipkin."]' + Chr(13) + Chr(10) + '[Black Prodanov."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='4rrk1/p1pb1pp1/1pnq3p/3BpPN1/4Q3/2PP2P1/P1P4P/R4RK1';
First :='w';
Moves := 'f5-f6 h6:g5 e4-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=598) then
begin
Names :=  '[White "Shpiller."]' + Chr(13) + Chr(10) + '[Black Machet."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='1n3rk1/p2qpp1p/1p1p2pQ/3NP3/n7/5P2/P3B1PP/2rR2K1';
First :='w';
Moves := 'd5-f6 e7:f6 e5:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=599) then
begin
Names :=  '[White "Ravinskiy."]' + Chr(13) + Chr(10) + '[Black Ilivickiy."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='r2b1rk1/2q2p1p/p3b2Q/1pn3B1/4Pp2/P1NB4/1PP3PP/R6K';
First :='w';
Moves := 'g5-f6 d8:f6 e4-e5 c5:d3 e5:f6 d3-f2 h1-g1 f2-h3 g1-f1 e6-c4 c3-e2';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=600) then
begin
Names :=  '[White "Shvedchikov."]' + Chr(13) + Chr(10) + '[Black Estrin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r3r1k1/pb3p2/1p3PpQ/4n3/4P3/8/q4PBP/1R1R2K1';
First :='b';
Moves := 'a2:f2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=601) then
begin
Names :=  '[White "Mangeim."]' + Chr(13) + Chr(10) + '[Black Ruginsbrug."]' + Chr(13) + Chr(10) + '[EventDate "1912"]';
Fen :='r3rbk1/ppqb1pp1/2p3P1/8/2n3P1/2N5/PPP2P2/1KQR3R';
First :='w';
Moves := 'h1-h8 g8:h8 d1-h1 h8-g8 h1-h8 g8:h8 c1-h1';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=602) then
begin
Names :=  '[White "Heemsot ."]' + Chr(13) + Chr(10) + '[Black Heisenbutel."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='2r2r1k/4ppRp/p4n1P/6R1/2q1pP2/8/P1N5/1K4Q1';
First :='w';
Moves := 'g5-c5 c4:c5 g7:h7 h8:h7 g1-g7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=603) then
begin
Names :=  '[White "Mayet."]' + Chr(13) + Chr(10) + '[Black Girshfild."]' + Chr(13) + Chr(10) + '[EventDate "1861"]';
Fen :='rnbq1kr1/ppp3bp/3p4/8/3PPp2/1QP2p2/PP4PP/RNB2RK1';
First :='b';
Moves := 'g7:d4 c3:d4 g8:g2 g1-h1 g2:h2 h1:h2 d8-h4 h2-g1 h4-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=604) then
begin
Names :=  '[White "Botvinnik."]' + Chr(13) + Chr(10) + '[Black Keres."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='3q1rk1/r5p1/2bpn1P1/p1pN1p2/P1PnP2p/3PB2P/5Q1K/1R1B1R2';
First :='w';
Moves := 'b1-b8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=605) then
begin
Names :=  '[White "Spasskiy."]' + Chr(13) + Chr(10) + '[Black Matanovich."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='1r2bnk1/4q1p1/1p2p1P1/p2p3R/3r4/2PB2Q1/1P4K1/5R2';
First :='w';
Moves := 'f1:f8 e7:f8 h5-h8 g8:h8 g3-h3';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=606) then
begin
Names :=  '[White "Dobberdin."]' + Chr(13) + Chr(10) + '[Black Shtark."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='8/4k3/4Pq2/8/2P5/1P4p1/P3Q1P1/6Kn';
First :='b';
Moves := 'f6-a1 e2-f1 a1-d4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=607) then
begin
Names :=  '[White "Roizin."]' + Chr(13) + Chr(10) + '[Black Sorokin."]' + Chr(13) + Chr(10) + '[EventDate "1952"]';
Fen :='r3k2r/1pp3p1/1n1p3p/1NnPpq2/p1P5/5P2/PP2BQP1/K2R3R';
First :='b';
Moves := 'c5-b3 a2:b3 a4:b3 b5-a3 a8:a3 b2:a3 f5-c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=608) then
begin
Names :=  '[White "Bankov."]' + Chr(13) + Chr(10) + '[Black Lusmagi."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='8/6k1/pRp5/6p1/P2Pp1q1/4Prp1/6Q1/5NK1';
First :='b';
Moves := 'f3-f2 g2-h1 f2:f1 g1:f1 g4-d1 ';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=609) then
begin
Names :=  '[White "Vladimirov."]' + Chr(13) + Chr(10) + '[Black Donchev."]' + Chr(13) + Chr(10) + '[EventDate "1975"]';
Fen :='3r3k/6bp/6P1/4q1P1/6Q1/4PB2/3p1PK1/q6R';
First :='w';
Moves := 'h1:h7 h8-g8 g4-c4 d8-d5 c4-c8 g7-f8 h7-h8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=610) then
begin
Names :=  '[White "Bedbeder."]' + Chr(13) + Chr(10) + '[Black Tirroler."]' + Chr(13) + Chr(10) + '[EventDate "1930"]';
Fen :='r3k3/4bR2/pp2P1p1/2pp2qp/3Pp3/4P1P1/PP1B3P/5QK1';
First :='w';
Moves := 'f7-f8 e7:f8 f1-f7 e8-d8 f7-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=611) then
begin
Names :=  '[White "Hetgeim."]' + Chr(13) + Chr(10) + '[Black Hamilton."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r1bqnrk1/ppp1p1b1/1n1p2P1/4P1p1/3P1P2/2NB4/PPP5/R2QK2R';
First :='w';
Moves := 'h1-h8 g7:h8 d1-h5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=612) then
begin
Names :=  '[White "Belyavskiy."]' + Chr(13) + Chr(10) + '[Black Mihalchishin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='r3k3/p1p1b1r1/4Pp1Q/2p5/NqP1p3/1P4p1/P5PP/5RK1';
First :='w';
Moves := 'h6-h5 e8-f8 h5-h8 g7-g8 f1:f6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=615) then
begin
Names :=  '[White "Hramcov."]' + Chr(13) + Chr(10) + '[Black Vaksberg."]' + Chr(13) + Chr(10) + '[EventDate "1938"]';
Fen :='rkbQ1b1r/pp4pp/2p1pp2/2P1pqB1/2B5/2P2N2/PP3PPP/3R2K1';
First :='w';
Moves := 'd1-d7 f5-b1 c4-f1 a7-a6 d7:b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=616) then
begin
Names :=  '[White "Redeli."]' + Chr(13) + Chr(10) + '[Black Barati."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='1k6/p1p3Q1/2qp1P2/2p5/rp6/3P3P/1BP1rP2/2KR3R';
First :='b';
Moves := 'a4-a1 b2:a1 c6-a4 g7-g8 b8-b7 g8-b3 a4:a1 b3-b1 e2:c2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=617) then
begin
Names :=  '[White "Strekalovskiy."]' + Chr(13) + Chr(10) + '[Black Golyak."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='r5r1/p2q1pk1/1pn1p1p1/2ppP1P1/3P1QpR/2P5/PP1N2P1/5RK1';
First :='w';
Moves := 'h4-h7 g7:h7 f4-h2 h7-g7 h2-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=618) then
begin
Names :=  '[White "Niserman."]' + Chr(13) + Chr(10) + '[Black Cuks."]' + Chr(13) + Chr(10) + '[EventDate "1895"]';
Fen :='1k5r/1r1B2pp/1PQ5/4pp2/R7/3q3P/5PP1/6K1';
First :='w';
Moves := 'd7-c8 h8:c8 a4-a8 b8:a8 c6:c8 b7-b8 c8-c6 b8-b7 c6-a4 a8-b8 a4-e8';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=619) then
begin
Names :=  '[White "Sokolov."]' + Chr(13) + Chr(10) + '[Black Mihailov."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='2b3rk/r4p1p/1p3P2/4p3/qp1P4/5R1B/1PP5/1K1Q3R';
First :='w';
Moves := 'f3-a3 b4:a3 h3-d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=620) then
begin
Names :=  '[White "Forintosh."]' + Chr(13) + Chr(10) + '[Black Tomovich."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='3R4/1p3ppk/1p5p/rB2P3/pQ4P1/5b1K/1P5P/6q1';
First :='w';
Moves := 'b5-d3 g7-g6 d8-h8 h7:h8 b4-f8 h8-h7 f8:f7 h7-h8 f7-f8 h8-h7 d3:g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=621) then
begin
Names :=  '[White "Fedorov."]' + Chr(13) + Chr(10) + '[Black Vasiliev."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='Q7/1P3pk1/1q1p3p/4p3/4P1P1/6PK/2P5/8';
First :='b';
Moves := 'b6-g1 g4-g5 h6-h5 g3-g4 h5-h4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=622) then
begin
Names :=  '[White "Lutov."]' + Chr(13) + Chr(10) + '[Black Botvinnik."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='8/p5kp/1p3p2/6p1/8/1P3QPK/P2N4/6q1';
First :='b';
Moves := 'h7-h5 g3-g4 h5:g4 f3:g4 g1-h1 h3-g3 h1-e1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=623) then
begin
Names :=  '[White "Eddelshtein."]' + Chr(13) + Chr(10) + '[Black Yagge."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='2k4r/ppp5/8/P2pP3/6q1/2PQ1N1p/6rP/4RR1K';
First :='b';
Moves := 'g2:h2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=624) then
begin
Names :=  '[White "Lyaska."]' + Chr(13) + Chr(10) + '[Black Ikart."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='3r1r1k/pp1R3p/4p3/q4p2/5Q1P/8/PPP3P1/1K5R';
First :='w';
Moves := 'f4-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=625) then
begin
Names :=  '[White "Kyaner."]' + Chr(13) + Chr(10) + '[Black Karpov."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='Rnk4r/1q4p1/1PbQP2p/3p4/3p4/8/3p2PP/6K1';
First :='w';
Moves := 'a8:b8 b7:b8 d6:c6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=626) then
begin
Names :=  '[White "Tarian."]' + Chr(13) + Chr(10) + '[Black Karpov."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='6k1/3R1pp1/p7/3Q1P2/1P2rq1p/7K/5PP1/8';
First :='b';
Moves := 'e4-e3 f2:e3 f4-g3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=627) then
begin
Names :=  '[White "Smeykal."]' + Chr(13) + Chr(10) + '[Black Adorian."]' + Chr(13) + Chr(10) + '[EventDate "1972"]';
Fen :='r7/2p1r1bk/3p2pp/PP3p2/2Q5/2q2P2/R3PNK1/7R';
First :='w';
Moves := 'h1:h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=628) then
begin
Names :=  '[White "Sindik."]' + Chr(13) + Chr(10) + '[Black Cebalo."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='5k2/1b3pr1/pq1b1Q2/4p3/2R1P2P/8/1N6/1K3R2';
First :='w';
Moves := 'c4-b4 b6-c7 b4:b7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=629) then
begin
Names :=  '[White "Aitken."]' + Chr(13) + Chr(10) + '[Black Pein."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='1rb4k/4bp1p/p3pNp1/1p2qP2/P7/5B2/1PPQ2PP/3R3K';
First :='w';
Moves := 'd2-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=630) then
begin
Names :=  '[White "Garsia."]' + Chr(13) + Chr(10) + '[Black Romanishin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='2r3k1/p4p2/1pqr1Pp1/7p/3P1Q2/2P1R3/7P/5RK1';
First :='w';
Moves := 'd4-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=631) then
begin
Names :=  '[White "Gratias."]' + Chr(13) + Chr(10) + '[Black Muller."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='8/p1Q3pk/1p3r2/8/6Pp/PPR2P1K/8/4q3';
First :='b';
Moves := 'f6-f7';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=632) then
begin
Names :=  '[White "Tisdall."]' + Chr(13) + Chr(10) + '[Black Saks."]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='3r2k1/2R2p1p/4b1p1/p7/2B1P3/1P3Q2/Pq3PP1/7K';
First :='b';
Moves := 'b2-a1 h1-h2 a1-e5 f3-g3 e5-h5 h2-g1 d8-d1 c4-f1 d1:f1';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=633) then
begin
Names :=  '[White "Agzamov."]' + Chr(13) + Chr(10) + '[Black Ruderfer."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='3r2k1/3q2rp/p7/2p2R1Q/2pp4/2P5/PP4PP/4R2K';
First :='w';
Moves := 'f5-d5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=634) then
begin
Names :=  '[White "Shobura."]' + Chr(13) + Chr(10) + '[Black Shurada."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='8/2p2Q2/1p4pk/p4p1p/8/1BP3P1/PP1rq3/5RK1';
First :='w';
Moves := 'f7-f8 h6-g5 f1:f5 g5-g4 f5-g5';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=635) then
begin
Names :=  '[White "Morphi."]' + Chr(13) + Chr(10) + '[Black NN"]' + Chr(13) + Chr(10) + '[EventDate "?"]';
Fen :='r1b3kr/3pR1p1/ppq4p/5P2/4Q3/B7/P5PP/5RK1';
First :='w';
Moves := 'e7:g7 g8:g7 e4-e7 g7-g8 e7-f8 g8-h7 f8-f7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=636) then
begin
Names :=  '[White "Dzambelli."]' + Chr(13) + Chr(10) + '[Black Marocy."]' + Chr(13) + Chr(10) + '[EventDate "1889"]';
Fen :='6k1/p4ppp/8/1r6/3QP2K/8/PPP3q1/R1B2R2';
First :='b';
Moves := 'b5-h5 h4:h5 g2-h3 h5-g5 h7-h6 g5-f4 g7-g5 f4-e5 h3-e6';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=637) then
begin
Names :=  '[White "Borisenko."]' + Chr(13) + Chr(10) + '[Black Simagin."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='5k2/5p2/6p1/2P3P1/3Q2K1/6P1/8/5q2';
First :='b';
Moves := 'f7-f5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=638) then
begin
Names :=  '[White "Ruchieva."]' + Chr(13) + Chr(10) + '[Black Eidelson."]' + Chr(13) + Chr(10) + '[EventDate "1976"]';
Fen :='8/R6p/3p3k/6p1/3P3q/8/4prBP/1Q5K';
First :='b';
Moves := 'f2-f1 g2:f1 h4-e4';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=639) then
begin
Names :=  '[White "Vladimirov."]' + Chr(13) + Chr(10) + '[Black Agzamov"]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='4b1r1/1p3ppk/3q3p/p1p5/3pP1B1/3P3R/nPPQ3P/6RK';
First :='w';
Moves := 'g4-f5 h7-h8 g1-g6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=640) then
begin
Names :=  '[White "Yiller."]' + Chr(13) + Chr(10) + '[Black Hell."]' + Chr(13) + Chr(10) + '[EventDate "1964"]';
Fen :='r5k1/5pbp/2rp2p1/8/3N1PP1/Pp6/1P1Q2qP/K2R3R';
First :='b';
Moves := 'c6-c1 d2:c1 a8:a3 a1-b1 a3-a1 b1:a1 g2-a8';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=641) then
begin
Names :=  '[White "Matohin."]' + Chr(13) + Chr(10) + '[Black Kuzmin."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='8/5p1k/4p1p1/3p2K1/3P1Q1P/P4P2/7q/8';
First :='b';
Moves := 'f7-f6 g5-g4 h2-g2 f4-g3 f6-f5 g4-f4 e6-e5 d4:e5 g2-d2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=642) then
begin
Names :=  '[White "Golcov."]' + Chr(13) + Chr(10) + '[Black Moiseev"]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='6k1/3Q1pp1/4p2p/p2pP3/1p1P2P1/nP2RN2/q1r2PKP/8';
First :='w';
Moves := 'd7-e8 g8-h7 f3-g5 h6:g5 e3-h3 h7-g6 h3-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=643) then
begin
Names :=  '[White "Evans."]' + Chr(13) + Chr(10) + '[Black Larsen."]' + Chr(13) + Chr(10) + '[EventDate "1957"]';
Fen :='3r3k/5pp1/Q7/3q3p/4n3/3R4/PP3rPP/3R2K1';
First :='b';
Moves := 'f2-f1 g1:f1 d5-f5 f1-g1 f5-c5';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=644) then
begin
Names :=  '[White "Gandolin."]' + Chr(13) + Chr(10) + '[Black Oyanen."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r2q1rk1/pb2bppp/4pn2/1p4B1/2pnP3/6N1/PPPN2PP/R1Q1RBK1';
First :='b';
Moves := 'f6-g4 g5:e7 d8-b6 g1-h1 g4-f2 h1-g1 d4-e2';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=645) then
begin
Names :=  '[White "Dragunov."]' + Chr(13) + Chr(10) + '[Black Odrukovskiy"]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='r1b1rbk1/pp1n1ppp/5p2/q4N2/1p1P4/2PB1Q2/P2N1PPP/R1B2RK1';
First :='w';
Moves := 'f3-h5 g8-h8 h5:f7 a5-d8 f5-h6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=646) then
begin
Names :=  '[White "Stolberg."]' + Chr(13) + Chr(10) + '[Black Zak"]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='r1b2nk1/ppq2ppp/8/1BP1p1NQ/1p3p2/8/PP3PPP/3R2K1';
First :='w';
Moves := 'd1-d7 c8:d7 h5:f7 g8-h8 b5-c4';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=647) then
begin
Names :=  '[White "Alehin."]' + Chr(13) + Chr(10) + '[Black Lugovskiy"]' + Chr(13) + Chr(10) + '[EventDate "1931"]';
Fen :='r1bn1k1r/ppp2ppp/1b1p3n/2qNp1N1/2B1P2Q/2PP4/PP4PP/R1BK1R2';
First :='w';
Moves := 'g5-e6 d8:e6 h4-e7 f8-g8 e7-e8 e6-f8 d5-e7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=648) then
begin
Names :=  '[White "Rumiancev."]' + Chr(13) + Chr(10) + '[Black Lomonosov"]' + Chr(13) + Chr(10) + '[EventDate "1978"]';
Fen :='rn1qkb1r/pbpnpppp/8/1N1P4/Bp6/5P2/PPPPQ1PP/R1B1K1NR';
First :='w';
Moves := 'd5-d6';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=649) then
begin
Names :=  '[White "Shlage."]' + Chr(13) + Chr(10) + '[Black NN"]' + Chr(13) + Chr(10) + '[EventDate "1934"]';
Fen :='r1b1rqkb/pp1n1pnp/2p1p1p1/4P1B1/2B1N1P1/5N1P/PPPQ1P2/2KR3R';
First :='w';
Moves := 'd2:d7';
Comment:= '��� �����. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=650) then
begin
Names :=  '[White "Muller."]' + Chr(13) + Chr(10) + '[Black Vainaht."]' + Chr(13) + Chr(10) + '[EventDate "1937"]';
Fen :='r3kb1r/1p1b1ppp/p4n2/q3p1B1/1nPp4/NQ6/PP1NPPPP/3RKB1R';
First :='b';
Moves := 'f6-e4 g5-h4 e4-c5 b3-g3 a5:a3';
Comment:= '��� ������. ������� ����������� �������.';
Comment2:='������� ��������� ������.';
Uroven:=1;
end;
if (partNum=651) then
begin
Names :=  '[White "Gelfand."]' + Chr(13) + Chr(10) + '[Black Lobron."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='3rb1k1/5rp1/2pqp2P/pp2Q3/P1pPB2P/8/1P6/3R1RK1';
First :='w';
Moves := 'f1:f7 d6:e5 h6-h7 g8:f7 d4:e5 d8:d1 g1-f2';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='��������� ������ ���� �����.';
Uroven:=1;
end;
if (partNum=652) then
begin
Names :=  '[White "Geller."]' + Chr(13) + Chr(10) + '[Black Novotelnov."]' + Chr(13) + Chr(10) + '[EventDate "1951"]';
Fen :='5nk1/2b1q1p1/2p5/3pP1pQ/1r1P2P1/3B1R2/5PP1/6K1';
First :='w';
Moves := 'f3:f8 g8:f8 h5-h8 f8-f7 d3-g6 f7-e6 h8-g8 e6-d7 g6-f5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=653) then
begin
Names :=  '[White "Georgadze."]' + Chr(13) + Chr(10) + '[Black Kuindshi."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='8/7p/6pk/1P4r1/2P2QBK/R6P/6r1/6q1';
First :='b';
Moves := 'g1-f2 f4:f2 g5-h5';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=654) then
begin
Names :=  '[White "Graf."]' + Chr(13) + Chr(10) + '[Black Wurm."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='r5k1/4p2p/pp1qNnp1/2pPb3/2P1p1P1/4B3/PP1Q2P1/5R1K';
First :='w';
Moves := 'e3:c5 b6:c5 d2-h6 f6-d7 f1-f7 g8:f7 h6:h7 f7-e8 h7:g6';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=655) then
begin
Names :=  '[White "Grunfeld."]' + Chr(13) + Chr(10) + '[Black Tarrash."]' + Chr(13) + Chr(10) + '[EventDate "1925"]';
Fen :='7k/1p1q1b1p/4n3/3p1N2/r2PpP2/Q3P2P/6RK/4B3';
First :='w';
Moves := 'e1-h4 h7-h6 a3-f8 e6:f8 h4-f6 h8-h7 g2-g7 h7-h8 g7:f7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=656) then
begin
Names :=  '[White "Gugli."]' + Chr(13) + Chr(10) + '[Black Henneberger."]' + Chr(13) + Chr(10) + '[EventDate "1941"]';
Fen :='6k1/p4p1p/3p1p2/2p1r3/2PnrqN1/P6P/1P1Q1PP1/3R1RK1';
First :='b';
Moves := 'd4-e2 g1-h1 f4:g4 h3:g4 e5-h5';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=657) then
begin
Names :=  '[White "Hann."]' + Chr(13) + Chr(10) + '[Black Tarrash."]' + Chr(13) + Chr(10) + '[EventDate "1883"]';
Fen :='5rk1/p5pp/8/8/2Pbp3/1P4P1/7P/4RN1K';
First :='b';
Moves := 'd4-c3 e1-d1 f8:f1 d1:f1 e4-e3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='��������� ����� ������.';
Uroven:=1;
end;
if (partNum=658) then
begin
Names :=  '[White "Hartson."]' + Chr(13) + Chr(10) + '[Black Penrose."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='3rr1k1/1pq1bpp1/p1n4p/4p3/4P3/1N1B2Q1/PPP3PP/3R1R1K';
First :='w';
Moves := 'f1:f7 g8:f7 d3-c4 f7-f8 d1-f1 e7-f6 f1:f6 g7:f6 g3-g8 f8-e7 g8-e6 e7-f8 e6:f6';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=659) then
begin
Names :=  '[White "Hellers."]' + Chr(13) + Chr(10) + '[Black Skembris."]' + Chr(13) + Chr(10) + '[EventDate "1993"]';
Fen :='1kbr1b1r/p1p2p2/1pP3pp/3P4/QP2pP1q/2N1B3/P5PP/R4RK1';
First :='w';
Moves := 'e3:b6 c7:b6 c6-c7 b8:c7 a4:a7 c8-b7 c3-b5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=660) then
begin
Names :=  '[White "Heppner."]' + Chr(13) + Chr(10) + '[Black Goode."]' + Chr(13) + Chr(10) + '[EventDate "1963"]';
Fen :='5R2/p1R3bk/1q2b2p/6p1/8/1P3NP1/P5BP/7K';
First :='w';
Moves := 'f3:g5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=661) then
begin
Names :=  '[White "Hertel."]' + Chr(13) + Chr(10) + '[Black Shreibener."]' + Chr(13) + Chr(10) + '[EventDate "1991"]';
Fen :='1k1r3r/ppR2ppp/8/2Nb4/1Q1P4/5qPP/PP3P2/2R3K1';
First :='w';
Moves := 'c7:b7 d5:b7 d4-d5 f3:d5 c5-a6';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=662) then
begin
Names :=  '[White "Hohler."]' + Chr(13) + Chr(10) + '[Black Chernyak."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='r3r1k1/2qb1pbp/n1p2np1/4p1B1/1P2P3/P1N2N2/2Q1BPPP/3R1RK1';
First :='w';
Moves := 'e2:a6 a8:a6 g5:f6 g7:f6 c3-d5 c7-d6 d5:f6 d6:f6 d1:d7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='��������� �������� � ��������� ������.';
Uroven:=1;
end;
if (partNum=663) then
begin
Names :=  '[White "Hoi."]' + Chr(13) + Chr(10) + '[Black Kveinis."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='2rq2r1/p4ppk/1p3n1p/2pp1P1N/2nP3B/P1PQ3R/6PP/5RK1';
First :='w';
Moves := 'h4-g5 c8-c6 h5:g7 g8:g7 h3:h6 h7-g8 d3-h3 g8-f8 h6-h8 g7-g8 f1-e1';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=664) then
begin
Names :=  '[White "Horne."]' + Chr(13) + Chr(10) + '[Black Mardel."]' + Chr(13) + Chr(10) + '[EventDate "1953"]';
Fen :='1k1r4/ppn5/1qpN2p1/4P2p/8/3Q4/PP4PP/3R3K';
First :='w';
Moves := 'd6-c4 d8:d3 d1:d3';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='���������������� ������� ������ ������.';
Uroven:=1;
end;
if (partNum=665) then
begin
Names :=  '[White "Gort."]' + Chr(13) + Chr(10) + '[Black Kasparov."]' + Chr(13) + Chr(10) + '[EventDate "1988"]';
Fen :='4r1k1/1p3pb1/2p1r3/p2p4/P7/1PPQPpP1/3R2q1/1R2KN2';
First :='b';
Moves := 'e6:e3 d3:e3 e8:e3 f1:e3 g2-g1 e3-f1 g7:c3 b1-b2 g1-g2';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=666) then
begin
Names :=  '[White "Horwitz."]' + Chr(13) + Chr(10) + '[Black NN."]' + Chr(13) + Chr(10) + '[EventDate "1941"]';
Fen :='6k1/6p1/p3br2/1p1pQ3/5r2/1P1B2R1/1P3qPP/2R4K';
First :='w';
Moves := 'c1-c8 e6:c8 e5-e8 f6-f8 g3:g7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=667) then
begin
Names :=  '[White "Hug."]' + Chr(13) + Chr(10) + '[Black NN."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='3rr1k1/1p2bp1p/p1n3pB/3Q4/4N1q1/2P5/PP3PPP/3RR1K1';
First :='w';
Moves := 'e4-f6 e7:f6 d5:d8 e8:d8 d1:d8';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=668) then
begin
Names :=  '[White "Hulak."]' + Chr(13) + Chr(10) + '[Black Romanishin."]' + Chr(13) + Chr(10) + '[EventDate "1977"]';
Fen :='6k1/p2r1p1p/3pbQp1/q1r2p2/2P5/1P3B2/P4PPP/R2R2K1';
First :='w';
Moves := 'b3-b4 a5:b4 a1-b1 b4:c4 f3-e2 c4-c2 e2-d3 c2-c3 b1-b8 c5-c8 f6:c3';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� ���� ��������� �� ������.';
Uroven:=1;
end;
if (partNum=669) then
begin
Names :=  '[White "Haglov."]' + Chr(13) + Chr(10) + '[Black Andersson."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='4rr1k/1p4b1/6p1/p1q4p/4P3/P7/R3Q1PP/4NR1K';
First :='b';
Moves := 'e8:e4 e2-d3 c5-f5 f1-g1 e4:e1';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='���������������� ������������ ������ �����������.';
Uroven:=1;
end;
if (partNum=670) then
begin
Names :=  '[White "Ivkov."]' + Chr(13) + Chr(10) + '[Black Portish."]' + Chr(13) + Chr(10) + '[EventDate "1961"]';
Fen :='r3b3/pNR5/k7/3p1n2/P2p1B2/2P5/2P2PrP/1R1K4';
First :='w';
Moves := 'c7-c6 e8:c6 b7-c5 a6-a5 f4-c7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=671) then
begin
Names :=  '[White "Ivanov."]' + Chr(13) + Chr(10) + '[Black Sveshnikov."]' + Chr(13) + Chr(10) + '[EventDate "1973"]';
Fen :='8/5p1k/4p1b1/4P3/2Pq4/2Q2KP1/r3P3/2R2B2';
First :='b';
Moves := 'a2-a3 c3:a3 g6-e4 f3-f4 e4-g2 f4-g5 d4:e5 g5-g4 e5-f5 g4-h4 f5-h3 h4-g5 h3-h6 g5-g4 f7-f5';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='���������� ������ �� ������ ������.';
Uroven:=1;
end;if (partNum=672) then
begin
Names :=  '[White "J Polgar."]' + Chr(13) + Chr(10) + '[Black Mathe."]' + Chr(13) + Chr(10) + '[EventDate "1990"]';
Fen :='r3nbk1/1q3p1p/p5p1/5Q2/1p1B4/P2B4/1PP3bP/4RRK1';
First :='w';
Moves := 'f5:f7 b7:f7 f1:f7 g8:f7 d3-c4';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=673) then
begin
Names :=  '[White "James."]' + Chr(13) + Chr(10) + '[Black Miles."]' + Chr(13) + Chr(10) + '[EventDate "1911"]';
Fen :='2rq1rk1/1b1nbpp1/1p5p/p2pNB2/3p1N2/4P3/PPQ2PPP/2RR2K1';
First :='w';
Moves := 'f5-h7 g8-h8 e5:f7 f8:f7 f4-g6 h8:h7 g6-f8 h7-g8 c2-h7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=674) then
begin
Names :=  '[White "Jegin."]' + Chr(13) + Chr(10) + '[Black Gusseinov."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='6k1/5pb1/p4np1/Np1P3p/nP1B4/PB1Q2PP/5P1K/2r1r3';
First :='b';
Moves := 'f6-g4 h3:g4 h5:g4 f2-f3 g7:d4 f3:g4 a4-c3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=675) then
begin
Names :=  '[White "Ermolov."]' + Chr(13) + Chr(10) + '[Black Filimonov."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='2k5/pppn3p/8/2q4r/3R4/2P5/P5Q1/3R2K1';
First :='w';
Moves := 'g2-g8 d7-f8 g8-g4 c8-b8 g4:h5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='�������� ������� �����������.';
Uroven:=1;
end;
if (partNum=676) then
begin
Names :=  '[White "Johansson."]' + Chr(13) + Chr(10) + '[Black Ekenberg."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='2kr3r/pb1n1p2/2q1pP2/1pb5/2p2B2/2N2B2/PPQ2PPP/R4RK1';
First :='b';
Moves := 'c6:f3 g2:f3 d8-g8 f4-g3 g8:g3 h2:g3 b7:f3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=677) then
begin
Names :=  '[White "Jones."]' + Chr(13) + Chr(10) + '[Black Dueball."]' + Chr(13) + Chr(10) + '[EventDate "1974"]';
Fen :='4r1k1/p2n1pbp/q5p1/3p4/N7/1P1n1PP1/P1NB3P/3Q1R1K';
First :='b';
Moves := 'e8-e1 d2:e1 d3-b2';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='����������� �� ������ �����.';
Uroven:=1;
end;
if (partNum=678) then
begin
Names :=  '[White "Judovich."]' + Chr(13) + Chr(10) + '[Black Chehover."]' + Chr(13) + Chr(10) + '[EventDate "1924"]';
Fen :='1rb3k1/1p3p1p/p4qp1/3Br3/3R4/1Q2P3/P4PPP/3R2K1';
First :='w';
Moves := 'd5:f7 f6:f7 d4-d8 g8-g7 b3-c3 f7-f6 c3-c7';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=679) then
begin
Names :=  '[White "Jusupov."]' + Chr(13) + Chr(10) + '[Black Kovachevich."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='5rk1/1p2rpp1/n1p1b2p/p3P3/P2RNP2/1q4PP/6BK/2QR4';
First :='w';
Moves := 'e4-f6 g7:f6 e5:f6 e7-d7 f4-f5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=680) then
begin
Names :=  '[White "Kalinichev."]' + Chr(13) + Chr(10) + '[Black Rashkovskiy."]' + Chr(13) + Chr(10) + '[EventDate "1992"]';
Fen :='4r1k1/3r1pq1/2Np1Rp1/3P2Q1/2P1pPP1/p2n3P/4R1K1/8';
First :='b';
Moves := 'a3-a2 e2:a2 d3-e1 g2-f2 e1-f3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� ������ �������.';
Uroven:=1;
end;
if (partNum=681) then
begin
Names :=  '[White "Kandolin."]' + Chr(13) + Chr(10) + '[Black Ojanen."]' + Chr(13) + Chr(10) + '[EventDate "1962"]';
Fen :='r2q1rk1/pb2bppp/4pn2/1p4B1/2pnP3/6N1/PPPN2PP/R1Q1RBK1';
First :='b';
Moves := 'f6-g4 g5:e7 d8-b6 g1-h1 g4-f2 h1-g1 d4-e2';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='�������������� ������� �������� ����� � �������� ����.';
Uroven:=1;
end;
if (partNum=682) then
begin
Names :=  '[White "Karaksoni."]' + Chr(13) + Chr(10) + '[Black Borbeli."]' + Chr(13) + Chr(10) + '[EventDate "1948"]';
Fen :='8/1Q6/4kpn1/5N2/3PP3/6P1/5PKP/4q3';
First :='b';
Moves := 'g6-f4 g3:f4 e1:f2 g2-h3 f2:h2 h3-g4 h2-h3';
Comment:= '��� ������. ����� ����������� �������. �������� �����.';
Comment2:='���� �� ���.';
Uroven:=1;
end;
if (partNum=683) then
begin
Names :=  '[White "Karpov."]' + Chr(13) + Chr(10) + '[Black Hubner."]' + Chr(13) + Chr(10) + '[EventDate "1979"]';
Fen :='2R5/3qb1k1/1r4pp/p2Bp3/1p2P3/1P1Q2PP/P5K1/8';
First :='w';
Moves := 'c8-g8 g7-h7 d3-e3';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='����� ������ ��� ������, �� � ������ ��������.';
Uroven:=1;
end;
if (partNum=684) then
begin
Names :=  '[White "Karpov."]' + Chr(13) + Chr(10) + '[Black Sergievskiy."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='3r4/5ppp/pkpbpnn1/8/2P2P2/2N3PP/PPK3B1/4B2R';
First :='w';
Moves := 'c4-c5 d6:c5 c3-a4 b6-b5 c2-b3 d8-d3 e1-c3 d3:c3 a4:c3';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='�������������� ������ �����.';
Uroven:=1;
end;
if (partNum=685) then
begin
Names :=  '[White "Karpov."]' + Chr(13) + Chr(10) + '[Black Sergievskiy."]' + Chr(13) + Chr(10) + '[EventDate "1970"]';
Fen :='3r4/5ppp/pkpbpnn1/8/2P2P2/2N3PP/PPK3B1/4B2R';
First :='w';
Moves := 'c4-c5 b6:c5 e1-f2 c5-c4 b2-b3 c4-b4 a2-a3 b4-a5 b3-b4 d6:b4 a3:b4 a5:b4 h1-b1 b4-c4 g2-f1';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='�������������� ������ �����.';
Uroven:=1;
end;
end;
procedure TPart.init3(partNum: integer);
begin
if (partNum=686) then
begin
Names :=  '[White "Kashdan."]' + Chr(13) + Chr(10) + '[Black Horowits."]' + Chr(13) + Chr(10) + '[EventDate "1939"]';
Fen :='5rk1/6pp/8/2Q4q/N2pP3/4b1Pb/4PP1K/1R3R2';
First :='b';
Moves := 'h3:f1 c5:h5 f8:f2 h2-h1 f1-g2 h1-g1 f2:e2 g1-h2 g2-f3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=687) then
begin
Names :=  '[White "Kasparayn."]' + Chr(13) + Chr(10) + '[Black Manweyan."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='2q4r/1kp4p/1pbp2p1/p7/P1Q5/1P3NP1/2P3BP/2K5';
First :='w';
Moves := 'c4:c6 b7:c6 f3-e5 c6-c5 e5-d3 c5-d4 c1-d2';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=688) then
begin
Names :=  '[White "Katalimov."]' + Chr(13) + Chr(10) + '[Black Mnazakyan."]' + Chr(13) + Chr(10) + '[EventDate "1959"]';
Fen :='1rq1B2k/2p1Q1pp/pb2br2/5p2/1P3B2/6P1/5P1P/3RR1K1';
First :='w';
Moves := 'd1-d7 e6:d7 f4-h6';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=689) then
begin
Names :=  '[White "Kestler."]' + Chr(13) + Chr(10) + '[Black Pesh."]' + Chr(13) + Chr(10) + '[EventDate "1956"]';
Fen :='7k/R2nr3/4Q3/3p2qP/2pP4/2P5/2P5/3K4';
First :='w';
Moves := 'a7-a8 h8-h7 a8-h8 h7:h8 e6-h6';
Comment:= '��� �����. ����� ����������� �������. �������� �����.';
Comment2:='���� �� ���.';
Uroven:=1;
end;
if (partNum=690) then
begin
Names :=  '[White "Jusupov."]' + Chr(13) + Chr(10) + '[Black Kovachevich."]' + Chr(13) + Chr(10) + '[EventDate "1983"]';
Fen :='r1bkn2n/pp3p2/3P3p/8/8/5B2/PP3PPP/2R1R1K1';
First :='w';
Moves := 'c1:c8 a8:c8 d6-d7 d8:d7 f3-g4 d7-d8 g4:c8';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='����� �����.';
Uroven:=1;
end;
if (partNum=691) then
begin
Names :=  '[White "Kinmark."]' + Chr(13) + Chr(10) + '[Black Olivera."]' + Chr(13) + Chr(10) + '[EventDate "1966"]';
Fen :='2rr1bk1/2q2ppn/p2p3p/np2pN2/4P1P1/1BP1BQ1P/PP3P2/R3R1K1';
First :='w';
Moves := 'e3-b6 c7:b6 f5:h6 g8-h8 h6:f7 h8-g8 f7:e5';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='���� ������ ������� �� ������.';
Uroven:=1;
end;
if (partNum=692) then
begin
Names :=  '[White "Klyavin."]' + Chr(13) + Chr(10) + '[Black Guravlev."]' + Chr(13) + Chr(10) + '[EventDate "1968"]';
Fen :='r6r/pp2kpp1/1bp1bq1p/8/B7/2N2Q2/PP3PPP/3RR1K1';
First :='w';
Moves := 'c3-d5 c6:d5 f3-a3';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=693) then
begin
Names :=  '[White "Kmoh."]' + Chr(13) + Chr(10) + '[Black Rubinshtein."]' + Chr(13) + Chr(10) + '[EventDate "1926"]';
Fen :='4r1k1/8/2b1q1pQ/p1p2p2/2Pp1P2/3Br3/PP1R1KP1/7R';
First :='b';
Moves := 'e3-f3 g2:f3 e6-e3 f2-g3 e3:f3';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������� ����������.';
Uroven:=1;
end;
if (partNum=694) then
begin
Names :=  '[White Kilarov."]' + Chr(13) + Chr(10) + '[Black Franz."]' + Chr(13) + Chr(10) + '[EventDate "1955"]';
Fen :='5r1r/5R2/1p1p1b2/1P2p1k1/2PpB2R/5PP1/1P3K2/8';
First :='w';
Moves := 'h4-g4 g5-h5 f7:f6 f8:f6 g4-h4';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=695) then
begin
Names :=  '[White "Kolomann."]' + Chr(13) + Chr(10) + '[Black Zinmann."]' + Chr(13) + Chr(10) + '[EventDate "1985"]';
Fen :='r7/4p3/3p3k/2pP4/BpP1R2P/1Pb1Pp2/5K2/8';
First :='b';
Moves := 'a8:a4 b3:a4 b4-b3 e4-g4 c3-e1';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������ ����� �������� ����� � �����.';
Uroven:=1;
end;
if (partNum=696) then
begin
Names :=  '[White "Kornfit."]' + Chr(13) + Chr(10) + '[Black Hukel."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='2r1r2k/4R1pp/p7/1p6/2nqN1Q1/P5PP/1P5K/5R2';
First :='w';
Moves := 'e4-f6 d4:g4 f6:e8';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������ ����� �������c� �� ��������������� ������.';
Uroven:=1;
end;
if (partNum=697) then
begin
Names :=  '[White "Korchnoy."]' + Chr(13) + Chr(10) + '[Black Petersson."]' + Chr(13) + Chr(10) + '[EventDate "1965"]';
Fen :='r2r1n2/pp2bk2/2p1p2p/3q4/3PN1QP/2P3R1/P4PP1/5RK1';
First :='w';
Moves := 'g4-g7 f7-e8 g7:e7 e8:e7 g3-g7 e7-e8 e4-f6';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������� �����.';
Uroven:=1;
end;
if (partNum=698) then
begin
Names :=  '[White "Kosolapov."]' + Chr(13) + Chr(10) + '[Black Negmetdinov."]' + Chr(13) + Chr(10) + '[EventDate "1936"]';
Fen :='r5k1/ppp4p/2n4r/3bpp1n/1P3qP1/2PP4/P3BBPP/R2QNR1K';
First :='b';
Moves := 'f4:h2 h1:h2 h5-g3 h2:g3 f5-f4';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='������� �����.';
Uroven:=1;
end;
if (partNum=699) then
begin
Names :=  '[White "Kotnauer."]' + Chr(13) + Chr(10) + '[Black O Kelli."]' + Chr(13) + Chr(10) + '[EventDate "1946"]';
Fen :='r1r3k1/3nbppp/1q2pn2/1p6/2pPbB2/N3QNP1/1P2PPBP/R1R3K1';
First :='b';
Moves := 'c4-c3 c1:c3 c8:c3 e3:c3 b5-b4';
Comment:= '��� ������. ����� ����������� �������.';
Comment2:='����������� ���� �����.';
Uroven:=1;
end;
if (partNum=700) then
begin
Names :=  '[White "Kovaks."]' + Chr(13) + Chr(10) + '[Black Beni."]' + Chr(13) + Chr(10) + '[EventDate "1950"]';
Fen :='6k1/p1p2pp1/2p1n1q1/1r2P3/4N1PQ/5P2/P6P/3R3K';
First :='w';
Moves := 'd1-d8 e6:d8 h4:d8 g8-h7 e4-g5 h7-h6 g5:f7 g6:f7 d8-h4';
Comment:= '��� �����. ����� ����������� �������.';
Comment2:='������� �����.';
Uroven:=1;
end;

end;

end.
