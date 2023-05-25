unit UAntrian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, MMSystem, StrUtils;

type
  TFMainMenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainMenu: TFMainMenu;

implementation

{$R *.dfm}

function Terbilang(x:Integer): string;

  function Bilang(x:Integer): string;
  begin
    //
    case x of
      0 : Result := 'nol';
      1 : Result := 'satu';
      2 : Result := 'dua';
      3 : Result := 'tiga';
      4 : Result := 'empat';
      5 : Result := 'lima';
      6 : Result := 'enam';
      7 : Result := 'tujuh';
      8 : Result := 'delapan';
      9 : Result := 'sembilan';
      10 : Result := 'sepuluh';
      11 : Result := 'sebelas';
    end;
  end;

begin
  //
  if x < 12 then
    //Result := ' ' + Bilang(x);
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Bilang(x)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 20 then
    //Result := Terbilang(x-10) + ' Belas'
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x-10)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\belas.wav'), 0, SND_FILENAME);
    end
  else if x < 100 then
    //Result := Terbilang(x div 10) + ' Puluh' + Terbilang(x mod 10)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x div 10)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\puluh.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x mod 10)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 200 then
    //Result := ' Seratus' + Terbilang(x-100)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\seratus.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x-100)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 1000 then
    //Result := Terbilang(x div 100) + ' Ratus' + Terbilang(x mod 100)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x div 100)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\ratus.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x mod 100)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 2000 then
    //Result := ' Seribu' + Terbilang(x - 1000)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\seribu.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x - 1000)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 1000000 then
    //Result := Terbilang(x div 1000) + ' Ribu' + Terbilang(x mod 1000)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x div 1000)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\ribu.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x mod 1000)+'.wav'), 0, SND_FILENAME);
    end
  else if x < 1000000000 then
    //Result := Terbilang(x div 1000000) + ' Juta' + Terbilang(x mod 1000000)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x div 1000000)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\juta.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x mod 1000000)+'.wav'), 0, SND_FILENAME);
    end
  else
    //Result := Terbilang(x div 1000000000) + ' Milyar' + Terbilang(x mod 1000000000)
    begin
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x div 1000000000)+'.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\milyar.wav'), 0, SND_FILENAME);
      PlaySound(PChar('D:\antrian\audioWomanWav\'+Terbilang(x mod 1000000000)+'.wav'), 0, SND_FILENAME);
    end
end;

procedure TFMainMenu.FormActivate(Sender: TObject);
begin
  Panel8.Caption := FormatDateTime('dd-mm-yyyy', Now);
end;

procedure TFMainMenu.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMainMenu.Button3Click(Sender: TObject);
begin
  PlaySound(PChar('D:\antrian\audioWomanWav\antrianke.wav'), 0, SND_FILENAME);
  //PlaySound(PChar('D:\antrian\audioWomanWav\antrian.wav'), 0, SND_FILENAME);
  //PlaySound(PChar('D:\antrian\audioWomanWav\ke.wav'), 0, SND_FILENAME);
  Terbilang(StrToInt(Panel6.Caption));
end;

procedure TFMainMenu.Button1Click(Sender: TObject);
begin
  Panel6.Caption := Edit1.Text;
  Panel10.Caption := IntToStr(StrToInt(Edit1.Text) + 1);
  Edit1.Clear;
end;

procedure TFMainMenu.Button4Click(Sender: TObject);
begin
  Panel6.Caption := IntToStr(StrToInt(Panel6.Caption) + 1);
  Panel10.Caption := IntToStr(StrToInt(Panel10.Caption) + 1);
  PlaySound(PChar('D:\antrian\audioWomanWav\antrianke.wav'), 0, SND_FILENAME);
  //PlaySound(PChar('D:\antrian\audioWomanWav\antrian.wav'), 0, SND_FILENAME);
  //PlaySound(PChar('D:\antrian\audioWomanWav\ke.wav'), 0, SND_FILENAME);
  Terbilang(StrToInt(Panel6.Caption));
end;

end.
