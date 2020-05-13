unit Lesson1_2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngextra, jpeg, ExtCtrls, pngimage;

type
  TLesson1_2 = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image5: TImage;
    Label7: TLabel;
    PNGButton4: TPNGButton;
    procedure PNGButton3Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson1_2: TLesson1_2;

implementation

uses Lesson1_3Unit, LessonBeginUnit1;

{$R *.dfm}


procedure TLesson1_2.PNGButton3Click(Sender: TObject);
begin
 Lesson1_3.Show;
 Lesson1_2.Hide;
end;


procedure TLesson1_2.PNGButton4Click(Sender: TObject);
begin
Lesson1Begin.Show;
Lesson1_2.Hide;
end;



end.
