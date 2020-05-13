unit RegisterFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngextra, Mask, DBCtrls, pngimage, ExtCtrls;

type
  TRegisterForm = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure PNGButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterForm: TRegisterForm;  DataLogin, DataPass ,CheckValue: string;

implementation

uses DBGridFormUnit, DataModule1Unit;

{$R *.dfm}

procedure TRegisterForm.PNGButton1Click(Sender: TObject);
begin
  if (Edit1.Text ='') or (Edit2.Text = '') or ((Edit1.Text = '') and (Edit2.Text = '')) then
    begin
      ShowMessage('��������� ��� ����');
      exit;
    end;
  DataModule1.ADOQuery1.SQL.Clear;
  DataModule1.ADOQuery1.SQL.Add('SELECT login FROM Users Where Login='+#39+Edit1.Text+#39);
  DataModule1.ADOQuery1.Open;
  if DataModule1.ADOQuery1.FieldValues['login'] = null then
    begin
      DataModule1.ADOTable1.Insert;
      DataModule1.ADOTable1.FieldByName('Login').AsString:=Edit1.Text;
      DataModule1.ADOTable1.FieldByName('Password').AsString:=Edit2.Text;
      DataModule1.ADOTable1.Post;
      ShowMessage('������, �������!!!');
      RegisterForm.Close;
      Edit1.Text:='';
      Edit2.Text:='';
      
    end
      else
        begin
          CheckValue:= DataModule1.ADOQuery1.FieldValues['Login'];
            if CheckValue = Edit1.Text then begin
              ShowMessage('����� ������������ ��� ����������!!!');
              exit;
            end;
end;
end;

procedure TRegisterForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

  if not(key in ['A'..'Z',#8,'0'..'9'] ) and  not(key in ['a'..'z',#8] ) then begin
    ShowMessage('����� ����� ��������� ������ ����� ���������� �������� � �����.');
    key:=#0;
    end;
     IF key in [#13] then
  PNGButton1Click(Sender);;
end;

procedure TRegisterForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not(key in ['A'..'Z',#8,'0'..'9'] ) and  not(key in ['a'..'z',#8] ) then
  begin
    ShowMessage('����� ����� ��������� ������ ����� ���������� �������� � �����.');
     key:=#0;
    end;
     IF key in [#13] then
   PNGButton1Click(Sender);
  end;

end.
