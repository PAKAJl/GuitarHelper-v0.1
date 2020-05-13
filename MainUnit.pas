unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, jpeg, ExtCtrls, pngextra, DB, ADODB, pngimage,
  DBCtrls;

type
  TProfileForm = class(TForm)
    Background: TImage;
    LoginButton: TPNGButton;
    CreateProfileButton: TPNGButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Image1: TImage;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinimizeButtonClick(Sender: TObject);
    procedure LoginButtonClick(Sender: TObject);
    procedure CreateProfileButtonClick(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfileForm: TProfileForm;

implementation

uses  LessonUnit, LessonBeginUnit1, DataModule1Unit,
  DBGridFormUnit, RegisterFormUnit, StatUnit, MenuUnit;

{$R *.dfm}

procedure TProfileForm.CloseButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TProfileForm.MinimizeButtonClick(Sender: TObject);
begin
  application.Minimize;
end;

procedure TProfileForm.LoginButtonClick(Sender: TObject);
begin
  DataModule1.ADOQuery1.SQL.Clear;
  DataModule1.ADOQuery1.SQL.Add('SELECT Password FROM Users WHERE Login='+#39+Edit3.Text+#39);
  DataModule1.ADOQuery1.Open;
  If DataModule1.ADOQuery1.isEmpty
    then
      ShowMessage('Гитарист '+Edit3.Text+' не найден')
        else
          if DataModule1.ADOQuery1.FieldByName('Password').Value <> Edit4.Text
            then
              ShowMessage('Проверь пароль!!!')
                Else
                  begin
                    StatForm.Label2.Caption:=Edit3.Text;
                    menuForm.Show;
                    ProfileForm.Hide;
                  end;

end;

procedure TProfileForm.CreateProfileButtonClick(Sender: TObject);
begin
  EditProfile.DBNavigator1.BtnClick(nbInsert);
  RegisterForm.Show;
end;

procedure TProfileForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   IF key in [#13] then
  LoginButtonClick(Sender);
end;


procedure TProfileForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
   IF key in [#13] then
  LoginButtonClick(Sender);
end;

end.
