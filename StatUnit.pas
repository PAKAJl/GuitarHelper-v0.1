unit StatUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TStatForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatForm: TStatForm;

implementation

uses MainUnit, LessonUnit;

{$R *.dfm}

procedure TStatForm.FormActivate(Sender: TObject);
  var prt:integer;
begin
  prt:=0;
  if LessonForm.Image1.Picture.Graphic <> nil
    then inc(prt);
  if LessonForm.Image2.Picture.Graphic <> nil
    then inc(prt);
  if LessonForm.Image3.Picture.Graphic <> nil
    then inc(prt);
  if LessonForm.cartinka.Picture.Graphic <> nil
    then inc(prt);
    if LessonForm.Image5.Picture.Graphic <> nil
    then inc(prt);
  Label5.Caption:=inttostr(prt);
end;

end.
