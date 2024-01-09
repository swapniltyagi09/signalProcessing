%%% QAM signal through AWGN channel

clc;
close all;
clear;


qamSymbols = [1+1i;1-1i;-1+1i;-1-1i];
numSymbols = 1000;
snrdB = 5;

txSignal = qamSymbols(randi(size(qamSymbols'),numSymbols,1));
scatterplot(txSignal)
grid on
title("Transmitted Signal")

snr = 10^(snrdB/10);

noise = (1/snr)*(randn(numSymbols,1)+1i*randn(numSymbols,1));

rxSignal = txSignal + noise;
scatterplot(rxSignal)
grid on
title("Reacieved Signal")











a =1;
