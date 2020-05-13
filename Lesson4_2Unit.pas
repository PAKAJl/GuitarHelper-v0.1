unit Lesson4_2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, StdCtrls, pngimage, ExtCtrls;

type
  TLesson4_2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    PNGButton1: TPNGButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PNGButton2: TPNGButton;
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson4_2: TLesson4_2;

implementation

uses Lesson4_1Unit, Test4Unit;

{$R *.dfm}

procedure TLesson4_2.PNGButton1Click(Sender: TObject);
begin
Lesson4_2.close;
Lesson4_1.show;
end;

procedure TLesson4_2.PNGButton2Click(Sender: TObject);
begin
  Lesson4_2.close;
  Test4.Show;
end;

end.
