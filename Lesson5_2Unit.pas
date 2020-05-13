unit Lesson5_2Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngextra, pngimage, ExtCtrls, jpeg;

type
  TLesson5_2 = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label3: TLabel;
    Label4: TLabel;
    procedure Label4Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lesson5_2: TLesson5_2;

implementation

uses Test5Unit;

{$R *.dfm}

procedure TLesson5_2.Label4Click(Sender: TObject);
begin
  Label2.Caption:=Label2.Caption+Label4.Caption;
end;

procedure TLesson5_2.PNGButton2Click(Sender: TObject);
begin
  Test5.show;
  Lesson5_2.Close;
end;

end.
