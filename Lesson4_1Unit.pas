unit Lesson4_1Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, pngimage, ExtCtrls, jpeg, StdCtrls;

type
  TLesson4_1 = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson4_1: TLesson4_1;

implementation

uses LessonUnit, Lesson4_2Unit;

{$R *.dfm}

procedure TLesson4_1.PNGButton1Click(Sender: TObject);
begin
 LessonForm.Show;
 Lesson4_1.Close;
end;

procedure TLesson4_1.PNGButton2Click(Sender: TObject);
begin
Lesson4_1.close;
Lesson4_2.show;
end;

end.
