program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas',
  option in 'option.pas' {Form3},
  about in 'about.pas' {Form4},
  Unitcitata in 'Unitcitata.pas',
  UnitShipov in 'UnitShipov.pas',
  baza in 'baza.pas' {Form5},
  Unitstrategy in 'Unitstrategy.pas',
  zastavka in 'zastavka.pas' {Form6},
  links in 'links.pas' {Form7},
  Comment_partii in 'Comment_partii.pas' {Form8},
  Kotov in 'Kotov.pas' {Form9},
  theory_mitten in 'theory_mitten.pas' {Form10},
  unitendshpil in 'unitendshpil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'AmfitelOs';
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
