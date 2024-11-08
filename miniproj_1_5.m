% 1.5b
bb = 1/4*ones(1, 4);
w = -pi : 2*pi/400 : pi-2*pi/400;
H = (1/4) * exp(-1.5*j*w) .* (exp(-1.5*j*w) + exp(1.5*j*w) + exp(-0.5*j*w) + exp(0.5*j*w));

figure;
plot(w, abs(H));
xlabel( 'n' );
ylabel('Magnitude response');
title('Magnitude response vs. n');

figure;
plot(w, angle(H));
xlabel( 'w' );
ylabel('Phase response');
title('Phase response vs. w');
xlim( [-pi, pi] );

% 1.5c
figure;
freqz(bb, 1, w);
% These are not the same. The magnitude is different because freqz doesn't
% account for the magnitude and phase correctly, as it doesn't take absolute value (you'd
% need to convert the minus sign of negative cosine values to a phasor with phase pi radians,
% which you would then integrate into the phase plot, with resultant jumps
% of +-pi radians.