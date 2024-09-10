unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  Menus;

type
  Arr = array of double;
  ArrOfArr = array[0..4] of Arr  ;

  TSpectra = record
    realpart:Arr;
    impart:Arr;
    ampl: Arr;
    freq: Arr;
    phase: Arr;
  end;
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Series2: TBarSeries;
    Chart3: TChart;
    Series3: TBarSeries;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Chart4: TChart;
    CheckBox1: TCheckBox;
    Series4: TLineSeries;
    Chart5: TChart;
    BitBtn3: TBitBtn;
    Series5: TLineSeries;
    Label7: TLabel;
    Label8: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Chart6: TChart;
    Series6: TBarSeries;
    CheckBox2: TCheckBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Series7: TLineSeries;
    Series8: TLineSeries;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    CheckBox3: TCheckBox;
    Series9: TLineSeries;
    Label9: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label10: TLabel;
    Chart2: TChart;
    Series11: TLineSeries;
    Button3: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  signal:Arr;
  tsignal:Arr;
  freqdisc:integer;
  tfreqdisc:integer;
  timeinterval:double;
  spectr: TSpectra;

implementation

uses FFT, DFT, scripts ;
{$R *.dfm}


procedure TForm1.BitBtn2Click(Sender: TObject);
var i,len:integer;
a1,a2,f1,f2:double;
begin
  form1.Series1.Clear;
  freqdisc:= StrToInt(Form1.Edit1.Text);
  timeinterval:= StrToFloat(Form1.Edit2.Text);
  a1:= StrToFloat(Form1.Edit3.Text);
  a2:= StrToFloat(Form1.Edit4.Text);
  f1:= StrToFloat(Form1.Edit5.Text);
  f2:= StrToFloat(Form1.Edit6.Text);
  len:= trunc(freqdisc*timeinterval); //для создания сигнала
  SetLength(signal,len);
  for i:=0 to len-1 do begin
    signal[i] := a1*sin(2*Pi*f1*i*(1/freqdisc))+ a2*sin(2*Pi*f2*i*(1/freqdisc));
    form1.Series1.AddXY(i,signal[i]);
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var i,len:integer;
sp: ArrOfArr;
WN:integer;
begin
  Form1.Series2.Clear;
  Form1.Series3.Clear;
  Form1.Series4.Clear;
  Form1.Series7.Clear;
  Form1.Series8.Clear;
  WN:=Form1.ComboBox1.ItemIndex;
  len:= StrToInt(form1.Edit10.Text)- StrToInt(form1.Edit9.Text);
  tfreqdisc:=len;
  SetLength(tsignal,len);
  for i:=0 to len-1 do begin
    tsignal[i]:=signal[i+StrToInt(form1.Edit9.Text)]
  end;
  SetLength(spectr.ampl,length(signal));
  SetLength(spectr.realpart,length(signal));
  SetLength(spectr.impart,length(signal));
  SetLength(spectr.freq,length(signal));
  SetLength(spectr.phase,length(signal));
  if form1.CheckBox1.Checked then
    tsignal:=SetWindow(signal,WN);
  sp:= DFTDirect(signal,freqdisc);
  for i:=0 to length(signal)-1 do begin

    spectr.ampl[i] := sp[0,i];
    spectr.freq[i] := sp[1,i];
    if form1.CheckBox3.Checked then
      spectr.phase[i]:=sp[2,i]
    else
      spectr.phase[i]:=0;
    spectr.realpart[i] := sp[3,i];
    spectr.impart[i] := sp[4,i];
    Form1.Series2.AddXY(spectr.freq[i],spectr.ampl[i]);
    Form1.Series7.AddXY(spectr.freq[i],spectr.realpart[i]);
    Form1.Series8.AddXY(spectr.freq[i],spectr.impart[i]);
    Form1.Series3.AddXY(spectr.freq[i],spectr.phase[i]);
    Form1.Series4.AddXY(i,tsignal[i]);
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if form1.CheckBox1.Checked then
    form1.ComboBox1.Enabled := true
  else
    form1.ComboBox1.Enabled := false;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var i,len:integer;
sp: Arr;
sparr:ArrOfArr;
fstart,fstop:integer;
begin

  Form1.Series5.Clear;
  Form1.Series6.Clear;

  if form1.CheckBox2.Checked then begin
    fstart:= StrToInt(form1.Edit7.text);
    fstop:= StrToInt(form1.Edit8.text);
    spectr.ampl:= FilterFrequences(spectr.ampl,spectr.freq,fstart,fstop);
  end;

  sp := DFTBack(spectr.ampl,spectr.phase);
  for i:=0 to length(signal)-1 do begin
    Form1.Series5.AddXY(i,sp[i]);
  end;

  sparr:= DFTDirect(sp,freqdisc);
  for i:=0 to length(signal)-1 do begin
    Form1.Series6.AddXY(spectr.freq[i],sparr[0,i]);
  end;

end;

procedure TForm1.N3Click(Sender: TObject);
var
FileName, str : string;
DataFile: TextFile;
i,len: integer;
value,index:integer;
discretetime,max:double;
begin
   i:=0;
   len:=0;
  SetLength(signal,4096);
  discretetime:=1; // 0.0000000000672
  if OpenDialog1.Execute then begin
    AssignFile(DataFile,OpenDialog1.FileName);
    Reset(DataFile);
    while not Eof(DataFile) do begin
      if i<6 then begin
        Readln(DataFile, str);
        i:=i+1;
      end;
      if i>=6 then begin
        Readln(DataFile, index, value);
        signal[len]:=value;
        len:=len+1;
      end;
    end;
    CloseFile(DataFile);
    freqdisc:=len; //trunc(1/discretetime)
    timeinterval:= freqdisc*1; //len*discretetime;

    form1.Edit1.text:=IntToStr(freqdisc);
    form1.Edit2.text:= FloatToStr(timeinterval);
    form1.Edit3.text:='-' ;
    form1.Edit4.text:='-' ;
    form1.Edit5.text:='-' ;
    form1.Edit6.text:='-' ;
    max:=signal[0];
    form1.Series1.Clear;
    for i:=0 to len-1 do begin
      if max<=signal[i] then
        max:=signal[i]
    end;
    for i:=0 to len-1 do begin
      signal[i]:=signal[i]/max;
      form1.Series1.AddXY(i,signal[i]);
    end;
  end;
end;



procedure TForm1.N2Click(Sender: TObject);
var
  st: string;
  i:integer;
  F: TextFile;
  XData: double;
  YData: double;
  TimeData: double;
begin
  Form1.SaveDialog1.Title:='сохранить данные'+'.txt';
  if Form1.SaveDialog1.Execute=True then begin
    St:=Form1.SaveDialog1.FileName ;
    AssignFile(F,st);
    Rewrite(F);
  end;

  for i:=0 to length(tsignal)-1 do begin
    WriteLn(F,Form1.Series5.XValue[i],' ',Form1.Series5.YValue[i]);
  end;
  CloseFile(F);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, len:integer;
begin
  form1.Series9.Clear;
  len:=length(tsignal);
  for i:=0 to len-1 do begin
    form1.Series9.AddXY(i,tsignal[i]);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var entarr,resarr:Arr;
len,i:integer;
begin
  len:= length(signal);
  Setlength(entarr,len);
  Setlength(resarr,len);
  entarr:= signal;
  FFTAnalysis(entarr, resarr, len, len)  ;
  ShowMessage('');
  for i:=1 to len-1 do begin
    Form1.Series1.AddXY(i,resarr[i])
  end;

end;

end.
