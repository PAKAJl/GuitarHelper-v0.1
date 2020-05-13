unit Lesson2_1Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, StdCtrls, pngimage, ExtCtrls, pngextra;

type
  TLesson2_1 = class(TForm)
    BackGround: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    PNGButton1: TPNGButton;
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson2_1: TLesson2_1;

implementation

uses Lesson2_2Unit;

{$R *.dfm}

procedure TLesson2_1.PNGButton1Click(Sender: TObject);
begin
  Lesson2_1.Close;
  Lesson2_2.show;
end;

end.
