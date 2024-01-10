%%% script for QPSK Modulation 
clc;
clear;
close all;


M = 16; %modulation Order
k = log2(M); %bits per symbol
snrdB = 5;
realPart = [-3,-1,1,3];
imagPart = [-3,-1,1,3];

snr = 10^(snrdB/10);
symbols = zeros(M,1);

for ii = 1:numel(realPart)
    for jj = 1:numel(imagPart)
        symbols(jj+4*(ii-1)) = realPart(ii) + 1i*imagPart(jj);
    end
end

numSymbols = 1000;
txSignal = symbols(randi([1 M],numSymbols,1));

scatterplot(txSignal);
grid on
title("Transmitted Signal")

noise = (1/snr)*(randn(numSymbols,1) + 1i*randn(numSymbols,1));

rxSignal = txSignal + noise;
scatterplot(rxSignal);
grid on
title("Recieved Signal")





a=1;




