unit NastrGitaru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, MPlayer, pngextra;

type
  TNastrGit = class(TForm)
    Image1: TImage;
    Image2: TImage;
    String4: TImage;
    MediaPlayer1: TMediaPlayer;
    String5: TImage;
    String6: TImage;
    String3: TImage;
    String2: TImage;
    String1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    PNGButton1: TPNGButton;
    procedure String4Click(Sender: TObject);
    procedure String1Click(Sender: TObject);
    procedure String2Click(Sender: TObject);
    procedure String3Click(Sender: TObject);
    procedure String5Click(Sender: TObject);
    procedure String6Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NastrGit: TNastrGit;

implementation

uses MenuUnit;

{$R *.dfm}

procedure TNastrGit.String4Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\4ая.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.String1Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\1ая.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.String2Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\2ая.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.String3Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\3тья.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.String5Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\5ая.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.String6Click(Sender: TObject);
begin
  MediaPlayer1.FileName:='audio\6ая.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TNastrGit.PNGButton1Click(Sender: TObject);
begin
  NastrGit.Close;
  MenuForm.Show;
end;

end.
