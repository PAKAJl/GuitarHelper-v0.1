unit MenuUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngextra, pngimage;

type
  TMenuForm = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PNGButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuForm: TMenuForm;  Check4,check5:boolean;

implementation

uses StatUnit, MainUnit, LessonUnit, AchordsGenUnit, NastrGitaru,
  DataModule1Unit, PessenikUnir;

{$R *.dfm}

procedure TMenuForm.PNGButton1Click(Sender: TObject);
begin
  StatForm.Show;
end;

procedure TMenuForm.PNGButton3Click(Sender: TObject);
begin
  ProfileForm.Edit3.Text:='';
  ProfileForm.Edit4.Text:='';
  LessonForm.Image1.Picture:=nil;
  LessonForm.Image2.Picture:=nil;
  LessonForm.Image3.Picture:=nil;
  LessonForm.Image5.Picture:=nil;
  LessonForm.cartinka.Picture:=nil;
  ProfileForm.Show;
  MenuForm.Close;
end;

procedure TMenuForm.PNGButton2Click(Sender: TObject);
begin
  LessonForm.Show;
  MenuForm.Close;
end;

procedure TMenuForm.PNGButton4Click(Sender: TObject);
begin
  AchordsForm.show;
  MenuForm.Close;
end;

procedure TMenuForm.PNGButton5Click(Sender: TObject);
begin
  NastrGit.Show;
  MenuForm.Close;
end;

procedure TMenuForm.FormActivate(Sender: TObject);
begin
  begin
    DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('SELECT Test1 From Users WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.Open;
    Check1:= dataModule1.ADOQuery1.Fields[0].AsBoolean;
    if Check1 = true then
    LessonForm.Image1.Picture.loadFromFile('images/galochka.png');
   end;
   begin
    DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('SELECT Test2 From Users WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.Open;
    Check2:= dataModule1.ADOQuery1.Fields[0].AsBoolean;
    if Check2 = true then
    LessonForm.Image2.Picture.loadFromFile('images/galochka.png');
   end;
   begin
    DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('SELECT Test3 From Users WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.Open;
    Check3:= dataModule1.ADOQuery1.Fields[0].AsBoolean;
    if Check3 = true then
    LessonForm.Image3.Picture.loadFromFile('images/galochka.png');
   end;
   DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('SELECT Test4 From Users WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.Open;
    Check4:= dataModule1.ADOQuery1.Fields[0].AsBoolean;
    if Check4 = true then
    LessonForm.cartinka.Picture.loadFromFile('images/galochka.png');
    begin
    DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('SELECT Test5 From Users WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.Open;
    Check5:= dataModule1.ADOQuery1.Fields[0].AsBoolean;
    if Check5 = true then
    LessonForm.Image5.Picture.loadFromFile('images/galochka.png');
   end;
end;

procedure TMenuForm.PNGButton6Click(Sender: TObject);
begin
  Pesenik.Show;
  MenuForm.Close;
end;

end.
