program Kursovaya;

uses
  Forms,
  DataModule1Unit in 'DataModule1Unit.pas' {DataModule1: TDataModule},
  LessonBeginUnit1 in 'LessonBeginUnit1.pas' {Lesson1Begin},
  LessonUnit in 'LessonUnit.pas' {LessonForm},
  MainUnit in 'MainUnit.pas' {ProfileForm},
  DBGridFormUnit in 'DBGridFormUnit.pas' {EditProfile},
  RegisterFormUnit in 'RegisterFormUnit.pas' {RegisterForm},
  StatUnit in 'StatUnit.pas' {StatForm},
  Lesson1_3Unit in 'Lesson1_3Unit.pas' {Lesson1_3},
  Test1Unit in 'Test1Unit.pas' {Test1},
  Lesson2_1Unit in 'Lesson2_1Unit.pas' {Lesson2_1},
  Lesson2_2Unit in 'Lesson2_2Unit.pas' {Lesson2_2},
  Lesson2_3Unit in 'Lesson2_3Unit.pas' {Lesson2_3},
  Test2Unit in 'Test2Unit.pas' {Test2},
  MenuUnit in 'MenuUnit.pas' {MenuForm},
  AchordsGenUnit in 'AchordsGenUnit.pas' {AchordsForm},
  Lesson1_2Unit in 'Lesson1_2Unit.pas' {Lesson1_2},
  NastrGitaru in 'NastrGitaru.pas' {NastrGit},
  Lesson3_1Unit in 'Lesson3_1Unit.pas' {Lesson3_1},
  Lesson3_2Unit in 'Lesson3_2Unit.pas' {Lesson3_2},
  Test3Unit in 'Test3Unit.pas' {Test3},
  Lesson4_1Unit in 'Lesson4_1Unit.pas' {Lesson4_1},
  Lesson4_2Unit in 'Lesson4_2Unit.pas' {Lesson4_2},
  Test4Unit in 'Test4Unit.pas' {Test4},
  Lesson5_1Unit in 'Lesson5_1Unit.pas' {Lesson5_1},
  Lesson5_2Unit in 'Lesson5_2Unit.pas' {Lesson5_2},
  Test5Unit in 'Test5Unit.pas' {Test5},
  Lesson6_1Unit in 'Lesson6_1Unit.pas' {Lesson6_1},
  PessenikUnir in 'PessenikUnir.pas' {Pesenik},
  pngextra in 'PNG_delphi\pngextra.pas',
  pngimage in 'PNG_delphi\pngimage.pas',
  pnglang in 'PNG_delphi\pnglang.pas',
  zlibpas in 'PNG_delphi\zlibpas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '���������';
  Application.CreateForm(TProfileForm, ProfileForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TLesson1_2, Lesson1_2);
  Application.CreateForm(TLesson1Begin, Lesson1Begin);
  Application.CreateForm(TLessonForm, LessonForm);
  Application.CreateForm(TEditProfile, EditProfile);
  Application.CreateForm(TRegisterForm, RegisterForm);
  Application.CreateForm(TStatForm, StatForm);
  Application.CreateForm(TLesson1_3, Lesson1_3);
  Application.CreateForm(TTest1, Test1);
  Application.CreateForm(TLesson2_1, Lesson2_1);
  Application.CreateForm(TLesson2_2, Lesson2_2);
  Application.CreateForm(TLesson2_3, Lesson2_3);
  Application.CreateForm(TTest2, Test2);
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TAchordsForm, AchordsForm);
  Application.CreateForm(TLesson1_2, Lesson1_2);
  Application.CreateForm(TNastrGit, NastrGit);
  Application.CreateForm(TLesson3_1, Lesson3_1);
  Application.CreateForm(TLesson3_2, Lesson3_2);
  Application.CreateForm(TTest3, Test3);
  Application.CreateForm(TLesson4_1, Lesson4_1);
  Application.CreateForm(TLesson4_2, Lesson4_2);
  Application.CreateForm(TTest4, Test4);
  Application.CreateForm(TLesson5_1, Lesson5_1);
  Application.CreateForm(TLesson5_2, Lesson5_2);
  Application.CreateForm(TTest5, Test5);
  Application.CreateForm(TLesson6_1, Lesson6_1);
  Application.CreateForm(TPesenik, Pesenik);
  Application.Run;
end.
