w_null = 0.75*pi;
w = -pi : 2*pi/400 : pi-2*pi/400;
bb = [1 -2*cos(w_null) 1];


H = abs(1 + -2*cos(w_null)*exp(j*w) + exp(j*2*w));

% Amplitude Response
figure;
plot(w, abs(H));
xlabel( 'n' );
ylabel('Magnitude response');
title('Magnitude response vs. n');

% Zero-Pole Response
figure;
denom = [1];
zplane(bb, denom);

% 1.6 extra
% <u>Pole-Zero Diagram Plot:</u>
% Pole -> w = 0 (no point where ampltiude response is infinity (denominator
% is just 0), but at w=0, we have a pole, as this leads the denominator in the z-domain to be 0. The nulled frequencies (corresponding to zero magnitudes, as
% shown in the magnitude response plot & dltidemo) are on the unit circle
% at their respective frequencies.
% <u>Magnitude Response Plot:</u>
% Zeros at w=-w_null,w_null in the frequency domin, as indicated as well in
% the dltidemo. For time domain, these zeros correspond to the following: (f=-w_null/2*pi,w_null*2*pi)
