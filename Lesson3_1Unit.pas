unit Lesson3_1Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, pngextra;

type
  TLesson3_1 = class(TForm)
    Background: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PNGButton2: TPNGButton;
    PNGButton1: TPNGButton;
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson3_1: TLesson3_1;

implementation

uses LessonUnit, Lesson3_2Unit;

{$R *.dfm}

procedure TLesson3_1.PNGButton2Click(Sender: TObject);
begin
  Lesson3_1.Close;
  LessonForm.Show;
end;

procedure TLesson3_1.PNGButton1Click(Sender: TObject);
begin
  Lesson3_1.Close;
  Lesson3_2.show;
end;

end.
