unit scripts;

interface
uses Windows,Dialogs,Messages,unit1;


function SetWindow(mas:Arr;n:integer):Arr;
function Rectangle(mas:Arr):Arr;
function Hann(mas:Arr):Arr;
function Hemming(mas:Arr):Arr;
function Blackmann(mas:Arr):Arr;
function Bartlet(mas:Arr):Arr;
function Kaizer(mas:Arr):Arr;
function FilterFrequences(masampl:Arr;masfreq:Arr;fstart,fstop:integer):Arr;
//function PhaseFrequencyCharacteristics(mas:Arr):Arr;

implementation

function Rectangle(mas:Arr):Arr;
var i:integer;
begin
  for i:=0 to length(mas)-1 do begin
    mas[i]:=mas[i]*1
  end;
end;

function Hann(mas:Arr):Arr;
var i:integer;
begin
  for i:=0 to length(mas)-1 do begin
    mas[i]:=mas[i]*0.5*(1-cos(2*Pi*i/(length(mas)-1)));
  end;
end;

function Hemming(mas:Arr):Arr;
var i:integer;
begin
  for i:=0 to length(mas)-1  do begin
    mas[i]:=mas[i]*(0.53836-0.46164  *cos(2*Pi*i/(length(mas)-1)));
  end;
end;

function Blackmann(mas:Arr):Arr;
var i:integer;
a:double;
begin
  a:= 0.16;
  for i:=0 to length(mas)-1  do begin
    mas[i]:=mas[i]*( (1-a)/2 - 1/2*cos(2*Pi*i/(length(mas)-1)) + a/2*cos(4*Pi*i/(length(mas)-1)));
  end;
end;


function Bartlet(mas:Arr):Arr;
var i:integer;
begin
  for i:=0 to length(mas)-1  do begin
    if (i<=(length(mas)-1)/2) then
      mas[i]:=mas[i]*2*i/(length(mas)-1)
    else
      mas[i]:=mas[i]*(2-2*i/(length(mas)-1));
  end;
end;

function Kaizer(mas:Arr):Arr;
var i:integer;
begin
  for i:=0 to length(mas)-1  do begin
    mas[i]:=mas[i]*1;
  end;
end;

function SetWindow(mas:Arr;n:integer):Arr;
begin
  case n of
    0 : Rectangle(mas);
    1 : Hann(mas);
    2 : Hemming(mas);
    3 : Blackmann(mas);
    4 : Bartlet(mas);
    5 : Kaizer(mas);
  end;
  result:= mas ;
end;

function FilterFrequences(masampl:Arr;masfreq:Arr;fstart,fstop:integer):Arr;
var i:integer;
begin
  masampl[trunc(length(masfreq)/2)]:=0;
  for i:=0 to (trunc(length(masfreq)/2)-1) do begin
    if (masfreq[i]>= fstart) and (masfreq[i]<= fstop) then begin
      masampl[i]:=masampl[i]*1;
      masampl[((length(masfreq)-1) - i)+1]:=masampl[((length(masfreq)-1) - i)+1]*1;
    end else begin
      masampl[i]:=masampl[i]*0;
      masampl[((length(masfreq)-1) - i)+1]:=masampl[((length(masfreq)-1) - i)+1]*0;
    end;
  end;
  result:= masampl;
end ;
{
function PhaseFrequencyCharacteristics(mas:Arr):Arr;
var i,len:integer;
res:Arr;
begin
  len := length(mas);
  SetLength(res,len);
  if len mod 2=0 then begin
    for i:=0 to (trunc(len/2)-1) do begin
      res[i] := -(len-1)*Pi*i/len;
    end;
    for i:=trunc(len/2) to (len-1) do begin
      res[i] := -(len-1)*(i-len)*Pi/len;
    end;
  end else begin
    for i:=0 to trunc((len-1)/2) do begin
      res[i] := -(len-1)*Pi*i/len;
    end;
    for i:=trunc((len+1)/2) to (len-1) do begin
      res[i] := -(len-1)*(i-len)*Pi/len;
    end;
  end;
  result:=res;
end;
        }
end.
