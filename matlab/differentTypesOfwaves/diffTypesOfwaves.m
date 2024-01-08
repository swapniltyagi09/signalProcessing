%%% script for visualising different types of waves
clc;
close all;
clear;
%% Square Wave %%

% parameters
numSamples = 50;
period = 14;
peakAmplitude = 5;
dutyCyclePercent = 60;

t = 0:1:numSamples-1;
freq = 1/period;

y = peakAmplitude * square(2*pi*freq*t,dutyCyclePercent);

figure();
stem(t,y,'.');
grid on
xlabel("n");
ylabel("Amplitude");
title("square wave");








