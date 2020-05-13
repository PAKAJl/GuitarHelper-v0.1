unit Test4Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, StdCtrls, pngimage, ExtCtrls;

type
  TTest4 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PNGButton1: TPNGButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    v1: TImage;
    v2: TImage;
    v3: TImage;
    v4: TImage;
    v5: TImage;
    v6: TImage;
    v7: TImage;
    v8: TImage;
    v9: TImage;
    lable: TLabel;
    Label9: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure v1Click(Sender: TObject);
    procedure v2Click(Sender: TObject);
    procedure v3Click(Sender: TObject);
    procedure v4Click(Sender: TObject);
    procedure v5Click(Sender: TObject);
    procedure v6Click(Sender: TObject);
    procedure v7Click(Sender: TObject);
    procedure v8Click(Sender: TObject);
    procedure v9Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Test4: TTest4; c1,c2,c3,c4,c5,c6,c7,c8,c9:boolean;

implementation

uses DataModule1Unit, MainUnit, LessonUnit, Test3Unit;

{$R *.dfm}

procedure TTest4.FormActivate(Sender: TObject);
begin
c1:=false;
  v1.Picture.LoadFromFile('t2.png');
  c2:=false;
  v2.Picture.LoadFromFile('t2.png');
  c3:=false;
  v3.Picture.LoadFromFile('t2.png');
  c4:=false;
  v4.Picture.LoadFromFile('t2.png');
  c5:=false;
  v5.Picture.LoadFromFile('t2.png');
  c6:=false;
  v6.Picture.LoadFromFile('t2.png');
  c7:=false;
  v7.Picture.LoadFromFile('t2.png');
  c8:=false;
  v8.Picture.LoadFromFile('t2.png');
  c9:=false;
  v9.Picture.LoadFromFile('t2.png');
end;

procedure TTest4.v1Click(Sender: TObject);
begin
if c1 = false then
    begin
    v1.Picture.LoadFromFile('t1.png');
    c1:=true;
    end
      else
        begin
        v1.Picture.LoadFromFile('t2.png');
        c1:=false;
        end;
  if (c1 = true) and (c2 = true) or (c3= true) then
    begin
      c2:=false;
      v2.Picture.LoadFromFile('t2.png');
      c3:=false;
      v3.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v2Click(Sender: TObject);
begin
if c2 = false then
    begin
    v2.Picture.LoadFromFile('t1.png');
    c2:=true;
    end
      else
        begin
        v2.Picture.LoadFromFile('t2.png');
        c2:=false;
        end;
  if (c2 = true) and (c1 = true) or (c3= true) then
    begin
      c1:=false;
      v1.Picture.LoadFromFile('t2.png');
      c3:=false;
      v3.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v3Click(Sender: TObject);
begin
if c3 = false then
    begin
    v3.Picture.LoadFromFile('t1.png');
    c3:=true;
    end
      else
        begin
        v3.Picture.LoadFromFile('t2.png');
        c3:=false;
        end;
  if (c3 = true) and (c2 = true) or (c1= true) then
    begin
      c2:=false;
      v2.Picture.LoadFromFile('t2.png');
      c1:=false;
      v1.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v4Click(Sender: TObject);
begin
if c4 = false then
    begin
    v4.Picture.LoadFromFile('t1.png');
    c4:=true;
    end
      else
        begin
        v4.Picture.LoadFromFile('t2.png');
        c4:=false;
        end;
  if (c4 = true) and (c5 = true) or (c6= true) then
    begin
      c5:=false;
      v5.Picture.LoadFromFile('t2.png');
      c6:=false;
      v6.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v5Click(Sender: TObject);
begin
if c5 = false then
    begin
    v5.Picture.LoadFromFile('t1.png');
    c5:=true;
    end
      else
        begin
        v5.Picture.LoadFromFile('t2.png');
        c5:=false;
        end;
  if (c5 = true) and (c4 = true) or (c6= true) then
    begin
      c4:=false;
      v4.Picture.LoadFromFile('t2.png');
      c6:=false;
      v6.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v6Click(Sender: TObject);
begin
if c6 = false then
    begin
    v6.Picture.LoadFromFile('t1.png');
    c6:=true;
    end
      else
        begin
        v6.Picture.LoadFromFile('t2.png');
        c6:=false;
        end;
  if (c6 = true) and (c4 = true) or (c5= true) then
    begin
      c4:=false;
      v4.Picture.LoadFromFile('t2.png');
      c5:=false;
      v5.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v7Click(Sender: TObject);
begin
if c7 = false then
    begin
    v7.Picture.LoadFromFile('t1.png');
    c7:=true;
    end
      else
        begin
        v7.Picture.LoadFromFile('t2.png');
        c7:=false;
        end;
  if (c7 = true) and (c8 = true) or (c9= true) then
    begin
      c8:=false;
      v8.Picture.LoadFromFile('t2.png');
      c9:=false;
      v9.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v8Click(Sender: TObject);
begin
if c8 = false then
    begin
    v8.Picture.LoadFromFile('t1.png');
    c8:=true;
    end
      else
        begin
        v8.Picture.LoadFromFile('t2.png');
        c8:=false;
        end;
  if (c8 = true) and (c7 = true) or (c9= true) then
    begin
      c7:=false;
      v7.Picture.LoadFromFile('t2.png');
      c9:=false;
      v9.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.v9Click(Sender: TObject);
begin
if c9 = false then
    begin
    v9.Picture.LoadFromFile('t1.png');
    c9:=true;
    end
      else
        begin
        v9.Picture.LoadFromFile('t2.png');
        c9:=false;
        end;
  if (c9 = true) and (c8 = true) or (c7= true) then
    begin
      c8:=false;
      v8.Picture.LoadFromFile('t2.png');
      c7:=false;
      v7.Picture.LoadFromFile('t2.png');
    end;
end;

procedure TTest4.PNGButton1Click(Sender: TObject);
begin
if (c1 = true)and(c4 = true)and(c9 = true) then
    begin
    showMessage('Тест пройден');
      DataModule1.ADOQuery1.SQL.clear;
      datamodule1.ADOQuery1.SQL.Add('UPDATE Users Set Test4 = true WHERE Login='+#39+ProfileForm.Edit3.Text+#39);
      datamodule1.ADOQuery1.ExecSQL;
      LessonForm.show;
      Test4.Close;
      LessonForm.cartinka.Picture.LoadFromFile('images\galochka.png');
      end
      else
        ShowMessage('Проверь ответы!!!');
end;

end.
