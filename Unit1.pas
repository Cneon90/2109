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
    Panel3: TPanel;
    Label6: TLabel;
    Switch1: TSwitch;
    Label7: TLabel;
    TrackBar5: TTrackBar;
    Label8: TLabel;
    Panel4: TPanel;
    Label9: TLabel;
    StyleBook1: TStyleBook;
    Panel5: TPanel;
    lbtrack1: TLabel;
    track_left_low: TTrackBar;
    Label2: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    track_right_low: TTrackBar;
    lbtrack2: TLabel;
    Label5: TLabel;
    track_left_hi: TTrackBar;
    lbtrack3: TLabel;
    Label4: TLabel;
    track_right_hi: TTrackBar;
    lbtrack4: TLabel;
    cbReplay: TCheckBox;
    Panel9: TPanel;
    btnSave: TButton;
    Panel10: TPanel;
    Label10: TLabel;
    ptf_left: TTrackBar;
    Panel11: TPanel;
    Label11: TLabel;
    ptf_rifht: TTrackBar;
    cbRepkay_ptf: TCheckBox;
    Panel12: TPanel;
    Label12: TLabel;
    Switch2: TSwitch;
    procedure btnLight_lowClick(Sender: TObject);
    procedure btnLight_offClick(Sender: TObject);
    procedure btnLight_HiClick(Sender: TObject);
    procedure track_left_lowChange(Sender: TObject);
    procedure track_right_lowChange(Sender: TObject);
    procedure track_left_hiChange(Sender: TObject);
    procedure track_right_hiChange(Sender: TObject);
    procedure ptf_leftChange(Sender: TObject);
    procedure ptf_rifhtChange(Sender: TObject);
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

procedure TForm1.ptf_leftChange(Sender: TObject);
begin
    if cbRepkay_ptf.IsChecked then
    ptf_rifht.Value := ptf_left.Value;
end;

procedure TForm1.ptf_rifhtChange(Sender: TObject);
begin
    if cbRepkay_ptf.IsChecked then
       ptf_left.Value  :=  ptf_rifht.Value;
end;

procedure TForm1.track_left_hiChange(Sender: TObject);
begin
     lbtrack3.Text := floatTostr(Round(track_left_hi.Value/2.55))+'%';
     if cbReplay.IsChecked then  track_right_hi.Value  := track_left_hi.Value;
end;

procedure TForm1.track_left_lowChange(Sender: TObject);
begin
    lbtrack1.Text := floatTostr(Round(track_left_low.Value/2.55))+'%';
    if cbReplay.IsChecked then track_right_low.Value := track_left_low.Value;

end;

procedure TForm1.track_right_hiChange(Sender: TObject);
begin
    lbtrack4.Text := floatTostr(Round(track_right_hi.Value/2.55))+'%';
    if cbReplay.IsChecked then  track_left_hi.Value   := track_right_hi.Value;
end;

procedure TForm1.track_right_lowChange(Sender: TObject);
begin
     lbtrack2.Text := floatTostr(Round(track_right_low.Value/2.55))+'%';
     if cbReplay.IsChecked then  track_left_low.Value  := track_right_low.Value;
end;

end.
