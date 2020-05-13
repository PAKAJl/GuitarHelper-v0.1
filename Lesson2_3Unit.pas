unit Lesson2_3Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, StdCtrls, pngimage, ExtCtrls, pngextra;

type
  TLesson2_3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PNGButton1: TPNGButton;
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson2_3: TLesson2_3;

implementation

uses Test2Unit;

{$R *.dfm}

procedure TLesson2_3.PNGButton1Click(Sender: TObject);
begin
  Lesson2_3.Close;
  Test2.show;
end;

end.
