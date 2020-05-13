unit PessenikUnir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, TranComp, DBCtrls, pngextra;

type
  TPesenik = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ListBox1: TListBox;
    Label2: TLabel;
    PNGButton1: TPNGButton;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pesenik: TPesenik;

implementation

uses DataModule1Unit, MenuUnit;

{$R *.dfm}


procedure TPesenik.FormActivate(Sender: TObject);
begin
  ListBox1.Items.Clear;
  Datamodule1.ADOQuery1.SQL.Clear;
  Datamodule1.ADOQuery1.SQL.Add('Select SongName From Pesenik');
  DataModule1.ADOQuery1.Open;
  dataModule1.ADOQuery1.First;
  While  not dataModule1.ADOQuery1.EOF do begin
    listbox1.Items.Add(dataModule1.ADOQuery1.FieldByName('SongName').AsString );
    DataModule1.ADOQuery1.Next;
  end;
end;

procedure TPesenik.ListBox1Click(Sender: TObject);
var i:integer; SongNameStr:string;
begin
  for i:=0 to ListBox1.Items.Count do
    If ListBox1.ItemIndex = i then
      begin
    SongNameStr:= ' '+ListBox1.items.ValueFromIndex[i];
    Label2.caption:=SongNameStr;
      Datamodule1.ADOQuery1.SQL.Clear;
  Datamodule1.ADOQuery1.SQL.Add('Select Song From Pesenik Where SongName = SongNameStr');
  DataModule1.ADOQuery1.Parameters.ParamByName('SongNameStr').Value:=SongNameStr;
  DataModule1.ADOQuery1.Open;
  Memo1.Text:=DataModule1.ADOQuery1.Fields[0].AsString;
  end;

end;

procedure TPesenik.PNGButton1Click(Sender: TObject);
begin
Pesenik.Close;
MenuForm.show;
end;

end.
