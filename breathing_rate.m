clc
close all;
clear all;

[y, fs] = audioread('Breathing.m4a'); #audio breathing will be sampled with frequency of fs

#time domain
t=linspace(0,length(y)/fs, length(y)); #time vector using linspace which starts from 0 and takes value upto length(y)/fs upto length(y) number of points
figure;
plot(t,y); #plot of signal with respect to time
title('time domain') #title of plot
xlabel('time') #x axis dependency of signal
ylabel('amp') # y axis dependency of signal

#frequency Domain
x=fft(y,fs); #fast fourier transform of signal with sampling rate fs
plot(x); #plot of signal with respect to frequency
title('Frequency Domain'); #title of plot
xlabel('frequency');  #x axis dependency of signal
ylabel('abs'); # y axis dependency of signal