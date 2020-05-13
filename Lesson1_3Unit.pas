unit Lesson1_3Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, pngimage, ExtCtrls, pngextra;

type
  TLesson1_3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Label2: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure PNGButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson1_3: TLesson1_3;

implementation

uses Test1Unit;

{$R *.dfm}

procedure TLesson1_3.PNGButton2Click(Sender: TObject);
begin
test1.show;
Lesson1_3.Close;
end;


end.
