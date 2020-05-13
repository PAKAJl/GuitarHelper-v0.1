unit AchordsGenUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, pngextra, MPlayer;

type
  TAchordsForm = class(TForm)
    Background: TImage;
    Achord: TImage;
    Label1: TLabel;
    Label2: TLabel;
    AchordsBox: TListBox;
    FlagMinorImage: TImage;
    FlagSharpImage: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    MediaPlayer1: TMediaPlayer;
    procedure FlagMinorImageClick(Sender: TObject);
    procedure FlagSharpImageClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AchordsBoxClick(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AchordsForm: TAchordsForm; FlagSharp,FlagMinor:boolean;
  NameAc:string;

implementation

uses DataModule1Unit, MenuUnit;

{$R *.dfm}

procedure TAchordsForm.FlagMinorImageClick(Sender: TObject);
begin
if FlagMinor = false then
    begin
    FlagMinorImage.Picture.LoadFromFile('t1.png');
    FlagMinor:=true;
    end
      else
        begin
        FlagMinorImage.Picture.LoadFromFile('t2.png');
        FlagMinor:=false;
        end;
  AchordsBoxClick(Sender);
end;

procedure TAchordsForm.FlagSharpImageClick(Sender: TObject);
begin
  if FlagSharp = false then
    begin
    FlagSharpImage.Picture.LoadFromFile('t1.png');
    FlagSharp:=true;
    end
      else
        begin
        FlagSharpImage.Picture.LoadFromFile('t2.png');
        FlagSharp:=false;
        end;
  AchordsBoxClick(Sender);
end;

procedure TAchordsForm.FormActivate(Sender: TObject);
begin
   FlagMinorImage.Picture.LoadFromFile('t2.png');
        FlagMinor:=false;
   FlagSharpImage.Picture.LoadFromFile('t2.png');
        FlagSharp:=false;
end;

procedure TAchordsForm.AchordsBoxClick(Sender: TObject);
var LinkPicture,namearc,LinkSound:string;
begin
  if AchordsBox.ItemIndex = 0 then
    namearc:='A';
    if AchordsBox.ItemIndex = 1 then
    namearc:='B';
    if AchordsBox.ItemIndex = 2 then
    namearc:='C';
    if AchordsBox.ItemIndex = 3 then
    namearc:='D';
    if AchordsBox.ItemIndex = 4 then
    namearc:='E';
    if AchordsBox.ItemIndex = 5 then
    namearc:='F';
    if AchordsBox.ItemIndex = 6 then
    namearc:='G';
    if ((AchordsBox.ItemIndex = 1)and (FlagSharp = true)) or ((AchordsBox.ItemIndex = 4) and (FlagSharp = true)) then
      begin
        ShowMessage('Аккорд B# = C и E# = F. Выберите другой аккорд');
        FlagSharp:=false;
        FlagSharpImage.Picture.LoadFromFile('t2.png');
        exit;
      end;
  if (AchordsBox.ItemIndex = 0) or (AchordsBox.ItemIndex = 1) or (AchordsBox.ItemIndex = 2) or (AchordsBox.ItemIndex = 3) or
  (AchordsBox.ItemIndex = 4) or (AchordsBox.ItemIndex = 5) or (AchordsBox.ItemIndex = 6) then
      begin
       DataModule1.ADOQuery1.SQL.clear;
       datamodule1.ADOQuery1.SQL.Add('SELECT Picturelink FROM Achords WHERE NameAchords = NameArc and SharpCheck = FlagSharp and MinorCheck = FlagMinor');
       datamodule1.ADOQuery1.Parameters.ParamByName('FlagSharp').Value:=FlagSharp;
       datamodule1.ADOQuery1.Parameters.ParamByName('FlagMinor').Value:=FlagMinor;
       datamodule1.ADOQuery1.Parameters.ParamByName('NameArc').Value:=NameArc;
       datamodule1.ADOQuery1.Open;
       LinkPicture:= dataModule1.ADOQuery1.Fields[0].AsString;
       Achord.Picture.LoadFromFile(LinkPicture);
       DataModule1.ADOQuery1.SQL.clear;
       datamodule1.ADOQuery1.SQL.Add('SELECT Sound FROM Achords WHERE NameAchords = NameArc and SharpCheck = FlagSharp and MinorCheck = FlagMinor');
       datamodule1.ADOQuery1.Parameters.ParamByName('FlagSharp').Value:=FlagSharp;
       datamodule1.ADOQuery1.Parameters.ParamByName('FlagMinor').Value:=FlagMinor;
       datamodule1.ADOQuery1.Parameters.ParamByName('NameArc').Value:=NameArc;
       datamodule1.ADOQuery1.Open;
       LinkSound:= dataModule1.ADOQuery1.Fields[0].AsString;
       MediaPlayer1.FileName:=LinkSound;
      end;

end;

procedure TAchordsForm.PNGButton1Click(Sender: TObject);
begin
  AchordsForm.Close;
  MenuForm.show;
end;

procedure TAchordsForm.PNGButton2Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
