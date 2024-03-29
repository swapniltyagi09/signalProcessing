%%% script to visualise fourier transform of different types of signals;
clc;
clear;
close all;
%% sinusoidal signal

L = 1000; %length of signal
Ts = 1/50;
t = (0:1:L-1)*Ts;
%t = (-L/2:1:L/2-1)*Ts;
f1 = 20; %  MhZ FREQUENCY
f2 = 15; 

%y = zeros(1,L);
%y = 2 + sin(2*pi*f1*t) + cos(2*pi*f2*t); %sinusiodal signal
%y(1:40) = 1; %square pulse
y = sin(2*pi*f1*t)./(2*pi*f1*t); %sampling function
y(isnan(y)) = 1;


fs = 1/Ts;
f = (-L/2:1:L/2-1)*(fs/L); 
Y = fft(y);
Y_dash = fftshift(Y);

figure(1)
subplot(121);
plot(t,y);
xlabel("t");
ylabel("y");
grid on
title("sinusoidal signal")

subplot(122);
stem(f,abs(Y_dash),".");
xlabel("f");
ylabel("Y(f)");
grid on;
title("fft")



