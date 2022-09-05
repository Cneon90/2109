unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnLight_low: TSpeedButton;
    btnLight_Hi: TSpeedButton;
    Panel2: TPanel;
    btnLight_off: TSpeedButton;
    name: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    track_left_low: TTrackBar;
    track_right_low: TTrackBar;
    track_left_hi: TTrackBar;
    track_right_hi: TTrackBar;
    Panel3: TPanel;
    Label6: TLabel;
    Switch1: TSwitch;
    Label7: TLabel;
    TrackBar5: TTrackBar;
    Label8: TLabel;
    Panel4: TPanel;
    Label9: TLabel;
    Switch2: TSwitch;
    Label10: TLabel;
    lbtrack4: TLabel;
    lbtrack3: TLabel;
    lbtrack2: TLabel;
    lbtrack1: TLabel;
    btnSave: TButton;
    StyleBook1: TStyleBook;
    procedure btnLight_lowClick(Sender: TObject);
    procedure btnLight_offClick(Sender: TObject);
    procedure btnLight_HiClick(Sender: TObject);
    procedure track_left_lowChange(Sender: TObject);
    procedure track_right_lowChange(Sender: TObject);
    procedure track_left_hiChange(Sender: TObject);
    procedure track_right_hiChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLight_HiClick(Sender: TObject);
begin
    track_left_low.Value := 0;
    track_right_low.value:= 0;
    track_left_hi.value  := 255;
    track_right_hi.value := 255;
end;

procedure TForm1.btnLight_lowClick(Sender: TObject);
begin
    track_left_low.Value := 255;
    track_right_low.value:= 255;
    track_left_hi.Value  := 0;
    track_right_hi.value := 0;
end;

procedure TForm1.btnLight_offClick(Sender: TObject);
begin
    track_left_low.Value := 0;
    track_right_low.value:= 0;
    track_left_hi.value  := 0;
    track_right_hi.value := 0;
end;

procedure TForm1.track_left_hiChange(Sender: TObject);
begin
     lbtrack3.Text := floatTostr(Round(track_left_hi.Value));
end;

procedure TForm1.track_left_lowChange(Sender: TObject);
begin
    lbtrack1.Text := floatTostr(Round(track_left_low.Value));
end;

procedure TForm1.track_right_hiChange(Sender: TObject);
begin
    lbtrack4.Text := floatTostr(Round(track_right_hi.Value));
end;

procedure TForm1.track_right_lowChange(Sender: TObject);
begin
     lbtrack2.Text := floatTostr(Round(track_right_low.Value));
end;

end.
