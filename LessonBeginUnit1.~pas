unit LessonBeginUnit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, jpeg, ExtCtrls, StdCtrls, pngimage;

type
  TLesson1Begin = class(TForm)
    Background: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PNGButton3: TPNGButton;
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson1Begin: TLesson1Begin;

implementation

uses MainUnit, LessonUnit, Lesson1_2Unit;

{$R *.dfm}

procedure TLesson1Begin.PNGButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TLesson1Begin.PNGButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TLesson1Begin.PNGButton3Click(Sender: TObject);
begin
  Lesson1Begin.Close;
  Lesson1_2.show;
end;


end.
