function randomGen()
    Fs = 8000;
    
    durgrace = .03*Fs*speedManip;
    dur16 = .075*Fs*speedManip; %16th note
    dur8 = .15*Fs*speedManip; %assume if .3 is 1/4 note, .15 is 1/8 note
    dur = 0.3*Fs;
    durdot4 = .45*Fs*speedManip;
    durhalf = .6*Fs*speedManip; %half note
    dur34 = .9*Fs*speedManip; %dotted hald note
    durlong = 1.05*Fs*speedManip;
    
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
end
