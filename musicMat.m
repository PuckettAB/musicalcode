Fs = 8000;
dur = 0.3*Fs;
z = zeros(1,200);
A4 = sin(2*pi*[1:dur]/Fs*440);
FS5 = sin(2*pi*[1:dur]/Fs*739);
E5 = sin(2*pi*[1:dur]/Fs*659);
D5 = sin(2*pi* [1:dur]/Fs*587);
B4 = sin(2*pi* [1:dur]/Fs*493);
s = 40;
options = [A4; FS5; E5; D5; B4];

array = [];
for i = 1:s
num = randi([1 5],1,1);
array = [array options(num,:) z];
end
soundsc(array,Fs)
soundsc(array,Fs)
for i = 1:s
num = randi([1 5],1,1);
array = [array options(num,:) z];
end
soundsc(array,Fs)


soundsc(array,Fs)
for i = 1:s
end
soundsc(array,Fs)
soundsc(array,Fs)
