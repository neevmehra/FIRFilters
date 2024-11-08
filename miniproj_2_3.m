% 2.3d is completed within 2.3a and 2.3c

% 2.3a
sound(xxbad, fs);
figure;
spectrogram(xxbad, 512, 128, 512);
figure;
freqz(xxbad);

% 2.3b
fir1 = [1 -2*cos(2*pi*2222/fs) 1];
fir2 = [1 -2*cos(2*pi*1555/fs) 1];

combined_filter = conv(fir1, fir2);

xxbad_clean = filter(combined_filter, 1, xxbad);
figure;
freqz(combined_filter);

pause(5);

sound(xxbad_clean, fs);

% 2.3c
figure;
spectrogram(xxbad_clean, 512, 128, 512);
figure;
freqz(xxbad_clean);

