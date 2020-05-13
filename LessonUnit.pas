unit LessonUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, jpeg, ExtCtrls, pngimage, StdCtrls;

type
  TLessonForm = class(TForm)
    Background: TImage;
    ExitButton: TPNGButton;
    MinimizeButton: TPNGButton;
    ButtonLesson1: TPNGButton;
    Image1: TImage;
    ButtonLesson2: TPNGButton;
    Image2: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Image3: TImage;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    cartinka: TImage;
    Image5: TImage;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton8: TPNGButton;
    PNGButton9: TPNGButton;
    PNGButton10: TPNGButton;
    PNGButton11: TPNGButton;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure ExitButtonClick(Sender: TObject);
    procedure MinimizeButtonClick(Sender: TObject);
    procedure ButtonLesson1Click(Sender: TObject);
    procedure ButtonLesson2Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
     private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LessonForm: TLessonForm; check1,check2,check3:Boolean;

implementation

uses MainUnit, LessonBeginUnit1, DataModule1Unit, Lesson1_2Unit,
   Lesson2_1Unit, MenuUnit, Lesson3_1Unit, Lesson4_1Unit, Lesson5_1Unit;

{$R *.dfm}

procedure TLessonForm.ExitButtonClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TLessonForm.MinimizeButtonClick(Sender: TObject);
begin
  application.Minimize;
end;

procedure TLessonForm.ButtonLesson1Click(Sender: TObject);
begin
  Lesson1Begin.Show;
  LessonForm.Hide;
end;

procedure TLessonForm.ButtonLesson2Click(Sender: TObject);
begin
  lesson2_1.show;
  LessonForm.Close;
end;

procedure TLessonForm.PNGButton1Click(Sender: TObject);
begin
  LessonForm.Close;
  MenuForm.show;
end;

procedure TLessonForm.PNGButton2Click(Sender: TObject);
begin
  LessonForm.Close;
  Lesson3_1.Show;
end;

procedure TLessonForm.PNGButton3Click(Sender: TObject);
begin
  LessonForm.Close;
  Lesson4_1.show;
end;

procedure TLessonForm.PNGButton4Click(Sender: TObject);
begin
  Lesson5_1.show;
  LessonForm.Close;
end;

end.
