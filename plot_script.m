%Plot script
%This script looks at making a plot

close all
clear all

offset = 0; %sine wave offset
phase = 0;  %sine wave phase
freq = 1;  %frequency
w = 2*pi*freq; %omega value for sine wave
step_factor = 0.01;  %For line 12
t = 0:step_factor:50;  %Start from 0, step upwards by step_factor until you reach 50
y = sin(w*t+phase)+offset;

fprintf('w = %.3f\n',w) %fprintf is a function that operates exactly like printf in C
% http://www.cs.utah.edu/~germain/PPS/Topics/Matlab/fprintf.html has more
% information regarding this


figure  %function that calls for a new figure, figures are simply plots
plot(t,y,'r') %%plotting t vs y, with red solid line
ylabel('Amplitude') %Sets a Label on y axis
xlabel('Time(s)') %Sets a Label on x axis
title('Demo Sine plot') %Puts a title on the graph
%Note that the figure display functions are after the plot function is
%called

